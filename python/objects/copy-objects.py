# https://stackoverflow.com/questions/4794244/how-can-i-create-a-copy-of-an-object-in-python
a_list = list('abc')
a_copy_of_a_list = a_list.copy()
print(a_copy_of_a_list is a_list)           # False
print(a_copy_of_a_list == a_list)           # True


# Shallow Copies
list_of_dict_of_set = [{'foo': list('abc')}]
print(list_of_dict_of_set)                  # [{'foo': {'a', 'b', 'c'}}]
lodos_copy = list_of_dict_of_set.copy()
lodos_copy[0]['foo'].pop()
print(list_of_dict_of_set)                  # [{'foo': {'a', 'b'}}]
print(lodos_copy)                           # [{'foo': {'a', 'b'}}]
del lodos_copy[0]
print(list_of_dict_of_set)                  # [{'foo': {'a', 'b'}}]
print(lodos_copy)                           # []


# Deep copies
import copy
print(list_of_dict_of_set)                  # [{'foo': {'a', 'b'}}]
lodos_deep_copy = copy.deepcopy(list_of_dict_of_set)
lodos_deep_copy[0]['foo'].append('c')
print(lodos_deep_copy)                      # [{'foo': {'a', 'b', 'c'}}]
print(list_of_dict_of_set)                  # [{'foo': {'a', 'b'}}]