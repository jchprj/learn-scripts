
[Git Branching - Basic Branching and Merging](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)


```
git branch -vv
```
Show not pushed commits and not pulled commits on remote




[version control - How do I delete a Git branch locally and remotely? - Stack Overflow](https://stackoverflow.com/questions/2003505/how-do-i-delete-a-git-branch-locally-and-remotely)

* Deleting a local branch  

```
git branch --delete <branch>
git branch -d <branch> # Shorter version
git branch -D <branch> # Force-delete un-merged branches
```
* Deleting a local remote-tracking branch
```
git branch --delete --remotes <remote>/<branch>
git branch -dr <remote>/<branch> # Shorter
```
```
git fetch <remote> --prune # Delete multiple obsolete remote-tracking branches
git fetch <remote> -p      # Shorter
```

* Deleting a remote branch
```git push origin --delete <branch>  # Git version 1.7.0 or newer
git push origin -d <branch>        # Shorter version (Git 1.7.0 or newer)
git push origin :<branch>          # Git versions older than 1.7.0
```