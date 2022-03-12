# https://www.itprotoday.com/powershell/q-how-can-i-get-just-first-entry-list-entries
$e = "a/b/c/d"
$f = $e.Split("/")|Select
"`$f"
$f
$g = $e.Split("/")|Select-Object -first 1
"`$g"
$g