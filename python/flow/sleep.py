# https://www.programiz.com/python-programming/time/sleep
# time.sleep() in multithreaded programs
# The sleep() function suspends execution of the current thread for a given number of seconds.

# In case of single-threaded programs, sleep() suspends execution of the thread and process. However, the function suspends a thread rather than the whole process in multithreaded programs.

import threading 
import time
  
def print_hello():
  for i in range(4):
    time.sleep(0.5)
    print("Hello")
  
def print_hi(): 
    for i in range(4): 
      time.sleep(0.7)
      print("Hi") 

t1 = threading.Thread(target=print_hello)  
t2 = threading.Thread(target=print_hi)  
t1.start()
t2.start()