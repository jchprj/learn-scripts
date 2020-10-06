// RobotGo, Go Native cross-platform GUI automation
// https://github.com/go-vgo/robotgo

/**
Please make sure Golang, GCC is installed correctly before installing RobotGo.

To compile Windows exe in Ubuntu:
env GOOS=windows GOARCH=amd64 CGO_ENABLED=1 CC=x86_64-w64-mingw32-gcc-posix CXX=x86_64-w64-mingw32-g++-posix CGO_CFLAGS="`go env CGO_CFLAGS` -I/usr/local/x86_64-w64-mingw32/include" CGO_LDFLAGS="`go env CGO_LDFLAGS` -L/usr/local/x86_64-w64-mingw32/lib -L/usr/local/x86_64-w64-mingw32/lib" go build -x robotgo.go

Dependencies in Ubuntu:
sudo apt-get install -y mingw-w64
From <https://zoomadmin.com/HowToInstall/UbuntuPackage/mingw-w64>

Issues:
Cross Compilation(Linux->Win) error
From <https://github.com/go-vgo/robotgo/issues/228>
	I may have fixed this in Go 1.13. At least it works when cross compiling from Linux to Windows.
	env GOOS=windows \
       GOARCH=amd64 \
       CGO_ENABLED=1 \
       CC=x86_64-w64-mingw32-gcc-posix \
       CXX=x86_64-w64-mingw32-g++-posix \
       CGO_CFLAGS="`go env CGO_CFLAGS` -I/usr/local/x86_64-w64-mingw32/include" \
       CGO_LDFLAGS="`go env CGO_LDFLAGS` -L/usr/local/x86_64-w64-mingw32/lib -L/usr/local/x86_64-w64-mingw32/lib" \
       go build -x -trimpath -ldflags="-w -s -extldflags -static"
	But first you have to install zlib from source.
	https://wiki.openttd.org/Cross-compiling_for_Windows#zlib
	wget http://zlib.net/zlib-1.2.11.tar.gz -O- | tar xfz -
	cd zlib*
	# zlib 'configure' script is currently broken, use win32/Makefile.gcc directly
	sed -e s/"PREFIX ="/"PREFIX = i686-w64-mingw32-"/ -i win32/Makefile.gcc # automatic replacement
	make -f win32/Makefile.gcc
	sudo BINARY_PATH=/usr/local/i686-w64-mingw32/bin \
		INCLUDE_PATH=/usr/local/i686-w64-mingw32/include \
		LIBRARY_PATH=/usr/local/i686-w64-mingw32/lib \
		make -f win32/Makefile.gcc install
	cd ..

	♡ For the above solution, should change the PREFIX to x86_64-w64-mingw32

*/

package main

import (
	"fmt"
	"time"

	"github.com/go-vgo/robotgo"
	hook "github.com/robotn/gohook"
)

func main() {
	// robotgo.ScrollMouse(10, "up")
	// robotgo.MouseClick("left", true)
	// robotgo.MoveMouseSmooth(100, 200, 1.0, 100.0)

	fmt.Println("start...", "...")

	go eventHook()

	// If run below with above eventHook, will cause infinite loop when the hook contains typing the hot key.
	// mleft := robotgo.AddEvent("mleft")
	// if mleft {
	// 	fmt.Println("you press...", "mouse left button")
	// }
	for {
		// do something
		time.Sleep(time.Millisecond * 50)
	}
}

func eventHook() {
	fmt.Println("start EventHook...")
	interval := 10.0
	robotgo.EventHook(hook.KeyDown, []string{"k", "shift", "alt"}, func(e hook.Event) {
		fmt.Println("Pressed shift+alt+k")
		// To work in Chrome, needs to delay the typing when shift and alt are released
		robotgo.MilliSleep(300)
		robotgo.TypeStr("you are k", interval)
	})

	s := robotgo.EventStart()
	<-robotgo.EventProcess(s)
}
