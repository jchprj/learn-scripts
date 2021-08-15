// https://kotlinlang.org/docs/collections-overview.html#map
// https://www.javatpoint.com/kotlin-map
// https://www.javatpoint.com/kotlin-hashmap
// https://www.javatpoint.com/kotlin-hashmap-hashmapof
// https://www.javatpoint.com/kotlin-mutablemap

val s = "--%3d: ----------"

println(s.format(1))
val numbersMap = mapOf("key1" to 1, "key2" to 2, "key3" to 3, "key4" to 1)          // LinkedHashMap

println("All keys: ${numbersMap.keys}")
println("All values: ${numbersMap.values}")
if ("key2" in numbersMap) println("Value by key \"key2\": ${numbersMap["key2"]}")    
if (1 in numbersMap.values) println("The value 1 is in the map")
if (numbersMap.containsValue(1)) println("The value 1 is in the map") // same as previous

val anotherMap = mapOf("key2" to 2, "key1" to 1, "key4" to 1, "key3" to 3)
println("The maps are equal: ${numbersMap == anotherMap}")

val numbersMap2 = mutableMapOf("one" to 1, "two" to 2)
numbersMap2.put("three", 3)
numbersMap2["one"] = 11
println(numbersMap2)

println(s.format(2))
val myMap = mapOf<Int,String>(1 to "Ajay", 4 to "Vijay", 3 to "Prakash")  
println(myMap.get(1))  
println(myMap.getOrDefault(3, "Vijay"))  
println(myMap.getValue(4))
println(myMap.contains(3))  
println(myMap.containsKey(2))  
println(myMap.containsValue("Ajay"))  

println(s.format(3))
val myMap2 = mapOf(1 to "Ajay", 4 to "Vijay", 3 to "Prakash","ram" to "Ram", "two" to 2)  
for(key in myMap2.keys){  
    println(myMap2[key])  
}
for(itr1 in myMap2.iterator()){  
    println("key = ${itr1.key} value = ${itr1.value}")  
} 
for(m in myMap2.minus(4)){  
    println(myMap2[m.key])  
}  
for(m in myMap2 - 4){  
    println(myMap2[m.key])  
}  
for(p in myMap2.plus(Pair(5, "Rohan"))){  
    println("Element at key ${p.key} = ${p.value}")  
}  
for(p in myMap2 + Pair(5, "Rohan")){  
    println("Element at key ${p.key} = ${p.value}")  
}  

println(s.format(4))
// https://stackoverflow.com/questions/45963313/how-do-i-create-a-map-from-2-arrays
val keys = arrayOf("butter", "milk", "apples")
val values = arrayOf(5, 10, 42)
val map = keys.zip(values)      // Gives you [("butter", 5), ("milk", 10), ("apples", 42)]
                 .toMap()       // This is an extension function on Iterable<Pair<K, V>>
println(map)

val keys2 = keys
val values2 = values
val mapNumber = mutableMapOf<String, Int?>()
		.apply { for (i in keys2.indices) this[keys2[i]] = values2[i] }
println(mapNumber)



val intMap: HashMap<Int, String> = hashMapOf<Int,String>(1 to "Ashu",4 to "Rohan", 2 to "Ajeet", 3 to "Vijay")  
val intMap2 = hashMapOf(1 to "Ashu",4 to "Rohan", 2 to "Ajeet", 3 to "Vijay")  
val hashMap:HashMap<String,String> = HashMap<String,String>(3)  
hashMap.put("name","Ajay")  
hashMap.put("city","Delhi")  



val mutableMap1: MutableMap<Int, String> = mutableMapOf<Int, String>(1 to "Ashu", 4 to "Rohan", 2 to "Ajeet", 3 to "Vijay")  
val mutableMap2: MutableMap<String, String> = mutableMapOf<String, String>()  
mutableMap2.put("name", "Ashu")  
mutableMap2.put("city", "Delhi")  