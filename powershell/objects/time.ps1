# [PowerTip: Add Days, Hours, and Minutes to Current Time | Scripting Blog](https://devblogs.microsoft.com/scripting/powertip-add-days-hours-and-minutes-to-current-time/)
get-date

$ts = New-TimeSpan -Days 1 -Hours 2 -Minutes 30
(get-date) + $ts

$ts = New-TimeSpan -Days -1 -Hours -2 -Minutes -30
(get-date) + $ts


# https://stackoverflow.com/questions/56843510/convert-date-to-unix-timestamp-in-powershell
[datetime]$dateToConvert  = "2018-12-11 01:00:00"
[int](Get-Date -Date $dateToConvert -UFormat %s) * 1000