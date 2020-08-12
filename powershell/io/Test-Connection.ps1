

ping www.bing.com

Test-Connection www.bing.com

Get-Help Test-Connection
Get-Help Test-Connection -Examples

[System.Collections.ArrayList]$testArray = @()
$testArray.Add('192.168.1.1')
$testArray.Add('google.com')
$testArray.Add('qwertyuiop.asdf')
$testArray.Add('yahoo.com') | Out-Null
$testArray

Test-Connection -ComputerName $testArray

if (Test-Connection Google.com) {Write-Host "Success!"} 