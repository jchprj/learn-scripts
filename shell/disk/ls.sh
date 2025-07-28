# https://stackoverflow.com/questions/3886295/how-do-i-list-one-filename-per-output-line-in-linux
ls -w1

# https://superuser.com/questions/147027/how-can-i-sort-the-output-of-ls-by-last-modified-date
ls -t
# reverse
ls -tr


# https://unix.stackexchange.com/questions/328185/why-does-ls-list-the-following-files-in-seemingly-different-orders
## Some Linux: a_1  a_10  a_10-18  a_11  a_11-18  a_1-18  a_12  a_12-18
## WSL Ubuntu: a_1  a_1-18  a_10  a_10-18  a_11  a_11-18  a_12  a_12-18
LC_COLLATE=en_DK ls ls
## Some Linux: a_1  a_1-18  a_10  a_10-18  a_11  a_11-18  a_12  a_12-18
## WSL Ubuntu: a_1  a_1-18  a_10  a_10-18  a_11  a_11-18  a_12  a_12-18
LC_COLLATE=C ls ls
