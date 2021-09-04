#!/usr/bin/env kscript
// https://www.baeldung.com/kotlin/json-convert-data-class
@file:DependsOn("com.google.code.gson:gson:2.8.5")

import com.google.gson.Gson;

data class TestModel(
    val id: Int,
    val description: String
)
val jsonString = """{"id":1,"description":"Test"}"""
val gson = Gson();
val testModel = gson.fromJson(jsonString, TestModel::class.java);
println(testModel.id) 
println(gson.toJson(testModel))