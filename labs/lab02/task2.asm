%include "io.inc"
section .data
    a dd 0
    b dd 0
    c dd 0
    x dd 0

section .text
global main
main:
    mov ebp, esp; for correct debugging
    PRINT_STRING 'input a: '
    GET_DEC 4, a
    PRINT_STRING 'input b: '
    GET_DEC 4, b
    PRINT_STRING 'input c: '
    GET_DEC 4, c
    PRINT_STRING 'input x: '
    GET_DEC 4, x
    xor eax, eax
    
    mov ebx, [a]
    mov ecx, [b]
    mov edx, [x]
    
    imul ecx, [x]
    add eax, ecx
    
    imul edx, [x]
    imul ebx, edx
    add eax, ebx
    
    add eax, [c]
    
    NEWLINE
    PRINT_STRING 'result:'
    PRINT_DEC 4, eax
    ret