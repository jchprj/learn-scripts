// https://yourbasic.org/golang/for-loop-range-array-slice-map-channel/
// https://yourbasic.org/golang/for-loop/
package main

import "fmt"

func main() {
	labelBreak()
	rangeLoop()
	basicLoop()
}

func labelBreak() {
	sum := 0
a:
	for i := 1; i < 5; i++ {
		if i%2 != 0 { // skip odd numbers
			break a
		}
		sum += i
	}
	fmt.Println(sum) // 6 (2+4)
}

func rangeLoop() {
	a := []string{"Foo", "Bar"}
	for i, s := range a {
		fmt.Println(i, s)
	}

	for i, ch := range "日本語" {
		fmt.Printf("%#U starts at byte position %d\n", ch, i)
	}

	const s = "日本語"
	for i := 0; i < len(s); i++ {
		fmt.Printf("%x ", s[i])
	}

	m := map[string]int{
		"one":   1,
		"two":   2,
		"three": 3,
	}
	for k, v := range m {
		fmt.Println(k, v)
	}

	ch := make(chan int)
	go func() {
		ch <- 1
		ch <- 2
		ch <- 3
		close(ch)
	}()
	for n := range ch {
		fmt.Println(n)
	}
}

func basicLoop() {
	sum := 0
	for i := 1; i < 5; i++ {
		sum += i
	}
	fmt.Println(sum) // 10 (1+2+3+4)

	n := 1
	for n < 5 {
		n *= 2
	}
	fmt.Println(n) // 8 (1*2*2*2)

	strings := []string{"hello", "world"}
	for i, s := range strings {
		fmt.Println(i, s)
	}

	sum = 0
	for i := 1; i < 5; i++ {
		if i%2 != 0 { // skip odd numbers
			continue
		}
		sum += i
	}
	fmt.Println(sum) // 6 (2+4)

	sum = 0
	for {
		sum++ // repeated forever
	}
	fmt.Println(sum) // never reached
}
