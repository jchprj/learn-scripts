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
