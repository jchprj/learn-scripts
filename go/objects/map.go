// https://stackoverflow.com/questions/1736014/delete-mapkey-in-go
package main

import "fmt"

func main() {
	var sessions = map[string]chan int{}
	sessions["moo"] = make(chan int)
	for clientID, client := range sessions {
		fmt.Println(clientID, client)
	}
	_, ok := sessions["moo"]
	if ok {
		delete(sessions, "moo")
	}
}
