
a = ["a", "b"]
a << 9
a.push(8)
a.insert(2, 3)
puts(a.length())
puts(a)
puts(a[-1..0])
a.pop
a.delete_at(2)

b = [1, 2]
c = a + b
d = a - b
e = a * 2

f = a & b
g = a | b

a.reverse
a.reverse!
a.size

for x in a
end

a.each do |aa|
    puts "eeeeee"
end
a.each {|dd| puts dd}


ages = {"s" => 2, "dd" => 3, a => 4}

aaa = :id
h = {name:"ff", dd:"ef"}
puts h[:name]
h.delete(:name)
h.each do |aa, v|
    puts "eeeeee"
end
h.each {|dd, v| puts dd}

"abcde".each_char {|d| puts d}

10.times do
    puts "a"
end