// Cobra is both a library for creating powerful modern CLI applications as well as a program to generate applications and command files.
// From <https://github.com/spf13/cobra>
// go get -u github.com/spf13/cobra/cobra

package main

import (
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/spf13/cobra"
)

var startTime string
var (
	// Used for flags.
	a int
	b string
	c []string

	rootCmd = &cobra.Command{
		Use:   "Test",
		Short: "Test short",
		Long:  `Test long`,
		Run: func(cmd *cobra.Command, args []string) {
			startTime = time.Now().Format("2006-01-02 15:04:05")
			log.Printf("startTime: %s\n", startTime)
			start()
			log.Printf("End")
		},
	}
)

func init() {
	rootCmd.PersistentFlags().IntVarP(&a, "a", "a", 1, "a")
	rootCmd.PersistentFlags().StringVarP(&b, "b", "b", ".", "b")
	rootCmd.PersistentFlags().StringArrayVarP(&c, "c", "c", []string{"s1", "s2"}, "c")
}

func main() {
	execute()
}

func execute() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}

func start() {
	fmt.Println("a: " + strconv.Itoa(a))
	fmt.Println("b: " + b)
	fmt.Println("c: " + strings.Join(c, ","))
}
