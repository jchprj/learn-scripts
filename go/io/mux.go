// https://github.com/gorilla/mux
// go get -u github.com/gorilla/mux

package main

import (
	"fmt"
	"log"
	"net"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
)

func main() {
	port := 8964

	r := mux.NewRouter()
	r.HandleFunc("/", homeHandler)
	r.HandleFunc("/products", homeHandler)
	r.HandleFunc("/articles", homeHandler)
	r.PathPrefix("/content").Handler(http.StripPrefix("/content/", http.FileServer(http.Dir("."))))
	r.PathPrefix("/static").Handler(http.StripPrefix("/static/", http.FileServer(AssetFile())))

	http.Handle("/", r)
	l, err := net.Listen("tcp", ":"+strconv.Itoa(port))
	if err != nil {
		log.Fatal("failed to listen port", err)
	}
	if err := http.Serve(l, r); err != nil {
		log.Fatal("failed to start server", err)
	}
}

func homeHandler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	w.WriteHeader(http.StatusOK)
	fmt.Fprintf(w, "Category: %v\n", vars["category"])
}
