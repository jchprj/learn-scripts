# https://stackoverflow.com/questions/1898553/return-a-regex-match-in-a-bash-script-instead-of-replacing-it
echo "TestT100String" | grep -o '[0-9]\+'       # 100
echo "TestT100String" | grep '[0-9]\+'          # TestT100String




# https://unix.stackexchange.com/questions/223503/how-to-use-grep-when-file-does-not-contain-the-string
grep -q query_text * -r && echo true || echo false



# https://askubuntu.com/questions/1153513/what-does-grep-v-grep-mean-and-do
echo abc |grep -v a


# https://stackoverflow.com/questions/17392869/how-to-print-a-file-excluding-comments-and-blank-lines-using-grep-sed
grep -v '^\s*$\|^\s*\#' nm.sh
grep -Ev '^\s*$|^\s*\#' nm.sh




# https://www.shellhacks.com/regex-find-ip-addresses-file-grep/
echo aa:999.999.999.999:ssss | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"
echo aa:999.999.999.999:ssss | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" 


# https://unix.stackexchange.com/questions/335716/grep-returns-binary-file-standard-input-matches-when-trying-to-find-a-string
# -a, --text
# Process a binary file as if it were text; this is equivalent to the --binary-files=text option.
grep -a 'pattern' temp_test