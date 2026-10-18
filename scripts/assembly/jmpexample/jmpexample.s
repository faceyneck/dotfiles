.globl _start
.section .text

_start:
	# An example of jumping over instructions
	movq $7, %rdi
	jmp tittylicker
	
	# These instructions are skipped over
	movq $8, %rbx
	addq %rbx, %rdi


tittylicker:
	movq $60, %rax
	syscall


