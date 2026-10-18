.globl _start
.section .text

_start:
	# Perform various arithmetic functions and shit
	# Put the number 3 into %rdi:
	movq $3, %rdi
	# Place the number 3 into %rax:
	movq %rdi, %rax
	# Add %rdi and %rax, making %rax 6:
	addq %rdi, %rax
	# Multiply %rdi and %rax, storing value in %rax, which would be 6 X 3 = 18:
	mulq %rdi
	# Change %rdi to 2:
	movq $2, %rdi
	# Add %rdi to %rax, which would be 18 + 2 = 20:
	addq %rdi, %rax
	# Place the number 4 into %rdi:
	movq $4, %rdi
	# Multiply %rdi by %rax, storing value in %rax, which would be 4 X 20 = 80:
	mulq %rdi
	# Move value in %rax (80) into %rdi:
	movq %rax, %rdi
	#Set the exit system call number:
	movq $60, %rax
	# Perform the system call:
	syscall
