# https://stackoverflow.com/questions/25567012/cloning-a-private-github-repo-using-a-script
# https://www.pygit2.org/repository.html
import pygit2
repo_url = 'git://github.com/libgit2/pygit2.git'
repo_path = 'temp_test'
# callbacks = pygit2.RemoteCallbacks(pygit2.UserPass("<your-personal-token>", 'x-oauth-basic'))
# callbacks = pygit2.RemoteCallbacks(pygit2.UserPass("<USERNAME>", '<PASSWORD>'))
# repo = pygit2.clone_repository(repo_url, repo_path, callbacks=callbacks)
repo = pygit2.clone_repository(repo_url, repo_path)