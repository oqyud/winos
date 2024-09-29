@echo off
setlocal
:: Music
set "from_1=%music-folder%"
set "to_1=%USERPROFILE%\Music\My"
rd /s /q "%to_1%"
mklink /D "%to_1%" "%from_1%"
endlocal