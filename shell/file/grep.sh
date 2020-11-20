# https://stackoverflow.com/questions/1898553/return-a-regex-match-in-a-bash-script-instead-of-replacing-it
echo "TestT100String" | grep -o '[0-9]\+'       # 100
echo "TestT100String" | grep '[0-9]\+'          # TestT100String