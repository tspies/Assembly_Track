global _ft_puts
extern _ft_strlen

default rel             ; default 32 addressing

section .data
endline: db 0x0a
null_message: db "(null)", 10

section .text
_ft_puts:
        test rdi, rdi
        jz null_return

        mov rcx, rdi
        call _ft_strlen
        mov rdi, 1
        mov rdx, rax
        mov rax, 0x02000004
        mov rsi, rcx
        syscall

        mov rax, 0x02000004
        lea rsi, [endline]
        mov edx, 1
        syscall
        mov rax, 0
        ret
        leave


null_return:
        mov rax, 0x02000004
        mov rdi, 1
        lea rsi, [null_message]
        mov edx, 7
        syscall
        ret

        mov rax, 0x020000004
        mov rdi, 1
        lea rsi, [endline]
        mov edx, edi
        syscall
        mov rax, -1
        ret