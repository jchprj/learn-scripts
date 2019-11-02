x = 0
while x < 10
    x += 1
end

until x < 20
    x += 1
end

for i in (1..10)
    break if i > 3
    next if i % 2 == 0
    redo if i % 2 == 0  # repeat current loop
    retry if i % 2 == 0  # restart from beginning
end

x = 0
loop do
    break if x > 10
end