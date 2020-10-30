
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.surfshark.com/windows/latest/SurfsharkSetup.exe'


$packageArgs = @{
  packageName   = "Surfshark"
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'surfshark*'

  checksum      = 'F1236A602FC3EB6D5F0DD7FDBC95B812C6ADABB98970E237EF3C3A70F5B84CC9'
  checksumType  = 'sha256'


  silentArgs    = "/exenoui"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








