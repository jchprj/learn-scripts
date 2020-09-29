# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-content?view=powershell-7
# https://adamtheautomator.com/powershell-write-file-set-content/
# This example shows that Set-Content can both create a file if it doesn’t exist or it can replace all of the contents inside of a pre-existing file.

Test-Path -Path temp_test.txt
'foo' | Set-Content -Path a\temp_test.txt
Test-Path -Path temp_test.txt
Set-Content -Path temp_test.txt -Value 'foo'