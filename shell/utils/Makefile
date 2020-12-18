# https://makefiletutorial.com/
# Makefile Syntax
# targets : prerequisites
#    command
#    command
#    command
   
temp_test: temp_test.o
	cc temp_test.o -o temp_test

temp_test.o: temp_test.c
	cc -c temp_test.c -o temp_test.o

temp_test.c:
	echo "int main() { return 0; }" > temp_test.c

install:
	echo Doing install

clean:
	rm -f temp_test.o temp_test.c temp_test