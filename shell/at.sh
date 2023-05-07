# https://phoenixnap.com/kb/linux-at-command#:~:text=The%20at%20command%20is%20a,cron%20jobs%20are%20recurring%20events.
# sudo systemctl enable --now atd
# -t [time_arg]	Schedules a job for the time specified by the [time_arg] argument. The accepted time format is [[CC]YY]MMDDhhmm.
# The available absolute time expressions are:

# YYMMDDhhmm[.ss]. Specify an abbreviated year, month, day, hour, minute, and optionally seconds.
# CCYYMMDDhhmm[.ss]. Specify a full year, month, day, hour, minute, and optionally seconds.
# now. Indicates the current day and time and immediate execution.
# midnight. Indicates 00:00 AM.
# noon. Indicating 12:00 PM.
# teatime. Interpreted as 4 PM.
# AM. Indicates time before 12:00 PM.
# PM. Indicates time after 12:00 PM.
# today. The current day.
# tomorrow. The day after the current day.

echo "hello" | at now +5 minutes
echo "hello" >> temp_test | at now

# List Scheduled Jobs
atq
at -l

# View a Scheduled Job
at -c [job_number]

# Remove a Scheduled Job
atrm [job_number]
at -r [job_number]


# Execute Jobs Without Notifying
echo "shutdown -h now" | at -M 00:00


# https://manpages.ubuntu.com/manpages/xenial/man1/at.1posix.html
# at 0815am Jan 24
# at 8 :15amjan24
# at now "+ 1day"
# at 5 pm FRIday
# at '17
#     utc+
#     30minutes'


# https://stackoverflow.com/questions/18945669/how-to-run-a-script-at-a-certain-time-on-linux