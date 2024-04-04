$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $Env:ChocolateyPackageName
  Url64           = 'https://get.enterprisedb.com/postgresql/postgresql-16.2-1-windows-x64-binaries.zip'
  Checksum64      = 'C510B3058C161479BFBE0AEAC878CA682B344FD9385C58A359690147A4CA1A6C'
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
