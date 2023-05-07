// https://stackoverflow.com/questions/55222868/scala-multiple-condition-inside-if-and-elseif


val x = 1
val y = 2
val z = 3

val a = if (x == 1 || y == 1 || z == 1 ) {
  "apple"
} else if (y == 2) {
  "mango"
} else {
  "banana"
}

println(a)

val b = (x, y, z) match {
  case _ if x == 1 || y == 1 || z == 1 => "apple"
  case _ if y == 2 => "mango"
  case _ => "banana"
}

println(b)
