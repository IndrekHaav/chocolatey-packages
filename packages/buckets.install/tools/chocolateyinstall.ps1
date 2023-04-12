$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.70.4/Buckets-Setup-0.70.4.exe'
    Checksum        = 'CB4FBECC4888C6BBEE4FA8548E382A0C6AAEF300F9B1EF2D0B8764D6742F0993'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
