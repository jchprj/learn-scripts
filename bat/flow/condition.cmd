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