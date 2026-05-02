# Notice

This repository is a rebuild and preservation project around the original ASIO Link Pro installer and a post-mortem patch.

## Provenance

The repository includes recovered and extracted materials from:

- the original ASIO Link Pro installer
- the original NSIS installer and uninstaller scripts recovered from that installer
- the post-mortem ASIO Link Pro Tool Patcher by fjlj / Give Academy (https://give.academy/ODeusASIOLinkProPatcher/)

Recovered source and reference material is kept in these locations:

- `nsis_source/`
- `uninstall_source/`
- `original_extracted/`
- `fix_extracted/`
- `ASIOLinkProFIX-0.2/`
- `asiolinkpro.exe`

## Ownership Notes

- The recovered license text identifies `O DEUS AUDIO (ABN 53456965543)` as the software licensor.
- The recovered INF metadata identifies `John Shield/O Deus Audio`.
- This repository does not claim ownership of the original ASIO Link Pro software, branding, icons, license text, or bundled proprietary binaries.

## Post-Mortem Patch Credit

After the original developer (John Shield) passed away, the software became abandonware with trial limitations that would randomly cut out audio. **fjlj** from **Give Academy** created the ASIO Link Pro Tool Patcher to remove those trial restrictions and restore full functionality.

- Patcher homepage: https://give.academy/ODeusASIOLinkProPatcher/
- Patcher author: fjlj / Give Academy

The patched `asiolink.dll` files shipped in `installer_payload/fixed/` originate from that patcher.

## Rebuild-Specific Files

The rebuild-specific material authored for this repository includes:

- `asiolinkproinstaller.iss`
- `installer_payload/` normalization layout
- `docs/installer-flow.md`
- `tools/Extract-PeIcons.ps1`
- supporting repository documentation

## Redistribution Caution

The original recovered materials appear to be proprietary and the recovered EULA includes redistribution restrictions for registered copies.

For that reason:

- this repository does not add a blanket open-source license over the original recovered software
- anyone publishing binaries or a public mirror should review the original license terms and decide what redistribution scope they are comfortable with

## Intent

The intent of this repository is preservation, reproducibility, and maintainability of the installer workflow, with clear provenance for the recovered artifacts used to rebuild it.
