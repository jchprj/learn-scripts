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