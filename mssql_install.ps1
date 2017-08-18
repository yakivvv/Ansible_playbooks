$beforeMount = (Get-Volume).DriveLetter
$mountResult = Mount-DiskImage C:\tmp\SQLServer2014SP2.iso
$setuppath = (compare $beforeMount (Get-Volume).DriveLetter -PassThru) + ":\setup.exe"
& $setuppath /ConfigurationFile=C:\ansible\ConfigurationFile.INI /Q
