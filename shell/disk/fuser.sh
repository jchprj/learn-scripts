https://superuser.com/questions/97844/how-can-i-determine-what-process-has-a-file-open-in-linux

# put in background
less .vimrc

fuser .vimrc
# .vimrc:              28135

ps 28135
#   PID TTY      STAT   TIME COMMAND
# 28135 pts/36   T      0:00 less .vimrc
