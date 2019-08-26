global _ft_tolower

section .text
_ft_tolower:
        mov rax, rdi
        cmp rdi, 0x41
        jl return

        cmp rax, 0x5a
        jg return

        add rax, 0x20
        jmp return
return:
    ret