; To use: setPosition.exe 0x0 960x0 0x520 960x520

total = %0%
A := Object()
j := 0
Loop, %0%  ; For each parameter:
{
    j++
    param := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
    A[j] := param
}


Loop 
{
    WinGet, id, list,,, Program Manager
    i := 0
    Loop, %id%
    {
        this_id := id%A_Index%
        ;WinActivate, ahk_id %this_id%
        WinGetClass, this_class, ahk_id %this_id%
        WinGetTitle, this_title, ahk_id %this_id%
        if (this_title = "Quick-Cocos2dx-Community" and this_class = "GLFW30")
        {
            i ++
            ;MsgBox, 4, , Visiting All Windows`n%a_index% of %id%`nahk_id %this_id%`nahk_class %this_class%`n%this_title%`n`nContinue?
            IfMsgBox, NO, break
        }
    }
    if (i = total)
    {
        break
    }
}
 ;MsgBox %i%
sleep, 300


WinGet, id, list,,, Program Manager
i := 0
Loop, %id%
{
    this_id := id%A_Index%
    ;WinActivate, ahk_id %this_id%
    WinWait, ahk_id %this_id%
    WinGetClass, this_class, ahk_id %this_id%
    WinGetTitle, this_title, ahk_id %this_id%
    if (this_title = "Quick-Cocos2dx-Community" and this_class = "GLFW30")
    {
        i ++
        sleep, 100 * (5 - i)
        Value := A[i]
        pos := StrSplit(Value, "x") 
        xx := pos[1]
        yy := pos[2]
        WinMove, %xx%, %yy% ;0, 0
        ;MsgBox, 4, , Visiting All Windows`n%a_index% of %id%`nahk_id %this_id%`nahk_class %this_class%`n%this_title%`n`nContinue?
        IfMsgBox, NO, break
    }
    if (i = total)
    {
        break
    }
}