echo _________________________
find / -type d -name "python*"

echo _________________________
find / -name httpd.conf

# Ignore case
echo _________________________
find . -name [fF][iI][lL][eE][nN][aA][mM][eE] -print

echo _________________________
find / -type d -name "mochi*"


echo _________________________

# https://stackoverflow.com/questions/1583219/how-to-do-a-recursive-find-replace-of-a-string-with-awk-of-sed
`find <mydir> -type f -exec sed -i 's/<string1>/<string2>/g' {} +`
`find . -type f -exec sed -i 's/variant of/abc off/g' {} +`


# https://unix.stackexchange.com/questions/23576/how-do-i-recursively-delete-directories-with-wildcard
find . -type f -name "find_files_with_wildcard_to_delete*" -delete
find . -type d -name 'find_directories_with_wildcard_to_delete*' -exec rm -r {} +
find . -type d -name 'find_directories_with_wildcard_to_delete*' | xargs rm -r


# https://unix.stackexchange.com/questions/12902/how-to-run-find-exec
# The difference between ; and + is that with ; a single grep command for each file is executed whereas with + as many files as possible are given as parameters
find . -exec echo {} \;
find . -exec echo {} +


# https://www.cyberciti.biz/faq/how-do-i-find-all-the-files-owned-by-a-particular-user-or-group/
# find directory-location -user {username} -name {file-name}
# find directory-location -group {group-name} -name {file-name}


# https://unix.stackexchange.com/questions/34325/sorting-the-output-of-find-print0-by-piping-to-the-sort-command
find . -print0 | sort -z | xargs -r0 echo


# https://unix.stackexchange.com/questions/187088/if-command-in-find-exec
echo {} : ;if [ -f {} ]; then echo file; else echo directory;fi
find -exec sh -c 'echo {} : ;if [ -f {} ]; then echo file; else echo directory;fi' \;


# https://linuxhint.com/find-last-modified-files-in-linux/
# By specifying the option 0 as in the example below, mtime will return all files modified in the last 24 hours.
find . -mtime 0


# https://stackoverflow.com/questions/4210042/how-do-i-exclude-a-directory-when-using-find
# skip the exclude dir in the result file lists, just add -false after -prune
find . -path ./misc -prune -false -o -name '*.txt' -print