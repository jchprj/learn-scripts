date
date +"%T"

# https://stackoverflow.com/questions/23733669/rename-file-command-in-unix-with-timestamp
str=temp_test; mv ${str} ${str}.$(date +%F'-'%T)


# https://unix.stackexchange.com/questions/535714/convert-date-string-in-timestamp
date -d '2012-03-02 22:00 EDT' +%s
# 1330740000


# https://superuser.com/questions/302396/how-to-set-current-time-on-linux
# date --set="23 June 1988 10:00:00"