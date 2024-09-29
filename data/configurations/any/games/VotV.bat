@echo off
setlocal

set "app=VotV"

set "from_1=%storage-games%\%app%"
set "to_1=%LOCALAPPDATA%\%app%\Saved"

rd /s /q "%to_1%"

mklink /D "%to_1%" "%from_1%"

endlocal