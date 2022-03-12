@REM https://www.windows-commandline.com/current-logged-in-user-name-command/

echo %username%


set HTTP_PROXY=http://user:password@proxy.domain.com:port
set HTTPS_PROXY=http://user:password@proxy.domain.com:port


@REM https://superuser.com/questions/1302362/how-to-display-current-windows-os-date-time-and-timezone-in-cli
@REM You can use this to output the current date, time, and time zone:
echo %date% %time% & tzutil /g
