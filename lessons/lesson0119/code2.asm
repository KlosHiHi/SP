section .text
global main
main:
    mov ebp, esp
    mov ecx, 5
    mov eax, 0
mainloop:
    jecxz exit
    add eax, 2
    loop mainloop
exit:
    xor eax, eax
    ret