// Is there a way to do repetitive tasks at intervals in Golang?
// From <https://stackoverflow.com/questions/16466320/is-there-a-way-to-do-repetitive-tasks-at-intervals-in-golang>

package main

import (
	"fmt"
	"time"
)

func main() {
	ticker := time.NewTicker(2 * time.Second)
	quit := make(chan struct{})
	go func() {
		for {
			select {
			case <-ticker.C:
				// do stuff
				fmt.Println("ticker")
			case <-quit:
				ticker.Stop()
				return
			}
		}
	}()
	for {
		select {}
	}
}
