@echo off
setlocal

set "init=%~dp0\..\settings\init.bat"
call %init%

for %%f in ("%configurations-any%\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%configurations-user%\%computername%\*.bat") do (
    echo Running %%f
    call "%%f"
)

endlocal