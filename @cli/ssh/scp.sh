scp -P 2222 file.ext username@domain:~/

# https://unix.stackexchange.com/questions/115560/use-scp-to-transfer-a-file-from-local-directory-x-to-remote-directory-y
# -r      Recursively copy entire directories.  

# https://unix.stackexchange.com/questions/115560/use-scp-to-transfer-a-file-from-local-directory-x-to-remote-directory-y

scp dragonmnl@local:/path/to/file.ext ~/

# https://unix.stackexchange.com/questions/115560/use-scp-to-transfer-a-file-from-local-directory-x-to-remote-directory-y

sshpass -p "password" scp -r user@example.com:/some/remote/path /some/local/path

# https://stackoverflow.com/questions/50096/how-to-pass-password-to-scp



# https://stackoverflow.com/questions/20255368/how-to-preserve-files-original-creation-date
# -p      Preserves modification times, access times, and modes from the original file.
