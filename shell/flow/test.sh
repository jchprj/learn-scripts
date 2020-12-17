# https://stackoverflow.com/questions/59049000/is-it-possible-to-cd-into-a-file
test -d "." && cd "." || cd $(dirname ".")
test -d "df.sh" && cd "df.sh" || cd $(dirname "df.sh")

# https://www.computerhope.com/unix/test.htm
test 100 -lt 99 && echo "Yes." || echo "No."

# Placing the EXPRESSION between square brackets ([ and ]) is the same as testing the EXPRESSION with test.
[ 100 -lt 99 ] && echo "Yes." || echo "No."

[ 100 -lt 99 ]
echo $?