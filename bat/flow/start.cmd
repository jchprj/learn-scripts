
@REM https://stackoverflow.com/questions/5909012/windows-batch-script-launch-program-and-exit-console
start "" "%SystemRoot%\Notepad.exe"

@REM https://superuser.com/questions/198525/how-can-i-execute-a-windows-command-line-in-background
START /B program

@REM https://stackoverflow.com/questions/3739327/launching-a-website-via-windows-commandline
start /max http://url.com