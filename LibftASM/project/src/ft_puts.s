global _ft_puts
extern _ft_strlen

%define SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define READ 3
%define WRITE 4

; RDI will take the file discriptor
; RSI will take the 
; RDX will take the size_t of how many bytes to copy.
default rel             ; default 32 addressing

section .data
NEWLN db 0x0a
null_message: db "(null)", 10
len: equ $ - null_message

section .text
_ft_puts:
    push rbp
    mov rbp, rsp
    test rdi, rdi
    jz null_return
    mov r10, rdi
    lea rsi, [rel r10]

    push rsi
    call _ft_strlen
    pop rsi

    xor rdi, rdi
    mov rdi, STDOUT
    xor rdx, rdx
    mov rdx, rax
    mov rax, SYSCALL(WRITE)
    syscall

return:
    mov rsp, rbp
    pop rbp
    ret

null_return:
    xor rdi, rdi
    mov rdi, STDOUT
    lea rsi, [rel null_message]
    xor rdx, rdx
    mov rdx, len
    mov rax, SYSCALL(WRITE)
    syscall
    jmp return