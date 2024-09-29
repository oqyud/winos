@echo off

cd /d "%~dp0\modules"

call .\init.bat
call .\packages.bat
call .\configurations.bat
call .\mounts.bat