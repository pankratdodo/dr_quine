global _main
extern _sprintf
extern _fprintf
extern _access
extern _fopen
extern _system
extern _printf
section .data
str: db "global _main%1$cextern _sprintf%1$cextern _fprintf%1$cextern _access%1$cextern _fopen%1$cextern _system%1$cextern _printf%1$csection .data%1$cstr: db %2$c%3$s%2$c, 0%1$cname: db %2$cSully_%4$cd.s%2$c, 0%1$crun: db %2$cnasm -f macho64 %4$c%2%5$c$s && gcc -m64 -lc Sully_%4$c%1%5$c$d.o -o Sully_%4$c%1%5$c$d && ./Sully_%4$c%1%5$c$d%2$c, 0%1$coption: db %2$cw%2$c, 0%1$cbuff: db %2$cSully_X.s%2$c, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%1$cproc: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%1$csection .text%1$c_main:%1$c
         push rbx%1$c
         mov r9, 5%1$c
         cmp r9, 0%1$c
         jle end%1$c
         mov r12, r9%1$c
         mov rdi, buff%1$c
         mov rsi, name%1$c
         mov rdx, r12%1$c
         call _sprintf%1$c
         mov rdi, buff%1$c
         mov rsi, 0%1$c
         call _access%1$c
         cmp rax, -1%1$c
         jne end%1$c
         lea r12, [r12 - 1]%1$c
         mov rdi, buff%1$c
         mov rsi, name%1$c
         mov rdx, r12%1$c
         call _sprintf%1$c
         mov rdi, buff%1$c
         mov rsi, option%1$c
         call _fopen%1$c
         mov rdi, rax%1$c
         mov rsi, str%1$c
         call _fprintf%1$c
         mov rdi, proc%1$c
         mov rsi, run%1$c
         mov rdx, r12%1$c
         mov rcx, buff%1$c
         call _sprintf%1$c
         mov rdi, proc%1$c
         call _system%1$c
         pop rdx%1$c
         ret%1$c
         end:%1$c
         mov rax, 0%1$c
         pop rbx%1$c
         ret%1$c", 0
name: db "Sully_%d.s", 0
run: db "nasm -f macho64 %2$s && gcc -m64 -lc Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d", 0
option: db "w", 0
buff: db "Sully_X.s", 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
proc: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
section .text
_main:
push rbx
mov r9, 5
cmp r9, 0
jle end
mov r12, r9
mov rdi, buff
mov rsi, name
mov rdx, r12
call _sprintf
mov rdi, buff
mov rsi, 0
call _access
cmp rax, -1
jne end
lea r12, [r12 - 1]
mov rdi, buff
mov rsi, name
mov rdx, r12
call _sprintf
mov rdi, buff
mov rsi, option
call _fopen
mov rdi, rax
mov rsi, str
mov rdx, 10
mov r8, 34
mov r9, 37
;mov дописать 1 -10, 2 - "", 3 - str, 4 - %, 5 - $
call _fprintf
mov rdi, proc
mov rsi, run
mov rdx, r12
mov rcx, buff
call _sprintf
mov rdi, proc
call _system
pop rdx
ret
end:
mov rax, 0
pop rbx
ret
