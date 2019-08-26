global _ft_isalnum
extern _ft_isdigit ;calling external functions
extern _ft_isalpha

section .text
_ft_isalnum:

    call _ft_isdigit
    mov r12, rax    ;the return from isdigit is stored in rax (r12 id preserved register) need to pop else things will break

    push r12        ;pushing r12 onto the stack to save the vallue in is, isalpha might mess with r12, you never know
    call _ft_isalpha
    pop r12         ; popping removes the value from the stack, but also retirves the value so you can use it.

    mov r13, rax
    or r12, r13     ; OR does a bitwise operation, return 1 if either value  == 1 or if both do. ret 0 id both == 0
    cmp r12, 0
    je not_alnum
    mov rax, 1
    jmp return

not_alnum:
    mov rax, 0
    jmp return

return:
    ret