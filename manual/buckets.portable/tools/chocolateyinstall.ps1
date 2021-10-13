$ErrorActionPreference = 'Stop'

$url = 'https://github.com/buckets/application/releases/download/v0.60.1/Buckets-0.60.1.exe'
$checksum = '88332ffe369d5fc61dc36c5c722b58826e7d88fd017efb7c231614fbde3e9ad1'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName $Env:ChocolateyPackageName `
    -Url $url -Checksum $checksum -ChecksumType 'sha256' `
    -FileFullPath $toolsDir\buckets.exe
