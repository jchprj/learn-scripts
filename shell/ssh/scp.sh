scp -P 2222 file.ext username@domain:~/

# From <https://unix.stackexchange.com/questions/115560/use-scp-to-transfer-a-file-from-local-directory-x-to-remote-directory-y> 

# -r      Recursively copy entire directories.  

# From <https://unix.stackexchange.com/questions/115560/use-scp-to-transfer-a-file-from-local-directory-x-to-remote-directory-y> 

scp dragonmnl@local:/path/to/file.ext ~/

# From <https://unix.stackexchange.com/questions/115560/use-scp-to-transfer-a-file-from-local-directory-x-to-remote-directory-y> 

sshpass -p "password" scp -r user@example.com:/some/remote/path /some/local/path

# From <https://stackoverflow.com/questions/50096/how-to-pass-password-to-scp> 