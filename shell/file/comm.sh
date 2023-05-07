# https://linux.die.net/man/1/comm
# comm -12 file1 file2
# 	Print only lines present in both file1 and file2.
# comm -3 file1 file2 
#   Print lines in file1 not in file2, and vice versa.



# With no options, produce three-column output.  Column one contains
# lines unique to FILE1, column two contains lines unique to FILE2,
# and column three contains lines common to both files.

# -1
# 	suppress column 1 (lines unique to FILE1)
# -2
# 	suppress column 2 (lines unique to FILE2)
# -3
#   suppress column 3 (lines that appear in both files)


# https://shapeshed.com/unix-comm/
comm -12 <(sort file1) <(sort file2)



# https://stackoverflow.com/questions/746458/how-to-show-lines-in-common-reverse-diff
comm -1 -2 file1.sorted file2.sorted



# https://stackoverflow.com/questions/4366533/how-to-remove-the-lines-which-appear-on-file-b-from-another-file-a
# -23 suppresses the lines that are in both files, or only in file 2. If the files are not sorted, pipe them through sort first...
comm -23 file1.sorted file2.sorted