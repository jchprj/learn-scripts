# https://www.w3schools.com/python/python_for_loops.asp

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)
  if x == "banana":
    continue
  if x == "banana":
    break


for x in "banana":
  print(x)


for x in range(6):
  print(x)

for x in range(2, 6):
  print(x)

for x in range(2, 30, 3):
  print(x)

for x in range(6):
  print(x)
else:
  print("Finally finished!")

for x in range(6):
  if x == 3: break
  print(x)
else:
  print("Finally finished!")


adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]

for x in adj:
  for y in fruits:
    print(x, y)


for x in [0, 1, 2]:
  pass


adj = {"red": 1, "big":1, "tasty":1}

for x in adj:
  print(x)


  # https://stackoverflow.com/questions/522563/accessing-the-index-in-for-loops
  for idx, x in enumerate([10, 11, 12]):
    print(idx, x)