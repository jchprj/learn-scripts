# https://stackoverflow.com/questions/29717886/powershell-retrieve-json-object-by-variable-value
$json = ConvertFrom-Json "{key:true}"
$key = "key"

Write-Host $json.$key
Write-Host $json.$($key)
Write-Host $json."$key"


# https://stackoverflow.com/questions/23062087/how-do-you-get-the-name-field-of-a-json-object-in-powershell-if-you-dont-know-i
Write-Host $json.psobject.properties.name