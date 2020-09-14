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