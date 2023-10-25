.data
a: .long 5
b: .long 6

.text
.global main

# a = a ^ b
# b = a ^ b
# a = a ^ b
main:
	xor b, a
	xor a, b
	xor b, a

write:
    # Print to stdout $a
    mov $4, %eax # write
    mov $1, %ebx # stdin = 0, stdout = 1, stderr = 2
    mov $a, %ecx # string starting from n
    mov $7, %edx # string len
    int $0x80

    # Print to stdout $n
    mov $4, %eax # write
    mov $1, %ebx # stdin = 0, stdout = 1, stderr = 2
    mov $b, %ecx # string starting from n
    mov $7, %edx # string len
    int $0x80

    # exit(0)
    mov $1, %eax
    mov $0, %ebx
    int $0x80
