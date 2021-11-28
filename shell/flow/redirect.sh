# http://www.brianstorti.com/understanding-shell-script-idiom-redirect/
# https://stackoverflow.com/questions/876239/how-can-i-redirect-and-append-both-stdout-and-stderr-to-a-file-with-bash?noredirect=1&lq=1
# 1. >>file.txt: Open file.txt in append mode and redirect stdout there.
# 2>&1: Redirect stderr to "where stdout is currently going". In this case, that is a file opened in append mode. In other words, the &1 reuses the file descriptor which stdout currently uses.

rm temp_test
echo a 2>&1
echo a > temp_test
echo b >> temp_test
echo c >> temp_test



# https://stackoverflow.com/questions/418896/how-to-redirect-output-to-a-file-and-stdout

# The command you want is named tee:
echo a | tee temp_test
# For example, if you only care about stdout:
ls -a | tee temp_test
# If you want to include stderr, do:
program [arguments...] 2>&1 | tee temp_test
# 2>&1 redirects channel 2 (stderr/standard error) into channel 1 (stdout/standard output), such that both is written as stdout. It is also directed to the given output file as of the tee command.
# Furthermore, if you want to append to the log file, use tee -a as:
program [arguments...] 2>&1 | tee -a temp_test


# https://unix.stackexchange.com/questions/77277/how-to-append-multiple-lines-to-a-file
# possibility 1:
echo "line 1" >> temp_test
echo "line 2" >> temp_test

# possibility 2:
echo "line 1
line 2" >> temp_test

# possibility 3:
cat <<EOT >> temp_test
line 1
line 2
EOT

# possibility 1:
echo "line 1" | sudo tee -a temp_test > /dev/null

# possibility 3:
sudo tee -a temp_test > /dev/null <<EOT
line 1
line 2
EOT