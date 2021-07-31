#!/usr/bin/env kscript
// https://stackoverflow.com/questions/44870961/how-to-map-a-json-string-to-kotlin-map
// https://www.tabnine.com/blog/how-to-convert-a-java-object-into-a-json-string/
@file:DependsOn("com.fasterxml.jackson.module:jackson-module-kotlin:2.11.4")

import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.module.kotlin.readValue

val jsonString = """{"a":12, "b":[true, false]}"""
val map = ObjectMapper().readValue<MutableMap<Any, Any>>(jsonString)
println(map)            // {a=12, b=[true, false]}
println(map["b"])       // [true, false]
// println(map["b"][1])    // error: no get method providing array access

val s = ObjectMapper().writeValueAsString(map)
println(s)