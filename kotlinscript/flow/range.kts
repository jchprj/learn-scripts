val range = 1..6
println("Random number: ${range.random()}")
println("Max number: ${range.maxOrNull()}")
println("Min number: ${range.minOrNull()}")
println("Sum: ${range.sum()}")
println("Average: ${range.average()}")


(2..5).forEach(::println)
(2..5).reversed().forEach(::println)

for (i in 'a'..'z' step 5) 
    println("$i ") 

(5.downTo(1).step(2)).forEach(::println)