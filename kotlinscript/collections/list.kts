// https://kotlinlang.org/docs/collections-overview.html#list
// https://proandroiddev.com/the-mystery-of-mutable-kotlin-collections-e82cbf5d781
// https://stackoverflow.com/questions/64853452/in-kotlin-why-does-mutablelistof-return-an-instance-of-java-util-arraylist-whi

val empty1 = emptyList<String>()                                // class kotlin.collections.EmptyList
val empty2 = listOf<kotlin.Int>()                                // class kotlin.collections.EmptyList
println( empty1::class.java )
println( empty2::class.java )

val numbers = listOf("one", "two", "three", "four")             // class java.util.Arrays$ArrayList
println( numbers::class.java )
println("Number of elements: ${numbers.size}")
println("Third element: ${numbers.get(2)}")
println("Fourth element: ${numbers[3]}")
println("Index of element \"two\" ${numbers.indexOf("two")}")

// numbers[2] = "two"                                           // error: no set method providing array access
val numbersMutable = numbers as MutableList                     // class java.util.Arrays$ArrayList
println( numbersMutable::class.java )
// numbersMutable.add("two")                                       // java.lang.UnsupportedOperationException
numbersMutable[2] = "two"
println("Third element of numbers: ${numbers.get(2)}")

// class Person(val name: String, var age: Int) {}  // NOT EQUAL for any one below
data class Person(var name: String, var age: Int)
val bob = Person("Bob", 31)
val people = listOf(Person("Adam", 20), bob, bob)
val people2 = listOf(Person("Adam", 20), Person("Bob", 31), bob)
println(people == people2)          // true
bob.age = 32
println(people == people2)          // false


val numbers2 = mutableListOf(1, 2, 3, 4)                        // class java.util.ArrayList
println( numbers2::class.java )
numbers2.add(5)
numbers2.removeAt(1)
numbers2[0] = 0
numbers2.shuffle()
println(numbers2)


// https://kotlinlang.org/docs/collection-plus-minus.html
val plusList = numbers2 + 5
println(plusList)
val minusList = numbers2 - listOf(3, 4)
println(minusList)
