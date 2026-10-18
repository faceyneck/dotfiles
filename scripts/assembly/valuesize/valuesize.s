.section .text
.globl _start

_start:
	# Move 16-bit binary value into register %bx:
	movw $0b0000000100000010, %bx
	# Add high-significant binary digits to low-significant binary digits:
	addb %bh, %bl
	# Change register %bh to 0:
	movb $0, %bh

	# Take what's in the whole of b register and put it into %rdi:
	movq %rbx, %rdi

	# Put exit system call number (60) into %rax:
	movq $60, %rax

	# Perform system call:
	syscall
