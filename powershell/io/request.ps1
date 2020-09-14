# https://devblogs.microsoft.com/scripting/playing-with-json-and-powershell/
# https://stackoverflow.com/questions/38005341/the-response-content-cannot-be-parsed-because-the-internet-explorer-engine-is-no

$request = 'http://ifconfig.co/json'
$response = Invoke-WebRequest -UseBasicParsing $request | ConvertFrom-Json | Select ip

$response
""
$response.ip
$string = "string$($response.ip)"
$string