section .text
global _ft_createfile

default rel

_ft_createfile:
    ; create the file
    mov rax, 8          ; syscall for sys_creat
    mov rbx, file
    mov rcx, 0777       ; permissions set here
    syscall

    mov rax, 6
    mov rbx, [fd_in]
    syscall

    ret

section .data
file db 'Creation.txt'

section .bss
fd_out resb 1
fd_in  resb 1