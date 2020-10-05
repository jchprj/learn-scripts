// Bolt is a pure Go key/value store inspired by Howard Chu's LMDB project. The goal of the project is to provide a simple, fast, and reliable database for projects that don't require a full database server such as Postgres or MySQL.
// https://github.com/boltdb/bolt
// go get github.com/boltdb/bolt

// A simple web based boltdb GUI Admin panel.
// From <https://github.com/evnix/boltdbweb>
// go get github.com/evnix/boltdbweb
// boltdbweb --db-name=bolt.db --port=8089

package main

import (
	"log"

	"github.com/boltdb/bolt"
)

func main() {
	// Open the my.db data file in your current directory.
	// It will be created if it doesn't exist.
	db, err := bolt.Open("bolt.db", 0600, nil)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

}
