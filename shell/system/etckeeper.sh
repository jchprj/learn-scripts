# How to add version control for your Linux /etc directory
# https://www.techrepublic.com/article/add-version-control-for-your-linux-etc-directory/

sudo apt install etckeeper

# Will create a git repo in /etc/.git
# Then for every change in /etc, it will automatically commit with the executed command.

# Just use as usual git

sudo git -C /etc log --stat

sudo git -C /etc status