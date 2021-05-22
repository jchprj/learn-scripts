# git config
List all configurations

```git config -l```

```git config -global -l```

## Credential

git config --global credential.helper store

From <https://stackoverflow.com/questions/35942754/how-to-save-username-and-password-in-git-gitextension> 
How to save username and password in GIT

## Proxy

git config --global --unset http.proxy
git config --global http.proxy http://proxyuser:proxypwd@proxy.server.com:8080

git config --global http.proxy http://192.168.8.247:1080

From <https://stackoverflow.com/questions/783811/getting-git-to-work-with-a-proxy-server> 

Or in `~/.gitconfig` (From <https://www.jhipster.tech/configuring-a-corporate-proxy/>)
```
[http]
        proxy = http://username:password@host:port
[https]
        proxy = http://username:password@host:port
```

## Case

`git mv -f OldFileNameCase newfilenamecase`
`git config core.ignorecase false`


## CRLF

git config --global core.autocrlf input
git rm --cached -r .
git reset --hard


From <https://stackoverflow.com/questions/1967370/git-replacing-lf-with-crlf> 
	
    
Change whole existing CRLF repo(clean status) to LF repo:
```
git config core.autocrlf input
git rm --cached -r .
git reset --hard
```

[github - git diff is showing full file has changed for a single line change but only for few files in a directory - Stack Overflow](https://stackoverflow.com/questions/37344280/git-diff-is-showing-full-file-has-changed-for-a-single-line-change-but-only-for)
If a repository was checked in Windows, and open in Linux but see all files as changed, could set this only for this repository.
```
git config core.autocrlf true
```


## Bare
[version control - How to convert a normal Git repository to a bare one? - Stack Overflow](https://stackoverflow.com/questions/2199897/how-to-convert-a-normal-git-repository-to-a-bare-one)
```
cd repo
mv .git ../repo.git # renaming just for clarity
cd ..
rm -fr repo
cd repo.git
git config --bool core.bare true
```