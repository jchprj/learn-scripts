# https://stackoverflow.com/questions/2043453/executing-multi-line-statements-in-the-one-line-command-line

echo -e "import sys\nfor r in range(10): print('rob')" | python3

python3 -c "exec(\"import sys\nfor r in range(10): print('rob')\")"

(echo "import sys" ; echo "for r in range(10): print('rob')") | python3


# https://stackoverflow.com/questions/44643775/how-can-i-write-multi-line-code-in-the-terminal-use-python

python3 - <<'EOF'
a=7
b=5
print(a+b)
EOF