
global _ft_isalpha

section .text
_ft_isalpha:
    xor rax, rax     ;this xor the registers together to zero them out

    cmp rdi, 'A'
    jl oot
    cmp rdi, 'Z'
    jg upper
    mov rax, 1
    jmp oot

upper:
    cmp rdi, 'a'
    jl oot
    cmp rdi, 'z'
    jg oot
    mov rax, 1
    jmp oot
oot:
    ret