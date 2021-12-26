# https://stackoverflow.com/questions/68382662/how-to-install-pip-on-python-2-7-in-2021
# PyPi has discontinued support for Python <2.7.9 as of May 6th 2021

def greet(name):
    print "Hello, {0}!".format(name)
print "What's your name?"
name = raw_input()
greet(name)