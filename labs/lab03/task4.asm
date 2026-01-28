%include "io.inc"
section .data
    a dd 0
    x dd 0
section .text
global main
main:
    GET_DEC 4, a
    GET_DEC 4, x
    
    mov eax, [x]
    mov ebx, [a]
    
    CMP eax, 10
    JGE third_formule
    JMP second_check
    
    second_check:
        CMP eax, -10
        JL first_formule
        JMP third_check
    third_check:
        CMP eax, -10
        JGE fourth_check
    fourth_check:
        CMP eax, 10
        JLE second_formule
       
    first_formule:
        mul eax
        mul ebx
        PRINT_DEC 4,eax
        JMP exit 
    second_formule:
        cdq
        xor eax, edx
        sub eax, edx
        mul ebx
        PRINT_DEC 4,eax
        JMP exit  
    third_formule:
        sub ebx, eax
        PRINT_DEC 4,ebx 
        JMP exit 
          
    exit:
        NEWLINE  
    ret