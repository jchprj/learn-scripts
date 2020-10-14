# https://stackoverflow.com/questions/13851577/how-to-determine-if-an-eventlog-already-exists

Get-EventLog -list

Get-EventLog -list | Where-Object {$_.logdisplayname -eq "Visual Studio Builds"}

# Check if Log exists
# Ref: http://msdn.microsoft.com/en-us/library/system.diagnostics.eventlog.exists(v=vs.110).aspx
[System.Diagnostics.EventLog]::Exists('Application');


# Ref: http://msdn.microsoft.com/en-us/library/system.diagnostics.eventlog.sourceexists(v=vs.110).aspx
# Check if Source exists
[System.Diagnostics.EventLog]::SourceExists("YourLogSource");


$logFileExists = Get-EventLog -list | Where-Object {$_.logdisplayname -eq "Visual Studio Builds"} 
if (! $logFileExists) {
    # New-EventLog -LogName "Visual Studio Builds" -Source "Visual Studio"
}




# https://stackoverflow.com/questions/5563585/can-i-list-all-registered-event-sources

Get-EventLog -LogName Application |Select-Object Source -Unique