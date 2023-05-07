## Search

[Where can I see all my comments on issues on GitHub? - Web Applications Stack Exchange](https://webapps.stackexchange.com/questions/103374/where-can-i-see-all-my-comments-on-issues-on-github)

    is:issue commenter:username


### Query for filename
https://stackoverflow.com/questions/18991908/is-it-possible-to-search-for-a-particular-filename-on-github

    filename:user.rb



### Query for dates
https://docs.github.com/en/free-pro-team@latest/github/searching-for-information-on-github/understanding-the-search-syntax

    created:>2016-04-29
    pushed:2016-04-30..2016-07-04

### Exclude certain results
https://docs.github.com/en/github/searching-for-information-on-github/understanding-the-search-syntax
```
hello NOT world
```
matches repositories that have the word "hello" but not the word "world."

You can prefix any search qualifier with a `-` to exclude all results that are matched by that qualifier.
```
cats stars:>10 -language:javascript 
```
matches repositories with the word "cats" that have more than 10 stars but are not written in JavaScript.

### Using search to filter issues and pull requests
https://docs.github.com/en/free-pro-team@latest/github/managing-your-work-on-github/using-search-to-filter-issues-and-pull-requests

Filter pull requests by reviewer: state:open type:pr reviewed-by:octocat

### is:merged

0eff326d6213c is:merged Matches merged pull requests with a commit SHA that starts with 0eff326d6213c.

From <https://stackoverflow.com/questions/35915261/github-find-the-pull-request-associated-with-a-commit> 

### reviewed-by:USERNAME

Searching issues and pull requests

From <https://help.github.com/en/github/searching-for-information-on-github/searching-issues-and-pull-requests#search-pull-requests-by-review-status> 
reviewed-by:USERNAME

### You can't.

How to search on github to get exact matches (like what quotes do for Google)

From <https://stackoverflow.com/questions/26433561/how-to-search-on-github-to-get-exact-matches-like-what-quotes-do-for-google> 
You can't.



## PR Merge

just checked the option Github is using. no matter what merge type is set in Github, it is --ff and --no-ff, in these two cases, merge will happen.
only the --ff-only case, is what Harris and I cared before, I think with this option, the merge will not be allowed, but Github does not support this setting, GitLab support it.
ff means fast-forward. using Git should at least understand what is fast-forward

About pull request merges

From <https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-request-merges> 



FAST-FORWARD MERGE

From <https://git-scm.com/docs/git-merge#_fast_forward_merge> 