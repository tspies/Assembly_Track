; printable characters are " " - "~" (33) - (126) ascii || (21) - (7e) hex

global _ft_isprint

section .text
_ft_isprint:
        xor rax, rax

        cmp rdi, 0x20
        jl return
        cmp rdi, 0x7e
        jg return
        mov rax, 1
        jmp return

return:
    ret