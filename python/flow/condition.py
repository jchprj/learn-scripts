a = 2 if 2==3 else 4
print(a)



# Switch Case in Python (Replacement) https://www.geeksforgeeks.org/switch-case-in-python-replacement/
def numbers_to_strings(argument): 
    switcher = { 
        0: "zero", 
        1: "one", 
        2: "two", 
    } 
  
    # get() method of dictionary data type returns  
    # value of passed argument if it is present  
    # in dictionary otherwise second argument will 
    # be assigned as default value of passed argument 
    return switcher.get(argument, "nothing") 
  
# Driver program 
if __name__ == "__main__": 
    argument=2
    print(numbers_to_strings(argument))