// https://kotlinlang.org/docs/destructuring-declarations.html
// https://stackoverflow.com/questions/47307782/how-to-return-multiple-values-from-a-function-in-kotlin-like-we-do-in-swift

fun getPair() = Pair(1, "foo")
val (num, str) = getPair()

println(num)
println(str)


fun getList() = listOf(1, 2, 3, 4, 5)
val (a, b, c, d, e) = getList()
print(a)
print(b)
print(c)
print(d)
print(e)