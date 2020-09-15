# https://book.pythontips.com/en/latest/ternary_operators.html

is_nice = True
state = "nice" if is_nice else "not nice"
print(state)                        # nice


nice = True
personality = ("mean", "nice")[nice]
print("The cat is ", personality)   # The cat is  nice


print(True or "Some")               # True

print(False or "Some")              # Some



output = None
msg = output or "No data returned"
print(msg)                          # No data returned