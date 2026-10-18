.section .text
.globl _start
_start:

	# Put $0b1101 into %rdi, which should be 13 in decimal:
	movq $0b1101, %rdi
	
	# Set exit call to 60:
	movq $60, %rax

	# Actually do the fucking exit call:
	syscall
