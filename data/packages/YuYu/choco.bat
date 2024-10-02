@echo off
setlocal

choco install "%packages-user-lists%\choco.config" -y
choco feature enable allowGlobalConfirmation

:: Just for Crack
choco pin add --name="'sublimetext4'" --version="'4.0.0.418000'"

endlocal