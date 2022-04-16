@REM https://www.bleepingcomputer.com/tutorials/how-to-export-registry-key-in-windows
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" temp_test.reg


@REM https://stackoverflow.com/questions/29643149/registry-export-gives-hexadecimal-value
@REM Redirect the output could export readable standard string values
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList"
