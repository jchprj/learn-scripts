# https://askubuntu.com/questions/383057/how-to-decode-the-hash-password-in-etc-shadow
# http://manpages.ubuntu.com/manpages/hirsute/en/man8/john.8.html
# john - a tool to find weak passwords of your users

sudo unshadow /etc/passwd /etc/shadow > temp_test 
john temp_test