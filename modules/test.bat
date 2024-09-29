@echo off

cd /d "%~dp0"
call init.bat

for %%f in ("test\*.bat") do (
    echo Running %%f
    call "%%f"
)