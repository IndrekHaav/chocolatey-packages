$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $Env:ChocolateyPackageName
  Url64           = 'https://get.enterprisedb.com/postgresql/postgresql-15.2-1-windows-x64-binaries.zip'
  Checksum64      = '1EB278EAC5EECDFD1B8659C06D47B3D25035A98D19FE8BD4E371026E0A418983'
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
