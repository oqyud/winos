@echo off
setlocal

set "init=%~dp0\..\settings\init.bat"
call %init%

:choco-list
start cmd /c choco export "%packages-user-lists%\choco.config" --include-version-numbers

:msstore-list
start cmd /c winget export -o "%packages-user-lists%\msstore.json" -s "msstore"

:winget-list
start cmd /c winget export -o "%packages-user-lists%\winget.json" -s "winget" --include-versions

endlocal
exit /B