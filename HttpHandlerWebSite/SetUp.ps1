$ErrorActionPreference = 'Stop'

Install-WindowsFeature Web-Server

ipmo WebAdministration
Enable-WindowsOptionalFeature -Online -FeatureName 'IIS-ASPNET45' -All
New-Website -Force -PhysicalPath (resolve-path $PSScriptRoot\..) -Name HttpHandlerWebsite -Port 81
New-WebApplication -Site HttpHandlerWebsite -PhysicalPath $PSScriptRoot -Name HttpHandlerApp

C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ilasm.exe TestIISHandler.il /dll
if (-not (Test-Path bin)) {
    mkdir bin
}
mv TestIISHandler.dll bin -Force

icacls $PSScriptRoot\.. /grant "everyone:(OI)(CI)(RA,RD,X,S,GR)" /t
iisreset
