@echo off

:: Локальные переменные путей
cd /d "%~dp0"
set "local-vars=settings\local-vars.bat"

:: Применение переменных глобально
call "%local-vars%"
call "%vars%"

:: Установка Chocolatey
powershell -ExecutionPolicy Bypass -File "%chocolatey%"

:: Восстановление пакетов
for %%f in ("%packages%\%COMPUTERNAME%\programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%packages%\shared_games\*.bat") do (
    echo Running %%f
    call "%%f"
)

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