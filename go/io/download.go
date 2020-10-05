// https://golangcode.com/download-a-file-from-a-url/

package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
)

func main() {
	fileURL := "https://golangcode.com/logo.svg"
	err := DownloadFile("temp_test.svg", fileURL)
	if err != nil {
		panic(err)
	}
	fmt.Println("Downloaded: " + fileURL)
}

// DownloadFile will download a url to a local file. It's efficient because it will
// write as it downloads and not load the whole file into memory.
func DownloadFile(filepath string, url string) error {

	// Get the data
	resp, err := http.Get(url)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	// Create the file
	out, err := os.Create(filepath)
	if err != nil {
		return err
	}
	defer out.Close()

	// Write the body to file
	_, err = io.Copy(out, resp.Body)
	return err
}
