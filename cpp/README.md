https://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html

GCC uses the following environment variables:

* PATH: For searching the executables and run-time shared libraries (.dll, .so).
* CPATH: For searching the include-paths for headers. It is searched after paths specified in `-I<dir>` options. C_INCLUDE_PATH and CPLUS_INCLUDE_PATH can be used to specify C and C++ headers if the particular language was indicated in pre-processing.
* LIBRARY_PATH: For searching library-paths for link libraries. It is searched after paths specified in `-L<dir>` options.

Try running the compilation in verbose mode (-v) to study the library-paths (-L) and libraries (-l) used in your system:
```
gcc -v -o temp_test.o HelloWorld.c
```

"file" Utility - Determine File Type
```
file temp_test.o
```

"nm" Utility - List Symbol Table of Object Files
```
nm temp_test.o
```

"ldd" Utility - List Dynamic-Link Libraries
```
ldd temp_test.o
```