// X does not implement Y (… method has a pointer receiver)
// From <https://stackoverflow.com/questions/40823315/x-does-not-implement-y-method-has-a-pointer-receiver>

package main

import "fmt"

type Stringer interface {
	String() string
}

type MyType struct {
	value string
}

func (m *MyType) String() string { return m.value }

func main() {
	m := MyType{value: "something"}

	var s Stringer
	s = &m
	fmt.Println(s)

	// cannot use m (type MyType) as type Stringer in assignment:
	// MyType does not implement Stringer (String method has pointer receiver)

	// s = m
}
