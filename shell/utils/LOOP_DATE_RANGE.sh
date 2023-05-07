#!/usr/bin/bash

# https://techieroop.com/loop-through-a-date-range-in-shell-script/
# daterange.sh 2019-01-01 2019-01-31


start=$1
end=$2

start=$(date -d $start +%Y%m%d)
end=$(date -d $end +%Y%m%d)

while [[ $start -le $end ]]
do
	echo $start
	start=$(date -d"$start + 1 day" +"%Y%m%d")
done