# [How to Get a Computer Name with PowerShell](https://adamtheautomator.com/how-to-get-a-computer-name-with-powershell/)
hostname
[System.Net.Dns]::GetHostName()
[System.Net.DNS]::GetHostByName('').HostName
[System.Net.DNS]::GetHostByName($Null).HostName
$env:COMPUTERNAME
[Environment]::MachineName
Get-CimInstance -ClassName Win32_ComputerSystem
(Get-CimInstance -ClassName Win32_ComputerSystem).Name