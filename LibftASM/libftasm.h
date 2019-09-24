#ifndef LIBFTASM_H
# define LIBFTASM_H
# include <strings.h>

size_t  ft_strlen(const char *str);
char *  ft_strcat(char *s1, const char *s2);
void *	ft_memset(void *dest, int c, size_t n);
void *	ft_memcpy(void *s1, const void *s2, size_t n);
void    ft_helloworld(void);
void    ft_bzero(void *s, size_t n);
int     ft_isalpha(int x);
int     ft_isdigit(int x);
int     ft_isascii(int x);
int     ft_isalnum(int x);
int     ft_isprint(int x);
int     ft_toupper(int x);
int     ft_tolower(int x);
int     ft_puts(const char *str);
int     ft_putchar(char c);
#endif