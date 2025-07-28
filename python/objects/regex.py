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


# https://stackoverflow.com/questions/17156078/converting-identifier-naming-between-camelcase-and-underscores-during-json-seria

import re

camel_pat = re.compile(r'([A-Z])')
under_pat = re.compile(r'_([a-z])')

def camel_to_underscore(name):
    return camel_pat.sub(lambda x: '_' + x.group(1).lower(), name)

def underscore_to_camel(name):
    return under_pat.sub(lambda x: x.group(1).upper(), name)

print(camel_to_underscore('camelCaseNames'))
# 'camel_case_names'
print(underscore_to_camel('names_with_underscores'))
# 'namesWithUnderscores'