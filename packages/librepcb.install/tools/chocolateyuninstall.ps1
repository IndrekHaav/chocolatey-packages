$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    SoftwareName    = 'librepcb*'
    FileType        = 'exe'
    SilentArgs      = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    ValidExitCodes  = @(0)
}

[array]$keys = Get-UninstallRegistryKey $packageArgs

if ($keys.Count -eq 1) {
    $keys | ForEach-Object {
    $packageArgs['File'] = "$($_.UninstallString)"
    Uninstall-ChocolateyPackage @packageArgs
  }
}
elseif ($keys.Count -eq 0) {
    Write-Warning "$packageName has already been uninstalled by other means."
}
elseif ($keys.Count -gt 1) {
    Write-Warning "$($keys.Count) matches found!"
    Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
    Write-Warning "Please alert package maintainer the following keys were matched:"
    $keys | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}
