section .data

str: db "/bin/sh", 0x00

section .text
	global _start

_start:
	mov rax, 11
	mov rbx, str
	mov rcx, 0
	mov rdx, 0
	int 0x80
