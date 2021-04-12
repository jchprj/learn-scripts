#include <stdio.h>
#include <string.h>
 
int main(int argc, char* argv[]){
    char str[1] = "abcdefg";                //Warning
    printf("Too long: %s", str);            //a0
    char str1[100] = "abc";
    char str2[100] = "abc";
    printf("%d\n", str1 == str2);           //0
    printf("%d\n", strcmp(str1, str2));     //0
    printf("%d\n", strcmp(str1, "a"));      //98
    printf("%d\n", strcmp("a", str2));      //-98
    printf("%d\n", strcmp(str1, "c"));      //-2
    printf("%d\n", strcmp("c", str2));      //2

    char str3[100] = "123";
    char str4[100] = "456";
    printf("%d\n", str3 == str4);           //0
    printf("%d\n", strcmp(str3, str4));     //-3
    printf("%d\n", str3 == str3);           //1
    printf("%d\n", str4 == str4);           //1

    char str5[1] = "abcdefg";               //Warning
    printf("Too long: %s", str5);           //aabc

    remove(argv[0]);
    return 0;
}