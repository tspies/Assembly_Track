
; use the .text section for code
section .text
        global _ft_helloworld
_ft_helloworld:
        mov rax, 0x02000004 ;syscall for write function
        mov rdi, 1 ;file handling 1 is std out
        mov rsi, hello ; rsi scratch register for #2 argument to function
        mov rdx, 13 ; number of bytes dont forget the '\0' character hence 13 bytes instead of 12
        syscall  ;invoke operating system to write

        ret
; use the data section to define data (section.data)
section .data
        hello: db "Hello World!", 10 ; note the '10' which is ascci number for new line
        helloLen: equ $-hello,          ;taking the memory address of previous line (hello) with '$'
                                        ;and minusing them to get the length in bytes