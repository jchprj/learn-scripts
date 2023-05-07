// https://www.tutorialspoint.com/scala/scala_for_loop.htm

var a = 0;
      
// for loop execution with a range
for( a <- 1 to 10){
    println( "1. Value of a: " + a );
}

// for loop execution with a range
for( a <- 1 until 10){
    println( "2. Value of a: " + a );
}

a = 0;
var b = 0;

// for loop execution with a range
for( a <- 1 to 3; b <- 1 to 3){
    println( "3. Value of a: " + a );
    println( "3. Value of b: " + b );
}


a = 0;
val numList = List(1,2,3,4,5,6);

// for loop execution with a collection
for( a <- numList ){
    println( "4. Value of a: " + a );
}


a = 0;

// for loop execution with multiple filters
for( a <- numList
    if a != 3; if a < 8 ){
    println( "5. Value of a: " + a );
}


// for loop execution with a yield
var retVal = for{ a <- numList if a != 3; if a < 5 }yield a

// Now print returned values using another loop.
for( a <- retVal){
    println( "6. Value of a: " + a );
}