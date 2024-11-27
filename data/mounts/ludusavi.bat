@echo off
setlocal

set "from_1=%games%\.ludusavi"
set "to_1=%appdata%\ludusavi"

rd /s /q "%to_1%"

mklink /D "%to_1%" "%from_1%"

endlocal