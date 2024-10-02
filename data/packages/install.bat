@echo off
setlocal

:Choco
choco feature enable allowGlobalConfirmation
choco install "%packages-user-lists%\choco.config" -y 
choco pin add --name="'sublimetext4'" --version="'4.0.0.418000'"

:: Just for Crack

winget import -i "%packages-user-lists%\msstore.json" --accept-package-agreements --accept-source-agreements
winget import -i "%packages-user-lists%\winget.json" --accept-package-agreements --accept-source-agreements

set apps=AIMP.AIMP^
;Guru3D.RTSS^
;KDE.KDEConnect^
;Microsoft.PowerToys^
;Microsoft.UI.Xaml.2.7^
;Microsoft.VCLibs.Desktop.14^
;Python.Launcher

for %%i in (%apps%) do (
    echo Pinning %%i...
    cmd /c winget pin add --id "%%i"
)

endlocal