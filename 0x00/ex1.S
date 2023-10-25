.data
x: .word 1

.text
.global main

main:
	mov x, %eax

    # exit(0)
    mov $1, %eax
    mov $0, %ebx
    int $0x80
