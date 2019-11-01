puts 'Hello, world!'
def find3(sequence) 
    consecutive = sequence.each_cons(2)
    differences     = consecutive.map { |a,b| b - a }
    sequence        = differences.max_by { |n| differences.count(n) }
    missing_between = consecutive.find { |a,b| (b - a) != sequence }
    missing_between.first + sequence
    
end
sequence = [2,4,6,10]

puts find3(sequence)