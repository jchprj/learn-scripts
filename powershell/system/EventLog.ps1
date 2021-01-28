# https://stackoverflow.com/questions/13851577/how-to-determine-if-an-eventlog-already-exists

"Get-EventLog -list"
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
"Get-EventLog -LogName Application |Select-Object Source -Unique"
# Run this command will need some time if many logs
# Get-EventLog -LogName Application |Select-Object Source -Unique


# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-eventlog?view=powershell-5.1
$End = Get-Date
$ts = New-TimeSpan -Minutes 30
$Begin = $End - $ts
"Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End"
Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End


# https://stackoverflow.com/questions/25211306/powershell-how-can-i-extract-time-from-the-message-field-of-eventlog
# https://stackoverflow.com/questions/56843510/convert-date-to-unix-timestamp-in-powershell
"Get-EventLog -LogName Application -Newest 5"
$a = Get-EventLog -LogName Application -Newest 5|Select-Object TimeGenerated
$a | ForEach-Object { 
    "$_"
    $Matched = $_ -match "([0-9]{2})/([0-9]{2})/([0-9]{4}) ([0-9]{2}):([0-9]{2}):([0-9]{2})"
    if ($Matched) {
        Write-Output "System rebooted at $($Matches[0])" 
        Write-Output "System rebooted at $($Matches[3])$($Matches[1])$($Matches[2])$($Matches[4])$($Matches[5])$($Matches[6])" 

        [datetime]$dateToConvert  = "$($Matches[0])"
        $ut = Get-Date -Date $dateToConvert  -UFormat %s
        Write-Output "$ut"
    }
}

