@echo off

cd /d "%~dp0"
set "local-vars=main\local-vars.bat"

call "%local-vars%"
call "%vars%"

for %%f in ("test\*.bat") do (
    echo Running %%f
    call "%%f"
)