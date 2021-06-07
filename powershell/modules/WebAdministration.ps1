# https://stackoverflow.com/questions/4626791/powershell-command-to-set-iis-logging-settings

Import-Module WebAdministration
$site = gi IIS:\Sites\MyNewSite
# $site.logFile.enabled='True'
$site.logFile.logFormat='W3C'
$site.logFile.directory='d:\sites\site\logs'
$site.logFile.encoding=UTF-8
$site | set-item




# https://docs.microsoft.com/en-us/iis/configuration/system.applicationhost/sites/site/logfile/#setup
# appcmd.exe set config -section:system.applicationHost/sites /[name='Contoso'].logFile.logFormat:"W3C"

