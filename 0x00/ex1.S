.data
a: .long 10
b: .long 20

.text
.global main

main:
	# Cu XOR
	movl a, %eax
	movl b, %ebx

	xorl %ebx, %eax
	xorl %eax, %ebx
	xorl %ebx, %eax

	movl %eax, a
	movl %ebx, b

	# Cu al 3-lea registru
	
	movl a, %ecx
	movl b, %eax
	movl a, %ebx

exit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
