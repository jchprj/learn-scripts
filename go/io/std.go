package main

import (
	"bufio"
	"fmt"
	"os"
	//"strconv"
)

func main() {
	scanf()
	reader()
}

func scanf() {
	//Enter your code here. Read input from STDIN. Print output to STDOUT
	s := ""
	s1 := ""
	fmt.Scanf("%s\n%c", &s, &s1)
	//s := strconv.Itoa(n)
	fmt.Println(s, s1)
}

func reader() {
	//Enter your code here. Read input from STDIN. Print output to STDOUT
	reader := bufio.NewReader(os.Stdin)
	s, _ := reader.ReadString('\n')
	s1, _ := reader.ReadString('\n')
	//fmt.Scanf("%s\n%c", &s, &s1)
	//s := strconv.Itoa(n)
	fmt.Println(s)
	fmt.Println(s1)
}
