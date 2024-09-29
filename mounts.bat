@echo off
setlocal
:: Init
call init.bat

for %%f in ("%mounts%\*.bat") do (
    echo Running %%f
    call "%%f"
)
endlocal