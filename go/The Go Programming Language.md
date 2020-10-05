Saturday, June 23, 2018 15:58


|  |  |  |
| --- | --- | --- |
| P40 | In any<br>case, a conversion never fails at run time. | Type<br>conversion |
| P10 | Printf<br>verbs |   |
| P22 | Go<br>allows a simple statement such as a local variable declaration to precede the<br>if condition | if err<br>:= r.ParseForm(); err != nil {<br><br>} |
| P30 | In GO<br>there is no such thing as an uninitialized variable | As c++ |
| P36 | We say<br>x escapes from f | Pointer<br>to a variable inside a func |
|   | Be<br>aware of the lifetime of variables | Keeping<br>pointers to short-lived objects within long-lived objects will prevent<br>garbage collection |
| P37 | X, y =<br>y, x+y |   |
| P46 |   | Difference<br>of scope and lifetime |
| P54 | The<br>built-in len function returns a signed int |   |
| P56 | The<br>smallest positive integer that cannot be exactly represented as a float32 is<br>not large |                             |
| P57 | nan ==<br>nan, nan < nan, nan > nan //"false, false, false" | nan :=<br>math:NaN() |
| P65 | Strings<br>are immutable | Two<br>copies or substring of a string share same memory |
| P67 | UTF-8<br>was invented by Ken Thompson and Rob Pike, two of the creators of GO | Also<br>Unicode on this page |
| P69 | utf8.RuneCountInString(s) | len("啊")=2 |
|   | Go's<br>range loop, when applied to a string, performs UTF-8 decoding implicitly |   |
| P82 | The<br>size of an array is part of its type | [3]int<br>and [4]int are different types |
| P83 | If an<br>array's element type is comparable then the array type is comparable too |   |
| P87 | Go<br>functions should treat all zero-length slices the same way, whether nil or<br>non-nil | S=[]int(nil)//len(s)=0,<br>s==nil |
| P88 | The<br>append function is crucial to understanding how slices work | Each<br>call to append check whether the slice has sufficient capacity to hold the<br>new elements |
| P94 | A map<br>lookup using a key that isn't present returns the zero value for its type | age, ok := ages["bob"] |
| P95 | You<br>must allocate the map before you can store into it | Len of<br>a nil map is 0 |
| P103 | A<br>call-by value language like Go, the called function receives only a copy of<br>an argument, not a reference to the original argument |   |
| P104 | If all<br>the fileds of a struct are comparable, the struct itself is comparable |   |
|   | Comparable<br>struct types, like other comparable types, may be used as the key type of a<br>map |   |
| P105 | Go<br>lets us declare a field with a type but no name; such fields are called<br>anonymous fields |   |
| P120 | Two<br>functions have the same type or signature if they have the same sequence of<br>parameter types and the same sequence of result types |   |
|   | If the<br>argument contains some kind of reference, like a pointer, slice, map,<br>function, or channel | Except<br>these arguments are passed by value |
| P121 | Implemented<br>in a language other than Go | A<br>function declaration without a body |
| P124 | Typical<br>Go implementations use variable -size stacks that start small and grow as<br>needed up to a limit on the order of a gigabyte | Many<br>programming language implementations use a fixed-size function call<br>stacksimilar to |
| P133 | Then<br>may not be compared against each other or used as keys in a map | Function<br>values may be compared with nil |
| P142 | How to<br>invoke a variadic function when the arguments are already in a slice: place<br>an ellipsis after the final argument | fmt.Println(sum(1,<br>2, 3, 4)) |
| P144 | Any<br>number of calls may be deferred; they are executed in the reverse of the<br>order in which they were deferred |   |
| P146 | By<br>naming its result variable and adding a defer statement, we can make the<br>function print its arguments and results each time it is called |   |
| P148 | On<br>many file systems, notably NFS, write errors are not reported immediately but<br>may be postponed until the file is closed | ? |
| P150 | The<br>Must prefix is a common naming convention for functions of the kind | regexp.MustCompile<br>template.Must in Section 4.6 |
| P151 | runtime.Stack | Go's<br>panic mechanism runs the deferred functions before it unwinds the stack |
| P152 | recover<br>ends the current state of panic and returns the panic value |   |
| P157 | It<br>is often convenient to define additional behavior s for simple types such as numbers, strings, slices,<br>maps, and som etimes even functions. |   |
| P158 | the<br>compiler will per for m an implicit &p on the variable. This works only for variables |   |
| P159 | summarize<br>these three cases again,<br>since they area frequent point of confusion |   |
| P161 | Embedding allows complex types with many methods to be built up by the composition of several<br>ﬁelds |   |
| P162 | there<br>is no way for the method to access the ColoredPoint in which the Point is embedded | Method<br>embeded cannot access parent receivers |
| P164 | A<br>method expression, written T.f or (\*T).f where T is a type, yields a function value with a regular ﬁrst parameter taking the place of the<br>receiver |   |
| P175 | a<br>concrete type ‘‘is a’’<br>particu-<br><br>lar interface<br>type, meaning that it satisfies the interface |   |
| P179 | in<br>Go we can define new abstractions or groupings of interest when we need them, without modifying the declaration of the<br>concrete type |   |
| P182 | The zero value for<br>an interface has bot h its type and value components set to nil |   |
| P184 | Only<br>compare interface values if you are certain that the y contain dynamic values of comparable types | Panic<br>risk |
| P185 | A non-nil<br>interface containing a nil pointer | Value<br>is nil, but as an interface value, not nil |
| P193 | The building blocks in Go’s standard library<br>are flexible enough that frameworks are often<br><br>unnecessary | net/http<br>provides ServeMux |
| P212 | switch x :=<br>x.(type) |   |
|   | No fallthrough is<br>allowed |   |
| P216 | Interfaces<br>are only needed when there are two or more concrete types that must be dealt with<br><br>in a uniform way | Don't<br>define interfaces before defining structs |
| P226 | A<br>send operation on an unbuffered channel blocks the sending goroutine until<br>another goroutine executes a<br>corresponding receive on the same channel | if<br>the receive operation was attemp<br>ted firs t, the receiving goroutine is blocked until another goroutine per<br>forms a send on the same<br>channel |
|   | unbuffered channel<br>s are sometimes called synchronous channels | the receipt of the<br>value happens before the<br><br>reawakening of the<br>sending goroutine |
| P229 | after<br>the last sent element has been received, all subsequent receive operations will proceed without<br>blocking but will yield a zero value | x, ok :=<br><-naturals<br><br>the<br>language lets us use a range<br>loop to iterate over channels too |
| P230 | You needn’t clos e<br>every channel when you’ve finished with it | It is important to<br>call the Close method on every file when you’ve finished with it |
| P231 | func squarer(out<br>chan<- int, in <-chan int) |   |
| P246 | A<br>select may have a default ,<br>which specifies what to do when none of the other communications can<br><br>proceed<br>immediately |   |