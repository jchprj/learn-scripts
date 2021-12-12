# pip install GitPython

# https://gitpython.readthedocs.io/en/stable/tutorial.html
# https://stackoverflow.com/questions/44784828/gitpython-git-authentication-using-user-and-password

import git
import os
from getpass import getuser
from getpass import getpass
from git import Repo
from git import Git

repo_path = '/path/to/some/local/repo'

project_dir = os.path.dirname(os.path.abspath(__file__))
os.environ['GIT_ASKPASS'] = os.path.join(project_dir, 'askpass.py')
os.environ['GIT_USERNAME'] = getuser()
os.environ['GIT_PASSWORD'] = getpass()
g = git.cmd.Git(repo_path)
g.pull()



# https://stackoverflow.com/questions/47872070/how-to-check-out-a-branch-with-gitpython
# Basically, with GitPython, if you know how to do it within command line, but not within the API, just use 
# repo.git.action("your command without leading 'git' and 'action'"), 
# example: git log --reverse => repo.git.log('--reverse')

repo = Repo(repo_path)
try:
    repo.git.checkout('-b', 'branchename')
except:
    repo.git.checkout('branchename')