// https://stackoverflow.com/questions/25632924/whats-the-difference-between-raw-string-interpolation-and-triple-quotes-in-scal

val a = """abc"dsd"""
println(a)
val b = s"""abc"dsd"""
println(b)


val helloVar = "hello"

val helloWorldString = """$helloVar, "World"!\n"""
println(helloWorldString)       // $helloVar, "World"!\n

val helloWorldRawString = raw"""$helloVar, "World"!\n"""
println(helloWorldRawString)    // hello, "World"!\n

val helloWorldSString = s"""$helloVar, "World"!\n"""
println(helloWorldSString)      // hello, "World"!