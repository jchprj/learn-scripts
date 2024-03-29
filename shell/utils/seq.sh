# https://www.geeksforgeeks.org/seq-command-in-linux-with-examples/
echo seq 10
seq 10
echo seq 5 10
seq 2 10
echo seq 2 2 10
seq 2 2 10
echo seq -f \"FORMAT: %02gd\" 2 2 10
seq -f "FORMAT: %02gd" 2 2 10
echo seq -s \",\" 10
seq -s "," 10
echo seq -w -s \",\" 1 90 200
seq -w -s "," 1 90 200

# https://stackoverflow.com/questions/19148370/piping-seq-to-printf-for-number-formatting
echo seq 0 10 | xargs printf '%04d\n'
seq 0 10 | xargs printf '%04d\n'