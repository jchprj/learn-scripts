@REM https://www.tutorialspoint.com/batch_script/batch_script_operators.htm

@REM Arithmetic Operators
SET /A a = 5
SET /A b = 10
SET /A c = %a%+%b%
echo %c%
SET /A c = %a%-%b%
echo %c%
SET /A c = %b%*%a%
echo %c%
SET /A c = %b%/%a%
echo %c%
SET /A c =%b% %% %a%
echo %c%

@REM Relational Operators
SET /A a = 5 
SET /A b = 10 
if %a% EQU %b% echo A is equal to than B 
if %a% NEQ %b% echo A is not equal to than B 
if %a% LSS %b% echo A is less than B 
if %a% LEQ %b% echo A is less than or equal B
if %a% GTR %b% echo A is greater than B 
if %a% GEQ %b% echo A is greater than or equal to B

@REM Logical Operators
SET /A a = 5
SET /A b = 10
IF %a% LSS 10 (IF %b% GTR 0 (ECHO %a% is less than 10 AND %b% is greater than 0))
SET /A a = 5
SET /A b = 10
IF %a% GEQ 10 (
   IF %b% LEQ 0 (
      ECHO %a% is NOT less than 10 OR %b% is NOT greater than 0
   ) ELSE (
      ECHO %a% is less than 10 OR %b% is greater than 0
   )
) ELSE (
   ECHO %a% is less than 10 OR %b% is greater than 0
)
SET /A a = 5
IF NOT %a%==6 echo "A is not equal to 6"

@REM Assignment Operators
SET /A a = 5
SET /A a+=5
echo %a%
SET /A a-=5
echo %a%
SET /A a*=5
echo %a%
SET /A a/=5
echo %a%
SET /A a%=5
echo %a%

@REM Bitwise Operators
SET /A "Result = 48 & 23"
echo %Result%
SET /A "Result = 16 | 16"
echo %Result%
SET /A "Result = 31 ^ 15"
echo %Result%