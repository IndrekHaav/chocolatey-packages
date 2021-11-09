$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName     = $Env:ChocolateyPackageName
    Url             = 'https://dl.gitea.io/tea/0.8.0/tea-0.8.0-windows-386.exe'
    Checksum        = 'afd76615ae5b5eaf36cd8b4b9a79840efddc4a778e9e35c7b1c6f94af8f55e37'
    ChecksumType    = 'sha256'
    Url64bit        = 'https://dl.gitea.io/tea/0.8.0/tea-0.8.0-windows-amd64.exe'
    Checksum64      = '4dba79d63ae2c0ffa623c090d1e64edec38fbfe7206dae6d6fc3d2b465dfc55c'
    ChecksumType64  = 'sha256'
    FileFullPath    = Join-Path $toolsDir 'tea.exe'
}

Get-ChocolateyWebFile @packageArgs
