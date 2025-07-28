[How and when to perform a git clone depth 1 example](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-and-when-to-perform-a-depth-1-git-clone)

    the only thing they pull back from the remote repository is the latest commit on the specific git branch of interest
    git clone --depth 1   https://github.com/cameronmcnz/my-github-repo.git
    git clone --depth 1  --branch develop https://github.com/cameronmcnz/my-github-repo.git develop-folder
    git clone --depth 1  --branch hotfix  https://github.com/cameronmcnz/my-github-repo.git hotfix-folder