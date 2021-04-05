# https://linuxhint.com/trim_string_bash/
echo " Bash Scripting Language " | xargs


# https://stackoverflow.com/questions/199266/make-xargs-execute-the-command-once-for-each-line-of-input

# -n, --max-args=MAX-ARGS      use at most MAX-ARGS arguments per command line
echo a b|xargs -n1 echo


# https://stackoverflow.com/questions/14639206/how-can-i-pass-all-arguments-with-xargs-in-middle-of-command-in-linux
echo prefix | xargs -I {} echo {} post
echo prefix | xargs -I % echo % post


# https://stackoverflow.com/questions/6958689/running-multiple-commands-with-xargs
echo abc | xargs -I {} sh -c "echo {} && echo more {}"