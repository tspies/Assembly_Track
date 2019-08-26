global _ft_strcat

_ft_strcat:
    xor rcx, rcx
    test rdi, rdi           ; checking is first function perameter is empty
    jz return
    test rsi, rsi           ; checking if second function perameter is empty
    jz return

string_1_length:            ; LOOP FOR 1ST STRING
    mov al, byte[rdi + rcx] ; al is the register for 8bit char instead of using whole register
    test al, al             ; checking if al char is null which would end 1st string
    jz prep_s2
    inc rcx
    jmp string_1_length
    
prep_s2:
    xor r10, r10

cat:                        ; LOOP FOR 2ND STRING
    mov al, byte[rsi + r10] ; Using rsi is the second string argument using the reserved register r12 as the counter
    test al, al             ; test to see if end of second string is reached ('\0')
    jz return

    mov byte[rdi + rcx], al ; Appending string 2 to astring one in RDI register char by char
    inc rcx
    inc r10
    jmp cat

return:
    mov byte[rdi + rcx], 0      ; Setting the last byte of RDi (string 1) to null terminator ('\0')
    mov rax, rdi            ; putting the whole string into return register
    ret