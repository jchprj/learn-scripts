[Folding Air, Software Development With Damian Stanger: Converting CRLF to LF for all files in a git repository](https://foldingair.blogspot.com/2018/02/converting-crlf-to-lf-for-all-files-in.html)

    find . -type f -not -path './.git*' -not -path './node_modules*' | xargs sed -i 's/\r//g'


git config core.autocrlf true