# https://unix.stackexchange.com/questions/22726/how-to-conditionally-do-something-if-a-command-succeeded-or-failed> 
# It's probably unwise to do very much with these constructs, but they can on occasion make the flow of control a lot clearer.

# For small things that you want to happen if a shell command works, you can use the && construct:
echo a && echo "~~~~~works"
# Similarly for small things that you want to happen when a shell command fails, you can use ||:
echoa || echo "~~~~~fails"
# Or both
echo a && echo "~~~~~works" || echo "~~~~~fails"
echoa && echo "~~~~~works" || echo "~~~~~fails"


# https://tldp.org/LDP/abs/html/comparison-ops.html
# Comparison Operators
a=1
b=1
if [ "$a" -eq "$b" ] 
then
    echo equal
fi
if [ "$a" = "$b" ]; then echo equal; fi

a=2
if [ "$a" != "$b" ]; then echo not equal; fi
if [ "$a" -ne "$b" ]; then echo not equal; fi
if [ "$a" > "$b" ]; then echo greater than; fi
if [ "$a" -gt "$b" ]; then echo greater than; fi
if (( "$a" >= "$b" )); then echo greater than or equal to; fi
if [ "$a" -ge "$b" ]; then echo greater than or equal to; fi
b=3
if (( "$a" < "$b" )); then echo less than; fi
if [ "$a" -lt "$b" ]; then echo less than; fi
if (( "$a" <= "$b" )); then echo less than or equal to; fi
if [ "$a" -le "$b" ]; then echo less than or equal to; fi

# https://unix.stackexchange.com/questions/52800/how-to-do-an-if-statement-from-the-result-of-an-executed-command
if [[ $(echo a) = a ]]; then echo abc; fi


# https://www.cyberciti.biz/faq/check-if-a-directory-exists-in-linux-or-unix-shell/

DIR="."
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  echo "${DIR} exists..."
fi
[ ! -d "$DIR/a" ] && echo "Directory $DIR/a DOES NOT exists."



# https://www.tutorialspoint.com/unix/if-elif-statement.htm
a=10
b=20

if [ $a == $b ]
then
   echo "a is equal to b"
elif [ $a -gt $b ]
then
   echo "a is greater than b"
elif [ $a -lt $b ]
then
   echo "a is less than b"
else
   echo "None of the condition met"
fi



# stackoverflow.com/questions/2283640/case-statements-evaluate-to-strings
status="baz"
status=$(case $status in
  "foo") echo "bar" ;;
  "baz") echo "buh" ;;
  *) echo $status ;;
esac)
echo "status: $status"

# https://stackoverflow.com/questions/428109/extract-substring-in-bash
echo ${status:1:2}


# https://stackoverflow.com/questions/9727695/if-arguments-is-equal-to-this-string-define-a-variable-like-this-string
source="country"
target="country"
if [ "$source" = "$target" ]; then
   echo "equal"
else
   echo "not equal"
fi

if [ "$source" != "$target" ]; then
   echo "not equal"
else
   echo "equal"
fi


# https://unix.stackexchange.com/questions/132480/case-insensitive-substring-search-in-a-shell-script
source="Hello"
target="he"
if echo "$source" | grep -iqF "$target"; then
    echo it contains
fi
target="hea"
if echo "$source" | grep -iqF "$target"; then
    echo it contains
else
    echo it does not contain
fi


if [ $? -eq 0 ] ; then
   echo Success
else
   echo Failed
fi

if [ $? -ne 0 ] ; then
   echo Failed
fi


# https://stackoverflow.com/questions/3826425/how-to-represent-multiple-conditions-in-a-shell-if-statement
if [[ ( $source == 1 && $source == 123 ) || ( $source == 2 && $source == 456 ) ]]; then
   echo Success
else
   echo Failed
fi

if [ "$source" != "" ] && [ "$source" == "Hello" ]; then
   echo "Success"
else
   echo Failed
fi