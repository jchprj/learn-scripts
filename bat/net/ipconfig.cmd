@REM https://documentation.cpanel.net/display/CKB/How+To+Clear+Your+DNS+Cache
ipconfig /flushdns

@REM List all IP addresses only
@REM ipconfig | findstr "Address" | for /f "tokens=14" %f in ('more') do @echo %f
ipconfig | findstr "Address" | for /f "tokens=14" %%f in ('more') do @echo %%f
