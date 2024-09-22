@echo off
setlocal

set "app=PalWorld"

set "from_1=%storage-games%\%app%"
set "to_1=%localappdata%\Pal"

rd /s /q "%to_1%"

mklink /D "%to_1%" "%from_1%"

endlocal