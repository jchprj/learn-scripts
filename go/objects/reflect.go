// How slow is Go's reflection effectively?
// https://groups.google.com/forum/#!topic/golang-nuts/HcfutSkJVoY

// We can also use reflect.New without having a value of the type
// From <https://stackoverflow.com/questions/7850140/how-do-you-create-a-new-instance-of-a-struct-from-its-type-at-run-time-in-go>

package main

import (
	"fmt"
	"reflect"
)

func main() {
	var nilInt *int
	intType := reflect.TypeOf(nilInt).Elem()
	intPtr2 := reflect.New(intType)
	// Same as above
	c := intPtr2.Elem().Interface().(int)
	fmt.Println(c)
}
