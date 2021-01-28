$uname="domain\username" 
$pwd=ConvertTo-SecureString "password" -AsPlainText -Force; 
$cred=New-Object System.Management.Automation.PSCredential($uname,$pwd); 
$pcname="localhost" # server ip
Enter-PSSession -ComputerName $pcname -Credential $cred # login



# https://support.infrasightlabs.com/article/how-to-enable-winrm-on-windows-servers-clients/
$cred = New-Object System.Management.Automation.PSCredential -ArgumentList @(‘USERNAME’,(ConvertTo-SecureString -String ‘PASSWORD’ -AsPlainText -Force))
Invoke-Command -ComputerName vscope-demo2 -ScriptBlock {ipconfig /all} -Credential $cred



# TCP/5985 = HTTP
# TCP/5986 = HTTPS
# From <https://blogs.technet.microsoft.com/christwe/2012/06/20/what-port-does-powershell-remoting-use/> 
# If you are not happy with this or your security team is not happy with this there are some other choices


# PowerShell Remoting is not Remote Desktop, they are both setup differently, use different components and do not really share any commonality.
# From <https://stackoverflow.com/questions/54086087/enter-pssession-unable-to-remote-into-a-remote-desktop> 
# You use PSRemoting you need to run Enable-PSRemoting on the remote machine. 


# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/enable-psremoting?view=powershell-5.1
Enable-PSRemoting

# http://www.hurryupandwait.io/blog/fixing-winrm-firewall-exception-rule-not-working-when-internet-connection-type-is-set-to-public
Enable-PSRemoting -SkipNetworkProfileCheck

# https://stackoverflow.com/questions/6587426/powershell-remoting-with-ip-address-as-target
# failed with the following error message : The WinRM client cannot process the request. Default authentication may be used with an IP address under the following conditions: the transport is HTTPS or the destination is in the TrustedHosts list, and explicit credentials are provided
Set-Item WSMan:\localhost\Client\TrustedHosts *


# Run Code Remotely in Visual Studio Code
# From <https://petri.com/how-to-run-code-remotely-in-visual-studio-code> 



# https://knowledge.broadcom.com/external/article/157383/access-denied-configuring-winrm-using-a.html
# "Access denied" configuring WinRM using a local administration account
# To solve the problem, UAC filtering for local accounts must be disabled by creating the following DWORD registry entry and setting its value to 1:
# [HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System] LocalAccountTokenFilterPolicy


# In Firewall, some Windows Remote Management (HTTP-In) for port 5985 may not be enabled.