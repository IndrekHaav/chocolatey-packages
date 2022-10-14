$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $Env:ChocolateyPackageName
  Url64           = 'https://get.enterprisedb.com/postgresql/postgresql-14.5-1-windows-x64-binaries.zip'
  Checksum64      = '7e2cd7c82741667c5effd736d5da31fb0aeefc0eba5c8c69f89340519b265017'
  ChecksumType64  = 'sha256'
  UnzipLocation   = $toolsDir
  SpecificFolder  = 'pgsql/bin'
}

Install-ChocolateyZipPackage @packageArgs

# List of files to keep
$files = @(
  'libcrypto-1_1-x64.dll'
  'libiconv-2.dll'
  'libintl-9.dll'
  'libpq.dll'
  'libssl-1_1-x64.dll'
  'libwinpthread-1.dll'
  'zlib1.dll'
  'psql.exe'
  'pg_dump.exe'
  'pg_dumpall.exe'
  'pg_restore.exe'
)

Get-ChildItem -Path $toolsDir\pgsql\bin\* -Include $files | Move-Item -Destination $toolsDir
Remove-Item -Path $toolsDir\pgsql -Recurse
