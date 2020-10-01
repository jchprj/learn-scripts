# Reference: https://medium.com/@ajeetham/remove-duplicate-lines-from-a-file-using-python-70fa74a84e5e
# Remove duplicate lines from a file using python

import sys

lines_seen = set() # holds lines already seen

with open(sys.argv[1] + "_uniq", "w") as output_file:
    for each in open(sys.argv[1], "r"):
        each_line = each.strip()
        if(each_line not in lines_seen): # check if line is not duplicate
            output_file.write(each_line)
            output_file.write("\n")
            lines_seen.add(each_line)