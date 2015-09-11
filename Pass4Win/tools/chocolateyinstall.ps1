$ErrorActionPreference = 'Stop';


$packageName = 'pass4win'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/mbos/Pass4Win/releases/download/version-1.0.6/Pass4Win-Setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  silentArgs    = '/S'
  validExitCodes= @(0, 3010, 1641)
 
  registryUninstallerKey = 'Pass4Win'
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs
