$ErrorActionPreference = 'Stop'

$toolsDir = $(Split-Path $MyInvocation.MyCommand.Definition)

Install-ChocolateyInstallPackage `
	-PackageName Gittyup `
	-SilentArgs /S `
	-File "$toolsDir\setup-32.exe" `
	-File64 "$toolsDir\setup-64.exe"

Install-BinFile -Name Gittyup -Path "$(Get-AppInstallLocation Gittyup)\Gittyup.exe" -UseStart
Remove-Item $toolsDir\setup-*.exe -ErrorAction SilentlyContinue -Force
