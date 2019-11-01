module FF
    def f
    end
    class AA
    end
    def self.g
        puts "g"
    end
end

class A
end
class B < A
    include Comparable
    def <=>(other) 
        self.to_s <=> other.to_s
    end
end
class C < A
    include FF
end
class D < A
    include FF
end

PP = Struct.new(:x, :y)

require "ostruct" # slower than Struct
person = OpenStruct.new
person.name = "s"
person.age = 42
p2 = OpenStruct.new(name:"ff", age:42)

o = D.new
o.f
b1 = B.new
b2 = B.new
puts b1 == b2
puts b1 == b1

FF::AA.new
FF::g
FF.g

origin = PP.new(0, 0)
origin.x

puts person.name
puts p2.name


puts Math.sqrt(9)
puts Math::PI

t = Time.now
puts t
puts t.year
t = Time.new(2019, 7, 13)
puts t.wday
puts t.yday


greet = Proc.new do |x|
    puts "w #{x}"
end
def calc(proc)
    start = Time.now
    proc.call "ww"
    dur = Time.now - start
end
greet.call "ffffff"
puts calc(greet)


talk = lambda {puts "Hi"} # In other programming languages, a lambda is commonly referred to as an anonymous function.
talk = ->() {puts "Hi"}
talk.call

# lambda will not return enclosing method, while proc will
# argument dismatch cause lambda error, proc will have nil value