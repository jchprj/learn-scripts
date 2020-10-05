# WSL

### Setup Go Development Environment with VS Code and WSL on Windows

From <https://medium.com/@betakuang/setup-go-development-environment-with-vs-code-and-wsl-on-windows-62bd4625c6a7> 

the Remote — WSL extension is all you need
After the remote extension is installed, you will see a colored button in the left-bottom corner of VS Code, named “Open a remote window”. Click it and select “Remote-WSL: New Window” to open a window with remote environment enabled. Some setup work will be done now and you should see the progress in the right-bottom corner.

you will see a “Install on WSL” button on the Go extension
Open the VS Code settings, you will see a new “Remote (WSL)” tab on the top
Important: GOPATH and GOROOT must be set for the remote Go extension



### Terraform test failed
(Thursday, June 27, 2019 10:17 AM)

In local_test.go, TestLocalStateLocks failed
 
Seems syscall.FcntlFlock in local_lock_unix.go can lock on a already locked file
Maybe related to WSL session issue

In pure Windows, the test can pass


Solution:
Use release terraform, not compiling from source