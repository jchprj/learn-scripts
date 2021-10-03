# https://stackoverflow.com/questions/11551996/why-do-we-need-the-finally-clause-in-python

def a():
    try:
        run_code1()
    except TypeError:
        run_code2()
        return None   # The finally block is run before the method returns
    finally:
        print("END")

try:
    run_code1()
finally:
    a()
