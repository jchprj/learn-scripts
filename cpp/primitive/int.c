#include <stdio.h>
#include <string.h>
 
int main(int argc, char* argv[]){
    int i1 = 123;
    printf("%d\n", i1);
    printf("%06lu\n", i1);
    char str[100];
    sprintf(str, "%06lu", i1);
    printf("%s\n", str);

    int i2 = 12345678;
    printf("%d\n", i2);
    printf("%06lu\n", i2);
}