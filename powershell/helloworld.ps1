

'hello world'.Length

'Hello World' | Get-Member

'Hello World'.ToUpper()


# https://winaero.com/blog/find-powershell-version-windows/

Get-Host | Select-Object Version

$PSVersionTable

# https://stackoverflow.com/questions/1825585/determine-installed-powershell-version
$PSVersionTable.PSVersion