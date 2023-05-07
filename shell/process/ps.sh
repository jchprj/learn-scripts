ps --help all

ps -ef
    #  -A, -e               all processes
    #  -f                   full-format, including command lines

ps aux
    #  a                   all with tty, including other users
    #  u                   user-oriented format
    #  x                   processes without controlling ttys

# https://askubuntu.com/questions/88972/how-to-get-from-terminal-total-number-of-threads-per-process-and-total-for-al
# To get the number of threads for a given pid:
ps -o nlwp <pid>
# To the get the sum of all threads running in the system:
ps -eo nlwp | tail -n +2 | awk '{ num_threads += $1 } END { print num_threads }'

# https://unix.stackexchange.com/questions/74185/how-can-i-prevent-grep-from-showing-up-in-ps-results
ps aux | grep "[f]nord"


# https://unix.stackexchange.com/questions/229541/view-full-commands-in-ps-output
ps -f | more
ps auxf | more
ps auxfww