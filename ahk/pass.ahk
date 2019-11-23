; Auto input password from file "pass"(two lines, first line is user name, second line is password) in the same folder.
; ctrl + alt + u: username, tab, password
; ctrl + alt + p: password
^!u::
F := FileOpen("pass", "r")
Username := F.ReadLine()
Array := StrSplit(Username)
Array.Push('`t')
Passwd := F.ReadLine()
Array2 := StrSplit(Passwd)
interval := 5
for index, element in Array ; Enumeration is the recommended approach in most cases.
{
    Sleep(interval)
    Send element
}
for index, element in Array2 ; Enumeration is the recommended approach in most cases.
{
    Sleep(interval)
    Send element
}
Goto END

^!p::
F := FileOpen("pass", "r")
Username := F.ReadLine()
Passwd := F.ReadLine()
Array2 := StrSplit(Passwd)
for index, element in Array2 ; Enumeration is the recommended approach in most cases.
{
    Sleep(interval)
    Send element
}
Goto END

END: