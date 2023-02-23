$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.69.0/Buckets-0.69.0.exe'
    Checksum        = '8274C3A2100C35F7AC020C0DB49CA8C1827B9298158107BA6BDDBC5C7758D366'
    ChecksumType    = 'sha256'
    FileFullPath    = Join-Path $toolsDir 'buckets.exe'
}

Get-ChocolateyWebFile @packageArgs
