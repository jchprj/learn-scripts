echo off
set a=1
echo a is %a%
if %a% EQU 1 (echo 1) ELSE echo 0
if %a% == 1 (echo 1) ELSE echo 0
if defined a (echo 1) ELSE echo 0

if EXIST README.md (echo 1) ELSE echo 0

@REM http://steve-jansen.github.io/guides/windows-batch-scripting/part-5-if-then-conditionals.html

IF EXIST "temp.txt" ECHO found
IF NOT EXIST "temp.txt" ECHO not found

IF EXIST "temp.txt" (
    ECHO found
) ELSE (
    ECHO not found
)


@REM https://stackoverflow.com/questions/9278614/if-greater-than-batch-files
@REM EQU - equal
@REM NEQ - not equal
@REM LSS - less than
@REM LEQ - less than or equal
@REM GTR - greater than
@REM GEQ - greater than or equal




@REM https://stackoverflow.com/questions/8438511/if-or-if-in-a-windows-batch-file


IF EXIST "temp.txt" GOTO foundit
IF NOT EXIST "temp.txt" GOTO notfoundit

ECHO should not execute

:notfoundit
ECHO Didn't find it
GOTO end

:foundit
ECHO Found it!
GOTO end

:end