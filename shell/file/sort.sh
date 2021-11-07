sort file1

# https://unix.stackexchange.com/questions/104525/sort-based-on-the-third-column
sort -k 1 file1

# only unique lines
sort -u file1

cp file1 temp_test
# unique file in place
sort -u temp_test -o temp_test

# https://stackoverflow.com/questions/9245638/select-random-lines-from-a-file-in-bash
sort -R file1 | head -n 3 >temp_test

