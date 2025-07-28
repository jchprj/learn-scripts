# https://stackoverflow.com/questions/4990718/about-catching-any-exception

import sys
import traceback

print("----------1------------")

try :
    a.run()
except:
    print(traceback.format_exc())

print("----------2------------")
try :
    a.run()
except Exception as e:
    print(e)

print("----------3------------")
try :
    a.run()
except:
    print(traceback.print_exc())

print("----------4------------")
try :
    a.run()
except:
    print(sys.exc_info())


# https://stackoverflow.com/questions/574730/python-how-to-ignore-an-exception-and-proceed
try :
    a.run()
except:
    pass
print("end")


# https://ioflood.com/blog/python-throw-exception/#:~:text=Throwing%20exceptions%20in%20Python%20can,output%20a%20clear%20error%20message.
try:
    raise Exception("This is a custom exception.")
except Exception as e:
    print(str(e))
