#!/usr/bin/env kscript
// https://www.baeldung.com/kotlin/json-convert-data-class
// https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/util/ReflectionUtils.html
@file:DependsOn("org.springframework:spring-core:5.3.9")

import org.springframework.util.ReflectionUtils
import java.lang.reflect.Field

var ij = 1
fun pline(s: String = "") = println("--- ${ij++}: $s ---")

pline("Original")
data class TestModel(
    private val id: Int,
    val description: String
)
fun TestModel.myMethod(i: Int) = println("$i")

val testModel = TestModel(1, "a")
println(testModel)
testModel.myMethod(10)

pline("Modify private field")
// https://www.intertech.com/using-springs-reflectionutils-to-access-private-fields/
val field = ReflectionUtils.findField(TestModel::class.java, "id");
ReflectionUtils.makeAccessible(field);
ReflectionUtils.setField(field, testModel, 5);
println(testModel) 

pline("Find no parameter method")
val method = "toString"
val methodObj = ReflectionUtils.findMethod(testModel::class.java, method);
println(methodObj)
if (methodObj != null) {
    val value = ReflectionUtils.invokeMethod(methodObj, testModel);
    println(value)
}

pline("Cannot find method defined outside")
val method2 = "myMethod"
val methodObj2 = ReflectionUtils.findMethod(testModel::class.java, method2, Int::class.java);
println(methodObj2) // null

pline("Can find method defined inside")
class TestModel2 {
    private val id: Int = 0
    fun myMethod(i: Int) = println("$i")
}
val testModel2 = TestModel2()
val methodObj3 = ReflectionUtils.findMethod(testModel2::class.java, method2, Int::class.java);
println(methodObj3)
if (methodObj3 != null) {
    ReflectionUtils.invokeMethod(methodObj3, testModel2, 20);
}