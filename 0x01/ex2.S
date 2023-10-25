.data
x: .long 10
y: .long 24

cat: .long 1
rest: .long 1

.text
.global main

main:
 	; movl $x, %eax
 	; mov $16, %ebx
 	; div %ebx
 	; mov %edx, rest
 	; mov %eax, cat
	mov $4, %eax
	mov $1, %ebx
	movl $cat, %ecx
	mov $32, %edx
	int $0x80

	mov $1, %eax
	mov $0, %ebx
	int $0x80
