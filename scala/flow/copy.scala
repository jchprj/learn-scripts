// https://stackoverflow.com/questions/7249396/how-to-clone-a-case-class-instance-and-change-just-one-field-in-scala
// case class comes with a copy method that is dedicated exactly to this usage

case class Persona(name  : String)

val existingPersona = Persona("abc")

println(existingPersona)

val newPersona1 = existingPersona.copy()
val newPersona2 = existingPersona.copy(name = "def")

println(newPersona1)
println(newPersona2)