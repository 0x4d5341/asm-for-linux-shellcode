section .data 

str: db 0x2f, "bin", 0x2f, "sh", 0x00

section .text
	global _start

_start:
	mov eax, 11
	mov ebx, str
	mov ecx, 0x00
	mov edx, 0x00
	int 0x80

	mov eax, 0x01
	mov ebx, 0x00
	int 0x80
