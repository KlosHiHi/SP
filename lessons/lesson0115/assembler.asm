section .text
global main
main:
    mov ax, 25
    mov cx, -5
    cwd;xor dx, dx
    idiv cx
    ret