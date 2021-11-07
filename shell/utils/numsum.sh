# https://suso.suso.org/programs/num-utils/index.phtml
# https://stackoverflow.com/questions/450799/shell-command-to-sum-integers-one-per-line

seq 10 | numsum
numsum foo-num
cat foo-num | numsum


# https://manpages.ubuntu.com/manpages/xenial/man1/numsum.1.html

# Add up only first column
numsum numbers                  # 15

# Add up only second column
numsum -2 numbers                  # 15

# Add up each column of numbers of a file.
numsum -c numbers               # 15 40 65 90 115

# Add up the 1st, 2nd and 5th columns only.
numsum -c -x 1,2,5 numbers      # 15 40 115

# Add up the rows of numbers of a file.
numsum -r numbers

# Add up the 2nd and 4th rows.
numsum -r -y 2,4 numbers