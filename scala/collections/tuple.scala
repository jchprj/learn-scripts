// https://docs.scala-lang.org/tour/tuples.html
// a tuple is a value that contains a fixed number of elements, each with its own type. Tuples are immutable.


val ingredient = ("Sugar", 25)

// Scala 2
println(ingredient._1) // Sugar
println(ingredient._2) // 25

// Scala 3
// println(ingredient(0)) // Sugar
// println(ingredient(1)) // 25

val tuple = ("Sugar", 25, true)
println(tuple)