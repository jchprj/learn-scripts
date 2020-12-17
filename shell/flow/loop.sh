# https://www.cyberciti.biz/faq/shell-script-while-loop-examples/
c=1
while [ $c -le 5 ]
do
	echo "Welcone $c times"
	(( c++ ))
done

c=1;while [ $c -le 1 ]; do curl https://ifconfig.co/json > /dev/null; ((c++)); done

echo ---------------

# https://www.lifewire.com/bash-for-loop-examples-2200575
for number in 1 2 3 4 5
do
echo $number
done

for number in {1..10}; do echo $number; done
for number in {0..100..10}; do echo $number; done
# for ((number=1;number < 100;number++)){};
for file in ./*; do echo $file; done

echo ---------------

# https://www.cyberciti.biz/faq/bash-for-loop-array/
array=( one two three )
# More examples:
files=( "/etc/passwd" "/etc/group" "/etc/hosts" )
limits=( 10, 20, 26, 39, 48)
for i in "${array[@]}"
do
   : 
   # do whatever on $i
   echo $i
done

# https://stackoverflow.com/questions/1886374/how-to-find-the-length-of-an-array-in-shell
echo "Total length: "${#array[@]}


# https://unix.stackexchange.com/questions/317390/run-command-output-lines-as-another-command-in-linux
seq 3|sh
seq 3|while read line; do echo line-$line; done