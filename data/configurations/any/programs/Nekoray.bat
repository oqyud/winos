@echo off
setlocal

set "app=Nekoray"

set "from_1=%storage-programs%\%app%\config"
set "to_1=%programdata%\chocolatey\lib\nekoray\tools\nekoray\config"

rd /s /q "%to_1%"

mklink /D "%to_1%" "%from_1%"
endlocal