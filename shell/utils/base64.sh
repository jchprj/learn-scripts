# https://superuser.com/questions/120796/how-to-encode-base64-via-command-line

# Without the -in option reads from stdin
echo -n "Hello world!" | base64
echo -n "Hello world!" | openssl base64
# base64 -i <in-file> -o <outfile>
# openssl base64 -in <infile> -out <outfile>
# cat <infile>|base64

# use a -d flag to decode
echo -n "SGVsbG8gd29ybGQh" | base64 -d
