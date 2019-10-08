%define SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define READ 3
%define WRITE 4

section	.text
   global _ft_file        ;must be declared for using gcc
	
_ft_file:                  ;tell linker entry point
    push rbp
    mov rbp, rsp

read_loop:
    mov rax, SYSCALL(READ)  ; 'read' syscall
    push rdi                ; preserve fd on stack
    lea rsi, [rel buffer]   ; load buffer of 255 into rsi for each char
    syscall                 ; read syscall

    jc error_out
    cmp rax, 0              ; EOF check from read return
    je return

    mov rdi, STDOUT; Write syscall
    mov rdx, rax            ; Moving char into write function
    mov rax, SYSCALL(WRITE)
    syscall

    jc error_out
    pop rdi
    jmp read_loop

error_out:
    pop rdi
    mov rax, 1

return:
    mov rsp, rbp
    pop rbp
    ret

section .data

buffer times 255 db 0
size equ $-buffer