global _ft_indexof
default rel

section .text
_ft_indexof:
    push rbp
    mov rbp, rsp

    xor rcx, rcx
    cmp rdi, 0
    jz return
    cmp rdi, 0
    jz return

loop:
    
return:
    pop rbp
    mov rax, rcx
    ret