global _ft_strlen
_ft_strlen:
    push rcx        ;preserve rcx
    xor rcx, rcx
next:
    cmp [rdi], byte 0 ;this checks if current char is null byte yet
    jz return
    inc rcx
    inc rdi
    jmp next

return:
    mov rax, rcx
    pop rcx         ;pop rcx else code will break
    ret