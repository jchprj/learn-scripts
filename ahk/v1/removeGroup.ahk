CoordMode, Mouse, Screen
Loop 100
{
    Click right 1345, 311
    sleep, 100
    Click 1386, 454
    sleep, 100
    Click 979, 560
    
    Click right 1345, 311
    sleep, 100
    Click 1386, 423
    sleep, 100
    Click 979, 560
    
    if (BreakLoop = 1)
    break 
}

Esc::
BreakLoop = 1
return