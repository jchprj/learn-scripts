# https://makefiletutorial.com/
# Makefile Syntax
# targets : prerequisites
#    command
#    command
#    command

# In Makefile, seems indentention must use tabs instead of spaces

# https://stackoverflow.com/questions/2019989/how-to-assign-the-output-of-a-command-to-a-makefile-variable
MY_VAR := $(shell echo whatever)
all:
	@echo MY_VAR IS $(MY_VAR)


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