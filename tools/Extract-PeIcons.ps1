param(
  [Parameter(Mandatory = $true)]
  [string[]]$InputPath,

  [Parameter(Mandatory = $true)]
  [string]$OutputDir
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Add-Type -TypeDefinition @"
using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.InteropServices;

public static class PeIconExtractor
{
    private const uint LOAD_LIBRARY_AS_DATAFILE = 0x00000002;
    private const int RT_ICON = 3;
    private const int RT_GROUP_ICON = 14;

    private delegate bool EnumResNameProc(IntPtr hModule, IntPtr lpszType, IntPtr lpszName, IntPtr lParam);

    [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    private static extern IntPtr LoadLibraryEx(string lpFileName, IntPtr hFile, uint dwFlags);

    [DllImport("kernel32.dll", SetLastError = true)]
    private static extern bool FreeLibrary(IntPtr hModule);

    [DllImport("kernel32.dll", SetLastError = true)]
    private static extern bool EnumResourceNames(IntPtr hModule, IntPtr lpszType, EnumResNameProc lpEnumFunc, IntPtr lParam);

    [DllImport("kernel32.dll", SetLastError = true)]
    private static extern IntPtr FindResource(IntPtr hModule, IntPtr lpName, IntPtr lpType);

    [DllImport("kernel32.dll", SetLastError = true)]
    private static extern IntPtr LoadResource(IntPtr hModule, IntPtr hResInfo);

    [DllImport("kernel32.dll", SetLastError = true)]
    private static extern IntPtr LockResource(IntPtr hResData);

    [DllImport("kernel32.dll", SetLastError = true)]
    private static extern uint SizeofResource(IntPtr hModule, IntPtr hResInfo);

    public sealed class ExtractedIcon
    {
        public string SourceFile { get; set; }
        public string ResourceName { get; set; }
        public string OutputPath { get; set; }
    }

    private static IntPtr MakeIntResource(int id)
    {
        return new IntPtr(id);
    }

    private static bool IsIntResource(IntPtr ptr)
    {
        return (((ulong)ptr.ToInt64()) >> 16) == 0;
    }

    private static string GetResourceName(IntPtr ptr)
    {
        if (IsIntResource(ptr))
            return "#" + ptr.ToInt64().ToString();

        return Marshal.PtrToStringUni(ptr);
    }

    private static string SanitizeFileName(string value)
    {
        foreach (char c in Path.GetInvalidFileNameChars())
            value = value.Replace(c, '_');

        return value.Replace('#', '_');
    }

    private static byte[] GetResourceBytes(IntPtr module, IntPtr type, IntPtr name)
    {
        IntPtr resInfo = FindResource(module, name, type);
        if (resInfo == IntPtr.Zero)
            throw new InvalidOperationException("FindResource failed.");

        uint size = SizeofResource(module, resInfo);
        IntPtr resData = LoadResource(module, resInfo);
        if (resData == IntPtr.Zero)
            throw new InvalidOperationException("LoadResource failed.");

        IntPtr ptr = LockResource(resData);
        if (ptr == IntPtr.Zero)
            throw new InvalidOperationException("LockResource failed.");

        byte[] data = new byte[size];
        Marshal.Copy(ptr, data, 0, (int)size);
        return data;
    }

    private static byte[] BuildIco(IntPtr module, byte[] groupData)
    {
        using (var groupStream = new MemoryStream(groupData))
        using (var reader = new BinaryReader(groupStream))
        using (var iconStream = new MemoryStream())
        using (var writer = new BinaryWriter(iconStream))
        {
            ushort reserved = reader.ReadUInt16();
            ushort type = reader.ReadUInt16();
            ushort count = reader.ReadUInt16();

            if (reserved != 0 || type != 1)
                throw new InvalidOperationException("Unsupported group icon format.");

            var images = new List<byte[]>();
            uint imageOffset = (uint)(6 + (count * 16));

            writer.Write((ushort)0);
            writer.Write((ushort)1);
            writer.Write(count);

            for (int i = 0; i < count; i++)
            {
                byte width = reader.ReadByte();
                byte height = reader.ReadByte();
                byte colorCount = reader.ReadByte();
                byte reservedByte = reader.ReadByte();
                ushort planes = reader.ReadUInt16();
                ushort bitCount = reader.ReadUInt16();
                uint bytesInRes = reader.ReadUInt32();
                ushort imageId = reader.ReadUInt16();

                byte[] image = GetResourceBytes(module, MakeIntResource(RT_ICON), MakeIntResource(imageId));
                images.Add(image);

                writer.Write(width);
                writer.Write(height);
                writer.Write(colorCount);
                writer.Write(reservedByte);
                writer.Write(planes);
                writer.Write(bitCount);
                writer.Write((uint)image.Length);
                writer.Write(imageOffset);

                imageOffset += (uint)image.Length;
            }

            foreach (byte[] image in images)
                writer.Write(image);

            return iconStream.ToArray();
        }
    }

    public static List<ExtractedIcon> ExtractAll(string filePath, string outputDir)
    {
        IntPtr module = LoadLibraryEx(filePath, IntPtr.Zero, LOAD_LIBRARY_AS_DATAFILE);
        if (module == IntPtr.Zero)
            throw new InvalidOperationException("LoadLibraryEx failed for " + filePath);

        try
        {
            var names = new List<Tuple<IntPtr, string>>();
            bool ok = EnumResourceNames(
                module,
                MakeIntResource(RT_GROUP_ICON),
                delegate (IntPtr hModule, IntPtr lpszType, IntPtr lpszName, IntPtr lParam)
                {
                    names.Add(Tuple.Create(lpszName, GetResourceName(lpszName)));
                    return true;
                },
                IntPtr.Zero);

            if (!ok && names.Count == 0)
                throw new InvalidOperationException("EnumResourceNames failed for " + filePath);

            Directory.CreateDirectory(outputDir);

            var extracted = new List<ExtractedIcon>();
            string baseName = SanitizeFileName(Path.GetFileNameWithoutExtension(filePath));

            for (int i = 0; i < names.Count; i++)
            {
                byte[] groupData = GetResourceBytes(module, MakeIntResource(RT_GROUP_ICON), names[i].Item1);
                byte[] iconData = BuildIco(module, groupData);
                string outName = string.Format("{0}_{1:D2}_{2}.ico", baseName, i, SanitizeFileName(names[i].Item2));
                string outPath = Path.Combine(outputDir, outName);
                File.WriteAllBytes(outPath, iconData);

                extracted.Add(new ExtractedIcon
                {
                    SourceFile = filePath,
                    ResourceName = names[i].Item2,
                    OutputPath = outPath
                });
            }

            return extracted;
        }
        finally
        {
            FreeLibrary(module);
        }
    }
}
"@

$resolvedOutputDir = [System.IO.Path]::GetFullPath((Join-Path (Get-Location) $OutputDir))
New-Item -ItemType Directory -Force -Path $resolvedOutputDir | Out-Null

$results = New-Object System.Collections.Generic.List[object]

foreach ($path in $InputPath) {
  $resolvedPath = [System.IO.Path]::GetFullPath((Join-Path (Get-Location) $path))
  foreach ($item in [PeIconExtractor]::ExtractAll($resolvedPath, $resolvedOutputDir)) {
    $results.Add([PSCustomObject]@{
      SourceFile = $item.SourceFile
      ResourceName = $item.ResourceName
      OutputPath = $item.OutputPath
    })
  }
}

$results | Sort-Object SourceFile, OutputPath
