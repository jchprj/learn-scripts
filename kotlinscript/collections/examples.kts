val list = listOf(Pair(1, 111), Pair(1, 2222), Pair(2, 333))
val a = list.groupBy({ it.first }, { it.second })
println(list)
println(a)