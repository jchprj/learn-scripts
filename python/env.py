# From <https://docs.python.org/3.6/library/argparse.html#module-argparse> 
# From <https://stackoverflow.com/questions/4033723/how-do-i-access-command-line-arguments-in-python> 

import os, sys, configparser, argparse

print(os.environ["PATH"])

print(sys.argv)

filename, file_extension = os.path.splitext('/path/to/somefile.ext')
print(filename)                 # /path/to/somefile
print(file_extension)           # .ext

parser = argparse.ArgumentParser(description='abcdefg')
parser.add_argument('--abc', help='abc')
parser.add_argument('--dryrun', help='dry run', action="store_true")
args = parser.parse_args()

print(args.abc)                 # None
print(args.dryrun)              # False

default_abc = "abc"
abc = args.abc if(args.abc) else default_abc
print(abc)                      # abc