@echo off

cd /d "%~dp0"
set "local-vars=settings\local-vars.bat"

call "%local-vars%"
call "%vars%"

:: Восстановление конфигураций
for %%f in ("%configurations%\01_programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%configurations%\02_games\*.bat") do (
    echo Running %%f
    call "%%f"
)