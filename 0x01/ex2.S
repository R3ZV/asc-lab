.data
x: .long 5
y: .long 5
s: .long 0

.text
.global main
main:
    mov x, %ecx
    sub y, %ecx

et:
    add %ecx, s
    loop et
exit:
    mov $1, %eax
    mov $0, %ebx
    int $0x80

