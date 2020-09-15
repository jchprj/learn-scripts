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


l = []
l.append("a")
print(l)                        # ['a']


# https://www.geeksforgeeks.org/python-map-function/
# Add two lists using map and lambda 
  
numbers1 = [1, 2, 3] 
numbers2 = [4, 5, 6] 
  
result = map(lambda x, y: x + y, numbers1, numbers2) 
print(list(result))             # [5, 7, 9]



# https://www.kite.com/python/answers/how-to-join-a-list-of-integers-into-a-string-in-python
ints = [1,2,3]
string_ints = [str(int) for int in ints]
str_of_ints = ",".join(string_ints)
print(str_of_ints)              # 1,2,3