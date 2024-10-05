@echo off
setlocal

set "app=sshfs-win-manager"

set "from_1=%storage-programs%\%app%\vuex.json"
set "to_1=%appdata%\%app%\vuex.json"

del /s /q "%to_1%"

mklink "%to_1%" "%from_1%"

endlocal