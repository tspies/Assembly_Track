global _ft_putchar

section .text
_ft_putchar:
        mov rdx, rax
	mov rcx, rdi
	mov rax, 0x2000004
	mov rdi, 1 ; stdout
	mov rsi, rcx
	syscall
        ret
