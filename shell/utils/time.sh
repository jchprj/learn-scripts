time tail -1000 /opt/worklibs/tmp/i_*114054.dat >/dev/null                                
# real    0m0.03s
# user    0m0.02s
# sys     0m0.01s

# From <https://www.unix.com/shell-programming-and-scripting/136114-retain-last-1000-line-file.html> 



dateFromServer=$(curl -v https://google.com/ 2>&1 | grep -e "< date" | sed -e 's/< date: //'); sudo date -s "$dateFromServer" +'%d %b %Y %T %Z'



# https://www.commandlinefu.com/commands/view/14135/synchronize-date-and-time-with-a-server-over-ssh
ssh user@server sudo date -s @`( date -u +"%s" )`
