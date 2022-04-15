$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.66.2/Buckets-Setup-0.66.2.exe'
    Checksum        = 'bc636055d0674175e61ddbac726d70acdf8a95f48576155fb0632a7c81ae003c'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
