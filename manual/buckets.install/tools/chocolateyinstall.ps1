$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.66.3/Buckets-Setup-0.66.3.exe'
    Checksum        = 'ff82735c6599806cf494068427ae53b99d9ad2e48f9177cc9bb17d10ee3c3787'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
