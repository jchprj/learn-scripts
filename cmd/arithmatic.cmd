@echo off
SET /A "Result = 5 * 2"
echo %Result%
SET /A "Result = 48 & 23"
echo %Result%
SET /A "Result = 16 | 16"
echo %Result%
SET /A "Result = 31 ^ 15"
echo %Result%

set /A a=6
set /A b=13
set /A c="255&-(((a * 16) + b)^163)-1"
echo c:%c%