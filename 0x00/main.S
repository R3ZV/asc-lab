.data
    x: .long 15
    y: .byte 65
    z: .asciz "Hello, World!\n"
    n: .asciz "abcde\n"

.text
.global main
main:
    # Print to stdout $n
    mov $4, %eax # write
    mov $1, %ebx # stdin = 0, stdout = 1, stderr = 2
    mov $n, %ecx # string starting from n
    mov $7, %edx # string len
    int $0x80

    # exit(0)
    mov $1, %eax
    mov $0, %ebx
    int $0x80
