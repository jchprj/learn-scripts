# https://stackoverflow.com/questions/29717886/powershell-retrieve-json-object-by-variable-value
$json = ConvertFrom-Json "{key:true}"
$key = "key"

Write-Host $json.$key
Write-Host $json.$($key)
Write-Host $json."$key"