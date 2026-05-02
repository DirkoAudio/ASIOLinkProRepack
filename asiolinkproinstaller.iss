[Setup]
AppId={{C830EB2C-AB9A-48E1-9F4E-F36A9F16D1C5}
AppName=ASIO Link Pro
AppVersion=2.4.4.2 Repack v1
AppVerName=ASIO Link Pro 2.4.4.2 Repack v1
AppPublisher=O Deus Audio
DefaultDirName={commonpf32}\ASIOLinkPro
DefaultGroupName=ASIO Link Pro
AllowNoIcons=yes
LicenseFile=nsis_source\[LICENSE].rtf
SetupIconFile=assets\icons\extracted\installer_00__131.ico
PrivilegesRequired=admin
ArchitecturesAllowed=x86 x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
WizardStyle=modern
Compression=lzma2/max
SolidCompression=yes
OutputDir=dist
OutputBaseFilename=asiolinkproinstaller-repack-v1
UninstallDisplayIcon={app}\asiolinktool.exe
UninstallDisplayName=ASIO Link Pro 2.4.4.2 Repack v1
UninstallFilesDir={app}\uninstall
UsePreviousAppDir=no
UsePreviousGroup=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "installer_payload\common\system-drivers\asiovadpro.dat"; DestDir: "{sys}\drivers"; Flags: ignoreversion; Permissions: users-full
Source: "installer_payload\common\root\ASIO Link Technology.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "installer_payload\common\root\asiolinktool.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "installer_payload\fixed\root\asiolink.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "installer_payload\common\root\registryfix.reg"; DestDir: "{app}"; Flags: ignoreversion

Source: "installer_payload\common\x86-runtime\installer.exe"; DestDir: "{app}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: "installer_payload\common\x86-runtime\difxapi.dll"; DestDir: "{app}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: "installer_payload\variants\4devices_8channels\root\asiovadpro.cat"; DestDir: "{app}"; Flags: ignoreversion; Check: (not Is64BitInstallMode) and (not Install16StereoDevices)
Source: "installer_payload\variants\4devices_8channels\root\asiovadpro.inf"; DestDir: "{app}"; Flags: ignoreversion; Check: (not Is64BitInstallMode) and (not Install16StereoDevices)
Source: "installer_payload\variants\4devices_8channels\root\asiovadpro.sys"; DestDir: "{app}"; Flags: ignoreversion; Check: (not Is64BitInstallMode) and (not Install16StereoDevices)
Source: "installer_payload\variants\16devices_2channels\root\asiovadpro.cat"; DestDir: "{app}"; Flags: ignoreversion; Check: (not Is64BitInstallMode) and Install16StereoDevices
Source: "installer_payload\variants\16devices_2channels\root\asiovadpro.inf"; DestDir: "{app}"; Flags: ignoreversion; Check: (not Is64BitInstallMode) and Install16StereoDevices
Source: "installer_payload\variants\16devices_2channels\root\asiovadpro.sys"; DestDir: "{app}"; Flags: ignoreversion; Check: (not Is64BitInstallMode) and Install16StereoDevices

Source: "installer_payload\common\x64-runtime\asiolinktool.exe"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "installer_payload\common\x64-runtime\installer.exe"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "installer_payload\common\x64-runtime\difxapi.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "installer_payload\fixed\x64\asiolink.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "installer_payload\variants\4devices_8channels\x64\asiovadpro.cat"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode and (not Install16StereoDevices)
Source: "installer_payload\variants\4devices_8channels\x64\asiovadpro.inf"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode and (not Install16StereoDevices)
Source: "installer_payload\variants\4devices_8channels\x64\asiovadpro.sys"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode and (not Install16StereoDevices)
Source: "installer_payload\variants\16devices_2channels\x64\asiovadpro.cat"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode and Install16StereoDevices
Source: "installer_payload\variants\16devices_2channels\x64\asiovadpro.inf"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode and Install16StereoDevices
Source: "installer_payload\variants\16devices_2channels\x64\asiovadpro.sys"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode and Install16StereoDevices

[Registry]
Root: HKLM32; Subkey: "Software\ASIOLinkPro"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"; Flags: uninsdeletekeyifempty
Root: HKLM32; Subkey: "Software\ASIOLinkPro"; ValueType: string; ValueName: "Start Menu Folder"; ValueData: "{code:GetSelectedStartMenuFolder}"; Flags: uninsdeletekeyifempty; Check: ShouldWriteStartMenuFolder

Root: HKLM32; Subkey: "SOFTWARE\ODeusAudio\ASIOLinkPro"; ValueType: dword; ValueName: "NumDevices"; ValueData: "16"; Flags: uninsdeletekeyifempty; Permissions: users-full; Check: (not Is64BitInstallMode) and Install16StereoDevices
Root: HKLM32; Subkey: "SOFTWARE\ODeusAudio\ASIOLinkPro"; ValueType: dword; ValueName: "NumChannels"; ValueData: "2"; Flags: uninsdeletekeyifempty; Permissions: users-full; Check: (not Is64BitInstallMode) and Install16StereoDevices
Root: HKLM32; Subkey: "SOFTWARE\ODeusAudio\ASIOLinkPro"; ValueType: dword; ValueName: "NumDevices"; ValueData: "4"; Flags: uninsdeletekeyifempty; Permissions: users-full; Check: (not Is64BitInstallMode) and (not Install16StereoDevices)
Root: HKLM32; Subkey: "SOFTWARE\ODeusAudio\ASIOLinkPro"; ValueType: dword; ValueName: "NumChannels"; ValueData: "8"; Flags: uninsdeletekeyifempty; Permissions: users-full; Check: (not Is64BitInstallMode) and (not Install16StereoDevices)

Root: HKLM64; Subkey: "SOFTWARE\ODeusAudio\ASIOLinkPro"; ValueType: dword; ValueName: "NumDevices"; ValueData: "16"; Flags: uninsdeletekeyifempty; Permissions: users-full; Check: Is64BitInstallMode and Install16StereoDevices
Root: HKLM64; Subkey: "SOFTWARE\ODeusAudio\ASIOLinkPro"; ValueType: dword; ValueName: "NumChannels"; ValueData: "2"; Flags: uninsdeletekeyifempty; Permissions: users-full; Check: Is64BitInstallMode and Install16StereoDevices
Root: HKLM64; Subkey: "SOFTWARE\ODeusAudio\ASIOLinkPro"; ValueType: dword; ValueName: "NumDevices"; ValueData: "4"; Flags: uninsdeletekeyifempty; Permissions: users-full; Check: Is64BitInstallMode and (not Install16StereoDevices)
Root: HKLM64; Subkey: "SOFTWARE\ODeusAudio\ASIOLinkPro"; ValueType: dword; ValueName: "NumChannels"; ValueData: "8"; Flags: uninsdeletekeyifempty; Permissions: users-full; Check: Is64BitInstallMode and (not Install16StereoDevices)

[Icons]
Name: "{group}\ASIO Link Technology.pdf"; Filename: "{app}\ASIO Link Technology.pdf"
Name: "{group}\Uninstall"; Filename: "{uninstallexe}"
Name: "{group}\ASIO Link Pro Tool"; Filename: "{app}\asiolinktool.exe"; Check: not Is64BitInstallMode
Name: "{group}\ASIO Link Pro Tool"; Filename: "{app}\x64\asiolinktool.exe"; Check: Is64BitInstallMode
Name: "{group}\ASIO Link Pro Tool 32"; Filename: "{app}\asiolinktool.exe"; Check: Is64BitInstallMode

[Run]
Filename: "{app}\asiolinktool.exe"; Description: "Run ASIO Link Pro Tool"; Flags: nowait postinstall skipifsilent; Check: not Is64BitInstallMode
Filename: "{app}\x64\asiolinktool.exe"; Description: "Run ASIO Link Pro Tool"; Flags: nowait postinstall skipifsilent; Check: Is64BitInstallMode
Filename: "{app}\ASIO Link Technology.pdf"; Description: "Read Pdf Documentation"; Flags: postinstall shellexec skipifsilent unchecked

[Code]
var
  ChannelPage: TWizardPage;
  Install16Check: TNewCheckBox;
  ChannelNote: TNewStaticText;
  InstallNeedsRestart: Boolean;
  UninstallNeedsRestartFlag: Boolean;
  DeleteAllSettings: Boolean;
  RegistryFixTaskInstalled: Boolean;

const
  RegistryFixTaskName = 'ASIOLinkPro Registry Fix';
  RegistryFixRegArgs = 'add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v UpgradedSystem /t REG_DWORD /d 1 /f';

function Install16StereoDevices: Boolean;
begin
  Result := Assigned(Install16Check) and Install16Check.Checked;
end;

function ShouldWriteStartMenuFolder: Boolean;
begin
  Result := not WizardNoIcons;
end;

function GetSelectedStartMenuFolder(Param: string): string;
begin
  Result := WizardGroupValue;
end;

function NormalizeStoredStartMenuFolder(const StoredValue: string): string;
var
  ProgramsDir: string;
begin
  Result := Trim(StoredValue);
  if Result = '' then
    Exit;

  ProgramsDir := AddBackslash(ExpandConstant('{commonprograms}'));
  if CompareText(Copy(Result, 1, Length(ProgramsDir)), ProgramsDir) = 0 then
    Delete(Result, 1, Length(ProgramsDir));

  ProgramsDir := AddBackslash(ExpandConstant('{userprograms}'));
  if CompareText(Copy(Result, 1, Length(ProgramsDir)), ProgramsDir) = 0 then
    Delete(Result, 1, Length(ProgramsDir));

  while (Length(Result) > 0) and ((Result[1] = '\') or (Result[1] = '/')) do
    Delete(Result, 1, 1);
end;

function Get32BitRegSvrPath: string;
begin
  if Is64BitInstallMode then
    Result := ExpandConstant('{win}\SysWOW64\regsvr32.exe')
  else
    Result := ExpandConstant('{sys}\regsvr32.exe');
end;

function Get64BitRegSvrPath: string;
begin
  Result := ExpandConstant('{sys}\regsvr32.exe');
end;

procedure AbortWithMessage(const Msg: string);
begin
  MsgBox(Msg, mbCriticalError, MB_OK);
  Abort;
end;

function RunAndWait(const Filename, Params, WorkingDir: string; var ResultCode: Integer): Boolean;
begin
  Result := Exec(Filename, Params, WorkingDir, SW_HIDE, ewWaitUntilTerminated, ResultCode);
end;

function XmlEscape(const S: string): string;
begin
  Result := S;
  StringChangeEx(Result, '&', '&amp;', True);
  StringChangeEx(Result, '<', '&lt;', True);
  StringChangeEx(Result, '>', '&gt;', True);
  StringChangeEx(Result, '"', '&quot;', True);
  StringChangeEx(Result, '''', '&apos;', True);
end;

function GetRegistryFixTaskXml: string;
var
  RegExePath: string;
begin
  RegExePath := XmlEscape(ExpandConstant('{sys}\reg.exe'));

  Result :=
    '<?xml version="1.0" encoding="UTF-16"?>' + #13#10 +
    '<Task version="1.2" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task">' + #13#10 +
    '  <RegistrationInfo>' + #13#10 +
    '    <Author>ASIOLinkPro Installer</Author>' + #13#10 +
    '    <Description>Reapplies the Code Integrity policy registry fix at startup, logon, logoff, and shutdown.</Description>' + #13#10 +
    '  </RegistrationInfo>' + #13#10 +
    '  <Triggers>' + #13#10 +
    '    <BootTrigger>' + #13#10 +
    '      <Enabled>true</Enabled>' + #13#10 +
    '    </BootTrigger>' + #13#10 +
    '    <LogonTrigger>' + #13#10 +
    '      <Enabled>true</Enabled>' + #13#10 +
    '    </LogonTrigger>' + #13#10 +
    '    <EventTrigger>' + #13#10 +
    '      <Enabled>true</Enabled>' + #13#10 +
    '      <Subscription><![CDATA[' +
    '<QueryList><Query Id="0" Path="Security"><Select Path="Security">*[System[Provider[@Name=''Microsoft-Windows-Security-Auditing''] and EventID=4647]]</Select></Query></QueryList>' +
    ']]></Subscription>' + #13#10 +
    '    </EventTrigger>' + #13#10 +
    '    <EventTrigger>' + #13#10 +
    '      <Enabled>true</Enabled>' + #13#10 +
    '      <Subscription><![CDATA[' +
    '<QueryList><Query Id="0" Path="System"><Select Path="System">*[System[Provider[@Name=''Microsoft-Windows-Kernel-General''] and EventID=13]]</Select></Query></QueryList>' +
    ']]></Subscription>' + #13#10 +
    '    </EventTrigger>' + #13#10 +
    '  </Triggers>' + #13#10 +
    '  <Principals>' + #13#10 +
    '    <Principal id="Author">' + #13#10 +
    '      <UserId>S-1-5-18</UserId>' + #13#10 +
    '      <RunLevel>HighestAvailable</RunLevel>' + #13#10 +
    '    </Principal>' + #13#10 +
    '  </Principals>' + #13#10 +
    '  <Settings>' + #13#10 +
    '    <MultipleInstancesPolicy>IgnoreNew</MultipleInstancesPolicy>' + #13#10 +
    '    <DisallowStartIfOnBatteries>false</DisallowStartIfOnBatteries>' + #13#10 +
    '    <StopIfGoingOnBatteries>false</StopIfGoingOnBatteries>' + #13#10 +
    '    <AllowHardTerminate>false</AllowHardTerminate>' + #13#10 +
    '    <StartWhenAvailable>true</StartWhenAvailable>' + #13#10 +
    '    <RunOnlyIfNetworkAvailable>false</RunOnlyIfNetworkAvailable>' + #13#10 +
    '    <IdleSettings>' + #13#10 +
    '      <StopOnIdleEnd>false</StopOnIdleEnd>' + #13#10 +
    '      <RestartOnIdle>false</RestartOnIdle>' + #13#10 +
    '    </IdleSettings>' + #13#10 +
    '    <AllowStartOnDemand>true</AllowStartOnDemand>' + #13#10 +
    '    <Enabled>true</Enabled>' + #13#10 +
    '    <Hidden>true</Hidden>' + #13#10 +
    '    <RunOnlyIfIdle>false</RunOnlyIfIdle>' + #13#10 +
    '    <WakeToRun>false</WakeToRun>' + #13#10 +
    '    <ExecutionTimeLimit>PT5M</ExecutionTimeLimit>' + #13#10 +
    '    <Priority>7</Priority>' + #13#10 +
    '  </Settings>' + #13#10 +
    '  <Actions Context="Author">' + #13#10 +
    '    <Exec>' + #13#10 +
    '      <Command>' + RegExePath + '</Command>' + #13#10 +
    '      <Arguments>' + XmlEscape(RegistryFixRegArgs) + '</Arguments>' + #13#10 +
    '    </Exec>' + #13#10 +
    '  </Actions>' + #13#10 +
    '</Task>' + #13#10;
end;

procedure ApplyRegistryFixNow;
var
  ResultCode: Integer;
begin
  if not RunAndWait(ExpandConstant('{sys}\reg.exe'), RegistryFixRegArgs, '', ResultCode) then
    AbortWithMessage('Failed to launch reg.exe for the registry fix.');

  if ResultCode <> 0 then
    AbortWithMessage(Format('Failed to apply the registry fix (exit code %d).', [ResultCode]));
end;

function InstallRegistryFixTask: Boolean;
var
  TaskXmlFile: string;
  ResultCode: Integer;
begin
  Result := False;
  TaskXmlFile := ExpandConstant('{tmp}\asiolinkpro-registryfix-task.xml');

  if not SaveStringToFile(TaskXmlFile, GetRegistryFixTaskXml, False) then
    Exit;

  try
    if not RunAndWait(
      ExpandConstant('{sys}\schtasks.exe'),
      '/Create /TN "' + RegistryFixTaskName + '" /XML "' + TaskXmlFile + '" /F',
      '',
      ResultCode) then
      Exit;

    Result := ResultCode = 0;
  finally
    DeleteFile(TaskXmlFile);
  end;
end;

function VerifyRegistryFixTask: Boolean;
var
  ResultCode: Integer;
begin
  Result :=
    RunAndWait(
      ExpandConstant('{sys}\schtasks.exe'),
      '/Query /TN "' + RegistryFixTaskName + '"',
      '',
      ResultCode) and
    (ResultCode = 0);
end;

procedure RemoveRegistryFixTask;
var
  ResultCode: Integer;
begin
  RunAndWait(
    ExpandConstant('{sys}\schtasks.exe'),
    '/Delete /TN "' + RegistryFixTaskName + '" /F',
    '',
    ResultCode);
end;

procedure InitializeWizard;
var
  ExistingInstallDir: string;
  ExistingStartMenuFolder: string;
begin
  ChannelPage := CreateCustomPage(wpWelcome, 'WDM Device Layout', 'Choose how many WDM devices this installer should provision.');

  Install16Check := TNewCheckBox.Create(ChannelPage);
  Install16Check.Parent := ChannelPage.Surface;
  Install16Check.Left := ScaleX(0);
  Install16Check.Top := ScaleY(8);
  Install16Check.Width := ChannelPage.SurfaceWidth;
  Install16Check.Height := ScaleY(18);
  Install16Check.Caption := 'Install 16 stereo WDM devices';
  Install16Check.Checked := False;

  ChannelNote := TNewStaticText.Create(ChannelPage);
  ChannelNote.Parent := ChannelPage.Surface;
  ChannelNote.Left := ScaleX(0);
  ChannelNote.Top := Install16Check.Top + ScaleY(24);
  ChannelNote.Width := ChannelPage.SurfaceWidth;
  ChannelNote.Height := ScaleY(44);
  ChannelNote.AutoSize := False;
  ChannelNote.WordWrap := True;
  ChannelNote.Caption :=
    'Unchecked installs the original default layout of 4 devices with 8 channels. ' +
    'Checked installs the alternate 16 stereo WDM device layout.';

  if RegQueryStringValue(HKLM32, 'Software\ASIOLinkPro', 'Install_Dir', ExistingInstallDir) then
    WizardForm.DirEdit.Text := ExistingInstallDir;

  if RegQueryStringValue(HKLM32, 'Software\ASIOLinkPro', 'Start Menu Folder', ExistingStartMenuFolder) then
  begin
    ExistingStartMenuFolder := NormalizeStoredStartMenuFolder(ExistingStartMenuFolder);
    if ExistingStartMenuFolder <> '' then
      WizardForm.GroupEdit.Text := ExistingStartMenuFolder;
  end;
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  ExistingUninstallString: string;
  ExistingInstallDir: string;
  ResultCode: Integer;
begin
  Result := '';

  if not RegQueryStringValue(HKLM32, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro', 'UninstallString', ExistingUninstallString) then
    Exit;

  if not RegQueryStringValue(HKLM32, 'Software\ASIOLinkPro', 'Install_Dir', ExistingInstallDir) then
    ExistingInstallDir := ExpandConstant('{app}');

  if MsgBox('ASIO Link Pro is already installed. Upgrade the existing version?', mbConfirmation, MB_YESNO) <> IDYES then
  begin
    Result := 'Setup cancelled because an existing ASIO Link Pro installation is already present.';
    Exit;
  end;

  if not RunAndWait(RemoveQuotes(ExistingUninstallString), '/S _?=' + ExistingInstallDir, ExistingInstallDir, ResultCode) then
  begin
    Result := 'Failed to start the existing ASIO Link Pro uninstaller.';
    Exit;
  end;

  if ResultCode <> 0 then
    Result := 'Uninstalling the existing ASIO Link Pro installation failed.';
end;

procedure ApplyDontVirtualizeFlag;
var
  ResultCode: Integer;
begin
  if Is64BitInstallMode then
    Exit;

  RunAndWait(
    ExpandConstant('{sys}\reg.exe'),
    'FLAGS HKLM\SOFTWARE\ODeusAudio\ASIOLinkPro SET DONT_VIRTUALIZE /s',
    '',
    ResultCode);
end;

procedure RegisterAsioLinkLibraries;
var
  ResultCode: Integer;
begin
  if Is64BitInstallMode then
  begin
    if not RunAndWait(Get64BitRegSvrPath, '/s "' + ExpandConstant('{app}\x64\asiolink.dll') + '"', '', ResultCode) then
      AbortWithMessage('There was a problem launching regsvr32 for the 64-bit ASIO Link Pro library.');

    if ResultCode <> 0 then
      AbortWithMessage('There was a problem registering the ASIO Link Pro (64-bit) library.');
  end;

  if not RunAndWait(Get32BitRegSvrPath, '/s "' + ExpandConstant('{app}\asiolink.dll') + '"', '', ResultCode) then
    AbortWithMessage('There was a problem launching regsvr32 for the 32-bit ASIO Link Pro library.');

  if ResultCode <> 0 then
    AbortWithMessage('There was a problem registering the ASIO Link Pro (32-bit) library.');
end;

procedure InstallDriver;
var
  ResultCode: Integer;
  InstallerPath: string;
  InstallerDir: string;
begin
  if Is64BitInstallMode then
  begin
    InstallerPath := ExpandConstant('{app}\x64\installer.exe');
    InstallerDir := ExpandConstant('{app}\x64');
  end
  else
  begin
    InstallerPath := ExpandConstant('{app}\installer.exe');
    InstallerDir := ExpandConstant('{app}');
  end;

  if not RunAndWait(InstallerPath, 'install', InstallerDir, ResultCode) then
    AbortWithMessage('There was a problem launching the ASIO Link Pro driver installer.');

  case ResultCode of
    0:
      begin
      end;
    2:
      begin
        MsgBox('A reboot is required to complete the install.', mbInformation, MB_OK);
        InstallNeedsRestart := True;
      end;
    3:
      begin
        MsgBox('The ASIO Link Pro is already installed, continuing anyway..', mbInformation, MB_OK);
      end;
    1:
      begin
        AbortWithMessage('There was a problem installing the ASIO Link Pro.');
      end;
  else
    AbortWithMessage(Format('There was a problem installing the ASIO Link Pro (exit code %d).', [ResultCode]));
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep <> ssPostInstall then
    Exit;

  ApplyRegistryFixNow;
  ApplyDontVirtualizeFlag;
  RegisterAsioLinkLibraries;
  InstallDriver;

  RegistryFixTaskInstalled := InstallRegistryFixTask;
  if RegistryFixTaskInstalled then
    RegistryFixTaskInstalled := VerifyRegistryFixTask;

  if not RegistryFixTaskInstalled then
    MsgBox(
      'The registry fix was applied immediately, but the scheduled self-heal task could not be created or verified.' + #13#10#13#10 +
      'The file registryfix.reg is installed in the application folder, and you may need to create the task manually.',
      mbError,
      MB_OK);
end;

function NeedRestart: Boolean;
begin
  Result := InstallNeedsRestart;
end;

function InitializeUninstall: Boolean;
begin
  DeleteAllSettings :=
    MsgBox(
      'Delete all settings and driver data as well?' + #13#10#13#10 +
      'This removes the O Deus Audio ASIO Link Pro registry settings, the startup entry, and asiovadpro.dat.',
      mbConfirmation,
      MB_YESNO) = IDYES;
  Result := True;
end;

procedure UnregisterLibrariesForUninstall;
var
  ResultCode: Integer;
begin
  if Is64BitInstallMode and FileExists(ExpandConstant('{app}\x64\asiolink.dll')) then
  begin
    if RunAndWait(Get64BitRegSvrPath, '/s /u "' + ExpandConstant('{app}\x64\asiolink.dll') + '"', '', ResultCode) then
    begin
      if ResultCode <> 0 then
        MsgBox('Unregistering ASIO Link Pro failed, continuing anyway.', mbInformation, MB_OK);
    end
    else
      MsgBox('Unregistering ASIO Link Pro failed, continuing anyway.', mbInformation, MB_OK);
  end;

  if FileExists(ExpandConstant('{app}\asiolink.dll')) then
  begin
    if RunAndWait(Get32BitRegSvrPath, '/s /u "' + ExpandConstant('{app}\asiolink.dll') + '"', '', ResultCode) then
    begin
      if ResultCode <> 0 then
        MsgBox('Unregistering ASIO Link Pro 32 failed, continuing anyway.', mbInformation, MB_OK);
    end
    else
      MsgBox('Unregistering ASIO Link Pro 32 failed, continuing anyway.', mbInformation, MB_OK);
  end;
end;

procedure UninstallDriver;
var
  ResultCode: Integer;
  InstallerPath: string;
  InstallerDir: string;
begin
  if Is64BitInstallMode then
  begin
    InstallerPath := ExpandConstant('{app}\x64\installer.exe');
    InstallerDir := ExpandConstant('{app}\x64');
  end
  else
  begin
    InstallerPath := ExpandConstant('{app}\installer.exe');
    InstallerDir := ExpandConstant('{app}');
  end;

  if not FileExists(InstallerPath) then
    Exit;

  if not RunAndWait(InstallerPath, 'uninstall', InstallerDir, ResultCode) then
    Exit;

  case ResultCode of
    0:
      begin
      end;
    2:
      begin
        MsgBox('A reboot is required to complete the uninstall.', mbInformation, MB_OK);
        UninstallNeedsRestartFlag := True;
      end;
    1:
      begin
        MsgBox('There was a problem uninstalling the ASIO Link Pro.', mbInformation, MB_OK);
        MsgBox('Manually uninstall ASIOVADPRO in Device Manager.', mbInformation, MB_OK);
        UninstallNeedsRestartFlag := True;
      end;
  end;
end;

procedure DeleteSettingsAndDriverData;
var
  ODeusRoot: Integer;
begin
  if not DeleteAllSettings then
    Exit;

  RegDeleteKeyIncludingSubkeys(HKCU, 'Software\ODeusAudio\ASIOLinkPro');
  RegDeleteValue(HKCU, 'Software\Microsoft\Windows\CurrentVersion\Run', 'ASIOLINKPRO');

  if Is64BitInstallMode then
    ODeusRoot := HKLM64
  else
    ODeusRoot := HKLM32;

  RegDeleteKeyIncludingSubkeys(ODeusRoot, 'SOFTWARE\ODeusAudio\ASIOLinkPro');
  DeleteFile(ExpandConstant('{sys}\drivers\asiovadpro.dat'));
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep <> usUninstall then
    Exit;

  RemoveRegistryFixTask;
  UnregisterLibrariesForUninstall;
  UninstallDriver;
  DeleteSettingsAndDriverData;
end;

function UninstallNeedRestart: Boolean;
begin
  Result := UninstallNeedsRestartFlag;
end;
