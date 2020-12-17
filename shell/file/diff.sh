# https://www.linuxtechi.com/diff-command-examples-linux/
diff file1.sorted file2.sorted

echo ---------c
# in context format (-c)
diff file1.sorted file2.sorted -c
echo ---------u
# in unified format (-u)
diff file1.sorted file2.sorted -u
echo ---------i
# Ignore Case Sensitive
diff file1.sorted file2.sorted -i
# ignore inconsistent white spaces
diff file1.sorted file2.sorted -b
# ignore all white spaces
diff file1.sorted file2.sorted -W
# ignore trialing space at the line end
diff file1.sorted file2.sorted -Z
# ignore all blank lines
diff file1.sorted file2.sorted -B

# -q -> it instructs diff command to report only when files are different
# -r -> it instructs diff command to look for difference in sub-directories recursively
diff -qr ./ ../