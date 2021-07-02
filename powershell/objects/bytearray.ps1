# https://social.technet.microsoft.com/wiki/contents/articles/24594.powershell-convert-the-bytes-array-to-string.aspx

$bytes = [System.Text.Encoding]::ASCII.GetBytes("abc")
$bytes
$str = [System.Text.Encoding]::ASCII.GetString($bytes)
$str