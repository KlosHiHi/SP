%include "io.inc"

section .data
    x dd 15
    y dd 10
    msg db 'input x: ', 0

section .text
global main
main:
    mov ebp, esp; for correct debugging
    
    PRINT_STRING msg
    GET_DEC 4, x
    PRINT_STRING 'input y: '
    GET_DEC 4, y

    mov ebx, [x]
    cmp ebx, [y]
    jg above
        mov eax, [y]
        jmp exit
    above:
        mov eax, ebx
    exit: 
    
    PRINT_STRING 'MAX: '
    PRINT_DEC 4, eax
    NEWLINE
    ret