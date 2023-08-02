# https://stackoverflow.com/questions/5584470/how-to-increment-a-zero-padded-int-in-bash
for ((i = 0; i < 99; ++i)); do printf -v num '%07d' $i; echo $num; done
for ((i = 0; i < 99; ++i)); do printf '%07d' $i; echo $num; done