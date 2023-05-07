// https://docs.scala-lang.org/tour/traits.html
// Traits are used to share interfaces and fields between classes. 
// They are similar to Java 8’s interfaces. 
// Classes and objects can extend traits, but traits cannot be instantiated and therefore have no parameters.


import scala.collection.mutable.ArrayBuffer

trait Pet {
    val name: String
}


class Cat(val name: String) extends Pet
class Dog(val name: String) extends Pet

val dog = new Dog("Harry")
val cat = new Cat("Sally")

val animals = ArrayBuffer.empty[Pet]
animals.append(dog)
animals.append(cat)
animals.foreach(pet => println(pet.name))  // Prints Harry Sally

println(animals)