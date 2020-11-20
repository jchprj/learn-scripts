sort file1 | uniq


# https://www.cyberciti.biz/faq/unix-linux-shell-removing-duplicate-lines/
sort file1 | uniq -u


# https://www.computerhope.com/unix/uuniq.htm
# uniq does not detect repeated lines unless they are adjacent. You may want to sort the input first, or use sort -u instead of uniq.
uniq file1          # will contain multiple 2