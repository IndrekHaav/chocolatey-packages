$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://download.librepcb.org/releases/1.1.0/librepcb-1.1.0-windows-x86_64.zip'
    Checksum        = '0E005BEEC5BE8511BAE3DB99607D5C1C1408030B94A440AA90C7D75E5CEAC7C6'
    ChecksumType    = 'sha256'
    UnzipLocation   = $toolsDir
}

Install-ChocolateyZipPackage @packageArgs
