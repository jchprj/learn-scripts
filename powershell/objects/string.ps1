$a = "aaaaaaa"
$a

$b = "bbb"
$b

$c = "c""cc${a}"
$c

$c = "c""cc$a"
$c

$json=@{}
$json.add("f", "ff")
$json

$d = "ccc$($json.f)"
$d

# https://stackoverflow.com/questions/28460208/what-is-the-idiomatic-way-to-slice-an-array-relative-to-both-of-its-ends
$e = "a/b/c/d"
$f = $e.Split("/")
$f[0..($f.Length-2)]
# https://stackoverflow.com/questions/7723584/how-do-i-convert-an-array-object-to-a-string-in-powershell
[system.String]::Join("/", $f[0..($f.Length-2)])
$f[-1]


# https://devblogs.microsoft.com/scripting/trim-your-strings-with-powershell/
"TRIM STRINGS"
$string = " a String "
$string
$string.Trim()
$string.TrimEnd()
$string.TrimStart()
$string = "a String a"
$string
$string.Trim("a"," ")
