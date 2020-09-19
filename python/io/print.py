# https://stackoverflow.com/questions/230751/how-to-flush-output-of-print-function


# or: python -u print.py
print("Hello world!", flush=True)


# https://stackoverflow.com/questions/14906764/how-to-redirect-stdout-to-both-file-and-console-with-scripting

import sys

te = open('temp_test.txt','w')  # File where you need to keep the logs

class Unbuffered:

   def __init__(self, stream):

       self.stream = stream

   def write(self, data):

       self.stream.write(data)
       self.stream.flush()
       te.write(data)    # Write the data of stdout here to a text file as well



sys.stdout=Unbuffered(sys.stdout)

print("Hi")