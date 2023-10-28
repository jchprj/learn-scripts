val a: Int = 1  // immediate assignment
val b = 2       // `Int` type is inferred


var x = 5       // `Int` type is inferred
x += 1
println(x)

fun incrementX() { 
    x += 1 
    val c: Int      // Type required when no initializer is provided
    c = 3           // deferred assignment(could only in fun)
    println(c)
}
incrementX()
println(x)

lateinit var y: String
// https://stackoverflow.com/questions/37618738/how-to-check-if-a-lateinit-variable-has-been-initialized
if (this::y.isInitialized) { 
    println(y)
} else {
    println("no y")
}