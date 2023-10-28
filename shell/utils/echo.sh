# https://stackoverflow.com/questions/1371261/get-current-directory-name-without-full-path-in-a-bash-script
echo "${PWD##*/}"

# https://unix.stackexchange.com/questions/191694/how-to-put-a-newline-special-character-into-a-file-using-the-echo-command-and-re
echo $'first line\nsecond line\nthirdline' > foo

# exit status of last command From <https://www.cyberciti.biz/faq/shell-how-to-determine-the-exit-status-of-linux-and-unix-command/> 
echo $?

# https://stackoverflow.com/questions/37052899/what-is-the-preferred-method-to-echo-a-blank-line-in-a-shell-script
echo

# https://stackoverflow.com/questions/12468233/print-a-variable-with-multi-line-value-in-shell
text='line1
line2'
echo $text
echo "$text"