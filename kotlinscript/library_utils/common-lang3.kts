#!/usr/bin/env kscript

@file:DependsOn("org.apache.commons:commons-lang3:3.10")

import org.apache.commons.lang3.builder.ToStringBuilder

// https://stackoverflow.com/questions/1526826/printing-all-variables-value-from-a-class
class A {
    val a1 = 0
    val a2 = "a"
}
val str = ToStringBuilder.reflectionToString(ToStringBuilder::class)
println(str)
val str2 = ToStringBuilder.reflectionToString(A())
println(str2)