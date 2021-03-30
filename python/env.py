# From <https://docs.python.org/3.6/library/argparse.html#module-argparse> 
# From <https://stackoverflow.com/questions/4033723/how-do-i-access-command-line-arguments-in-python> 

import os, sys, configparser, argparse

print(os.environ["PATH"])

print(sys.argv)
print(len(sys.argv))

filename, file_extension = os.path.splitext('/path/to/somefile.ext')
print(filename)                 # /path/to/somefile
print(file_extension)           # .ext

parser = argparse.ArgumentParser(description='abcdefg')
parser.add_argument('--abc', help='abc')
parser.add_argument('--print', dest="print_", help='abc')
parser.add_argument('--dryrun', help='dry run', action="store_true")
args = parser.parse_args()

print(args.abc)                 # None
print(args.print_)              # None
print(args.dryrun)              # False

default_abc = "abc"
abc = args.abc if(args.abc) else default_abc
print(abc)                      # abc


# https://stackoverflow.com/questions/14340366/configparser-and-string-with
# If content contains '%', it will throw exception if not set interpolation=None
config_contents = """
[default]
ansible_become_pass=123456%
"""
config_parser = configparser.ConfigParser(interpolation=None)
config_parser.read_string(config_contents)
print(config_parser["default"]["ansible_become_pass"])