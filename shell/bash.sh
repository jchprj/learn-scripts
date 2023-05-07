# https://www.baeldung.com/linux/bash-substring

STR="0123Linux9"
echo ${STR:4:5}

# https://unix.stackexchange.com/questions/232384/argument-string-to-integer-in-bash

n="057"
n=$((10#$n))
echo $n


# https://stackoverflow.com/questions/4749905/how-can-i-read-a-file-and-redirect-it-to-a-variable
my_var=$(cat HelloWorld.sh)
echo $my_var