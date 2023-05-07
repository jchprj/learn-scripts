@REM https://superuser.com/questions/191224/populating-array-in-dos-batch-script

@echo off
setlocal enabledelayedexpansion

set  arrayline[0]=############
set  arrayline[1]=#..........#
set  arrayline[2]=#..........#
set  arrayline[3]=#..........#
set  arrayline[4]=#..........#
set  arrayline[5]=#..........#
set  arrayline[6]=#..........#
set  arrayline[7]=#..........#
set  arrayline[8]=#..........#
set  arrayline[9]=#..........#
set arrayline[10]=#..........#
set arrayline[11]=#..........#
set arrayline[12]=############

::read it using a FOR /L statement
for /l %%n in (0,1,12) do (
    echo !arrayline[%%n]!
)



@REM https://stackoverflow.com/questions/13805187/how-to-set-a-variable-inside-a-loop-for-f
SETLOCAL ENABLEDELAYEDEXPANSION
set z=------
for /F "tokens=*" %%a in ('type loop.cmd') do (
    set z=%%a
    echo %z%
    echo !z!
    echo %%a
)