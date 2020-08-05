s = "abcdefg"
print(s[-3])                # e
print(s[-3:])               # efg

sub2 = s[1:4]
print(sub2)                 # bcd
sub3 = ".".join(sub2)
print(sub3)                 # b.c.d


import json
a = json.loads('{"b":123, "a":null}');
print("ad" in a);           # False


KEY_Test_Parameters = 'Test_Parameters'

values = {KEY_Test_Parameters: "d"}
print(values[KEY_Test_Parameters])          # d


a = {"d" : 3}
print(("e" in a) == False)      # True