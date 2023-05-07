# https://superuser.com/questions/464071/how-can-i-edit-a-file-if-there-is-no-vi-vim-joe-etc

# This can paste multiple lines with mouse
# cat > temp_test


a=123
# https://stackoverflow.com/questions/20293705/bash-sudo-cat-multiline-commands-to-shell-script
# https://linuxtect.com/how-to-cat-eof-for-multi-line-string-in-linux-bash/
cat << EOF > temp_test
b=$a
echo \$b
İsmail
Ahmet
Ali
EOF