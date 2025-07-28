## metastore

sudo apt install metastore

[What's the equivalent of Subversion's "use-commit-times" for Git? - Stack Overflow](https://stackoverflow.com/questions/1964470/whats-the-equivalent-of-subversions-use-commit-times-for-git/13284229#13284229)

    http://repo.or.cz/w/metastore.git , by David Härdeman. It tries to do what Git should have done in the first place: stores metadata (not only timestamps) in the repository when committing (via a pre-commit hook), and reapplies them when pulling (also via hooks).

[Public Git Hosting - metastore.git/summary](https://repo.or.cz/w/metastore.git)

[GitHub - przemoc/metastore: Store and restore metadata from a filesystem.](https://github.com/przemoc/metastore)

    owner,
    group,
    permissions,
    xattrs,
    mtime - optionally.

    If you want to use metastore within git repository, then consider copying exemplary scripts from examples/hooks/ directory to hooks subdirectory in your git directory, and make them executable.
    https://github.com/przemoc/metastore/tree/master/examples/hooks


[metastore/metastore.txt at master · przemoc/metastore · GitHub](https://github.com/przemoc/metastore/blob/master/metastore.txt)

       -c, --compare
              Shows the difference between the stored and real metadata.
       -s, --save
              Saves  the  current  metadata to ./.metadata or to the specified
              file (see --file option below).
       -a, --apply
              Attempts to apply the stored metadata to the file system.
       -m, --mtime
              Causes metastore to also take mtime into account for the compare
              or apply actions.
       -d, --dump
              Dumps stored (if no PATH is given) or real metadata (if PATH  is
              present, e.g. ./) in human-readable form.

### Examples

```
metastore -s -m         # save with mtime for current folder
metastore -a -m         # apply with mtime for current folder
metastore -d            # print the content of saved .metastore in current folder
```

## Other solution

[Restore a file's modification time in Git - Stack Overflow](https://stackoverflow.com/questions/2458042/restore-a-files-modification-time-in-git)

    Git Tools:
    sudo apt install git-restore-mtime
    cd [repo]
    git restore-mtime


[GitHub - MestreLion/git-tools: Assorted git tools, including git-restore-mtime](https://github.com/MestreLion/git-tools)

    Assorted git tools, including git-restore-mtime


