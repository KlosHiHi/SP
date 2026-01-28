%include "io.inc"
section .data
    a dd 4
    b dd 5
    msg_equal db "EQUAL", 0
    msg_not_equal db "NOT EQUAL", 0
section .text
global main
main:
    mov eax, [a]
    mov ebx, [b]
    
    CMP eax, ebx
    JE is_equal
    PRINT_STRING msg_not_equal
    JMP exit
    
is_equal:
    PRINT_STRING msg_equal
exit:
    NEWLINE
    
ret        