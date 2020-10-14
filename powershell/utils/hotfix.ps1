

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