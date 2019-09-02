global _ft_strlen
_ft_strlen:
    xor rcx, rcx
    test rdi, rdi
    jz return

next:
    mov al, 0x0
    mov rcx, -1
    cld
    repne scasb
    not rcx
    dec rcx

return:
    mov rax, rcx
    ret