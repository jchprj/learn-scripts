[Is there a way of having git show lines added, lines changed and lines removed? - Stack Overflow](https://stackoverflow.com/questions/9933325/is-there-a-way-of-having-git-show-lines-added-lines-changed-and-lines-removed)

    git diff --numstat

[Can I use git diff on untracked files? - Stack Overflow](https://stackoverflow.com/questions/855767/can-i-use-git-diff-on-untracked-files)

    git add -A
    git diff HEAD

[git - Finding diff between current and last version - Stack Overflow](https://stackoverflow.com/questions/9903541/finding-diff-between-current-and-last-version)

    git diff HEAD^ HEAD
    As of Git 1.8.5, @ is an alias for HEAD, so you can use:
    git diff @~..@
    git show