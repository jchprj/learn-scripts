# GIT URLS
From <https://mirrors.edge.kernel.org/pub/software/scm/git/docs/git-push.html#URLS> 

In general, URLs contain information about the transport protocol, the address of the remote server, and the path to the repository. Depending on the transport protocol, some of this information may be absent.

Git supports ssh, git, http, and https protocols (in addition, ftp, and ftps can be used for fetching, but this is inefficient and deprecated; do not use it).

The native transport (i.e. git:// URL) does no authentication and should be used with caution on unsecured networks.

The following syntaxes may be used with them:

ssh://[user@]host.xz[:port]/path/to/repo.git/

git://host.xz[:port]/path/to/repo.git/

http[s]://host.xz[:port]/path/to/repo.git/

ftp[s]://host.xz[:port]/path/to/repo.git/

For local repositories, also supported by Git natively, the following syntaxes may be used:

/path/to/repo.git/

file:///path/to/repo.git/


# Questions

## Git push branch from one remote to another?

https://stackoverflow.com/questions/7818927/git-push-branch-from-one-remote-to-another

```
git push rorg 'refs/remotes/korg/*:refs/heads/*'
```
And it pushed all my remote branches from korg to rorg (even without local copies of the branches). 

And then you can make the same push for tags refs:
```
git push rorg 'refs/tags/*:refs/tags/*'
```


## How to delete remote branches in Git

From <https://www.educative.io/edpresso/how-to-delete-remote-branches-in-git> 
git push origin --delete test
