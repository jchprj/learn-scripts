
## How to amend several commits in Git to change author

git rebase -i HEAD~4 -x "git commit --amend --author 'Author Name <author.name@mail.com>' --no-edit"

From <https://stackoverflow.com/questions/4981126/how-to-amend-several-commits-in-git-to-change-author/31669789#31669789> 

git push --force



## Squash my last X commits together using Git

https://stackoverflow.com/questions/5189560/squash-my-last-x-commits-together-using-git

```
git rebase -i <after-this-commit>
```
Sample: `git rebase -i HEAD~5`

Use git rebase -i <after-this-commit> and replace "pick" on the second and subsequent commits with "squash" or "fixup", as described in the manual.