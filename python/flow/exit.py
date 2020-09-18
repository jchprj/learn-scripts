# echo $?
# https://stackoverflow.com/questions/3850261/doing-something-before-program-exit
import atexit
import random

def exit_handler():
    print('My application is ending!')

atexit.register(exit_handler)

exit(random.randint(0, 100))