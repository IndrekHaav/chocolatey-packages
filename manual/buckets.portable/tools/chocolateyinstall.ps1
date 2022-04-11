$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.66.0/Buckets-0.66.0.exe'
    Checksum        = '05153f03d014df2b34baa97fa84ae47b4cf34800d8d6e7552832731cd475ba84'
    ChecksumType    = 'sha256'
    FileFullPath    = Join-Path $toolsDir 'buckets.exe'
}

Get-ChocolateyWebFile @packageArgs
