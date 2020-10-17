# How to show the permissions in numeric format? [duplicate]
# From <https://unix.stackexchange.com/questions/385734/how-to-show-the-permissions-in-numeric-format> 

stat -c "%a %n" /etc/ssh/sshd_config
stat -c "%a %n" ../