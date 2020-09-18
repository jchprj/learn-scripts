## Prune

How to prune local git tags that don't exist on remote
`git tag -l | xargs git tag -d && git fetch -t`
git config alias

From <https://demisx.github.io/git/2014/11/02/git-prune-local-tags-dont-exist-remote.html> 


## Rename
(only local and server, not distributed. and not an annotated tag?)


How do you rename a Git tag?

From <https://stackoverflow.com/questions/1028649/how-do-you-rename-a-git-tag/16251698> 
	git tag new old
	git tag -d old
	git push origin :refs/tags/old
	git push --tags

