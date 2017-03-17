@echo off
for /f "skip=1 delims=" %%A in (
  'wmic computersystem get name'
) do for /f "delims=" %%B in ("%%A") do set "compName=%%A"
set compName=%compName: =%
rem rename the computer
netdom renamecomputer %compName% /newname:%compName%%1 /UserD:%2 /PasswordD:%3 /force
@echo off
rem remove the windows run command history
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
rem shutdown -r
pause