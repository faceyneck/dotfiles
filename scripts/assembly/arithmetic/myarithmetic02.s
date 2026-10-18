.globl _start
.section .text

_start:

	# Attempt to use things other than quadwords
	# Move number 4 into 32-bit register for r11
	movl $4, %r11d
	# Move number 4 into the 32-bit register version of rdi 
	movl %r11d, %edi

	# Set the system call number, so that %rdi is the exit
	movq $60, %rax

	# Perform the fucking system call
	syscall	
