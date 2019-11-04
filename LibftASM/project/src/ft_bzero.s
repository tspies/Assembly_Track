global _ft_bzero

section .text
_ft_bzero:
    mov r12, rsi
    xor rcx, rcx

set_to_null:
    cmp rcx, r12
    jge return
    mov byte[rdi + rcx], 0
    inc rcx
    jmp set_to_null

return:
    ret