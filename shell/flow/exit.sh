# https://unix.stackexchange.com/questions/309339/how-to-exit-a-shell-script-if-one-part-of-it-fails
# -e  Exit immediately if a command exits with a non-zero status.
# set -e
command || exit 1
exit 0