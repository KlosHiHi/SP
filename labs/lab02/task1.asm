%include "io.inc"

section .data
    a dd 0
    b dd 0

section .text
global main
main:
    PRINT_STRING 'input a: '
    GET_DEC 4, a
    
    PRINT_STRING 'input b: '
    GET_DEC 4, b
    
    mov eax, [a]
    mov ebx, [b]
    cdq
    idiv ebx
    
    NEWLINE
    PRINT_STRING 'result: '
    PRINT_DEC 4, eax
    PRINT_STRING ' remnant: '
    PRINT_DEC 4, edx
    NEWLINE
    ret