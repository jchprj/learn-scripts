package main

import (
	"log"
	"net"
	"net/http"
)

func main() {
	// Serving Static Sites with Go
	// https://www.alexedwards.net/blog/serving-static-sites-with-go
	fs := http.FileServer(http.Dir("./static"))
	http.Handle("/", fs)
	go listenAndServe()
	go listenServe(fs)
	for {
		select {}
	}
}

func listenAndServe() {
	log.Println("Listening on :3000...")
	err := http.ListenAndServe(":3000", nil)
	if err != nil {
		log.Fatal(err)
	}
}

func listenServe(fs http.Handler) {
	// get notified when http.Server starts listening
	// https://stackoverflow.com/questions/44597248/get-notified-when-http-server-starts-listening
	log.Println("Listening on :8080...")
	l, err := net.Listen("tcp", ":8080")
	if err != nil {
		// handle error
	}

	// Signal that server is open for business.
	if err := http.Serve(l, fs); err != nil {
		// handle error
	}
}
