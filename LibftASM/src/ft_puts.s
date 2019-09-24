global _ft_puts
extern _ft_strlen

; RDI will take the file discriptor
; RSI will take the 
; RDX will take the size_t of how many bytes to copy.
default rel             ; default 32 addressing

section .data
NEWLN db 0x0a
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

		cmp rdi, 0
		je null_return

		push rdi
		call _ft_strlen

		mov rdi, 1
		pop rsi
		mov rdx, rax
		mov rax, 1
		syscall

		mov rdi, 1
		mov rsi, NEWLN
		mov rdx, 1
		mov rax, 1
		syscall

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
        lea rsi, [rel NEWLN]
        mov edx, edi
        syscall
        mov rax, -1
        ret