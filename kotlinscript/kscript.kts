// https://www.danielebonaldo.com/kotlin-script/
@file:MavenRepository("central", "https://repo.maven.apache.org/maven2/")
@file:DependsOn("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.3.2")
@file:DependsOn("org.jetbrains.kotlinx:kotlinx-coroutines-core-common:1.3.2")

import kotlinx.coroutines.*

println("Start")

// Start a coroutine
GlobalScope.launch {
    delay(1000)
    println("Stop")
}

println("Hello")
Thread.sleep(2000)