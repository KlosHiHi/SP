%include "io.inc"
section .data
    a dd 0
    b dd 0
    c dd 0
section .text
global main
main:
    GET_DEC 4, a
    GET_DEC 4, b
    GET_DEC 4, c
    
    mov eax, [a]
    mov ebx, [b]
    mov ecx, [c]
    
    CMP eax, ebx
    JGE second_check
    JMP third_check
    
    second_check:
        CMP eax, ecx
        JGE answer_a
        JMP answer_c
    third_check:
        CMP ebx, ecx
        JGE answer_b
        JMP answer_c
    
    answer_a: 
        PRINT_DEC 4, eax
        JMP exit     
    answer_b: 
       PRINT_DEC 4, ebx
        JMP exit  
    answer_c: 
        PRINT_DEC 4, ecx
        JMP exit         
        
    exit:
        NEWLINE
    ret