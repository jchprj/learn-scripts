// Don’t simply run forever loop for{}
// https://medium.com/@ashishstiwari/dont-simply-run-forever-loop-for-1594464040b1

package main

import (
	"sync"
	"time"
)

func main() {
	go foreverWait()
	go foreverChannel()
	go foreverSleep()
	go foreverBad()
	foreverSelect()
}
func foreverSelect() {
	for {
		select {}
	}
}

func foreverWait() {
	for {
		wg := sync.WaitGroup{}
		wg.Add(1)
		wg.Wait()
	}
}

func foreverChannel() {
	for {
		c := make(chan int)
		<-c
	}
}

func foreverSleep() {
	for {
		time.Sleep(100 * time.Millisecond)
	}
}

// Bad one
func foreverBad() {
	for {
	}
}
