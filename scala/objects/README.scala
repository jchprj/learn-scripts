// https://www.tutorialspoint.com/scala/scala_data_types.htm

//     Byte: 8 bit signed value. Range from -128 to 127
//     Short: 16 bit signed value. Range -32768 to 32767
//     Int: 32 bit signed value. Range -2147483648 to 2147483647
//     Long: 64 bit signed value. -9223372036854775808 to 9223372036854775807
//     Float: 32 bit IEEE 754 single-precision float
//     Double: 64 bit IEEE 754 double-precision float
//     Char: 16 bit unsigned Unicode character. Range from U+0000 to U+FFFF
//     String: A sequence of Chars
//     Boolean: Either the literal true or the literal false
//     Unit: Corresponds to no value
//     Null: null or empty reference
//     Nothing: The subtype of every other type; includes no values
//     Any: The supertype of any type; any object is of type Any
//     AnyRef: The supertype of any reference type
    
//     All the data types listed above are objects. There are no primitive types like in Java.


// warning: symbol literal is deprecated; use Symbol("x") instead
val symbol = 'x
println(symbol)