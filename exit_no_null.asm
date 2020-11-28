section .text
	global _start

_start:
	xor eax, eax 
	add al, 1
	xor ebx, ebx 
	add bl, 1
	int 0x80
