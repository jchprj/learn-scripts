// https://github.com/microsoft/sql-server-samples/blob/master/samples/tutorials/go/crud.go

package main

import (
	"database/sql"
	"fmt"
	"log"

	_ "github.com/denisenkom/go-mssqldb"
)

var (
	server   = "localhost"
	port     = 1433
	user     = "user"
	password = "123456"
	database = "test"
)

func main() {
	connString := fmt.Sprintf("server=%s;user id=%s;password=%s;port=%d;database=%s;encrypt=false",
		server, user, password, port, database)
	conn, err := sql.Open("mssql", connString)
	if err != nil {
		log.Fatal("Open connection failed:", err.Error())
	}
	fmt.Printf("Connected! %s \n", connString)
	defer conn.Close()
	Test(conn)
}
func Test(db *sql.DB) (int, error) {
	tsql := "SELECT @@version;"
	rows, err := db.Query(tsql)
	if err != nil {
		fmt.Println("Error reading rows: " + err.Error())
		return -1, err
	}
	defer rows.Close()
	count := 0
	for rows.Next() {
		var id string
		err := rows.Scan(&id)
		if err != nil {
			fmt.Println("Error reading rows: " + err.Error())
			return -1, err
		}
		fmt.Printf("Version: %s\n", id)
		count++
	}
	return count, nil
}
