var aa = 1
// simple name in template:
val s1 = "aa is $aa" 
println(s1)
aa = 2
// arbitrary expression in template:
val s2 = "${s1.replace("is", "was")}, but now is $aa"
println(s2)


// https://stackoverflow.com/questions/44188240/kotlin-how-to-correctly-concatenate-a-string
val a = "Hello"
val b = "World"
val c = "$a $b"
println(c)

val sb = StringBuilder()
sb.append(a).append(b)
val c2 = sb.toString()
println(c2)

// string interpolation uses StringBuilder internally ???
val c3 = a + b
println(c3)


val s = "abcdefg"
val sub = s.subSequence(s.indexOf("cde") + 3, s.length)
println(sub)