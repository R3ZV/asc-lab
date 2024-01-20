.data
nums: .long 4, 19, 25, 16, 15
num: .long 10
i: .long 0
j: .long 0
cnt: .long 0
fmt: .asciz "%ld biti de 1 in %ld\n"

.text
.global main

main:

    for_num_in_nums:
        # mutam cate elemente avem in vector
        # si verificam daca mai avem elemente
        movl $5, %eax
        cmp i, %eax
        je exit

        # num = nums[i]
        lea nums, %edi
        movl i, %ecx
        movl (%edi, %ecx, 4), %eax
        movl %eax, num

        # resetam cnt, j si ebx pentru noul numar
        movl $0, cnt
        movl $0, j
        movl $1, %ebx

        # cum un octet are 8 biti
        # while j < 8
        bit_checking:
            # verificam conditia din while
            movl $8, %ecx
            cmp j, %ecx
            je afisare

            movl num, %eax

            and %ebx, %eax

            cmp $0, %eax
            je jpp
            incl cnt

            # j++ si ne intoarecem in while
            jpp:
                shl %ebx
                incl j
                jmp bit_checking

        afisare:
            pushl num
            pushl cnt
            pushl $fmt
            call printf
            popl %ecx
            popl %ecx
            popl %ecx

        # i++ si ne intoarcem sus in while
        incl i
        jmp for_num_in_nums


exit:
    movl $1, %eax
    movl $0, %ebx
    int $0x80
