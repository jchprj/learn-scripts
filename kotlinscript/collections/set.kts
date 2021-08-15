// https://kotlinlang.org/docs/collections-overview.html#set
// https://www.javatpoint.com/kotlin-set
// https://www.javatpoint.com/kotlin-hashset
// https://www.javatpoint.com/kotlin-mutableset

val numbers = setOf(1, 2, 3, 4)  // LinkedHashSet is the default implementation
println("Number of elements: ${numbers.size}")
if (numbers.contains(1)) println("1 is in the set")

val numbersBackwards = setOf(4, 3, 2, 1)
println("The sets are equal: ${numbers == numbersBackwards}")

println(numbers.first() == numbersBackwards.first())
println(numbers.first() == numbersBackwards.last())

val mySet = setOf(2,6,4,29,4,5,"Ashu","Ajay")
for(element in mySet){  
    println(element)  
}  
println("...mySet.contains\"Ashu\"...")  
println(mySet.contains("Ashu"))  
println("...mySet.contains(20)...")  
println(mySet.contains(20))  

val intSet = setOf(6,4,29)  
println("...mySet.containsAll(intSet)...")  
println(mySet.containsAll(intSet))  

println(mySet.isEmpty())  
println(mySet.isNotEmpty())  


val remainList= mySet.drop(4)  
println(mySet.elementAt(3))  
println(mySet.elementAtOrNull(5))  


var hashSet = HashSet<Int>(6)  
hashSet.add(2)  
hashSet.add(13)  
hashSet.add(6)  
hashSet.add(5)  
hashSet.add(2)  
hashSet.add(8)  
println("......traversing hashSet......")  
for (element in hashSet){  
    println(element)  
}

var hashSetOf1 = hashSetOf<Int>(2,13,6,5,2,8)  
hashSetOf1.add(22)  
var hashSetOf2: HashSet<String> = hashSetOf<String>("Vijay","Ashu" ,"Vijay","Roshan")  
println("......traversing hashSetOf1......")  
for (element in hashSetOf1){  
    println(element)  
}  
println("......traversing hashSetOf2......")  
for (element in hashSetOf2){  
    println(element)  
}  


val intmutableSet = mutableSetOf<Int>(2, 6, 4, 29, 4, 5)  
intmutableSet.add(22)  
val anymutableSet = mutableSetOf(2, 6, 4, 29, 4, 5, "Ajay", "Ashu", "Ajay")  
// anymutableSet.add(22)            // error: the integer literal does not conform to the expected type Nothing
println("....intmutableSet....")  
for(element in intmutableSet){  
    println(element)  
}  
println("....anymutableSet......")  
for(element in anymutableSet){  
    println(element)  
}  
