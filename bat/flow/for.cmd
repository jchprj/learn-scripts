@REM https://superuser.com/questions/489240/how-to-get-filename-only-without-path-in-windows-command-line?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
for /?


@REM https://ss64.com/nt/for_f.html
FOR /F ["options"] %%parameter IN ("Text string to process") DO command


@REM https://stackoverflow.com/questions/17289969/how-to-split-command-output-in-windows-command-prompt
@REM Need ^ before | since `| was unexpected at this time`
for /f "tokens=2 delims=:" %%i  in ('ipconfig ^| findstr /i "Default gateway" ^| findstr [0-9]') do echo %%i


@REM https://stackoverflow.com/questions/43225925/windows-cmd-pass-output-of-one-command-as-parameter-to-another
for /F "usebackq delims=" %A in (`git status -s -b ^| sed -n '2p' ^| cut -d' ' -f2-`) do git diff %A


@REM https://superuser.com/questions/516999/passing-output-from-a-dos-command-as-arguments-to-another-command
for /f usebackq %F in (`dir /w s*c`) do echo %F


@REM https://stackoverflow.com/questions/7522740/counting-in-a-for-loop-using-windows-batch-script
@REM Delayed expansion using ! instead of % will give you the expected behaviour. See also here.