# In batch mode, top produces output that's more sensible for collecting to a log file or for parsing (though top isn't really good at producing parseable output even in batch mode). There is no limit on the number of output lines and the output doesn't contain any escape sequences for formatting.
# From <https://unix.stackexchange.com/questions/138484/what-does-batch-mode-mean-for-the-top-command> 


# The -n option specifies the maximum number of iterations and -b enables batch mode operation, which could be useful for sending output from top to a file.
# From <https://www.tecmint.com/12-top-command-examples-in-linux/> 
top -n 1 -b > temp_test.top

