section .data

str: db "Hello World", 0x0a, 0x00

section .text
	global _start

_start:
	mov eax, 0x04
	mov ebx, 0x01
	mov ecx, str
	mov edx, 13
	int 0x80

	mov eax, 0x01
	mov ebx, 0x00
	int 0x80
