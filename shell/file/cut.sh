# https://stackoverflow.com/questions/219402/what-linux-shell-command-returns-a-part-of-a-string
# -cN-M tells the cut command to return columns N to M, inclusive
echo "abcdefg" | cut -c3-5              # cde
echo "abcdefg" | cut -c3-               # cdefg
echo "abcdefg" | cut -c-3               # abc


# https://stackoverflow.com/questions/428109/extract-substring-in-bash
echo 'someletters_12345_moreleters.ext' | cut -d'_' -f 2