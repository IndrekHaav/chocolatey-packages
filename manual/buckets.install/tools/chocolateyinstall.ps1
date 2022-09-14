$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.67.2/Buckets-Setup-0.67.2.exe'
    Checksum        = '1f1fbf44765ad5590b226fa2cefd8f97d06ad88e4b58d93ccdca70b4698444bb'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
