@echo off
setlocal

set "app=SUPERHOT_Team"

set "from_1=%storage-games%\%app%"
set "to_1=%userprofile%\AppData\LocalLow\%app%"

rd /s /q "%to_1%"

mklink /D "%to_1%" "%from_1%"

endlocal