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
3. Test the `Win + S` keyboard shortcut.

To restore the shortcut, you must first run the disabling script so that the original settings are
