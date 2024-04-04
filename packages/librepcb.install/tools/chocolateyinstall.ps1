$ErrorActionPreference = 'Stop'

if ((Get-OSArchitectureWidth -Compare 32) -or $env:chocolateyForceX86 -eq $true) {
    throw "This package does not support 32-bit (x86) installation."
}

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://download.librepcb.org/releases/1.1.0/librepcb-installer-1.1.0-windows-x86_64.exe'
    Checksum        = '26DCB6EFAB7F4A4847A03A2AA35435BB75217FE119F5782633C5D80674648898'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    SilentArgs      = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    ValidExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
