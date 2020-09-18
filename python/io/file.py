import os, json

path = os.walk(".")

for root, directories, files in path:
    for directory in directories:
        print(directory)
    for file in files:
        print(file)

fname = "test.json" 
with open(fname, encoding='utf-8') as data_file:    
    data = json.load(data_file)
print(data)
with open('test.json', 'r') as reader:
    lines = reader.readlines()
print(lines)




# https://github.com/rkern/line_profiler/issues/37
# UnicodeDecodeError: 'gbk' codec can't decode byte 0xaa in position 553: illegal multibyte sequence

# with open(filename, 'rb') as f:
# works!

open(fname, 'rb')


# https://stackoverflow.com/questions/2769061/how-to-erase-the-file-contents-of-text-file-in-python
open('file.txt', 'w').close()