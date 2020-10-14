# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/copy-item?view=powershell-7
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-item?view=powershell-7
# https://stackoverflow.com/questions/43611350/how-can-i-delete-files-with-powershell-without-confirmation/43611773

New-Item -ItemType directory -Path temp
Get-ChildItem temp

New-Item -ItemType file -Path temp\a
$a = Get-ChildItem temp\a | select -property fullname, length
"size of a is: $($a.length)"
Get-ChildItem temp

Copy-Item "temp/a" -Destination "temp/b"
Get-ChildItem temp

Remove-Item -Recurse -Force -Confirm:$false temp
Get-ChildItem temp


# https://stackoverflow.com/questions/13249085/limit-get-childitem-recursion-depth
Get-ChildItem -recurse
Get-ChildItem \*\*\*
# Will return the children at each depth 2,1 and 0
Get-ChildItem \*\*\*,\*\*,\*


# https://stackoverflow.com/questions/21613997/and-characters-mess-up-get-childitem
# Use the -LiteralPath parameter in place of -Path to suppress the wildcard globbing
Get-ChildItem -LiteralPath $folderInfo.rootFolder -Recurse -Force -Directory