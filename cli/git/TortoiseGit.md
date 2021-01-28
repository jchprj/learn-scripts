## Windows only


### "remote tracking branch" in TortoiseGit

From <https://stackoverflow.com/questions/49516580/where-is-remote-tracking-branch-in-tortoisegit> 
Open the "Browse Refs" dialog 
(you can change the remote-tracking branch using the context menu).



### Can you do partial commit in TortoiseGit?
partial commit in TortoiseGit

From <https://stackoverflow.com/questions/32527097/can-you-do-partial-commit-in-tortoisegit> 
Right click a file you want to partially commit
Click Restore after commit - This immediately creates an internal copy of the file.
Double click the file to edit in TortoiseGitMerge
Right click -> Mark this block for each change you want to commit now
Right click -> Leave only marked blocks to revert the other changes.
As an alternative to these two steps, you can edit the file the way you want.
Save and Close TortoiseGitMerge
Commit - this restores the internal copy of the file afterwards.




### How to perform rebase (squash) using tortoisegit

From <https://stackoverflow.com/questions/12528854/how-to-perform-rebase-squash-using-tortoisegit> 
	combine two adjacent commits using the GUI as follows. Remember not do combine commits already on the shared repository.
	By selecting more than two commits



### Excel compare

I usually use TortoiseGit which is Windows only and so does inside the Windows VM, its default diff tool could compare Excel file changes whenever click compare with... such as in Git log view.

Other compare resources:

3 steps to make Spreadsheet Compare work with git diff

From <https://www.xltrail.com/blog/git-diff-spreadsheetcompare> 