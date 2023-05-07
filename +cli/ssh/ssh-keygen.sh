# https://stackoverflow.com/questions/60273495/automatically-no-overwrite-in-ssh-keygen
# https://stackoverflow.com/questions/43235179/how-to-execute-ssh-keygen-without-prompt

# Don't override current id_rsa, don't prompt for passphrase
yes 'n'|ssh-keygen -q -f ~/.ssh/id_rsa