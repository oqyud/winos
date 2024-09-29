@echo off
setlocal

cd /d "%~dp0"
call init.bat

for %%f in ("%configurations-any%\programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%configurations-user%\%computername%\programs\*.bat") do (
    echo Running %%f
    call "%%f"
)
for %%f in ("%configurations-any%\games\*.bat") do (
    echo Running %%f
    call "%%f"
)
endlocal