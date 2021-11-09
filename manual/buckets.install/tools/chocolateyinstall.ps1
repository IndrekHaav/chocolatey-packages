$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.60.1/Buckets-Setup-0.60.1.exe'
    Checksum        = '3384604b06d0ad8050d5e61f398dba69cc7c65c595a8509d1d66463f473fc2fc'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
