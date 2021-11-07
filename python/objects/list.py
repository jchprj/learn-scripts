s = "abcdefg"
print(s[-3])                # e
print(s[-3:])               # efg

sub2 = s[1:4]
print(sub2)                 # bcd
sub3 = s[1:100]
print(sub3)                 # bcdefg
sub4 = ".".join(sub3)
print(sub4)                 # b.c.d.e.f.g


import json
a = json.loads('{"b":123, "a":null}');
print("ad" in a);           # False


KEY_Test_Parameters = 'Test_Parameters'

values = {KEY_Test_Parameters: "d"}
print(values[KEY_Test_Parameters])          # d


a = {"d" : 3}
print(("e" in a) == False)      # True

# https://www.askpython.com/python/array/python-add-elements-to-an-array
l = []
l.append("a")
print(l)                        # ['a']
l.insert(0, 'b')
print(l)                        # ['b', 'a']
ll = ["b", "c"]
l.extend(ll)
print(l)                        # ['b', 'a', 'b', 'c']


# https://www.geeksforgeeks.org/python-map-function/
# Add two lists using map and lambda 
  
numbers1 = [1, 2, 3] 
numbers2 = [4, 5, 6] 
  
result = map(lambda x, y: x + y, numbers1, numbers2) 
print(list(result))             # [5, 7, 9]


# https://www.geeksforgeeks.org/lambda-filter-python-examples/
result = filter(lambda x: (x % 2 == 0), numbers1)
print(list(result))             # [2]


# https://www.kite.com/python/answers/how-to-join-a-list-of-integers-into-a-string-in-python
ints = [1,2,3]
string_ints = [str(int) for int in ints]
str_of_ints = ",".join(string_ints)
print(str_of_ints)              # 1,2,3