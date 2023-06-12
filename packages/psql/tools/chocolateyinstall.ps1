$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $Env:ChocolateyPackageName
  Url64           = 'https://get.enterprisedb.com/postgresql/postgresql-15.3-2-windows-x64-binaries.zip'
  Checksum64      = '474FE9AC6B51E339F9D50354DFEE583D46DFD885329D120E3EE88EC6AFF8B892'
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
