$ErrorActionPreference = 'Stop'

$url = 'https://github.com/buckets/application/releases/download/v0.60.1/Buckets-Setup-0.60.1.exe'
$checksum = '3384604b06d0ad8050d5e61f398dba69cc7c65c595a8509d1d66463f473fc2fc'

Install-ChocolateyPackage -PackageName $Env:ChocolateyPackageName `
    -Url $url -Checksum $checksum -ChecksumType 'sha256' `
    -FileType 'exe' -silentArgs '/S' -validExitCodes @(0)
