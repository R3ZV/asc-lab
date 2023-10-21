.data
x: .long 15
y: .byte 65
z: .asciz "Hello, World!\n"

.text
.global main
main:

mov x, %eax
mov %eax, %ebx
mov $7, %ebx
mov %ebx, x

# movl - long
# movw - word
# movb - byte
# x, y, z sunt pointer la niste adrese

# return 0 -> exit(0)
mov $1, %eax
mov $0, %ebx
int $0x80
