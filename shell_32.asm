section .data

str: db "/bin/sh", 0x00

section .text 
	global _start

_start:
	mov eax, 11
	mov ebx, str
	mov ecx, 0
	mov edx, 0
	int 0x80
