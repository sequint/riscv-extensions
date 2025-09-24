    .section .text
    .globl _start
_start:
    li t0, -45      # Load negative number to temp 0
    li t1, 0        # Dummy field
    abs a0, t0, t1  # Run custom instruction to get abs value and store in a0
    li a7, 93       # Exit syscall
    ecall           # exit(45)
