@echo off
chcp 65001 >nul
setlocal

powershell -NoProfile -ExecutionPolicy Bypass -Command "$p='HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'; $k=Get-Item -LiteralPath $p; if ($null -eq $k.GetValue('DisabledHotkeys',$null)) { New-ItemProperty -Path $p -Name DisabledHotkeys_Backup_Exists -Value 0 -PropertyType DWord -Force | Out-Null; Remove-ItemProperty -Path $p -Name DisabledHotkeys_Backup_Value -ErrorAction SilentlyContinue } else { New-ItemProperty -Path $p -Name DisabledHotkeys_Backup_Exists -Value 1 -PropertyType DWord -Force | Out-Null; New-ItemProperty -Path $p -Name DisabledHotkeys_Backup_Value -Value ([string]$k.GetValue('DisabledHotkeys')) -PropertyType String -Force | Out-Null }; $v=[string]$k.GetValue('DisabledHotkeys',''); if ($v -notmatch '(?i)S') { $v+='S' }; New-ItemProperty -Path $p -Name DisabledHotkeys -Value $v -PropertyType String -Force | Out-Null; Stop-Process -Name explorer -Force; Start-Process explorer.exe"

echo.
echo Готово. Проверь сочетание Win+S.
pause
