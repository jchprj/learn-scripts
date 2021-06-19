# https://stackoverflow.com/questions/66367856/how-to-write-pid-to-file-in-python
import os


pid = os.getpid()
filename = "temp_test.pid" 
with open(filename, "w") as outputFile:    
    outputFile.write(str(pid))

# https://www.geeksforgeeks.org/python-os-kill-method/
# https://stackoverflow.com/questions/58787330/python-module-signal-has-no-attribute-sighup-and-other-signals
# SIGSTOP is in Linux

import signal
# pid greater than 0
# indicates the parent process 
if pid :
    print("\nIn parent process")
    # send signal 'SIGSTOP'
    # to the child process
    # using os.kill() method
    # 'SIGSTOP' signal will
    # cause the process to stop
    os.kill(pid, signal.SIGSTOP)
    print("Signal sent, child stopped.")
    info = os.waitpid(pid, os.WSTOPPED)
    # waitpid() method returns a
    # tuple whose first attribute 
    # represents child's pid
    # and second attribute
    # represnting child's status indication  
  
    # os.WSTOPSIG() returns the signal number
    # which caused the process to stop
    stopSignal = os.WSTOPSIG(info[1])
    print("Child stopped due to signal no:", stopSignal)
    print("Signal name:", signal.Signals(stopSignal).name)
  
      
    # send signal 'SIGCONT'
    # to the child process
    # using os.kill() method
    # 'SIGCONT' signal will
    # cause the process to continue
    os.kill(pid, signal.SIGCONT) 
    print("\nSignal sent, child continued.")
      
      
else :
    print("\nIn child process")
    print("Process ID:", os.getpid())
    print("Hello ! Geeks")
    print("Exiting")