$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.72.1/Buckets-Setup-0.72.1.exe'
    Checksum        = '78CE0DF45DFB6CBD1DE992C4C8114C15B3BD4DE99312627D26F87C49C2FE8D71'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
