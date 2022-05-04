// https://alvinalexander.com/scala/how-to-write-scala-http-get-request-client-source-fromurl
// How to write a simple HTTP GET request client in Scala (with a timeout)
def get(url: String) = scala.io.Source.fromURL(url).mkString

val result = get("https://httpstat.us/200")
println(result)
