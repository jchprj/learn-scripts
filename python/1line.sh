# https://stackoverflow.com/questions/2043453/executing-multi-line-statements-in-the-one-line-command-line

echo -e "import sys\nfor r in range(10): print('rob')" | python3

python3 -c "exec(\"import sys\nfor r in range(10): print('rob')\")"

(echo "import sys" ; echo "for r in range(10): print('rob')") | python3