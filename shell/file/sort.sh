sort file1

# only unique lines
sort -u file1


# https://stackoverflow.com/questions/9245638/select-random-lines-from-a-file-in-bash
sort -R file1 | head -n 3 >temp_test