$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.66.0/Buckets-Setup-0.66.0.exe'
    Checksum        = '06d0c18997732695207dba1f80d9ef70ef151f22124451cd3ec995bcad6ab3a2'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
