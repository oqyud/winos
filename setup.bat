@echo off

:: Локальные переменные путей
cd /d "%~dp0"
set "local-vars=main\local-vars.bat"

:: Применение переменных глобально
call "%local-vars%"
call "%vars%"

:: Установка Chocolatey
powershell -ExecutionPolicy Bypass -File "%chocolatey%"

:: Восстановление пакетов
for %%f in ("%packages%\programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%packages%\games\*.bat") do (
    echo Running %%f
    call "%%f"
)

:: Восстановление конфигураций
for %%f in ("%configurations%\programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%configurations%\games\*.bat") do (
    echo Running %%f
    call "%%f"
)