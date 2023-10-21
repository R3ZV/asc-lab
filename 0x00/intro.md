# Intro
c / c++ --compile--> assembly (.S, .asm) --asembler--> cod masina --linker--> executabil

ISA:
- CISC (complex - x86)
- RISC (ARM, RISC-V, NIPS, SPARC)


# How to move variables based on their type
movl - long
movw - word
movb - byte

All variables are just pointers to the first addrest of where the value is stored

# Exiting a process (return 0)
mov $1, %eax
mov $0, %ebx
int $0x80

# Usefull gdb commands
- disas main
- i r ---> initial program state
- si ---> step
- p $eax ---> prompt
- x/5x &x ---> display first 5 bytes of variable x
- c ---> continue
- q ---> exit

