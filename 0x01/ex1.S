.data
x: .long 17
y: .long 6

.text
.global main
main:
    mov $1, %edx
    mov x, %eax
    divl y

label:
    mov $1, %eax
    mov $0, %ebx
    int $0x80
