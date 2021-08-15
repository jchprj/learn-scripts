// https://www.javatpoint.com/kotlin-mutable-array
var myArray1 = arrayOf(1,10,4,6,15)  
var myArray2 = arrayOf<Int>(1,10,4,6,15)  
val myArray3 = arrayOf<String>("Ajay","Prakesh","Michel","John","Sumit")  
var myArray4 = arrayOf(1,10,4, "Ajay","Prakesh") 
var myArray5: IntArray = intArrayOf(5,10,20,12,15)  

var myArray = myArray1
myArray[1]= 10  
myArray[3]= 15  
for(element in myArray){  
    println(element)  
}  
val myArrayAlsoMutable = myArray1
myArrayAlsoMutable[1]= 10  
myArrayAlsoMutable[3]= 15  
for(element in myArrayAlsoMutable){  
    println(element)  
}  


for (index in 0..4){  
    println(myArray5[index])  
} 
for (index in 0..myArray5.size-1){  
    println(myArray5[index])  
} 