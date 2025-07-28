# Do with commits

## How to revert Git repository to a previous commit?

From <https://stackoverflow.com/questions/4114095/how-to-revert-git-repository-to-a-previous-commit> 


## How to undo the most recent commits in Git?

git reset HEAD~

From <https://stackoverflow.com/questions/927358/how-to-undo-the-most-recent-commits-in-git> 


## How to revert initial git commit?

git update-ref -d HEAD

From <https://stackoverflow.com/questions/6632191/how-to-revert-initial-git-commit> 



## Pull all commits from a branch, push specified commits to another

That is, instead of just having a 'master', have 'featureA', 'bugfixB', etc. Perform code review on an entire branch at a time - where each branch is very focused on doing only one thing - and then merge that one branch when you're done. This is the workflow that git is designed for, and what it's good at :slightly_smiling_face:

From <https://stackoverflow.com/questions/880957/pull-all-commits-from-a-branch-push-specified-commits-to-another/881014#881014> 



## Finding what branch a git commit came from

git name-rev <SHA>

From <https://stackoverflow.com/questions/2706797/finding-what-branch-a-git-commit-came-from> 


## How to Undo the Last Commit

git revert <commit hash>

From <https://code.likeagirl.io/how-to-undo-the-last-commit-393e7db2840b> 
	This will add a new commit with opposite content to the specified commit




# Do with branches

## Reset local repository branch to be just like remote repository HEAD

git reset --hard HEAD

From <https://stackoverflow.com/questions/1628088/reset-local-repository-branch-to-be-just-like-remote-repository-head> 


## How do I delete a Git branch locally and remotely?

### git fetch --all --prune

From <https://stackoverflow.com/questions/2003505/how-do-i-delete-a-git-branch-both-locally-and-remotely> 

Will delete all local branches that have been removed remotely

### git push origin :<branchname> (deletes remote branch)
only the references are deleted. Even though the branch is actually removed on the remote the references to it still exists in the local repositories of your team members. This means that for other team members the deleted branches are still visible when they do a git branch -a.
To solve this your team members can prune the deleted branches with
git remote prune <repository>
This is typically git remote prune origin.




# Others

## Changing the Git history of your repository using a script

From <https://help.github.com/articles/changing-author-info/> 

Successed:

git clone --bare https://github.com/user/repo.git
cd repo.git
git push --set-upstream origin master
wsl sh email.sh
git push --force


## GitHub Privacy 101: How to remove personal emails from your public repos

From <https://laptrinhx.com/github-privacy-101-how-to-remove-personal-emails-from-your-public-repos-3522134107/> 


## [How to create file execute mode permissions in Git on Windows? - Stack Overflow]

(https://stackoverflow.com/questions/21691202/how-to-create-file-execute-mode-permissions-in-git-on-windows)

git 2.9.x/2.10 (Q3 2016) actually will allow that (thanks to Edward Thomson):

git add --chmod=+x -- afile


## [version control - How do I discard unstaged changes in Git? - Stack Overflow]

(https://stackoverflow.com/questions/52704/how-do-i-discard-unstaged-changes-in-git)

For all unstaged files in current working directory use:

git checkout -- .

For a specific file use:

git checkout -- path/to/file/to/revert

-- here to remove argument ambiguation.

## Merge two Git repos

[git submodules - How do I append one git history to another? - Stack Overflow](https://stackoverflow.com/questions/21622327/how-do-i-append-one-git-history-to-another)

[git merge - How to combine two separate unrelated Git repositories into one with single history timeline - Stack Overflow](https://stackoverflow.com/questions/9781729/how-to-combine-two-separate-unrelated-git-repositories-into-one-with-single-hist/9781995#9781995)


## Revert

[git - How to revert multiple pull request merges all at once and preserve history - Stack Overflow](https://stackoverflow.com/questions/60766114/how-to-revert-multiple-pull-request-merges-all-at-once-and-preserve-history)

	git checkout <id-of-revision> # use the ID of the revision you would like to get your project back to (in terms of content)
	git reset --soft <the-branch> # the branch where we want to add a revision to revert all of that
	git commit -m "Reverting"
	# If you like the results
	git branch -f <the-branch> # move branch pointer to this new revision
	git checkout <the-branch>