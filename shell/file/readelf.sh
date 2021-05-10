# https://unix.stackexchange.com/questions/58846/viewing-linux-library-executable-version-info

# -a --all               Equivalent to: -h -l -S -s -r -d -V -A -I
# -W --wide              Allow output width to exceed 80 characters
readelf -a -W ../../cpp/temp_test.o

# -d --dynamic           Display the dynamic section (if present)
readelf -d ../../cpp/temp_test.o