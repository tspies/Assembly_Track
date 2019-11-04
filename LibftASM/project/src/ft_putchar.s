global _ft_putchar
default rel

section .text
_ft_putchar:
	mov byte [rsp - 4], dil
        mov rax, 0x02000004
        mov edi, 1
	lea rsi, [rsp - 4]
	mov edx, edi
	syscall

        mov rax, 0x02000004
        mov edi, 1
        lea rsi, [endline]
        mov edx, edi
        syscall
        jmp return

return:
        ret
section .data
        endline: db 0x0a
