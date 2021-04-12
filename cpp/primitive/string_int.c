#include <stdio.h>
#include <stdlib.h>
 
int main(int argc, char* argv[]){
    int num = 321;
    char str[12];

    // convert 123 to string [buf]
    sprintf(str, "%d", num);

    // print our string
    printf("%s\n", str);

    // Converting a numeric string
    char str1[10] = "122";
    int x = atoi(str1);
    printf("Converting '122': %d\n", x);

    // Converting an alphanumeric string
    char str2[10] = "Hello!";
    x = atoi(str2);
    printf("Converting 'Hello!': %d\n", x);

    // Converting a partial string
    char str3[10] = "99Hello!";
    x = atoi(str3);
    printf("Converting '99Hello!': %d\n", x);

    remove(argv[0]);
    return 0;
}