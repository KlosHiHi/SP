%include "io.inc"
section .data
    a dd 0
    
section .text
global main
main:
    PRINT_STRING 'input a: '
    GET_DEC 4, a
    
    mov eax, [a]
    and eax, 1
    
    xor eax, 1
    PRINT_DEC 4, eax
    ret