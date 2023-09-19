$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $Env:ChocolateyPackageName
  Url64           = 'https://get.enterprisedb.com/postgresql/postgresql-15.4-1-windows-x64-binaries.zip'
  Checksum64      = '1924951BFCFEC130028A1507CE7266BE68A0481A43BADB87C5B6ACAF0DA58222'
  ChecksumType64  = 'sha256'
  UnzipLocation   = $toolsDir
  SpecificFolder  = 'pgsql/bin'
}

Install-ChocolateyZipPackage @packageArgs

# List of files to keep
$files = @(
  'libcrypto-3-x64.dll'
  'libiconv-2.dll'
  'libintl-9.dll'
  'libpq.dll'
  'libssl-3-x64.dll'
  'libwinpthread-1.dll'
  'zlib1.dll'
  'psql.exe'
  'pg_dump.exe'
  'pg_dumpall.exe'
  'pg_restore.exe'
)

Get-ChildItem -Path $toolsDir\pgsql\bin\* -Include $files | Move-Item -Destination $toolsDir
Remove-Item -Path $toolsDir\pgsql -Recurse
