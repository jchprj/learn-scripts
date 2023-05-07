# https://stackoverflow.com/questions/219402/what-linux-shell-command-returns-a-part-of-a-string
# -cN-M tells the cut command to return columns N to M, inclusive
echo "abcdefg" | cut -c3-5              # cde
echo "abcdefg" | cut -c3-               # cdefg
echo "abcdefg" | cut -c-3               # abc


# https://stackoverflow.com/questions/428109/extract-substring-in-bash
echo 'someletters_12345_moreleters.ext' | cut -d'_' -f 2


# https://www.geeksforgeeks.org/remove-last-character-from-string-in-linux/
echo "abcdefg" | rev | cut -c2- | rev               # abcdef
echo "abcdefg" | cut --complement -c 5              # abcdfg