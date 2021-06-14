val fruits = listOf("banana", "avocado", "apple", "kiwifruit")
fruits
    .filter { it.startsWith("a") }
    .sortedBy { it }
    .map { it.toUpperCase() }
    .forEach { println(it) }




// https://kotlinlang.org/docs/lambdas.html

// Instantiating a function type﻿
val a = { i: Int -> i + 1 } // The inferred type is (Int) -> Int
val sum = { x: Int, y: Int -> x + y }

val repeatFun: String.(Int) -> String = { times -> this.repeat(times) }
val twoParameters: (String, Int) -> String = repeatFun // OK

fun runTransformation(f: (String, Int) -> String): String {
    return f("hello", 3)
}
val result = runTransformation(repeatFun) // OK


// Invoking a function type instance﻿
val stringPlus: (String, String) -> String = String::plus
val intPlus: Int.(Int) -> Int = Int::plus

println(stringPlus.invoke("<-", "->"))
println(stringPlus("Hello, ", "world!")) 

println(intPlus.invoke(1, 1))
println(intPlus(1, 2))
println(2.intPlus(3)) // extension-like call


// In Kotlin, there is a convention: if the last parameter of a function is a function, then a lambda expression passed as the corresponding argument can be placed outside the parentheses:
// val product = items.fold(1) { acc, e -> acc * e }
// Such syntax is also known as trailing lambda.
// If the lambda is the only argument to that call, the parentheses can be omitted entirely:
run { println("...") }


// it: implicit name of a single parameter
val items = listOf(1, 2, 3, 4, 5)
val filteredItems = items.filter { it > 2 } // this literal is of type '(it: Int) -> Boolean'
println(filteredItems)

// Returning a value from a lambda expression
val filteredItems2 = items.filter {
    val shouldFilter = it > 3
    shouldFilter
}
println(filteredItems2)

// Returning a value from a lambda expression
val filteredItems3 = items.filter {
    val shouldFilter = it > 4
    return@filter shouldFilter
}
println(filteredItems3)
