# https://stackoverflow.com/questions/6381229/how-to-kill-all-processes-matching-a-name
ps aux | grep -ie [a]marok | awk '{print $2}' | xargs kill -9



# https://www.linuxquestions.org/questions/linux-newbie-8/what-is-hup-signal-how-to-send-one-to-squid-267536/
# Kill is actually slightly mis-named, it doesn't necessarily terminate a process, it sends it a signal of a particular type. A signal is just a way of notifying a running program that something has happened, like an invalid memory access or an interrupted system call or whatever (see kill -l for a list of all signals). Anyhow, to make a very long story short, to send SIGHUP to squid, you would do

kill -HUP <pid of squid>

# or, to save yourself from having to look up the PID:
# killall -HUP squid

# https://stackoverflow.com/questions/19052354/sighup-for-reloading-configuration
# SIGHUP for reloading configuration