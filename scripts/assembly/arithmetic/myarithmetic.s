.section .text
.globl _start

_start:
	# Perform various maths stuff and whatnot
	movq $2, %r11
	# Move 2 into %rax
	movq %r11, %rax
	# Multiply 2 x 2
	mulq %r11
	# Place value (4) into rdi for exit value
	movq %rax, %rdi
	# Set the system call number
	movq $60, %rax

	# Make the fucking system call
	syscall

