// Chapter 9. Concurrency with Shared Variables
// From <https://notes.shichao.io/gopl/ch9/>

// Concurrent access to maps with 'range' in Go
// From <https://stackoverflow.com/questions/40442846/concurrent-access-to-maps-with-range-in-go>
// var race sync.RWMutex

package main

import (
	"fmt"
	"math/rand"
	"sync"
)

var (
	testMap         = make(map[int]int)
	testMapLock     = &sync.RWMutex{}
	testMapSequence int
)

func main() {
	go func() {
		for {
			k := rand.Intn(10000)
			WriteTestMap(k, 1)
		}
	}()

	ic := make(chan int)
	go func() {
		for _ = range ic {
		}
	}()

	for {
		if err := IterateMapKeys(ic); err != nil {
			fmt.Println(err)
		}
	}
}

func WriteTestMap(k, v int) {
	testMapLock.Lock()
	defer testMapLock.Unlock()
	testMap[k] = v
	testMapSequence++
}

func IterateMapKeys(iteratorChannel chan int) error {
	testMapLock.RLock()
	defer testMapLock.RUnlock()
	mySeq := testMapSequence
	for k, _ := range testMap {
		testMapLock.RUnlock()
		iteratorChannel <- k
		testMapLock.RLock()
		if mySeq != testMapSequence {
			//close(iteratorChannel)
			return fmt.Errorf("concurrent modification %d", testMapSequence)
		}
	}
	return nil
}
