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