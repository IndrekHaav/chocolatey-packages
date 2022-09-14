$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.67.2/Buckets-0.67.2.exe'
    Checksum        = '0338e00be4a5bf8a0d9559473b6e189dd1090ce42f9a33f33642950bfcdb44d4'
    ChecksumType    = 'sha256'
    FileFullPath    = Join-Path $toolsDir 'buckets.exe'
}

Get-ChocolateyWebFile @packageArgs
