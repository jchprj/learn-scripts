
@REM https://stackoverflow.com/questions/5909012/windows-batch-script-launch-program-and-exit-console
start "" "%SystemRoot%\Notepad.exe"

@REM https://stackoverflow.com/questions/154075/using-the-start-command-with-parameters-passed-to-the-started-program
start "" "c:\program files\Microsoft Virtual PC\Virtual PC.exe" -pc MY-PC -launch

@REM https://superuser.com/questions/198525/how-can-i-execute-a-windows-command-line-in-background
START /B program

@REM https://stackoverflow.com/questions/3739327/launching-a-website-via-windows-commandline
start /max http://url.com

@REM https://stackoverflow.com/questions/26223936/open-a-web-page-in-a-windows-batch-file
start "" http://www.stackoverflow.com
start "iexplore.exe" http://www.stackoverflow.com
start "chrome.exe" http://www.stackoverflow.com
start "firefox.exe" http://www.stackoverflow.com

@REM https://stackoverflow.com/questions/34698230/how-to-run-multiple-commands-via-start-command
start "MyWindow" cmd /c "ping localhost & ipconfig & pause"