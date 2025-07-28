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


# https://www.oreilly.com/library/view/bash-cookbook/0596526784/ch03s04.html
# here-document
cat <<-'EOF'
    lots of data
    can go here
    it's indented with tabs
    to match the script's indenting
    but the leading tabs are
    discarded when read
    EOF
	EOF
ls


# https://unix.stackexchange.com/questions/103885/piping-data-to-a-processs-stdin-without-causing-eof-afterward
(echo -e "cmd 1\ncmd 2" && cat) | bash