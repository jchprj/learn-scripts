
abc = 3436
print(eval("abc"))
def modify(): 
    global abc
    exec("abc='dd'")
    print(eval("abc"))
modify()
print(eval("abc"))
