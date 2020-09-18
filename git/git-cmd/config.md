## Credential

git config --global credential.helper store

From <https://stackoverflow.com/questions/35942754/how-to-save-username-and-password-in-git-gitextension> 
How to save username and password in GIT

## Proxy

git config --global --unset http.proxy
git config --global http.proxy http://proxyuser:proxypwd@proxy.server.com:8080

git config --global http.proxy http://192.168.8.247:1080

From <https://stackoverflow.com/questions/783811/getting-git-to-work-with-a-proxy-server> 


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
