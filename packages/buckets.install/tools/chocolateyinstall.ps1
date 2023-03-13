$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.70.2/Buckets-Setup-0.70.2.exe'
    Checksum        = '048334ECFF17FB4BC4D51F733478A384EC454CB41D158C4FEDC3DEBF9869470D'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
