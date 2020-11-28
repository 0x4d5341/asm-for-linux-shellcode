section .text
	global _start

_start:
	mov edx,len ;message length 
	mov ecx,msg ;message to write
	mov ebx,1   ;sdtout
	mov eax,4   ;system call number
	int 0x80    ;call kernel
	mov eax,1   ;system call number
	int 0x80    ;call kernel(exit)

section .data
msg db "Hello, World!", 0xa ;print string
len equ $ - msg     ;string length EQU is used to defining constants
