var x = 5
//x = null        // error: null can not be a value of a non-null type Int

// Nullable type names have ? at the end.
var nullable: Int? = null
nullable = 1
println(nullable)

fun main() {
    val b: String? = "Kotlin"
    //val l = b.length    // error: variable 'b' can be null
    val l = if (b != null) b.length else -1
    println(l)
    val ll = b?.length ?: -1
    println(ll)
    if (b != null && b.length > 0) {
        print("String of length ${b.length}")
    } else {
        print("Empty string")
    }
    println()
}
main()

val a = "Kotlin"
val b: String? = null
println(b?.length)
//println(a?.length)        // Unnecessary safe call


val listWithNulls: List<String?> = listOf("Kotlin", null)
for (item in listWithNulls) {
    item?.let { println(it) } // prints Kotlin and ignores null
}


val nullableList: List<Int?> = listOf(1, 2, null, 4)
val intList: List<Int> = nullableList.filterNotNull()
for (item in intList) {
    println(item)
}


val l = b!!.length          // java.lang.NullPointerException