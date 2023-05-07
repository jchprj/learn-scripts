# https://www.pythonlikeyoumeanit.com/Module2_EssentialsOfPython/Basic_Objects.htm
# Python has three basic types of numbers: integers, “floating-point” numbers, and complex numbers.

print(type(-3))
print(isinstance(1.3, int))
print(int("10"))
print(int(1.3))

print(type(-3.))
print(isinstance(10., float))
print(float(-22))

print(0.0000001)  # seven leading-zeros


# https://stackoverflow.com/questions/7604966/maximum-and-minimum-values-for-ints
# For Python 3, there is no maximum or minimum value for the int type.
import sys
print(sys.maxsize)
print(-sys.maxsize - 1)