# https://man7.org/linux/man-pages/man1/top.1.html


# In batch mode, top produces output that's more sensible for collecting to a log file or for parsing (though top isn't really good at producing parseable output even in batch mode). There is no limit on the number of output lines and the output doesn't contain any escape sequences for formatting.
# From <https://unix.stackexchange.com/questions/138484/what-does-batch-mode-mean-for-the-top-command> 


# The -n option specifies the maximum number of iterations and -b enables batch mode operation, which could be useful for sending output from top to a file.
# From <https://www.tecmint.com/12-top-command-examples-in-linux/> 
top -n 1 -b > temp_test.top

# https://unix.stackexchange.com/questions/145247/understanding-cpu-while-running-top-command
# On multi-core systems, you can have percentages that are greater than 100%. For example, if 3 cores are at 60% use, top will show a CPU use of 180%.
# You can toggle this behavior by hitting Shifti while top is running to show the overall percentage of available CPUs in use

# load average: system load avg over the last 1, 5 and 15 minutes
#   us, user    : time running un-niced user processes
#   sy, system  : time running kernel processes
#   ni, nice    : time running niced user processes
#   id, idle    : time spent in the kernel idle handler
#   wa, IO-wait : time waiting for I/O completion
#   hi : time spent servicing hardware interrupts
#   si : time spent servicing software interrupts
#   st : time stolen from this vm by the hypervisor

# Toggles

# t: 4-way toggle
#                     a    b     c    d
#          %Cpu(s):  75.0/25.0  100[ ...
# Where: a) is the `user' (us + ni) percentage; 
#        b) is the `system' (sy + hi + si) percentage; 
#        c) is the total; 
#    and d) is one of two visual graphs of those representations.

# m: 4-way toggle

# c: command line toggle
# H: threads mode toggle
# k: prompt kill pid
# q: quit

# 1: Single/Separate-Cpu-States toggle
# V: Forest-View-Mode toggle
# v: Hide/Show-Children toggle

# Sorting
# M: %MEM
# N: PID
# P: %CPU
# T: TIME+
# R: Reverse/Normal-Sort-Field toggle

# Searching
# L: Locate-a-string
# &: Locate-next