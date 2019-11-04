; check if alpha 1st, then check if its alread upper else return upper
global _ft_toupper

_ft_toupper:        
        mov rax, rdi
        cmp rdi, 0x61
        jl return

        cmp rax, 0x7a
        jg return

        sub rax, 0x20
        jmp return
return:
    ret