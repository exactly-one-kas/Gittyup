$ErrorActionPreference = 'Stop'

Uninstall-ChocolateyPackage -PackageName Gittyup -File $(Get-UninstallRegistryKey -SoftwareName Gittyup).UninstallString -SilentArgs /S
Uninstall-BinFile -Name Gittyup
