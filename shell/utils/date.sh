date
date +"%T"

# https://stackoverflow.com/questions/23733669/rename-file-command-in-unix-with-timestamp
str=temp_test; mv ${str} ${str}.$(date +%F'-'%T)


# https://superuser.com/questions/302396/how-to-set-current-time-on-linux
# date --set="23 June 1988 10:00:00"