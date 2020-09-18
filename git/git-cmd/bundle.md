# Export git with version history

From <https://stackoverflow.com/questions/11879287/export-git-with-version-history> 

1. Bundle your source repository in its entirety

    ```
    git bundle create my_repo.bundle --all
    ```

2. Take ``my_repo.bundle`` to where your target is

3. From your target, load up your source commit objects
    ```
    git bundle unbundle my_repo.bundle
    ```
    ...from which point you can merge/rebase/cherry-pick your desired source commits into your target repository to your heart's content.

    Otherwise, pulling works just the same:
    ```
    git pull my_repo.bundle
    ```