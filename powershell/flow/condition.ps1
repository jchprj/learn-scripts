# https://www.tutorialspoint.com/powershell/powershell_operators.htm
$a = 1
$b = 1
Write-Output $a                 # 1
Write-Output ($a -eq $b)        # True
Write-Output ($a -ne $b)        # False
Write-Output ("?") 
Write-Output ($a > $b) 
Write-Output ("!") 
Write-Output ($a -gt $b)        # False
Write-Output ($a -lt $b)        # False
Write-Output ($a -ge $b)        # True
Write-Output ($a -le $b)        # True
# Write-Output ($a < $b)        The '<' operator is reserved for future use. ParentContainsErrorRecordException

$c = ""
if($c -eq "") {
    Write-Output ("c") 
}