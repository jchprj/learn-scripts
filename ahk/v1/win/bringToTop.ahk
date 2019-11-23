
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
        WinActivate, ahk_id %this_id%
        ;MsgBox, 4, , Visiting All Windows`n%a_index% of %id%`nahk_id %this_id%`nahk_class %this_class%`n%this_title%`n`nContinue?
        IfMsgBox, NO, break
    }
}