$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://github.com/buckets/application/releases/download/v0.70.4/Buckets-0.70.4.exe'
    Checksum        = '8AD8DEAB19DCF53DBB6746A775F6AC826F1BB6FA423D1DED67117A166654E439'
    ChecksumType    = 'sha256'
    FileFullPath    = Join-Path $toolsDir 'buckets.exe'
}

Get-ChocolateyWebFile @packageArgs
