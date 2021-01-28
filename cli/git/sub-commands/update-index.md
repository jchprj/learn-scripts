## How to ignore files already managed with Git locally

From <https://dev.to/nishina555/how-to-ignore-files-already-managed-with-git-locally-19oo> 

* git update-index --skip-worktree  
That is, Use the command when you want to modify files managed by Git locally (or updated automatically) but you do not want Git to manage that change.
Confirm: 
    ```
    git ls-files -v | grep ^S
    ```


* git update-index --assume-unchanged  
In other words, it is used when ignore files that you do not need to change locally (or should not change). git reset - hard command will delete local changes.
Confirm:
    ```
    git ls-files -v | grep ^h
    ```


## Can I 'git commit' a file and ignore its content changes?
`git update-index --skip-worktree <file>`
`git update-index --no-skip-worktree <file>`
`git update-index --assume-unchanged <file>`
`git update-index --no-assume-unchanged <file>`


From <https://stackoverflow.com/questions/3319479/can-i-git-commit-a-file-and-ignore-its-content-changes> 
The preferred way to do this is to use git update-index --skip-worktree <file>, as explained in this answer


## How to undo git update-index?

From <https://stackoverflow.com/questions/12481465/how-to-undo-git-update-index> 