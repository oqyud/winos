::@echo off
setlocal

call "D:\Structure\Shared\Deploy\WinOS\modules\init.bat"

winget import -i "%packages-user-lists%\msstore.json" --accept-package-agreements --accept-source-agreements
winget import -i "%packages-user-lists%\winget.json" --accept-package-agreements --accept-source-agreements

:: Pins
winget pin add --id "AIMP.AIMP"
winget pin add --id "Guru3D.RTSS"
winget pin add --id "KDE.KDEConnect"
winget pin add --id "Microsoft.PowerToys"
winget pin add --id "Microsoft.UI.Xaml.2.7"
winget pin add --id "Microsoft.VCLibs.Desktop.14"
winget pin add --id "Python.Launcher"

pause
endlocal