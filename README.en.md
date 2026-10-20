### Win+S Toggle — Disabling and Re-enabling Win+S

[English](README.en.md) | [Russian](README.md)

A set of BAT scripts for Windows 10 and Windows 11 that allows you to disable the `Win + S` keyboard shortcut and re-enable it if necessary.

## Features

- **Disable Win + S** — adds the `S` key to the `DisabledHotkeys` setting in the Windows Registry.
- **Backup settings** — saves the original value of the setting before making changes.
- **Restore Settings** — restores the original value or deletes the setting if it was not present before the script was run.
- **Automatic Windows Explorer Restart** — applies changes without requiring a manual computer restart.
- **No Installation Required** — simply run the desired BAT file.

## Files

| File | Purpose |
|---|---|
| `Disable_Win_S.bat` | Disables the `Win + S` shortcut and saves the original settings |
| `Restore_Win_S.bat` | Restores the settings saved by the disable script |
| `README.md` | Main documentation in Russian |
| `README.en.md` | Documentation in English |

## Usage

### Disabling Win + S

1. Run `Disable_Win_S.bat`.
2. Wait for the script to finish running.
3. Test the `Win + S` keyboard shortcut.

### Restoring Win + S

1. Run `Restore_Win_S.bat`.
2. Wait for the script to finish running.
3. Check that the `Win + S` keyboard shortcut works.

To restore the shortcut, you must first run the disable script so that the original settings are preserved.

## How It Works

The scripts use PowerShell to modify the registry settings for the current Windows user:

`HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced`

Before disabling the keyboard shortcut, the script saves the original state of the `DisabledHotkeys` setting in registry backups.

During restoration, the original value is restored. If the `DisabledHotkeys` setting did not exist before the change, it is deleted.

After changing the settings, the script automatically restarts `explorer.exe` to apply the changes.

## Important Notes

- The scripts change settings only for the current Windows user.
- Manual editing of the registry is not required.
- Running the scripts as an administrator is usually not necessary.
- When you restart File Explorer, the taskbar and File Explorer windows may briefly disappear and then reappear.
- The backup is stored in the registry, not in a separate file.
- Do not delete the backup registry values until the restoration is complete.
- If no backup exists, the restoration script will not change any settings.

## Compatibility

- Windows 10
- Windows 11

## License

No license has been specified. All rights reserved unless otherwise stated.
