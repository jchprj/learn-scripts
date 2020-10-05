# Environment

go get -v golang.org/x/text/encoding

environments: `PATH` `GOROOT` `GOPATH`

* Version conflict
  [go - Can't get Golang to work in Ubuntu - Stack Overflow](https://stackoverflow.com/questions/16977703/cant-get-golang-to-work-in-ubuntu)
  Just type export GOROOT="" and it should fix your problem

# Generate

* The Go Blog
Generating code
https://blog.golang.org/generate

* Use go:generate to quickly build domain methods on top of sqlx
https://willowtreeapps.com/ideas/go-generate-your-database-code/


# Build

### How To Build Go Executables for Multiple Platforms on Ubuntu 16.04
From <https://www.digitalocean.com/community/tutorials/how-to-build-go-executables-for-multiple-platforms-on-ubuntu-16-04> 
```
env GOOS=target-OS GOARCH=target-architecture go build package-import-path  
```
GOOS - Target Operating System | GOARCH - Target Platform
- android	arm
- darwin	386
- darwin	amd64
- darwin	arm
- darwin	arm64
- dragonfly	amd64
- freebsd	386
- freebsd	amd64
- freebsd	arm
- linux	386
- linux	amd64
- linux	arm
- linux	arm64
- linux	ppc64
- linux	ppc64le
- linux	mips
- linux	mipsle
- linux	mips64
- linux	mips64le
- netbsd	386
- netbsd	amd64
- netbsd	arm
- openbsd	386
- openbsd	amd64
- openbsd	arm
- plan9	386
- plan9	amd64
- solaris	amd64
- windows	386
- windows	amd64

go-executable-build.bash
platforms=("windows/amd64" "windows/386" "darwin/amd64")

### Cross-compiling Go for Raspberry Pi
From <https://medium.com/@chrischdi/cross-compiling-go-for-raspberry-pi-dc09892dc745> 
```
GOARCH=arm64 GOOS=linux
```

# Test

```
go clean -testcache
```

From [https://stackoverflow.com/questions/48882691/force-retesting-or-disable-test-caching](https://stackoverflow.com/questions/48882691/force-retesting-or-disable-test-caching)
-count=1
GOCACHE=off

a table-driven test of routeVariables

From [https://github.com/gorilla/mux](https://github.com/gorilla/mux)

```
go test ./...
```

From [https://stackoverflow.com/questions/16353016/how-to-go-test-all-testings-in-my-project](https://stackoverflow.com/questions/16353016/how-to-go-test-all-testings-in-my-project)

```
go test $(go list ./... | grep -v /vendor/)
```

From [https://github.com/golang/go/issues/11659](https://github.com/golang/go/issues/11659)


# Plugin

* Any plans to support Go plugins with delve ?
  https://github.com/go-delve/delve/issues/1114


# References

* [Benchmarking Nginx with Go · GitHub](https://gist.github.com/hgfischer/7965620)
* [Awesome Go](https://awesome-go.com/)
* [An Introduction to Programming in Go | Go Resources](http://www.golang-book.com/books/intro)
* [Go by Example](https://gobyexample.com/)
* [Go Proverbs](https://go-proverbs.github.io/) ([Go 谚语](https://lingchao.xin/post/go-proverbs.html))
* [GitHub - dgryski/go-perfbook: Thoughts on Go performance optimization](https://github.com/dgryski/go-perfbook)
* [50 Shades of Go: Traps, Gotchas, and Common Mistakes for New Golang Devs](http://devs.cloudimmunity.com/gotchas-and-common-mistakes-in-go-golang/)
* [GitHub - gopherchina/conference](https://github.com/gopherchina/conference) PPT
* [golangspec – Medium](https://medium.com/golangspec)