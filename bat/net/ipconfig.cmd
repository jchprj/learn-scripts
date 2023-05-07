@REM https://documentation.cpanel.net/display/CKB/How+To+Clear+Your+DNS+Cache
ipconfig.exe /flushdns

@REM List all IP addresses only
@REM ipconfig | findstr "Address" | for /f "tokens=14" %f in ('more') do @echo %f
ipconfig.exe | findstr "Address" | for /f "tokens=14" %%f in ('more') do @echo %%f


@REM https://superuser.com/questions/1256951/how-do-i-extract-the-ipv4-ip-addresses-from-the-output-of-ipconfig-and-then-fil
ipconfig.exe | findstr /r "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*"
