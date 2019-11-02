# Create an array:
array = ["milk", "eggs", "bread"]

# Add the string "carrots" to the end of the array:
array << "carrots"

# Add the string "potatoes" to the end of the array:
array.push("potatoes")

# Add the string "celery" to the beginning of the array:
array.unshift("celery") # add to beginning

# Add the strings "ice cream" and "pie" to the end of the array:
array += ["ice cream", "pie"]

# Add the number 1 to the end of the array:
array << 1

a = ["a", "b"]
puts(a.length())
puts(a)
puts(a[-1..0])


a = (1..7).to_a
a = (1...7).to_a
a = ("a".."ds").to_a
puts a
puts a.length