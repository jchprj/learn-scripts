=begin
    r read-only, beginning
    r+ read-write, beginning
    w write-only, truncate
    w+ read-write, truncate
    a write-only, end
    a+ read-write, end
=end

f = File.new("a.txt", "w+")
f.puts("1")
f.write("2") # no new line
f.puts("3")
puts f.size
puts File.zero?("a.txt")
f.close
puts File.zero?("a.txt")
puts File.readable?("a.txt")
puts File.writable?("a.txt")
puts File.executable?("a.txt")

puts File.read("a.txt")
File.open("a.txt", "w+"){
    |ff| ff.puts("dddddddd")
}
File.readlines("a.txt").each{
    |line| puts line
}

f = File.open("a.txt", "w+") if File.file?("a.txt")
f.close
File.delete("a.txt")