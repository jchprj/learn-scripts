// always skip a field to json-encode, then of course use json:"-" to ignore the field (also note that this is not required if your field is unexported - those fields are always ignored by the json encoder).
// From <https://stackoverflow.com/questions/17306358/removing-fields-from-struct-or-hiding-them-in-json-response>

package main

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
)

type SearchResult struct {
	Date       string `json:"date"`
	DateIgnore string `json:"-"`
}

func main() {
	msg := SearchResult{
		Date:       "dd",
		DateIgnore: "ee",
	}
	err := json.NewEncoder(os.Stdout).Encode(&msg)
	if err != nil {
		log.Panic(err)
	}

	output, err := json.Marshal(msg)
	if err != nil {
		log.Panic(err)
	}
	fmt.Printf("%s\n", output)

	output, err = json.MarshalIndent(msg, "", "  ")
	if err != nil {
		log.Panic(err)
	}
	fmt.Printf("%s\n", output)

	body := "[\"dir\", \"c:\\\\\"]"
	fmt.Printf("%s", []byte(body))
	var cmds []string
	json.Unmarshal([]byte(body), &cmds)
	fmt.Printf("%s", cmds)
}
