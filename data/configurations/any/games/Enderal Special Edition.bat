@echo off
setlocal

set "app=Enderal Special Edition"

set "from_1=%storage-games%\%app%"
set "to_1=%userprofile%\Documents\My Games\%app%"

rd /s /q "%to_1%"

mklink /D "%to_1%" "%from_1%"

endlocal