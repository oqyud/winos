@echo off
cd /d "%~dp0"
choco export ".\packages.config" --include-version-numbers