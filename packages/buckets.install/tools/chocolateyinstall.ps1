$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.68.0/Buckets-Setup-0.68.0.exe'
    Checksum        = 'C262E6BDC6E80AEB6DB8FDDBABD011B35157032C704D0E5D3BC495B143076800'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
