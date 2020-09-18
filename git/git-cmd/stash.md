

## Stash only one file out of multiple files that have changed with Git?

From <https://stackoverflow.com/questions/3040833/stash-only-one-file-out-of-multiple-files-that-have-changed-with-git> 
	Since Git 2.13 (Q2 2017), you can stash individual files, with git stash push:
	
	git stash push [-m <message>] [--] [<pathspec>...]
	
## How can I git stash a specific file? [duplicate]

From <https://stackoverflow.com/questions/5506339/how-can-i-git-stash-a-specific-file> 
	Since git 2.13, there is a command to save a specific path to the stash: git stash push <path>. For example:
	
	git stash push -m welcome_cart app/views/cart/welcome.thtml
	


## How to undo git stash clear

From <https://stackoverflow.com/questions/32517870/how-to-undo-git-stash-clear> 
	1. git fsck --unreachable | grep commit | cut -d ' ' -f3 | xargs git log --merges --no-walk --grep=WIP
git stash apply <stash>