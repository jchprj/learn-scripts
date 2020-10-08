// http://legendtkl.com/2017/07/30/understanding-golang-channel/
package main

import (
	"fmt"
	"time"
)

func main() {
	goroutine()
	numberOfElementsInAChannel()
	asMutex()
}

func goroutine() {
	unBufferChan := make(chan int)
	go func() {
		time.Sleep(2 * time.Second)
		unBufferChan <- 1
	}()
	<-unBufferChan
}

// https://stackoverflow.com/questions/13003749/number-of-elements-in-a-channel
func numberOfElementsInAChannel() {
	c := make(chan int, 100)
	for i := 0; i < 34; i++ {
		c <- 0
	}
	fmt.Println(len(c))
}

// https://stackoverflow.com/questions/3952061/how-can-we-use-channels-in-go-in-place-of-mutex
func asMutex() {
	var global int = 0
	var c = make(chan int, 1)
	c <- 1 // Put the initial value into the channel

	go func() {
		<-c // Grab the ticket
		global = 1
		c <- 1 // Give it back
	}()

	go func() {
		<-c
		global = 2
		c <- 1
	}()
}
