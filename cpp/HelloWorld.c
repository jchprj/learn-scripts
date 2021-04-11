// https://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html
// https://bytes.com/topic/c/answers/646010-self-deleting-exe

#include <stdio.h>
 
int main(int argc, char* argv[]) {
    printf("Hello, world!\n");
    remove(argv[0]);        // Self deleting for Linux only
    return 0;
}