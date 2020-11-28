section .data
 shell: db "/bin/sh", 0x00

 section .text
         global _start

 _start:
         push 0                  ;3rd Argument
         push 0                  ;2nd Argument
         push shell              ;1st Argument

         call execve
         call exit               ;In case execve fails

 execve:
         push ebp                                ;Store old ebp.

         mov edx, dword [esp + 0x10]             ;3rd Argument: 0
         mov ecx, dword [esp + 0xc]              ;2nd Argument: 0
         mov ebx, dword [esp + 0x8]              ;1st Argument: Address of "/bin/sh"
         mov eax, 0x0b                           ;System Call number loaded into eax
         int 0x80                                ;Request Kernel!

 exit:
	mov eax, 0x01
	mov ebx, 0x00
	int 0x80
