@echo off

cd /d "%~dp0"
set "local-vars=settings\local-vars.bat"

call "%local-vars%"
call "%vars%"

:: Восстановление конфигураций
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