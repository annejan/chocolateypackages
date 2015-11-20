$ErrorActionPreference = 'Stop';


$packageName = 'qtpass'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/IJHack/qtpass/releases/download/v1.0.5/qtpass-1.0.5.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64


  silentArgs    ='/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)


  registryUninstallerKey = 'qtpass'
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs
