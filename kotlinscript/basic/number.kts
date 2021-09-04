// https://kotlinlang.org/docs/basic-types.html#numbers

// Integer types
val one = 1 // Int
val threeBillion = 3000000000 // Long
val oneLong = 1L // Long
val oneByte: Byte = 1

// Floating-point types
val pi = 3.14 // Double
// val one: Double = 1 // Error: type mismatch
val oneDouble = 1.0 // Double


val a: Int = 100
val boxedA: Int? = a
val anotherBoxedA: Int? = a

val b: Int = 10000
val boxedB: Int? = b
val anotherBoxedB: Int? = b

println(boxedA === anotherBoxedA) // true
println(boxedB === anotherBoxedB) // false
println(boxedB == anotherBoxedB)  // true


// https://stackoverflow.com/questions/41655713/how-to-convert-int-to-hex-string-in-kotlin
println("%x".format(256))  // 100
println("%05x".format(256))  // 00100
println((-50).toString(16)) // -32
println(Integer.toHexString(-50)) // ffffffce


println(97.toByte())