#include <stdio.h>
#include <stdlib.h>
#include "libftasm.h"

void check_alpha (void)
{
	printf("/n   ----- ALPHA -----\n");

	printf("   should be alpha %d\n", ft_isalpha('A'));
	printf("   should be alpha %d\n", ft_isalpha('Z'));
	printf("   should be alpha %d\n", ft_isalpha('B'));
	printf("   should be alpha %d\n", ft_isalpha('a'));
	printf("   should not be alpha %d\n", ft_isalpha('*'));
	printf("   should not be alpha %d\n", ft_isalpha('~'));
	printf("   should not be alpha %d\n", ft_isalpha('.'));
	printf("   should not be alpha %d\n", ft_isalpha('0'));

	printf("   -----------------\n\n");
}

void check_isdigit(){
	printf("\n   ----- ISDIGIT -----\n");

	printf("   should be digit %d\n", ft_isdigit('0'));
	printf("   should be digit %d\n", ft_isdigit('2'));
	printf("   should be digit %d\n", ft_isdigit('1'));
	printf("   should be digit %d\n", ft_isdigit('4'));
	printf("   should not be digit %d\n", ft_isdigit('z'));
	printf("   should not be digit %d\n", ft_isdigit('b'));
	printf("   should not be digit %d\n", ft_isdigit('.'));
	printf("   should not be digit %d\n", ft_isdigit('q'));

	printf("   -----------------\n\n");
}

void	check_isascii(){
	printf("\n   ----- ISASCII -----\n");
	printf("   '%c' should be ascii %d\n", 'Q',ft_isascii('Q'));
	printf("   '%c' should be ascii %d\n", '@',ft_isascii('@'));
	printf("   '%c' should be ascii %d\n", '$',ft_isascii('$'));
	printf("   '%c' should not be ascii %d\n", 245,ft_isascii(245));
	printf("   '%c' should not be ascii %d\n", 211,ft_isascii(211));
	printf("   '%c' should not be ascii %d\n", 250,ft_isascii(250));
	printf("   -----------------\n\n");
}

void check_isalnum(){
	printf("\n   ----- ISALNUM -----\n");
	printf("   '%c' should be alnum %d\n", 'Q',ft_isalnum('Q'));
	printf("   '%c' should be alnum %d\n", '7',ft_isalnum('7'));
	printf("   '%c' should be alnum %d\n", 'p',ft_isalnum('p'));
	printf("   '%c' should not be alnum %d\n", '#',ft_isalnum('#'));
	printf("   '%c' should not be alnum %d\n", '%',ft_isalnum('%'));
	printf("   '%c' should not be alnum %d\n", '}',ft_isalnum('}'));

	printf("   -----------------\n\n");
}

void check_isprint(){
	printf("\n   ----- ISPRINT -----\n");
	printf("   '%c' should be printable %d\n", 33,ft_isprint(33));
	printf("   '%c' should be printable %d\n", 126,ft_isprint(126));
	printf("   '%c' should be printable %d\n", 119,ft_isprint(119));
	printf("   '%c' should  not be printable %d\n", 127,ft_isprint(127));
	printf("   '%c' should  not be printable %d\n", 0,ft_isprint(0));
	printf("   '%c' should  not be printable %d\n", 13,ft_isprint(13));
	printf("   -----------------\n\n");
}
void check_toupper(){
	printf("\n   ----- TOUPPER -----\n");
	printf("   '%c' upper case is: '%c'\n", 97,ft_toupper(97));
	printf("   '%c' upper case is: '%c'\n", 100,ft_toupper(100));
	printf("   '%c' upper case is: '%c'\n", 122,ft_toupper(122));
	printf("   '%c' upper case is: '%c'\n", 65,ft_toupper(65));
	printf("   '%c' upper case is: '%c'\n", 126,ft_toupper(126));
	printf("   '%c' upper case is: '%c'\n", 76,ft_toupper(76));

	printf("   -----------------\n\n");

}
void check_tolower(){
	printf("\n   ----- TOLOWER -----\n");
	printf("   '%c' lower case is: '%c'\n", 97,ft_tolower(97));
	printf("   '%c' lower case is: '%c'\n", 100,ft_tolower(100));
	printf("   '%c' lower case is: '%c'\n", 122,ft_tolower(122));
	printf("   '%c' lower case is: '%c'\n", 65,ft_tolower(65));
	printf("   '%c' lower case is: '%c'\n", 126,ft_tolower(126));
	printf("   '%c' lower case is: '%c'\n", 76,ft_tolower(76));

	printf("   -----------------\n\n");
}

void check_bzero(){
char string[] = "Zero";
		printf("\n   ----- BZERO -----\n");
		for (int i = 0; i < 4; i++){
		if (string[i] == '\0'){
			printf("   String index %d is \033[0;32m\033[1mNULL\033[0m\n", i);
		}
		else{
			printf("   String index %d is \033[0;31m\033[1mNOT NULL\033[0m\n", i);
		}
	}
	printf("    \n--- Calling ft_bzero ---\n\n");
	ft_bzero(string, 4);
	for (int i = 0; i < 4; i++){
		if (string[i] == '\0'){
			printf("   String index %d is \033[0;32m\033[1mNULL\033[0m\n", i);
		}
		else{
			printf("   String index %d is \033[0;31m\033[1mNOT NULL\033[0m\n", i);
		}
	}

	printf("   -----------------\n\n");

}
void	check_strlen(){
	char string1[] = "Initialized";
	char string2[] = "great";
	char string3[] = "s_u_p_e_r_d_u_p_e_r";
			printf("\n   ----- STRLEN -----\n");
			printf("   String '%s' is '%zu'.           (%lu)\n", string1, ft_strlen(string1), strlen(string1));
			printf("   String '%s' is '%zu'.                  (%lu)\n", string2, ft_strlen(string2), strlen(string2));
			printf("   String '%s' is '%zu'.   (%lu)\n", string3, ft_strlen(string3), strlen(string3));
			printf("   -----------------\n\n");


}
void	check_strcat(){
	char stringHalf[100] = "Hello ";
	char *stringFull = "World!";
	char stringInit[100] = "Initilized";
	char *stringEnd = ", String";
	char stringRuby[100] = "R_u_b_y - ";
	char *stringDuby = "D_u_b_y";
	printf("\n   ----- STRCAT -----\n");
	printf("   String 1: '%s' cat with '%s'\n", stringHalf, stringFull);
	ft_strcat(stringHalf, stringFull);
	printf("   == '%s'\n\n", stringHalf);
	printf("   String 2: '%s' cat with '%s'\n", stringInit, stringEnd);
	ft_strcat(stringInit, stringEnd);
	printf("   == '%s'\n\n", stringInit);
	printf("   String 3: '%s' cat with '%s'\n", stringRuby, stringDuby);
	ft_strcat(stringRuby, stringDuby);
	printf("   == '%s'\n", stringRuby);
	printf("   -----------------\n\n");
}
void	check_puts(){
	char *string = "DEADLY";
	printf("String: '%s'\n", string);
	// printf("String: %d", ft_putchar('Q'));
	ft_putchar("@");
	printf("String: %c", ft_putchar('Q'));
}
int main (void)
{
	// Basic Functions
	check_alpha();
	check_isdigit();
	check_isascii();
	check_isalnum();
	check_isprint();
	check_toupper();
	check_tolower();
	check_bzero();
	check_strlen();
	check_strcat();
	check_puts();
	return 0;
}
