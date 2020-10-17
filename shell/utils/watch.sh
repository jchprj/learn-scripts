watch -n 1 cat file

# From <https://unix.stackexchange.com/questions/101271/open-a-text-file-in-a-terminal-and-auto-refresh-it-whenever-it-is-changed> 


# without watch:

while true
do
    echo aaa 2>&1 | tee -a temp_test
    sleep 3
done

# From <https://stackoverflow.com/questions/21849956/how-to-save-output-of-watch-to-file> 
