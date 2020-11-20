# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-computer?view=powershell-7.1
# https://www.mail-archive.com/ansible-project@googlegroups.com/msg31183.html
Stop-Computer -Force

# In ansible: ansible -m raw -a "Stop-Computer -Force" box