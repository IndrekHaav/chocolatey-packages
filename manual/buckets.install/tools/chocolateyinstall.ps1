$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.66.5/Buckets-Setup-0.66.5.exe'
    Checksum        = 'aaf90322e1d7c0330d9e0646feda9555c99b8ba146a188be7e62c16493c1040d'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
