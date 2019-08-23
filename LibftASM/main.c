#include <stdio.h>
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

int main (void)
{
	// Basic Functions
	check_alpha();
	check_isdigit();
	check_isascii();
	return 0;
}
