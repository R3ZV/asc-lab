.data

x: .long 60
y: .long 9
s: .long 0
fmt: .asciz "Print int: %ld\n"

.text
.global main

sum:
    pushl %ebp
    movl %esp, %ebp

    movl 8(%ebp), %eax
    addl 12(%ebp), %eax
    movl 16(%ebp), %ebx
    movl %eax, 0(%ebx)

    popl %ebp
    ret

main:
    pushl $s
    pushl y
    pushl x
    call sum
    popl %ebx
    popl %ebx
    popl %ebx

    pushl s
    pushl $fmt
    call printf
    popl %ebx
    popl %ebx

exit:
    movl $1, %eax
    movl $0, %ebx
    int $0x80
