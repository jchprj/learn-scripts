echo off
set a=1
echo a is %a%
if %a% EQU 1 (echo 1) ELSE echo 0
if %a% == 1 (echo 1) ELSE echo 0
if defined a (echo 1) ELSE echo 0

if EXIST README.md (echo 1) ELSE echo 0

