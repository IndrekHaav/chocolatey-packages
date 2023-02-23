$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.69.0/Buckets-Setup-0.69.0.exe'
    Checksum        = 'A98626805D14E3605B002DC24A31CB7649EFEAF9C97B7A1071574CFFA60A85F7'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
