# Linux xxd Command Tutorial for Beginners (with Examples)
# https://www.howtoforge.com/linux-xxd-command/


# https://stackoverflow.com/questions/5724761/ascii-hex-convert-in-bash/5725125>

echo '48656c6c6f20576f726c640a' | xxd -ps -r
# Hello World
	
echo "Hello World" | xxd -ps -c 200 | tr -d '\n'
# 48656c6c6f20576f726c640a