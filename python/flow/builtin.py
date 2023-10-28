# https://www.w3schools.com/python/python_ref_functions.asp

# abs()	Returns the absolute value of a number
print(abs(-1))
# all()	Returns True if all items in an iterable object are true
print(all([1, 2, 3]))
# any()	Returns True if any item in an iterable object is true
print(any([0, 1, 2]))
# ascii()	Returns a readable version of an object. Replaces none-ascii characters with escape character
print(ascii('hello'))
# bin()	Returns the binary version of a number
print(bin(5))
# bool()	Returns the boolean value of the specified object
print(bool(0))
# bytearray()	Returns an array of bytes
print(bytearray(5))
# bytes()	Returns a bytes object
print(bytes(5))
# callable()	Returns True if the specified object is callable, otherwise False
print(callable(5))
# chr()	Returns a character from the specified Unicode code.
print(chr(65))
# classmethod()	Converts a method into a class method
print(classmethod(5))
# compile()	Returns the specified source as an object, ready to be executed
print(compile('print(55)', 'test', 'eval'))
# complex()	Returns a complex number
print(complex(5))
# delattr()	Deletes the specified attribute (property or method) from the specified object

# dict()	Returns a dictionary (Array)
print(dict())
# dir()	Returns a list of the specified object's properties and methods
print(dir(5))
# divmod()	Returns the quotient and the remainder when argument1 is divided by argument2
print(divmod(5, 2))
# enumerate()	Takes a collection (e.g. a tuple) and returns it as an enumerate object
print(enumerate([1, 2, 3]))
# eval()	Evaluates and executes an expression
print(eval('5 + 5'))
# exec()	Executes the specified code (or object)
print(exec('print(55)'))
# filter()	Use a filter function to exclude items in an iterable object
print(filter(lambda x: x > 5, [1, 2, 3, 4, 5, 6, 7]))
# float()	Returns a floating point number
print(float(5))
# format()	Formats a specified value
print(format(5))
# frozenset()	Returns a frozenset object
print(frozenset())
# getattr()	Returns the value of the specified attribute (property or method)

# globals()	Returns the current global symbol table as a dictionary
print(globals())
# hasattr()	Returns True if the specified object has the specified attribute (property/method)

# hash()	Returns the hash value of a specified object
print(hash(55))
# help()	Executes the built-in help system

# hex()	Converts a number into a hexadecimal value
print(hex(16))
# id()	Returns the id of an object
print(id({}))
# input()	Allowing user input
# print(input())
# int()	Returns an integer number
print(int())
# isinstance()	Returns True if a specified object is an instance of a specified object
print(isinstance("", str))
# issubclass()	Returns True if a specified class is a subclass of a specified object
print(issubclass(str, object))
# iter()	Returns an iterator object
print(iter([]))
# len()	Returns the length of an object
print(len(""))
# list()	Returns a list
print(list())
# locals()	Returns an updated dictionary of the current local symbol table
print(locals())
# map()	Returns the specified iterator with the specified function applied to each item
print(map(lambda x: x, []))
# max()	Returns the largest item in an iterable
print(max([1]))
# memoryview()	Returns a memory view object
print(memoryview(b'hello'))
# min()	Returns the smallest item in an iterable
print(min([1]))
# next()	Returns the next item in an iterable
print(next(iter([1])))
# object()	Returns a new object
print(object())
# oct()	Converts a number into an octal
print(oct(8))
# open()	Opens a file and returns a file object
# print(open("builtin.py"))
# ord()	Convert an integer representing the Unicode of the specified character
print(ord("1"))
# pow()	Returns the value of x to the power of y
print(pow(5, 5))
# print()	Prints to the standard output device
print(print())
# property()	Gets, sets, deletes a property
print(property())
# range()	Returns a sequence of numbers, starting from 0 and increments by 1 (by default)
print(range(0, 10))
# repr()	Returns a readable version of an object
print(repr([]))
# reversed()	Returns a reversed iterator
print(reversed([1, 2, 3]))
# round()	Rounds a numbers
print(round(1.1))
# set()	Returns a new set object
print(set())
# setattr()	Sets an attribute (property/method) of an object

# slice()	Returns a slice object
print(slice([1, 2, 3]))
# sorted()	Returns a sorted list
print(sorted([1, 2, 3]))
# staticmethod()	Converts a method into a static method
print(staticmethod(print))
# str()	Returns a string object
print(str())
# sum()	Sums the items of an iterator
print(sum([1, 2, 3]))
# super()	Returns an object that represents the parent class
print(super(str))
# tuple()	Returns a tuple
print(tuple())
# type()	Returns the type of an object
print(type(1))
# vars()	Returns the __dict__ property of an object
print(vars())
# zip()	Returns an iterator, from two or more iterators
print(zip([1, 2, 3], [1, 2, 3]))