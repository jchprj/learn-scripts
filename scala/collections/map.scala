// https://stackoverflow.com/questions/5042878/how-can-i-convert-immutable-map-to-mutable-map-in-scala

val m = collection.immutable.Map(1->"one",2->"Two")
val n = collection.mutable.Map(m.toSeq: _*) 
println(m)
println(n)


val myImmutableMap = collection.immutable.Map(1->"one",2->"two")
val myMutableMap = collection.mutable.Map() ++ myImmutableMap
println(myImmutableMap)
println(myMutableMap)



// https://www.tutorialspoint.com/scala/scala_maps.htm

// Empty hash table whose keys are strings and values are integers:
var A:Map[Char,Int] = Map()
A += ('I' -> 1)
A += ('J' -> 5)
A += ('K' -> 10)
A += ('L' -> 100)

// A map with keys and values.
val colors1 = Map("red" -> "#FF0000", "azure" -> "#F0FFFF")
println( "Keys in colors : " + colors1.keys )
println( "Values in colors : " + colors1.values )
println( "Check if colors is empty : " + colors1.isEmpty )

val colors2 = Map("blue" -> "#0033FF", "yellow" -> "#FFFF00", "red" -> "#FF0000")
var colors = colors1 ++ colors2
println( "colors1 ++ colors2 : " + colors )
colors = colors1.++(colors2)
println( "colors1.++(colors2)) : " + colors )

colors.keys.foreach{ i =>  
         print( "Key = " + i )
         println(" Value = " + colors(i) )}

colors.contains( "red" )