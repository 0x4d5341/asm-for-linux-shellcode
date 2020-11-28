Assembly code for writing basic shellcode 


Compiling assembly in NASM

1.
$ nasm -f elf file.asm
#object file will be created 
$ld -m elf_i386 -s -o file file.o
$./file


For the Shellcode:-
1
$ objdump -Mintel -d file

