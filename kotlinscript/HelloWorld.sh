#!/path/to/kotlinc -script

// To run this Kotlin script shell file, needs kotlinc bin specified in the first line, then run in a bash by "./HelloWorld.sh"

println("Hello world! ")
args.forEach {
    println("- $it")
}