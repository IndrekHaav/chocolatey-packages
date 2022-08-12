$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.67.1/Buckets-Setup-0.67.1.exe'
    Checksum        = '2a82c60cc7a4f70ab05cd1d2e34fe53c1c33ae9f2a37b52acf95ca24bb19249c'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
