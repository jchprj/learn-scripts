from submodule import module
print("I'm a module")
print(module.a)
from module import *
print(a)
module.abc()