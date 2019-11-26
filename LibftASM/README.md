# LibftASM
This project is an introduction to the Assembly Language by recreating some fundamental Standard C library functions.

## Functions
 * ft_bzero   (Writes zeros to a byte string)
 * ft_isalnum (Alphanumeric character test)
 * ft_isalpha (Alphabetic character test)
 * ft_isascii (ASCII character test)
 * ft_isdigit (Decimal-digit character test)
 * ft_isprint (Printing character test)
 * ft_memcpy  (Copy memory area)
 * ft_putchar (Output character/word to stream)
 * ft_puts    (Output line to stream)
 * ft_strcat  (Congcatinate strings)
 * ft_strcpy  (Copy strings)
 * ft_strdup  (Save a copy of a string)
 * ft_strlen  (Find length of a string)
 * ft_toupper (Lowercase to uppercase conversion)
 * ft_tolower (Uppercase to lowercase conversion)
 * ft_helloworld<br/>
 **Full definitions of these functions can be found in libftasm.h**
 
 ## Instructions for use
 **Standard Makfile commands are available for use:**
 * `make` - Builds the libftasm library called libftasm.a.
 * `make test` - Compiles the main.c test file and creates an executable called `test`
    When this test program is run, it will print all the results to the console.
 * `make clean_test` - Cleans the test executable
 * `make go` - This rebuids the library and compiles the test file all in one command.
 * Standard `make clean`, `make fclean`, `make re` are available.
 
 ## Test file notes
 All test cases are found in main.c except tests for ft_cat.<br/>
 ft_cat test file can be found in `/project/src/cat_tests`
