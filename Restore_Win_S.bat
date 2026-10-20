@echo off
chcp 65001 >nul
setlocal

powershell -NoProfile -ExecutionPolicy Bypass -Command "$p='HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'; $k=Get-Item -LiteralPath $p; $e=$k.GetValue('DisabledHotkeys_Backup_Exists',$null); if ($null -eq $e) { Write-Host 'Резервная копия не найдена. Реестр не изменен.'; exit 1 }; if ([int]$e -eq 1) { New-ItemProperty -Path $p -Name DisabledHotkeys -Value ([string]$k.GetValue('DisabledHotkeys_Backup_Value','')) -PropertyType String -Force | Out-Null } else { Remove-ItemProperty -Path $p -Name DisabledHotkeys -ErrorAction SilentlyContinue }; Remove-ItemProperty -Path $p -Name DisabledHotkeys_Backup_Exists -ErrorAction SilentlyContinue; Remove-ItemProperty -Path $p -Name DisabledHotkeys_Backup_Value -ErrorAction SilentlyContinue; Stop-Process -Name explorer -Force; Start-Process explorer.exe"

echo.
echo Восстановление завершено. Проверь сочетание Win+S.
pause
