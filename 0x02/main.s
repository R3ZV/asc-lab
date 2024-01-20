.data

x: .word 1
y: .word 2
fmt: .asciz "Print int: %ld\n"

.text
.global main

main:
    movw x, %ax

    pushl %eax
    pushl $fmt
    call printf
    popl %ebx
    popl %ebx

exit:
    movl $1, %eax
    movl $0, %ebx
    int $0x80
