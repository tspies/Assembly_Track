global _ft_memcpy
default rel
; void *	ft_memcpy(void *s1, const void *s2, size_t n);
; RDI will take in the void *s1
; RSI will take const void *s2
; RDX will take the size_t of how many bytes to copy.

_ft_memcpy:
	push rbp
	mov rbp, rsp

	push rdi
	cmp rdi, 0x0
	je return

	mov rax, rsi
	mov rcx, rdx
	cld
	rep movsb

return:
	pop rdi
	pop rbp
	mov rax, rdi
	ret