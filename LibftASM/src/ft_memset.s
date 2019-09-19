global _ft_memset

; RDI will take in the void * dest
; RSI will take the character to move into al
; RDX will take the size_t of how many bytes to copy.

extern _ft_putchar
extern _ft_puts

section .text
_ft_memset:
	push rbp		; These two lines are needed else te stack pointer is not returned to rsp
	mov rbp, rsp	; when rep stosb finishes. push rbp basicall subtracts 8 bits from rsp
					; and then makes rbp == rsp so the old tack pointer is rsp - 8

	push rdi		; This preservs rdi before the cmp command, aftly first!!
	cmp rdi, 0x0	; Compare rdi with 0 to check if its NULL
	jz return		; I f it is NULL return

	mov rax, rsi	; moving chracter from rsi to rax or "al" register
	mov rcx, rdx	; moving size_t from rdx to rcx "general counter register."
	cld				; clearing directional flag. pointer increments when DF = 0
	rep stosb		; repeats stosb command and increments the pointer on rdi or "di" register

return:
	pop rdi			; retoring rdi that we pushed to the stack
	pop rbp			; restoring base stack pointer that we pushed to the stack
	mov rax, rdi
	ret