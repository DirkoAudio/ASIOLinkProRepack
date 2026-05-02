# ASIO Link Pro 2.4.4.2 - Repack v1

<a href="https://ko-fi.com/M4M51YUAXU"><img src="https://storage.ko-fi.com/cdn/kofi2.png?v=6" alt="Ko-fi" width="110" /></a> <a href="https://www.paypal.com/donate?hosted_button_id=ASSDUH6S66LKC"><img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" alt="PayPal" /></a>

Community-maintained repack of the ASIO Link Pro 2.4.4.2 installer, rebuilt from recovered NSIS sources into a clean Inno Setup project with the post-mortem patch integrated.

---

## The Story

**ASIO Link Pro** is a Windows virtual audio driver by **O Deus Audio** (John Shield) that creates virtual ASIO and WDM audio devices, allowing you to route audio between any applications on your PC. It is widely used by musicians, producers, and audio engineers who need flexible audio routing without external hardware.

After the original developer **John Shield passed away**, the software became abandonware. The official installer and website went offline, and the remaining copies of the software still carried trial limitations that would randomly cut out audio and display "Trial" warnings — making the software effectively unusable for serious work.

**fjlj** from **Give Academy** stepped in and created the [ASIO Link Pro Tool Patcher](https://give.academy/ODeusASIOLinkProPatcher/), a post-mortem patch that removes those trial restrictions and restores full functionality. Without this patch, ASIO Link Pro remains hobbled by its abandoned trial mode.

This repository takes it one step further: instead of requiring users to hunt down the original installer, run it, and then separately apply the patcher, we **rebuilt the entire installer from scratch** using recovered NSIS sources, integrated the patched DLLs, recovered a hidden driver fix that eliminates the initial audio cutout, added a critical registry fix, and packaged everything into a single, reproducible Inno Setup installer.

---

## What This Project Does

1. **Recovers the original installer behavior** — The original ASIO Link Pro installer was built with NSIS (Nullsoft Scriptable Install System), a project that is no longer actively maintained. We recovered the original NSIS installer scripts and documented exactly what they did step-by-step (see [`docs/installer-flow.md`](docs/installer-flow.md)).

2. **Rebuilds the installer in Inno Setup** — We rewrote the entire installer flow in Inno Setup 6, a modern, actively maintained installer framework. The rebuilt installer preserves full compatibility with the original install paths, registry keys, COM registration, driver installation flow, and shortcut structure.

3. **Integrates the post-mortem patch** — The patched `asiolink.dll` files from the [Give Academy patcher](https://give.academy/ODeusASIOLinkProPatcher/) are baked directly into the installer payload. No separate patching step required.

4. **Recovers a hidden driver fix** — Buried inside the original installer was an updated driver package (`asiovadpro.sys`) that fixes an initial audio cutout problem. The original installer had logic to select between an older 2016 driver and a newer 2017 driver, but never clearly communicated this to users. The rebuilt installer always ships the fixed driver files, eliminating that cutout at the source.

5. **Adds a critical registry fix** — Windows Code Integrity policy (`CI\Policy\UpgradedSystem`) can block the ASIOVADPro driver from loading properly. The original installer never addressed this. The rebuilt installer:
- Applies `HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy\UpgradedSystem = 1` immediately during setup
- Creates a **scheduled task** that reapplies this fix automatically at system startup, user logon, logoff, and shutdown
- Installs `registryfix.reg` in the application folder for manual fallback

6. **Normalizes the payload** — All files shipped by the installer are organized in a clean, auditable directory tree (`installer_payload/`) instead of being buried inside an opaque NSIS container.

---

## Credits

| Role | Who |
|------|-----|
| **Original software** | O Deus Audio — John Shield (RIP) |
| **Post-mortem patch** | [fjlj / Give Academy](https://give.academy/ODeusASIOLinkProPatcher/) — removed trial limitations after the developer's passing |
| **Repack installer** | This repository — rebuilt installer with integrated patch and registry fix |

---

## What The Rebuilt Installer Does

- Installs on **32-bit and 64-bit Windows**
- Preserves the original install path (`C:\Program Files (x86)\ASIOLinkPro`) and registry compatibility points
- Supports both WDM device layouts:
  - **4 devices / 8 channels** (default, original layout)
  - **16 devices / 2 channels** (alternate layout for more routing endpoints)
- Installs the **patched `asiolink.dll`** (credit: [fjlj / Give Academy](https://give.academy/ODeusASIOLinkProPatcher/))
- Installs the **fixed driver package** (`asiovadpro.sys`, `.inf`, `.cat`) — updated drivers recovered from the original installer that eliminate the initial audio cutout
- Registers the required **COM libraries** (`asiolink.dll` via `regsvr32`)
- Runs the original **driver helper binaries** (`installer.exe install`)
- Applies the `CI\Policy\UpgradedSystem=1` **registry fix** immediately
- Creates a **scheduled self-heal task** (`ASIOLinkPro Registry Fix`) to reapply that registry fix on:
  - System startup
  - User logon
  - User-initiated logoff (Security event 4647)
  - System shutdown (Kernel-General event 13)
- Detects existing ASIO Link Pro installations and offers to **upgrade in place**
- Creates Start Menu shortcuts for the tool, documentation, and uninstall
- On uninstall, offers to **clean up all settings and driver data**
- On uninstall, **removes the scheduled task** and unregisters COM libraries cleanly

---

## Download

The compiled installer is at:

```
dist/asiolinkproinstaller-repack-v1.exe
```

Or build it yourself from source (see [Build](#build) below).

---

## Build

Compile with [Inno Setup 6](https://jrsoftware.org/isinfo.php):

```powershell
& 'C:\Program Files (x86)\Inno Setup 6\ISCC.exe' 'T:\asiolinkrepack\asiolinkproinstaller.iss'
```

Output: `dist/asiolinkproinstaller-repack-v1.exe`

---

## Key Documentation

- **[`docs/installer-flow.md`](docs/installer-flow.md)** — Technical breakdown of what the original NSIS installer did and what the rebuilt Inno Setup installer does, with a side-by-side comparison
- **[`NOTICE.md`](NOTICE.md)** — Attribution, provenance, and redistribution notes for all recovered materials
- **[`CONTRIBUTING.md`](CONTRIBUTING.md)** — Maintenance rules and contribution workflow

---

## Differences From The Original Installer

1. **Installer framework**: Rebuilt in Inno Setup 6 instead of the deprecated NSIS
2. **Patched DLLs**: Always ships the patched `asiolink.dll` from the Give Academy patcher — no separate patch step needed
3. **Fixed driver**: Always ships the updated `asiovadpro.sys` driver recovered from the original installer, eliminating the initial audio cutout — the original installer hid this behind a conditional fallback to an older 2016 driver
4. **Registry fix**: New persistent self-heal for `CI\Policy\UpgradedSystem`, applied immediately and reinforced at startup, logon, logoff, and shutdown — the original never addressed this
5. **Full compatibility**: Same install layout, registry keys, COM registration, driver install flow, and shortcut structure — the application behaves identically after installation

---

## Redistribution Note

This repository contains recovered proprietary materials. The original EULA includes redistribution restrictions for registered copies. No blanket open-source license is applied over the original software. Anyone publishing binaries or a public mirror should review the original license terms and decide what redistribution scope they are comfortable with. See [`NOTICE.md`](NOTICE.md) for full details.

---

## Status

The installer compiles successfully and the rebuilt flow is fully documented. Runtime validation on every supported Windows configuration is still a separate test task from the source rebuild itself.
