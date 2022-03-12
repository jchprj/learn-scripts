# https://superuser.com/questions/1003921/how-to-show-full-command-line-of-all-processes-in-windows
# The WMIC tool is deprecated in Windows 10, version 21H1 and the 21H1 semi-annual channel release of Windows Server. This tool is superseded by Windows PowerShell for WMI.

Get-CimInstance Win32_Process -Filter "name LIKE '%OmniSharp.exe%'" | Select ProcessId, CommandLine | format-list

Get-CimInstance -Query "SELECT * FROM Win32_Process WHERE name LIKE '%OmniSharp.exe%'" | Select ProcessId, CommandLine | format-table -wrap