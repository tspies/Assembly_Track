global _ft_strdup
; char *ft_strdup(char * src)
; rdi will take in the char * src

extern _ft_strcpy
extern _ft_strlen
extern _malloc

_ft_strdup:

 push rdi
 call _ft_strlen
 mov rdi, rax
 call _malloc
 mov rdi, rax
 pop rsi
 call _ft_strcpy
 ret