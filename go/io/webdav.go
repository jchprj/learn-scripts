// https://github.com/hacdias/webdav
// Simple Go WebDAV server.

// https://pkg.go.dev/golang.org/x/net/webdav
// https://gist.github.com/staaldraad/d835126cd46969330a8fdadba62b9b69

package main

import (
	"log"
	"net"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
	"golang.org/x/net/webdav"
)

func main() {
	port := 8964

	r := mux.NewRouter()
	goWebdav := &webdav.Handler{
		FileSystem: webdav.Dir("."),
		LockSystem: webdav.NewMemLS(),
		Logger: func(r *http.Request, err error) {
			if err != nil {
				log.Printf("WEBDAV [%s]: %s, ERROR: %s\n", r.Method, r.URL, err)
			} else {
				log.Printf("WEBDAV [%s]: %s \n", r.Method, r.URL)
			}
		},
	}
	r.PathPrefix("/webdav").Handler(http.StripPrefix("/webdav", goWebdav))

	http.Handle("/", r)
	l, err := net.Listen("tcp", ":"+strconv.Itoa(port))
	if err != nil {
		log.Fatal("failed to listen port", err)
	}
	if err := http.Serve(l, r); err != nil {
		log.Fatal("failed to start server", err)
	}
}
