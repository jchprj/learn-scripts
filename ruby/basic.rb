
puts "hello"
print "world"
=begin
ffffffffffff
=end
puts ""
puts "5.0/2=#{5.0/2}"
puts "5/2=#{5/2}"
puts "5%2=#{5%2}"
puts "5**2=#{5**2}"
x, y, z = 10, 20, 30
x, y = y, x
print x, ",", y
puts '', 'ab'*3

puts 3 == 3.0
puts 3.eql?(3.0) # type

puts "a" > "b"

if 3 > 2
elsif 2 > 1
else
end

unless 3 > 2
end

if 3 > 2 and 2 > 1 || 1 > 2
end

case 3
when 3
when 2, 3
when 1..3
when 2...8
else
end

a = (1..7).to_a
a = (1...7).to_a
a = ("a".."ds").to_a
puts a


gg = "b"
case gg
when *a
    puts "dddd"
end
