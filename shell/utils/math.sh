# How to do math on the Linux command line

# From <https://www.networkworld.com/article/3268964/linux/how-to-do-math-on-the-linux-command-line.html> 


expr 11 + 123
# 134
expr 134 / 11
# 12

factor 111
# 111: 3 37

echo "123.4+5/6-(7.89*1.234)" | bc
# 113.664

# https://linuxize.com/post/bash-increment-decrement-variable/
i=100
i=$((i+1))
((i=i+1))
let "i=i+1"
echo $i

((i+=1))
let "i+=1" 
echo $i

((i++))
((++i))
let "i++"
let "++i"
echo $i