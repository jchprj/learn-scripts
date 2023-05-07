// https://stackoverflow.com/questions/27948128/how-to-convert-scala-map-into-json-string
// https://stackoverflow.com/questions/29908297/how-can-i-convert-a-json-string-to-a-scala-map
// https://github.com/json4s/json4s

import $ivy.`org.json4s::json4s-jackson:4.0.5 compat`, org.json4s._, org.json4s.jackson.JsonMethods._, org.json4s.jackson.Serialization, org.json4s.jackson.Serialization._


implicit val formats = Serialization.formats(NoTypeHints)
 val m = Map(
  "name" -> "john doe",
  "age" -> 18,
  "hasChild" -> true,
  "childs" -> List(
    Map("name" -> "dorothy", "age" -> 5, "hasChild" -> false),
    Map("name" -> "bill", "age" -> 8, "hasChild" -> false)))

 val s = write(m)
 println(s)

 
def jsonStrToMap(jsonStr: String): Map[String, Any] = {
  implicit val formats = org.json4s.DefaultFormats
  parse(jsonStr).extract[Map[String, Any]]
}

val m2 = jsonStrToMap(s)
println(m2)