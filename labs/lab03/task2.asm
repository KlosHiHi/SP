%include "io.inc"
section .data
    x dd 0
    a dd 4
    b dd 14
    msg_in db "within range (4..14)", 0
    msg_out db "out of range", 0
    
section .text
global main
main:
    GET_DEC 4, x
    mov eax, [x]
    mov ebx, [a]
    mov ecx, [b]
    
    CMP eax, ebx
    JGE check
    JMP fail
    
    check:
        CMP eax, ecx
        JLE answer
        JMP fail
        
     answer: 
        PRINT_STRING msg_in
        JMP exit
        
     fail:
     PRINT_STRING msg_out
     JMP exit  
      
     exit:
        NEWLINE
    ret