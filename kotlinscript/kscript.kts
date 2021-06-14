#!/usr/bin/env kscript

// https://www.danielebonaldo.com/kotlin-script/
@file:MavenRepository("central", "https://repo.maven.apache.org/maven2/")
@file:DependsOn("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.3.2")
@file:DependsOn("org.jetbrains.kotlinx:kotlinx-coroutines-core-common:1.3.2")
@file:DependsOn("io.projectreactor:reactor-core:3.3.14.RELEASE")

import kotlinx.coroutines.*
import reactor.core.publisher.Flux
import java.util.Arrays

println("Start")

// Start a coroutine
GlobalScope.launch {
    delay(1000)
    println("Stop")
}

println("Hello")
Thread.sleep(2000)



val words = Arrays.asList(
        "the",
        "quick",
        "brown",
        "fox",
        "jumped",
        "over",
        "the",
        "lazy",
        "dog"
        );
val fewWords = Flux.just("Hello", "World")
val manyWords = Flux.fromIterable(words)

fewWords.subscribe(System.out::println)
System.out.println()
manyWords.subscribe(System.out::println)