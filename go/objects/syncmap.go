// https://godoc.org/golang.org/x/sync/syncmap
// go get golang.org/x/sync/syncmap

package main

import (
	"fmt"

	"golang.org/x/sync/syncmap"
)

func main() {
	var sessions = syncmap.Map{}

	sessions.Store("moo", make(chan int))
	sessions.Range(func(clientID interface{}, client interface{}) bool {
		fmt.Println(clientID, client)
		return true
	})
	_, ok := sessions.Load("moo")
	if ok {
		sessions.Delete("moo")
	}
}
