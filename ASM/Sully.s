global main_
section .data
str: db "", 0
name: db "Sully_%d.s", 0
run: db "nasm -f macho64 Sully_%1$d.s && gcc -m64 -lc Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d", 0
section .text
_main:
push rbx
