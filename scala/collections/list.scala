// https://www.delftstack.com/howto/scala/scala-sort-list/

var list1   =  List("j", "b", "c")
val sorted = list1.sorted
for (name <- sorted) println(name)


var list2   =  List("j", "b", "c")
val sorted2 = list2.sortWith((a: String, b: String) => a.charAt(0).toLower < b.charAt(0).toLower)
println("--------ascending order-----------")
for (name <- sorted2) println(name)

val sorted3 = list2.sortWith((a: String, b: String) => a.charAt(0).toLower > b.charAt(0).toLower)
println("--------descending order----------")
for (name <- sorted3) println(name)