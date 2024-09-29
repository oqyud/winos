@echo off

cd /d "%~dp0"
choco install ".\lists\packages.config" -y

:: Just for Crack
choco pin add --name="'sublimetext4'" --version="'4.0.0.418000'"