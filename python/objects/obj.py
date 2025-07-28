# https://stackoverflow.com/questions/25150955/python-iterating-through-object-attributes

class Foo(object):
    def __init__(self):
        self.x = 1
        self.y = 2

k = Foo()

for attr, value in k.__dict__.items():
    print(attr, value)

for attr, value in vars(k).items():
    print(attr, '=', value)


# https://joelmccune.com/python-dictionary-as-object/
class DictObj:
    def __init__(self, in_dict:dict):
        assert isinstance(in_dict, dict)
        for key, val in in_dict.items():
            if isinstance(val, (list, tuple)):
               setattr(self, key, [DictObj(x) if isinstance(x, dict) else x for x in val])
            else:
               setattr(self, key, DictObj(val) if isinstance(val, dict) else val)

a = {"x":1, "y":2}
d = DictObj(a)
print(d, d.x, d.y)





# https://stackoverflow.com/questions/17156078/converting-identifier-naming-between-camelcase-and-underscores-during-json-seria

import re

camel_pat = re.compile(r'([A-Z])')
under_pat = re.compile(r'_([a-z])')

def camel_to_underscore(name):
    return camel_pat.sub(lambda x: '_' + x.group(1).lower(), name)

def underscore_to_camel(name):
    return under_pat.sub(lambda x: x.group(1).upper(), name)


# https://stackoverflow.com/questions/65042790/how-to-remove-key-value-pair-in-a-json-file-in-python
a = {"x":1, "y":2}
del a["x"]
print(a)