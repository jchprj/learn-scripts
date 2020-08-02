# How To Get Disk Size And Disk Free Space Using PowerShell https://improvescripting.com/how-to-get-disk-size-and-disk-free-space-using-powershell/

Get-CimInstance -Class CIM_LogicalDisk | Select-Object @{Name="Size(GB)";Expression={$_.size/1gb}}, @{Name="Free Space(GB)";Expression={$_.freespace/1gb}}, @{Name="Free (%)";Expression={"{0,6:P0}" -f(($_.freespace/1gb) / ($_.size/1gb))}}, DeviceID, DriveType | Where-Object DriveType -EQ '3'

Get-CimInstance -Class CIM_LogicalDisk | Select-Object * | Where-Object DriveType -EQ '3'

Get-CimInstance -Class Win32_LogicalDisk | Select-Object @{Name="Size(GB)";Expression={$_.size/1gb}}, @{Name="Free Space(GB)";Expression={$_.freespace/1gb}}, @{Name="Free (%)";Expression={"{0,6:P0}" -f(($_.freespace/1gb) / ($_.size/1gb))}}, DeviceID, DriveType | Where-Object DriveType -EQ '3'

Get-CimInstance -Class Win32_LogicalDisk | Select-Object * | Where-Object DriveType -EQ '3'

# Use PowerShell to Find Installed Hotfixes https://devblogs.microsoft.com/scripting/powertip-use-powershell-to-find-installed-hotfixes/

Get-HotFix | where InstalledOn

# Install all .msu hotfix in current folder

$dir = (Get-Item -Path ".\" -Verbose).FullName
Foreach($item in (ls $dir *.msu -Name))
{
    echo $item
    $item = $dir + "\" + $item
    wusa $item /quiet /norestart | Out-Null
}