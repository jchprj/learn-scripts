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