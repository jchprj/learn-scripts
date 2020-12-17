# https://stackoverflow.com/questions/5410757/delete-lines-in-a-text-file-that-containing-a-specific-string
# To remove the line and print the output to standard out:
echo pattern to match > temp_test
echo original >> temp_test
cat temp_test
sed '/pattern to match/d' ./temp_test

# http://www.theunixschool.com/2012/06/sed-25-examples-to-delete-line-or.html
# sed - 25 examples to delete a line or pattern in a file


# How to insert a text at the beginning of a file?
# https://stackoverflow.com/questions/9533679/how-to-insert-a-text-at-the-beginning-of-a-file
sed -i '1s/^/<added text>\n/' ./temp_test


# https://askubuntu.com/questions/20414/find-and-replace-text-within-a-file-using-commands
sed -i 's/original/new/g' temp_test
# Explanation:
# 	• sed = Stream EDitor
# 	• -i = in-place (i.e. save back to the original file)
# 	• The command string:
# 		○ s = the substitute command
# 		○ original = a regular expression describing the word to replace (or just the word itself)
# 		○ new = the text to replace it with
# 		○ g = global (i.e. replace all and not just the first occurrence)
# 	• temp_test = the file name
cat temp_test


# https://unix.stackexchange.com/questions/453527/1-not-working-with-sed
# sed backreferences have the form \1, \2, etc. $1 is more Perl-like.



# How to use sed to replace only the first occurrence in a file?
# https://stackoverflow.com/questions/148451/how-to-use-sed-to-replace-only-the-first-occurrence-in-a-file
sed '0,/pattern/s/pattern/replacement/' temp_test


# How can I replace a newline (\n) using sed?
# https://stackoverflow.com/questions/1251999/how-can-i-replace-a-newline-n-using-sed
sed ':a;N;$!ba;s/\n/ /g' temp_test


# (How to match newline, include start of newline or end of line)

# Can sed replace new line characters?
# https://unix.stackexchange.com/questions/114943/can-sed-replace-new-line-characters
# This works with GNU sed:
sed -z 's/\n/,/g' temp_test
# -z is included since 4.2.2


# Replace Strings Using Sed And Regex
# https://stackoverflow.com/questions/14072592/replace-strings-using-sed-and-regex/14072614
sed -e 's/^#\s*\(.*[0-9].*\)$/\1/g' temp_test