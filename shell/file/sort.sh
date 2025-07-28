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


# https://unix.stackexchange.com/questions/120096/how-to-sort-big-files
# --parallel=n  Set the number of sorts run in parallel to n.
# By default, n is set to the number of available processors, but limited to 8
sort --parallel=2 -uo temp_test temp_test


# https://unix.stackexchange.com/questions/444656/why-does-default-sort-produce-different-results-with-same-line-beginnings
# WSL Ubuntu does not show difference
LC_COLLATE=en_DK sort sort
LC_COLLATE=C sort sort