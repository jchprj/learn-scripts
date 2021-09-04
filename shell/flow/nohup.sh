# https://stackoverflow.com/questions/10408816/how-do-i-use-the-nohup-command-without-getting-nohup-out

nohup command >/dev/null 2>&1   # doesn't create nohup.out

nohup command >/dev/null 2>&1 & # runs in background, still doesn't create nohup.out

nohup command </dev/null >/dev/null 2>&1 & # completely detached from terminal 