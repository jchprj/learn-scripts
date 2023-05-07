@REM https://superuser.com/questions/228794/how-to-extract-part-of-a-string-in-windows-batch-file

set string=Abc_123
echo %string%
echo %string:~4,3%

set url=https://www.github.com
for /f "tokens=2,3 delims=." %%a in ("%url%") do (
  set a=%%a
  set b=%%b
)
echo %a%
echo %b%


@REM https://stackoverflow.com/questions/3001999/how-to-remove-trailing-and-leading-whitespace-for-user-provided-input-in-a-batch
SetLocal EnableDelayedExpansion
set "Params=   assa "
echo Params=%Params%.
for /f "tokens=1*" %%a in ("!Params!") do EndLocal & set Params=%%a
echo Params=%Params%.