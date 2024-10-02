:: LOCAL ::

:: Package Managers
set "chocolatey=%~dp0chocolatey.ps1"
set "scoop=%~dp0scoop.ps1"

:: Local Root
set "data=%root%\data"

:: Packages
set "packages=%data%\packages"
set "packages-installer=%packages%\install.bat"
set "packages-user-lists=%packages%\%computername%"
set "packages-any-lists=%packages%\any"

:: Configurations
set "configurations=%data%\configurations"
set "configurations-any=%configurations%\any"
set "configurations-user=%configurations%\%computername%"
:: Mounts
set "mounts=%data%\mounts"


:: GLOBAL ::

:: Main Folder
set "structure=D:\Structure"

:: Storage
set "storage=%structure%\Shared\Storage"
set "storage-programs=%storage%\Programs"
set "storage-games=%storage%\Games"
set "storage-settings=%storage%\Settings"
set "storage-daws=%storage%\DAWs"
set "storage-daws-plugins=%storage-daws%\Plugins"

:: User Folders
set "user-folder=%structure%\User"
set "music-folder=%user-folder%\Music"