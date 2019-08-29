global _ft_putchar
default rel

section .text
_ft_putchar:
	mov byte [rsp - 4], dil
	mov rax, 0x02000004
	mov rdi, 1 ; stdout
	lea rsi, [rsp - 4]
        mov rdx, 5
	syscall
        mov rdi, 1
        lea rsi, [endline]
        mov rdx, 1
        syscall
        jmp return

return:
        ret
section .data
        endline: db 0x0a
