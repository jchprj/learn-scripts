# https://docs.python.org/3/library/stdtypes.html#bytes-objects
# https://stackoverflow.com/questions/19210414/byte-array-to-hex-string
import binascii

a = b'still allows embedded "double" quotes'
b = b"still allows embedded 'single' quotes"
c = b'''3 single quotes''', b"""3 double quotes"""
d = bytes.fromhex('2Ef0 F1f2  ')
print(a)
print(b)
print(c)
print(d)


aa = binascii.hexlify(bytearray(b"a"))
print(aa)
bb = aa.decode("ascii")
print(bb)
