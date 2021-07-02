# https://suso.suso.org/programs/num-utils/index.phtml
# https://stackoverflow.com/questions/450799/shell-command-to-sum-integers-one-per-line

seq 10 | numsum
numsum foo-num
cat foo-num | numsum