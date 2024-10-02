@echo off

set "init=%~dp0\..\init.bat"
call %init%

choco export "%packages-user-lists%\choco.config" --include-version-numbers