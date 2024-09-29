@echo off
setlocal

cd /d "%~dp0"
call init.bat

for %%f in ("%mounts%\*.bat") do (
    echo Running %%f
    call "%%f"
)
endlocal