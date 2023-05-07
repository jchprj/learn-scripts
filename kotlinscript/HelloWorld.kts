println("Hello world! ")
args.forEach {
    println("- $it")
}
val x = 1
val y = 1
val z = if (x == 1) {
    2
} else if (y == 2) {
    3
} else {
    4
}
println(z)