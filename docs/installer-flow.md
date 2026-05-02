# Installer Flow Documentation

This document records two things:

1. What the recovered original NSIS installer and uninstaller were doing.
2. What the replacement Inno Setup installer in `asiolinkproinstaller.iss` now does.

The original behavior below was recovered from:

- `nsis_source\[NSIS].nsi`
- `uninstall_source\[NSIS].nsi`

## Original Installer

### Install flow

1. The installer started in admin context and used `HKLM\Software\ASIOLinkPro\Install_Dir` as its remembered install path.
2. On startup it checked `HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro\UninstallString`.
3. If an existing installation was found, it asked whether to upgrade it.
4. If the user accepted, it ran the existing uninstaller silently with `"/S _?=$INSTDIR"`.
5. It showed a custom welcome page with one install option: `Install 16 stereo WDM devices`.
6. If that option was unchecked, the installer used the default `4 devices / 8 channels` layout.
7. It showed the embedded license page from `[LICENSE].rtf`.
8. It showed the install directory page with a default path of `$PROGRAMFILES\ASIOLinkPro`.
9. It showed a Start Menu page with a "Do not create shortcuts" option.
10. It copied `asiovadpro.dat` into `%SystemRoot%\System32\drivers`.
11. It granted the local Users group full access to `asiovadpro.dat`.
12. It checked the OS and `HKLM\SOFTWARE\ODeusAudio\InstallNewDrivers` to choose between two bundled driver generations:
    - A newer 2017 driver set.
    - An older 2016 fallback set used on some Windows 10 cases.
13. It also selected one of two INF variants:
    - `4 devices / 8 channels`
    - `16 devices / 2 channels`
14. On 64-bit Windows it installed:
    - 64-bit runtime files under `{app}\x64`
    - 32-bit `asiolink.dll` and `asiolinktool.exe` in the install root
    - the PDF documentation in the install root
15. On 32-bit Windows it installed all runtime files in the install root.
16. It initialized `HKLM\SOFTWARE\ODeusAudio\ASIOLinkPro` with:
    - `NumDevices`
    - `NumChannels`
17. It granted the local Users group full access to the `ODeusAudio\ASIOLinkPro` registry key.
18. On 32-bit Windows it also set the `DONT_VIRTUALIZE` registry flag on that key with `reg.exe FLAGS ...`.
19. It registered the 64-bit `asiolink.dll` with `regsvr32.exe /s` on 64-bit Windows.
20. It registered the 32-bit `asiolink.dll` with `regsvr32.exe /s`.
21. It ran the bundled driver installer:
    - `{app}\x64\installer.exe install` on 64-bit Windows
    - `{app}\installer.exe install` on 32-bit Windows
22. It treated driver installer return codes as:
    - `0`: success
    - `2`: install completed but reboot required
    - `3`: already installed, continue anyway
    - `1`: hard failure, abort setup
23. It wrote the install location to `HKLM\SOFTWARE\ASIOLinkPro\Install_Dir`.
24. It wrote its uninstall entry under `HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro`.
25. It dropped its own `uninstall.exe` into the install root.
26. It created Start Menu shortcuts for:
    - `ASIO Link Technology.pdf`
    - `Uninstall`
    - `ASIO Link Pro Tool`
    - `ASIO Link Pro Tool 32` on 64-bit Windows
27. It stored the chosen Start Menu folder in `HKLM\Software\ASIOLinkPro\Start Menu Folder`.
28. Its finish page allowed:
   - running ASIO Link Pro Tool
   - opening the PDF documentation
29. It did not include or maintain the `HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy\UpgradedSystem` registry fix.

### Uninstall flow

1. The uninstaller showed a custom page with a `Delete all settings` checkbox.
2. If checked, it deleted:
   - `HKCU\Software\ODeusAudio\ASIOLinkPro`
   - `HKLM\SOFTWARE\ODeusAudio\ASIOLinkPro`
   - `HKCU\Software\Microsoft\Windows\CurrentVersion\Run\ASIOLINKPRO`
   - `%SystemRoot%\System32\drivers\asiovadpro.dat`
3. It always removed:
   - `HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\ASIOLinkPro`
   - `HKLM\SOFTWARE\ASIOLinkPro`
4. It unregistered the 64-bit `asiolink.dll` first on 64-bit Windows.
5. It unregistered the 32-bit `asiolink.dll`.
6. It ran the driver uninstall helper:
   - `{app}\x64\installer.exe uninstall` on 64-bit Windows
   - `{app}\installer.exe uninstall` on 32-bit Windows
7. It handled driver uninstall return codes as:
   - `2`: reboot required
   - `1`: uninstall problem, tell the user to remove `ASIOVADPRO` manually in Device Manager
8. It deleted installed files from the application directory.
9. It deleted the Start Menu shortcut directory recorded under `HKLM\Software\ASIOLinkPro\Start Menu Folder`.

## Replacement Inno Setup Installer

### Install flow

1. The replacement installer keeps the same product identity and default application path:
   - install root: `{commonpf32}\ASIOLinkPro`
   - remembered path key: `HKLM32\Software\ASIOLinkPro\Install_Dir`
2. Before installing, it checks for an existing `ASIOLinkPro` uninstall entry from the legacy setup.
3. If one exists, it asks whether to upgrade it.
4. If the user accepts, it runs the legacy uninstaller silently before continuing.
5. It shows a custom page with the same effective device-layout choice:
   - unchecked: `4 devices / 8 channels`
   - checked: `16 stereo WDM devices`
6. It uses the original extracted license RTF on the license page.
7. It uses the built-in Inno Setup directory page and Start Menu page.
8. It installs a normalized payload from `installer_payload\...` rather than depending on the old NSIS container.
9. It always installs the fixed 2022 DLL set:
   - patched 32-bit `asiolink.dll`
   - patched 64-bit `asiolink.dll` on 64-bit Windows
10. It always installs the fixed 2022 driver files for the chosen channel layout.
11. Unlike the legacy NSIS build, it does not keep the older 2016 driver fallback path.
12. It still installs `asiovadpro.dat` into `%SystemRoot%\System32\drivers`.
13. It grants the local Users group full access to:
   - `asiovadpro.dat`
   - `HKLM...\SOFTWARE\ODeusAudio\ASIOLinkPro`
14. It writes `NumDevices` and `NumChannels` to the same `ODeusAudio\ASIOLinkPro` registry key:
   - `16 / 2` when the checkbox is enabled
   - `4 / 8` otherwise
15. On 32-bit Windows it also applies the same `DONT_VIRTUALIZE` flag to the `ODeusAudio\ASIOLinkPro` key.
16. It registers:
   - the 64-bit `asiolink.dll` on 64-bit Windows
   - the 32-bit `asiolink.dll` on all installs
17. It runs the bundled driver installer and preserves the original return-code handling:
   - `0`: success
   - `2`: reboot required
   - `3`: already installed, continue
   - `1`: fail setup
18. It writes `HKLM32\Software\ASIOLinkPro\Install_Dir`.
19. It writes `HKLM32\Software\ASIOLinkPro\Start Menu Folder` when Start Menu shortcuts are enabled.
20. It creates Start Menu shortcuts for:
   - `ASIO Link Technology.pdf`
   - `Uninstall`
   - `ASIO Link Pro Tool`
   - `ASIO Link Pro Tool 32` on 64-bit Windows
21. Its finish page offers:
   - `Run ASIO Link Pro Tool`
   - `Read Pdf Documentation`
22. It installs `registryfix.reg` into the application folder for traceability and manual fallback.
23. It applies the equivalent registry change immediately during setup:
   - `HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy\UpgradedSystem = 1`
24. It creates a scheduled task named `ASIOLinkPro Registry Fix` running as `SYSTEM`.
25. That task reapplies the same registry fix on:
   - system startup
   - user logon
   - user-initiated logoff through Security event `4647`
   - system shutdown through Kernel-General event `13`
26. Right after creating the task, setup verifies it with `schtasks /Query` and warns if the task cannot be confirmed in Task Scheduler.

### Uninstall flow

1. The Inno uninstaller asks whether to delete all settings and driver data.
2. It unregisters the installed `asiolink.dll` files before file deletion.
3. It runs the same bundled driver uninstall helper before removing application files.
4. It preserves the original uninstall return-code behavior:
   - `2`: reboot required
   - `1`: tell the user to remove `ASIOVADPRO` manually in Device Manager
5. If the user chooses full cleanup, it deletes:
   - `HKCU\Software\ODeusAudio\ASIOLinkPro`
   - `HKLM...\SOFTWARE\ODeusAudio\ASIOLinkPro`
   - `HKCU\Software\Microsoft\Windows\CurrentVersion\Run\ASIOLINKPRO`
   - `%SystemRoot%\System32\drivers\asiovadpro.dat`
6. The rest of the application files, uninstall data, and Start Menu shortcuts are removed by the Inno uninstaller itself.
7. It also removes the scheduled task `ASIOLinkPro Registry Fix`.

## Main Differences

1. The legacy installer depended on a dead NSIS project and carried two driver generations.
2. The replacement installer is authored in Inno Setup and uses a normalized payload tree checked into this repo.
3. The replacement installer always ships the fixed DLL and fixed driver package instead of preserving the legacy 2016 fallback path.
4. The replacement installer adds a persistent self-heal for `CI\Policy\UpgradedSystem`, applied immediately and then reinforced at startup, logon, logoff, and shutdown triggers.
5. The replacement installer keeps the original install layout, registry compatibility points, DLL registration flow, driver-install flow, and shortcut structure so the application behaves like the recovered original after installation.
