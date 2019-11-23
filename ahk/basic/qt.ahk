isRun := 0
Loop { 
    if (isRun = 1)
    {
        Send "{up}"
        Sleep 1
        Send "{Space}"
        Sleep 1
    }
}

#1::
if(isRun = 1) {
    isRun := 0
}
else 
{
    isRun := 1
}
return