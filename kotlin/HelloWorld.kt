
fun main() {
    print("Hello ")
    print("world!")
    println("Hello world!")
    var a:String?="2"
    var b:String?="1"
    val c = if(a == null || b == null)a?:b else "e"
    print(c)
}
// fun main(args: Array<String>) {
//     println(args.contentToString())
// }