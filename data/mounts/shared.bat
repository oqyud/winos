@echo off

:: .ssh
setlocal
set "from_1=%storage-settings%\SSH"
set "to_1=%USERPROFILE%\.ssh"
rd /s /q "%to_1%"
mklink /D "%to_1%" "%from_1%"
endlocal

:: Music
setlocal
set "from_1=%music-folder%"
set "to_1=%USERPROFILE%\Music\My"
rd /s /q "%to_1%"
mklink /D "%to_1%" "%from_1%"
endlocal

:: DaVinci Resolve Project Media
setlocal
set "from_1=%storage-programs%\Davinci Resolve"
set "to_1=%USERPROFILE%\Videos\Davinci Resolve"
rd /s /q "%to_1%"
mklink /D "%to_1%" "%from_1%"
endlocal