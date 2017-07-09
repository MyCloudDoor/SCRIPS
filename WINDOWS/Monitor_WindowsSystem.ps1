clear
Write-Host "***************************************************************************************************************"
Write-Host "                                                  MyCloudDoor                                                  "
Write-Host -NoNewLine "                                                "
Get-CimInstance Win32_OperatingSystem | Select-Object  CSName | ForEach{ $_.CSName }
Write-Host -NoNewLine "                                                "
Invoke-RestMethod ipecho.net/plain
Write-Host -NoNewLine "-------------------------------------------------OS Networking-------------------------------------------------"
Get-NetIPConfiguration
Get-WmiObject -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=TRUE -ComputerName . | Format-Table -Property IPAddress
Get-NetAdapter | ft Name, Status, Linkspeed, VlanID
Write-Host "-------------------------------------------------OS Version----------------------------------------------------"
Write-Host ""
Write-Host -NoNewLine "OS Version: "

Get-CimInstance Win32_OperatingSystem | Select-Object  Caption | ForEach{ $_.Caption }
Start-Sleep -m 100
Write-Host ""

Write-Host -NoNewLine "Service Pack Version: "

Get-CimInstance Win32_OperatingSystem | Select-Object  ServicePackMajorVersion | ForEach{ $_.ServicePackMajorVersion }
Start-Sleep -m 100
Write-Host ""
Write-Host -NoNewLine "OS Architecture: "

Get-CimInstance Win32_OperatingSystem | Select-Object  OSArchitecture | ForEach{ $_.OSArchitecture }
Write-Host ""

Write-Host -NoNewLine "Boot Device: "

Get-CimInstance Win32_OperatingSystem | Select-Object  BootDevice | ForEach{ $_.BootDevice }
Start-Sleep -m 100
Write-Host ""

Write-Host -NoNewLine "Build Number: "

Get-CimInstance Win32_OperatingSystem | Select-Object  BuildNumber | ForEach{ $_.BuildNumber }
Start-Sleep -m 100
Write-Host ""


Write-Host -NoNewLine "Install Date: "

Get-CimInstance Win32_OperatingSystem | Select-Object  InstallDate | ForEach{ $_.InstallDate }
Start-Sleep -m 100
Write-Host ""


Get-CimInstance Win32_OperatingSystem | FL *
Start-Sleep -m 100
Write-Host "***************************************************************************************************************"
