$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.63.2/Buckets-Setup-0.63.2.exe'
    Checksum        = '968845540de8bcc5487336660c739a9c4659e6945aa1eb89651e413b60ebf575'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
