// https://www.geeksforgeeks.org/writing-first-c-program-hello-world-example/
// https://stackoverflow.com/questions/3457040/how-to-write-a-program-in-c-such-that-it-will-delete-itself-after-execution

// Header file for input output functions
#include<iostream> 
  
using namespace std;
  
// main function -
// where the execution of program begins
int main(int argc, char* argv[])
{
    // prints hello world
    cout<<"Hello World";

    std::remove(argv[0]);
    return 0;
}