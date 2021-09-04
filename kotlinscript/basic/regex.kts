// https://www.baeldung.com/kotlin/regular-expressions

// Matching Options
// IGNORE_CASE – enables case-insensitive matching
// MULTILINE – changes the meaning of ^ and $ (see Pattern)
// LITERAL – causes metacharacters or escape sequences in the pattern to be given no special meaning
// UNIX_LINES – in this mode, only the \n is recognized as a line terminator
// COMMENTS – permits whitespace and comments in the pattern
// DOT_MATCHES_ALL – causes the dot to match any character, including a line terminator
// CANON_EQ – enables equivalence by canonical decomposition (see Pattern)

val regex = """a([bc]+)d?""".toRegex()

println(regex.containsMatchIn("xabcdy"))
println(regex.matches("abcd"))
println(regex matches "xabcdy")
println("")

val matchResult1 = regex.matchEntire("abbccbbd")
println(matchResult1!!.value)
val matchResult2 = regex.find("abcbabbd")
println(matchResult2!!.value)
val matchResult3 = matchResult2!!.next()
println(matchResult3!!.value)
val matchResults = regex.findAll("abcb abbd")
println(matchResults)
println("")

val matchResult = regex.find("abcb abbd")
println(matchResult?.groups?.get(0)?.value)         // abcb
println(matchResult?.groups?.get(1)?.value)         // bcb
println(matchResult?.range)                         // 0..3

val regex2 = """(red|green|blue)""".toRegex()
val beautiful = "Roses are red, Violets are blue"
val grim = regex2.replace(beautiful, "dark")
println(grim)
val shiny = regex.replaceFirst(beautiful, "rainbow")
println(shiny)

// https://stackoverflow.com/questions/59166654/kotlin-regexp-matching-parenthesis-content
val m = """\(([^()]*)\)""".toRegex()
val text = "aaaa (ferf ) veffef (frr) refef" 
val results =  m.findAll(text).map{it.groupValues[1]}.toList()
println(results)