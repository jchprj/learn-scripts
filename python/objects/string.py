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


