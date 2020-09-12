# https://unix.stackexchange.com/questions/339536/is-it-possible-to-browse-samba-resources-in-command-line

smbclient -L 192.168.1.100 -U administrator

smbclient //192.168.1.100/SharedDocuments -U administrator