# https://stackoverflow.com/questions/28291909/gitpython-and-ssh-keys


from git import Repo
from git import Git

git_repo_ssh = "git@github.com:jchprj/learn-scripts.git"
disk_path = "learn-scripts"
branch_name = "branchname"

git_ssh_identity_file = 'git_id_rsa'
git_ssh_cmd = 'ssh -o StrictHostKeyChecking=no -i %s' % git_ssh_identity_file
repo = Repo.clone_from(git_repo_ssh, disk_path, branch=branch_name, env=dict(GIT_SSH_COMMAND=git_ssh_cmd))

repo.git.push("origin", branch_name, env=dict(GIT_SSH_COMMAND=git_ssh_cmd))