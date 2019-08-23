global _ft_isalnum
extern _ft_isdigit
extern _ft_isalpha

section .text
_ft_isalnum:
    xor rax, rax

    call _ft_isdigit
    mov r12, rax

    push r12
    call _ft_isalpha
    pop r12

    mov r13, rax
    or r12, r13
    cmp r12, 0
    je not_alnum
    mov rax, 1
    jmp return

not_alnum:
    mov rax, 0
    jmp return
return:
    ret