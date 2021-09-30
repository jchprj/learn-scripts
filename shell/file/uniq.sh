sort file1 | uniq


echo
# https://www.cyberciti.biz/faq/unix-linux-shell-removing-duplicate-lines/
sort file1 | uniq -u


echo
# https://www.computerhope.com/unix/uuniq.htm
# uniq does not detect repeated lines unless they are adjacent. You may want to sort the input first, or use sort -u instead of uniq.
uniq file1          # will contain multiple 2


echo
# https://www.unix.com/shell-programming-and-scripting/136468-group-using-shell-script.html
sort file1|uniq -c