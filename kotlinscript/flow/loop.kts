val items = listOf("apple", "banana", "kiwifruit")
for (item in items) {
    println(item)
}
for (index in items.indices) {
    println("item at $index is ${items[index]}")
}
var index = 0
while (index < items.size) {
    println("item at $index is ${items[index]}")
    index++
}



fun describe(obj: Any): String =
    when (obj) {
        1          -> "One"
        "Hello"    -> "Greeting"
        is Long    -> "Long"
        !is String -> "Not a string"
        else       -> "Unknown"
    }
println(describe(1))
println(describe("Hello"))
println(describe(1000L))
println(describe(2))
println(describe("other"))



for (x in 1..5) {
    print(x)
}
println()
for (x in 1..10 step 2) {
    print(x)
}
println()
for (x in 9 downTo 0 step 3) {
    print(x)
}
println()