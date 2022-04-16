@REM https://www.windows-commandline.com/current-logged-in-user-name-command/

echo %username%


set HTTP_PROXY=http://user:password@proxy.domain.com:port
set HTTPS_PROXY=http://user:password@proxy.domain.com:port


@REM https://superuser.com/questions/1302362/how-to-display-current-windows-os-date-time-and-timezone-in-cli
@REM You can use this to output the current date, time, and time zone:
echo %date% %time% & tzutil /g


@REM https://pureinfotech.com/list-environment-variables-windows-10/
@REM Windows 10 default environment variables
echo %ALLUSERSPROFILE% &REM C:\ProgramData
echo %APPDATA% &REM C:\Users\{username}\AppData\Roaming
echo %COMMONPROGRAMFILES% &REM C:\Program Files\Common Files
echo %COMMONPROGRAMFILES(x86)% &REM C:\Program Files (x86)\Common Files
echo %CommonProgramW6432% &REM C:\Program Files\Common Files
echo %COMSPEC% &REM C:\Windows\System32\cmd.exe
echo %HOMEDRIVE% &REM C:\
echo %HOMEPATH% &REM C:\Users\{username}
echo %LOCALAPPDATA% &REM C:\Users\{username}\AppData\Local
echo %LOGONSERVER% &REM \\{domain_logon_server}
echo %PATH% &REM C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem
echo %PathExt% &REM .com;.exe;.bat;.cmd;.vbs;.vbe;.js;.jse;.wsf;.wsh;.msc
echo %PROGRAMDATA% &REM C:\ProgramData
echo %PROGRAMFILES% &REM C:\Program Files
echo %ProgramW6432% &REM C:\Program Files
echo %PROGRAMFILES(X86)% &REM C:\Program Files (x86)
echo %PROMPT% &REM $P$G
echo %SystemDrive% &REM C:
echo %SystemRoot% &REM C:\Windows
echo %TEMP% &REM C:\Users\{username}\AppData\Local\Temp
echo %TMP% &REM C:\Users\{username}\AppData\Local\Temp
echo %USERDOMAIN% &REM Userdomain associated with current user.
echo %USERDOMAIN_ROAMINGPROFILE% &REM Userdomain associated with roaming profile.
echo %USERNAME% &REM {username}
echo %USERPROFILE% &REM C:\Users\{username}
echo %WINDIR% &REM C:\Windows
echo %PUBLIC% &REM C:\Users\Public
echo %PSModulePath% &REM %SystemRoot%\system32\WindowsPowerShell\v1.0\Modules\
echo %OneDrive% &REM C:\Users\{username}\OneDrive
echo %DriverData% &REM C:\Windows\System32\Drivers\DriverData
echo %CD% &REM Outputs current directory path. (Command Prompt.)
echo %CMDCMDLINE% &REM Outputs command line used to launch current Command Prompt session. (Command Prompt.)
echo %CMDEXTVERSION% &REM Outputs the number of current command processor extensions. (Command Prompt.)
echo %COMPUTERNAME% &REM Outputs the system name.
echo %DATE% &REM Outputs current date. (Command Prompt.)
echo %TIME% &REM Outputs time. (Command Prompt.)
echo %ERRORLEVEL% &REM Outputs the number of defining exit status of previous command. (Command Prompt.)
echo %PROCESSOR_IDENTIFIER% &REM Outputs processor identifier.
echo %PROCESSOR_LEVEL% &REM Outputs processor level.
echo %PROCESSOR_REVISION% &REM Outputs processor revision.
echo %NUMBER_OF_PROCESSORS% &REM Outputs the number of physical and virtual cores.
echo %RANDOM% &REM Outputs random number from 0 through 32767.
echo %OS% &REM Windows_NT