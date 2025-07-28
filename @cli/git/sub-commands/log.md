## Get commit logs between two tags

git log --oneline release_0.2.13..release_0.2.14


## Using Git, show all commits that exist *only* on one specific branch, and not *any* others

git log --no-merges origin/merge-only \
    --not $(git for-each-ref --format="%(refname)" refs/remotes/origin |
    grep -Fv refs/remotes/origin/merge-only)

From <https://stackoverflow.com/questions/5720343/using-git-show-all-commits-that-exist-only-on-one-specific-branch-and-not-a> 

```
	git log --no-merges 2018 \
    --not $(git for-each-ref --format="%(refname)" refs/heads |
    grep -Fv refs/heads/2018)
```



## 
git log --no-merges a --not b