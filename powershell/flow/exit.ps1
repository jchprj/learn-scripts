$a = 1
Write-Output $a
if($a -eq 1) {
    Write-Output "$a + 1"
}
if($a -ne 2) {
    exit
}
Write-Output "$a + 2"