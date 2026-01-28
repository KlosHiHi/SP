%include "io.inc"
section .data
    a dd 0
    
section .text
global main
main:
    CMP a, b
    ret