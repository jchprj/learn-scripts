# https://alvinalexander.com/linux-unix/get-basename-from-full-filename-extension/

basename /foo/bar/baz/foo.txt
basename /foo/bar/baz/foo.txt .txt


# https://stackoverflow.com/questions/1371261/get-current-directory-name-without-full-path-in-a-bash-script
basename "$PWD"