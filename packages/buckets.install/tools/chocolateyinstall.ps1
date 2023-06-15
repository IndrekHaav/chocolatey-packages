$ErrorActionPreference = 'Stop'

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.70.5/Buckets-Setup-0.70.5.exe'
    Checksum        = '660F89031C0DBC22915F24FB06CAB5523A4FA0C9782A04A80AA9BBA1222F0594'
    ChecksumType    = 'sha256'
    FileType        = 'exe'
    silentArgs      = '/S'
    validExitCodes  = @(0)
}

Install-ChocolateyPackage @packageArgs
