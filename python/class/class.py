class Summary:
    def abc(self, ss, sss):
        print("total", self.total)
        return ss + sss
    fabc = {"f":abc}
    total = 0
    exist = 0

s = Summary()
s.total = 3
ff = s.fabc["f"]
print(s.abc(5, 5))              # 10
print(ff(s, 3, 3))              # 6

ss = Summary
ss.total = 3
print(s == ss)                  # False


# https://docs.python.org/3/tutorial/classes.html
class MyClass:
    """A simple example class"""
    i = 12345

    def f(self):
        return str(self.i) + 'hello world'

    def __init__(self, a):
        print("init with " + str(a))

x = MyClass(2)
print(x.f())

x.b = 6
print(x.b)

x.i = 11
print(x.f())




# https://stackoverflow.com/questions/10252010/serializing-class-instance-to-json
import json

class Foo(object):
    def __init__(self):
        self.x = 1
        self.y = 2

foo = Foo()
# s = json.dumps(foo) # raises TypeError with "is not JSON serializable"
s = json.dumps(foo.__dict__) # s set to: {"x":1, "y":2}
print(s)