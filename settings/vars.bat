:: LOCAL ::

:: Пакетные менеджеры
set "chocolatey=%~dp0chocolatey.ps1"
set "scoop=%~dp0\scoop\scoop.ps1"

set "data=%root%\data"
:: Пакеты
set "packages=%data%\packages"
:: Конфигурации
set "configurations=%data%\configurations"
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

:: Devices
set "device_0=YuYu"
set "device_1=YuYuLW"