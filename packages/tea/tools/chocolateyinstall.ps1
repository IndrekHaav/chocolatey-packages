$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://dl.gitea.io/tea/0.9.0/tea-0.9.0-windows-386.exe'
    Checksum        = '792e0ae2baa6a5ac4c3fef7c19a5489777ea8c1ba3e29044560f16af85c642a2'
    ChecksumType    = 'sha256'
    Url64bit        = 'https://dl.gitea.io/tea/0.9.0/tea-0.9.0-windows-amd64.exe'
    Checksum64      = '1f4d0f4edeec04381811bf888035d20442b43d98ea39743d1661c2e42d1c79ec'
    ChecksumType64  = 'sha256'
    FileFullPath    = Join-Path $toolsDir 'tea.exe'
}

Get-ChocolateyWebFile @packageArgs
