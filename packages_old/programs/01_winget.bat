@echo off

set "at=--accept-source-agreements --accept-package-agreements"
set "wid=winget install -e --id"

:: NVIDIA Control Panel
%wid% 9NF8H0H7WMLT %at%

:: Powershell, Terminal Preview
%wid% Microsoft.PowerShell %at% && %wid% 9N8G5RFZ9XK3 %at%

:: NanaZip
%wid% M2Team.NanaZip %at%

:: MyASUS, ArmouryCrate
start %wid% 9N7R5S6B0ZZH %at% && %wid% Asus.ArmouryCrate %at%

:: Bonjour
%wid% Apple.Bonjour %at%

:: MSI Afterburner
%wid% Guru3D.Afterburner %at%

:: Movies & TV, Photos, Phone Link
start %wid% 9WZDNCRFJ3P2 %at% && %wid% 9WZDNCRFJBH4 %at% && %wid% 9NMPJ99VJBWV %at%

:: Discord
%wid% Discord.Discord %at%

:: Steam
%wid% Valve.Steam %at%

:: Radmin VPN
%wid% Famatech.RadminVPN %at%

:: WingetUI
%wid% SomePythonThings.WingetUIStore %at%