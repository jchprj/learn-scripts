## How to share local changes without git push?

From <https://stackoverflow.com/questions/44477512/how-to-share-local-changes-without-git-push> 
	
    git diff > /path/to/file.patch


	This supposes that your changes are unstaged. Use git diff --cached if they are staged.
	git apply /path/to/file.patch


## How to generate a git patch for a specific commit?


git format-patch <the SHA1>

From <https://stackoverflow.com/questions/6658313/generate-a-git-patch-for-a-specific-commit> 