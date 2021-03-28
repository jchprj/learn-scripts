fun sum(a: Int, b: Int): Int {
    return a + b
}
fun sum(a: Long, b: Long) = a + b
println(sum(1, 2))
println(sum(1L, 2L))


fun printSum(a: Int, b: Int): Unit {
    println("sum of $a and $b is ${a + b}")
}
fun printSum(a: Long, b: Long) {
    println("sum of $a and $b is ${a + b}")
}
printSum(1, 2)
printSum(1L, 2L)



fun maxOf(a: Int, b: Int): Int {
    if (a > b) {
        return a
    } else {
        return b
    }
}
fun maxOf(a: Long, b: Long) = if (a > b) a else b
println(maxOf(1, 2))
println(maxOf(1L, 2L))


fun abc() {
    //return 2        // error: the integer literal does not conform to the expected type Unit
    return 
}
println(abc())