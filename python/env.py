import os, configparser, argparse

print(os.environ["PATH"])

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