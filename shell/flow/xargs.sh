# https://linuxhint.com/trim_string_bash/
echo " Bash Scripting Language " | xargs


# https://stackoverflow.com/questions/199266/make-xargs-execute-the-command-once-for-each-line-of-input

# -n, --max-args=MAX-ARGS      use at most MAX-ARGS arguments per command line
echo a b|xargs -n1 echo