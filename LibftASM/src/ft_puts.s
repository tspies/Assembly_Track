global _ft_puts
extern _ft_strlen

default rel             ; default 32 addressing

section .text
_ft_puts:
        cmp rdi, 0
        jz return

        mov rax, 0x02000004
        mov rdi, 1
        mov rsi, out_message
        mov rdx, 6
        syscall
        jmp return

return:
        ret

section .data
out_message: db "NULLY", 10, 0
