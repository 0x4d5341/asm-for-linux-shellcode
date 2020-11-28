section .data

str : db "/bin/sh", 0x00

section .text
	global _start

_start: 
	mov eax, 59
	mov rdi, str
	mov rsi, 0
	mov rdx, 0
	syscall
