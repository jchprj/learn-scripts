cls
# https://devblogs.microsoft.com/scripting/what-is-powershell/
Get-Process

# https://www.gngrninja.com/script-ninja/2016/3/20/powershell#what
$host
$host.Version
$host.Version.Major

$host|Get-Member
$aa = $host
$aa.Name