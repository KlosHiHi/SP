%include "io.inc"
section .data
    price dd 0
    payment dd 0
section .text
global main
main:
    GET_DEC 4, price
    GET_DEC 4, payment
    
    mov eax, [price]
    mov ebx, [payment]
    
    CMP eax, ebx
    JG add_sum
    JL change
    PRINT_STRING 'successful payment' 
    JMP exit
    
    add_sum:
        sub eax, ebx
        PRINT_STRING 'that is not enough, u need to pay on top ' 
        PRINT_DEC 4, eax
        JMP exit
        
    change:
        sub ebx, eax
        PRINT_STRING 'your change ' 
        PRINT_DEC 4, ebx
        JMP exit
        
    exit:
        NEWLINE
    ret