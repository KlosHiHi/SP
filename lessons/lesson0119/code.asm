section .data
    number db 0, 1, 2, 3

section .text
global main
main:
    movsx eax, byte [number + 2]
    xor eax, eax
    ret