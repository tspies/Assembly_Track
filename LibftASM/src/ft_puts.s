global _ft_puts
extern _ft_strlen

default rel             ; default 32 addressing

section .text
_ft_puts:
        mov rcx, rdi
        call _ft_strlen
        mov rdi, 1
        mov rdx, rax
        mov rax, 0x02000004
        mov rsi, rcx
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
