## 8 ways to share your git repository
 
From <http://www.jedi.be/blog/2009/05/06/8-ways-to-share-your-git-repository/#sshserver> 


## git daemon

[git-daemon(1)](https://mirrors.edge.kernel.org/pub/software/scm/git/docs/git-daemon.html)

    "DEFAULT_GIT_PORT" aka 9418
    To allow git-daemon to read your project you have to add the file .git/git-daemon-export-ok to your project.
    --base-path=<path>


[Sharing your Git repository using Git daemon · GitHub](https://gist.github.com/laszlomiklosik/2230082)

    git daemon --export-all --base-path=.
    git clone git://IP/ destination_folder_name
    git pull git://IP/

    git daemon --export-all --base-path=. --enable=receive-pack
    git push git://IP/

## Getting Git on a Server

From <https://git-scm.com/book/en/v2/Git-on-the-Server-Getting-Git-on-a-Server> 
git clone --bare my_project my_project.git



## git instaweb

[Git - GitWeb](https://git-scm.com/book/en/v2/Git-on-the-Server-GitWeb)

    sudo apt install lighttpd
    git instaweb

[git instaweb fails with "500 - Internal Server Error" · Issue #4871 · microsoft/WSL · GitHub](https://github.com/microsoft/WSL/issues/4871)

    sudo apt install libcgi-pm-perl gamin