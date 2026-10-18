.globl _start
.section .text

_start:
	# Perform various arithmetic functions
	# using different registers
	movq $3, %r9
	movq %r9, %rax
	addq %r9, %rax
	mulq %r9
	movq $2, %r9
	addq %r9, %rax
	movq $4, %r9
	mulq %r9
	movq %rax, %r9
	movq %r9, %rdi

	# Set the exit system call number
	movq $60, %rax
	# Perform the system call
	syscall
	
