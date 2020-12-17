# https://unix.stackexchange.com/questions/339536/is-it-possible-to-browse-samba-resources-in-command-line

smbclient -L 192.168.1.100 -U administrator

smbclient //192.168.1.100/SharedDocuments -U administrator


# https://www.jeffgeerling.com/blog/getting-file-samba-server-ansible-playbook
smbclient //hostname/samba_share/ {{ smb_password }} -U {{ smb_username }} -c "recurse;lcd /local/path;get archive.zip"


# https://superuser.com/questions/856617/how-do-i-recursively-download-a-directory-using-smbclient
smbclient '\\server\share' -N -c 'prompt OFF;recurse ON;cd 'path\to\directory\';lcd '~/path/to/download/to/';mget *'`'


# Get a single file or all contents in a directory and avoid get all from root path
smbclient //{{ smbhost }}/ \"{{ smb_password }}\" -U \"{{ smb_username }}\" -c \"prompt OFF;recurse;lcd /path/to/download/to;cd /{{ path_to_directory }}; get {{ filename_without_directory }}; cd /path/contains/nothing; cd /{{ path_and_filename }}; mget *\"