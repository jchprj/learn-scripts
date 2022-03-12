@REM https://stackoverflow.com/questions/1420965/redirect-windows-cmd-stdout-and-stderr-to-a-single-file
@REM The syntax 2>&1 will redirect 2 (stderr) to 1 (stdout). You can also hide messages by redirecting to NUL

dir > temp_test.txt 2>&1
