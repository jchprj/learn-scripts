// What's the best way to bundle static resources in a Go program?
// From <https://stackoverflow.com/questions/13904441/whats-the-best-way-to-bundle-static-resources-in-a-go-program>

// https://github.com/go-bindata/go-bindata
// go get -u github.com/go-bindata/go-bindata/...

// go-bindata -fs -prefix \"static/\" static/...
// (If run in Windows, generated file may contain "\" which could not be matched)

// Multiple input directories can be specified if necessary.
// $ go-bindata dir1/... /path/to/dir2/... dir3
// $ go-bindata -ignore=\\.gitignore data/...

package main

import "fmt"

func main() {
	data, err := Asset("static/test")
	if err != nil {
		fmt.Println(err)
		// Asset was not found.
	}
	fmt.Println(data)

	data2, err2 := staticTest()
	if err2 != nil {
		fmt.Println(err2)
		// Asset was not found.
	}
	fmt.Println(data2)
}
