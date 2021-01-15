# https://www.geeksforgeeks.org/python-shutil-disk_usage-method/

# importing shutil module  
import shutil 
  
# Path 
path = "."
  
# Get the disk usage statistics 
# about the given path 
stat = shutil.disk_usage(path) 
  
# Print disk usage statistics 
print("Disk usage statistics:") 
print(stat) 
print(stat.free) 



print("-------- 1")
# https://stackoverflow.com/questions/8384737/extract-file-name-from-path-no-matter-what-the-os-path-format
from pathlib import Path    
a = Path("/tmp/d/a.dat").name
print(a)        # 'a.dat'
b = Path("/tmp/d/a.dat").stem
print(b)        # 'a'
import ntpath
c = ntpath.basename("a/b/c")
print(c)        # 'c'


print("-------- 2")
import os, json
path = os.walk(".")
for root, directories, files in path:
    for directory in directories:
        print(directory)
    for file in files:
        print(file)


print("-------- 3")
# https://stackoverflow.com/questions/10377998/how-can-i-iterate-over-files-in-a-given-directory
import glob

for filepath in glob.iglob('./*.py'):
    print(filepath)