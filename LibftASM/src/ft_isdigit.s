global _ft_isdigit

section .text
_ft_isdigit:
    xor rax, rax

    cmp rdi, 0x30
    jl return
    cmp rdi, 0x39
    jg return
    mov rax, 1
    jmp return

return:
    ret
