import re


# Replace by regex
s = "abc"
regex = r'b(c)'
s = re.sub(regex, '123', s)
print(s) # a123


# Find all
s = "abcbc"
regex = r'(b)(c)'
matches = re.findall(regex, s, re.MULTILINE)
print(matches) # [('b', 'c'), ('b', 'c')]


# Find texts between ""
s = """
ab, "cbc"
"""
regex = r'".*"'
matches = re.findall(regex, s, re.MULTILINE)
print(matches) # ['"cbc"']