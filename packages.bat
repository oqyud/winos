@echo off
setlocal

:: Init
call init.bat

powershell -ExecutionPolicy Bypass -File "%chocolatey%"

for %%f in ("%packages%\%COMPUTERNAME%\programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%packages%\shared_games\*.bat") do (
    echo Running %%f
    call "%%f"
)
endlocal