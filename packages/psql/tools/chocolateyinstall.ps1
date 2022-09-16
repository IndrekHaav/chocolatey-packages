$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$zipFile = Join-Path $toolsDir 'postgresql-binaries.zip'

$packageArgs = @{
  PackageName     = $Env:ChocolateyPackageName
  Url64           = 'https://get.enterprisedb.com/postgresql/postgresql-14.5-1-windows-x64-binaries.zip'
  Checksum64      = '7e2cd7c82741667c5effd736d5da31fb0aeefc0eba5c8c69f89340519b265017'
  ChecksumType64  = 'sha256'
  FileFullPath    = $zipFile
}

Get-ChocolateyWebFile @packageArgs

# Extract only needed files
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
) -join '|'

Add-Type -Assembly System.IO.Compression.FileSystem
$zip = [IO.Compression.ZipFile]::OpenRead($zipFile)
$zip.Entries |
  Where-Object { $_ -match "pgsql/bin/($files)" } |
  ForEach-Object {
    "Extracting $_"
    [IO.Compression.ZipFileExtensions]::ExtractToFile($_, $(Join-Path $toolsDir $_.Name))
  }

# Clean-up
$zip.Dispose()
Remove-Item $zipFile -Force
