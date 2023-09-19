$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.71.1/Buckets-Setup-0.71.1.exe'
    Checksum        = '6D93F882238C6C4DE89895E40D4092AFAE936897AAABAEA2CEDB41EE087C3CFA'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
