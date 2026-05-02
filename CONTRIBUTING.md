# Contributing

Thanks for helping maintain this ASIO Link Pro repack installer project.

## Scope

This repository is focused on:

- preserving the recovered installer behavior
- keeping the rebuild auditable
- maintaining a buildable Inno Setup installer
- documenting provenance of recovered assets and payloads

## Ground Rules

- Do not remove provenance or attribution information from recovered files.
- Do not replace payload files casually; document where every replacement came from.
- Do not add a repository-wide open-source license over original proprietary materials.
- Keep rebuild-specific changes clearly separated from recovered reference material.
- Prefer minimal, reviewable changes over broad cleanup with unclear impact.

## Expected Workflow

1. Make the smallest change that solves the problem.
2. Update documentation when installer behavior changes.
3. Rebuild the installer after touching `asiolinkproinstaller.iss` or shipped payload files.
4. Record any important behavioral difference from the original installer in `docs/installer-flow.md`.

## If You Change Payload Or Resources

- Update `installer_payload/` deliberately and keep source provenance clear.
- If icons or embedded artwork change, update `assets/icons/README.md`.
- If recovered references are used to justify a change, keep those reference files in place.

## If You Change Installer Logic

- Edit `asiolinkproinstaller.iss`.
- Rebuild with Inno Setup 6.
- Validate the generated installer output in `dist/`.
- Document user-visible changes and compatibility implications.

## Build

```powershell
& 'C:\Path\To\ISCC.exe' 'C:\Path\To\asiolinkproinstaller.iss'
```

Current output:

- `dist/asiolinkproinstaller-repack-v1.exe`

## Practical Review Checklist

- Does the installer still support both x86 and x64 paths correctly?
- Does the selected device layout still control the right payload files?
- Does the installer still register libraries and run the driver helper correctly?
- Does uninstall still remove the scheduled task and cleanup artifacts as expected?
- Was the documentation updated if behavior changed?

## Publishing

If you publish binaries or mirrors, review `NOTICE.md` first. This project contains recovered proprietary materials and should be handled with care.
