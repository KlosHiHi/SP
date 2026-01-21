%include "io64.inc"

section .data
    x dq 2.2
    y dq 3.3
    z dq 0.0

section .text
global main
main:
    finit
    fld1
    fld qword [x] ; ST(0) = 2.2
    fld qword [y] ; ST(0) = 3.3, ST(1) = 2.2
    fxch st1
    fsub st2, st0
    faddp st2, st0
    fst qword [z]
    
    xor eax, eax
    ret