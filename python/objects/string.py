a = "abc"
print("a" in a)     # True
print("ab" in a)    # True
print("ad" in a)    # False

print('a' * 5)      # aaaaa

print('False' in a or 'b' in a)



# https://www.w3schools.com/python/ref_string_zfill.asp#:~:text=The%20zfill()%20method%20adds,string%2C%20no%20filling%20is%20done.
a = "hello"
b = "welcome to the jungle"
c = "10.000"

print(a.zfill(10))          # 00000hello
print(b.zfill(10))          # welcome to the jungle
print(c.zfill(10))          # 000010.000



# https://stackoverflow.com/questions/7585435/best-way-to-convert-string-to-bytes-in-python-3
my_str = "hello world"
my_str_as_bytes = str.encode(my_str)
print(type(my_str_as_bytes)) # ensure it is byte representation
print(my_str_as_bytes) # ensure it is byte representation
my_decoded_str = my_str_as_bytes.decode()
print(type(my_decoded_str)) # ensure it is string representation
print(my_decoded_str) # ensure it is string representation