# stackoverflow.com/questions/3134791/how-do-i-remove-newlines-from-a-text-file
ls -l |tr -d '\n'


# https://stackoverflow.com/questions/9733338/shell-script-remove-first-and-last-quote-from-a-variable
echo "$opt" | tr -d '"'


# https://stackoverflow.com/questions/10817439/counting-commas-in-a-line-in-bash
echo foo,bar,baz | tr -cd , | wc -c

