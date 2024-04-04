$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $Env:ChocolateyPackageName
  Url64           = 'https://get.enterprisedb.com/postgresql/postgresql-16.1-1-windows-x64-binaries.zip'
  Checksum64      = '0179CC6D863139B68D1D1A69BDB58DB766B040C6B6F2976DD1C5ADF83DD0B6DE'
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
  'liblz4.dll'
  'libpq.dll'
  'libssl-3-x64.dll'
  'libwinpthread-1.dll'
  'libzstd.dll'
  'zlib1.dll'
  'psql.exe'
  'pg_dump.exe'
  'pg_dumpall.exe'
  'pg_restore.exe'
)

Get-ChildItem -Path $toolsDir\pgsql\bin\* -Include $files | Move-Item -Destination $toolsDir
Remove-Item -Path $toolsDir\pgsql -Recurse
