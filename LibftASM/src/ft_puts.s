global _ft_puts
extern _ft_strlen

; RDI will take the file discriptor
; RSI will take the 
; RDX will take the size_t of how many bytes to copy.
default rel             ; default 32 addressing

section .data
endline: db 0x0a
null_message: db "(null)", 10

section .text
_ft_puts:
		
        ; cmp rdi, 0x0
        ; je null_return
		
        ; call _ft_strlen
		; mov rdx, rax
		; mov rcx, rdi
        ; mov rax, 1
		; mov rdi, 1
        ; mov rsi, rcx
        ; syscall

        ; mov rax, 0x02000004
        ; lea rsi, [endline]
        ; mov edx, 1
        ; syscall
        ; mov rax, 0
		
        ; ret
		push rbp
		mov rbp, rsp

		cmp rdi, 0x0
        je null_return
		xor rcx, rcx
		mov rbx, rdi

run:
		cmp BYTE [rbx], 0
		je print
		inc rbx
		inc rcx
		jmp run

print:
		mov rsi, rdi
		mov rdi, 1
		mov rdx, rcx
		mov rax, 0x20000004
		syscall

		mov rax, 0x2000004
        lea rsi, [rel endline]
        mov edx, 1
        syscall
        mov rax, 0
		leave
        ret

null_return:
	
        mov rax, 1
        mov rdi, 1
        lea rsi, [rel null_message]
        mov edx, 7
        syscall
        ret

        mov rax, 1
        mov rdi, 1
        lea rsi, [rel endline]
        mov edx, edi
        syscall
        mov rax, -1
        ret