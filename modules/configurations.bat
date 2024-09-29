@echo off
setlocal

cd /d "%~dp0"
call init.bat

for %%f in ("%configurations%\shared_programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%configurations%\%COMPUTERNAME%\programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%configurations%\shared_games\*.bat") do (
    echo Running %%f
    call "%%f"
)
endlocal