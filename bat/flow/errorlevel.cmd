@REM https://stackoverflow.com/questions/334879/how-do-i-get-the-application-exit-code-from-a-windows-command-line
echo Exit Code is %errorlevel%


@REM http://steve-jansen.github.io/guides/windows-batch-scripting/part-5-if-then-conditionals.html
IF /I "%ERRORLEVEL%" NEQ "0" (
    ECHO execution failed
)