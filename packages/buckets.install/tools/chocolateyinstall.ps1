$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.72.2/Buckets-Setup-0.72.2.exe'
    Checksum        = '946F4999850C0126C9D1377EFA056F87E750838BDA59826CA39BBDF7C71BED3A'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
