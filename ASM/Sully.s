global _main
extern _sprintf
extern _fprintf
extern _access
extern _fopen
extern _system
extern _printf
section .data
str: db "global _main%1$cextern _sprintf%1$cextern _fprintf%1$cextern _access%1$cextern _fopen%1$cextern _system%1$cextern _printf%1$csection .data%1$cstr: db %2$c%3$s%2$c, 0%1$cname: db %2$cSully_%4$cd.s%2$c, 0%1$crun: db %2$cnasm -f macho64 %4$cs && gcc -m64 -lc Sully_%4$cd.o -o Sully_%4$cd && ./Sully_%4$cd%2$c, 0%1$coption: db %2$cw%2$c, 0%1$cbuff: db %2$cSully_X.s%2$c, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%1$cproc: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%1$csection .text%1$c_main:%1$cpush rbx%1$cmov r9, %5$d%1$ccmp r9, 0%1$cjle end%1$cmov r12, r9%1$cmov rdi, buff%1$cmov rsi, name%1$cmov rdx, r12%1$ccall _sprintf%1$cmov rdi, buff%1$cmov rsi, 0%1$ccall _access%1$ccmp rax, -1%1$cjne end%1$clea r12, [r12 - 1]%1$cmov rdi, buff%1$cmov rsi, name%1$cmov rdx, r12%1$ccall _sprintf%1$cmov rdi, buff%1$cmov rsi, option%1$ccall _fopen%1$cmov rdi, rax%1$cmov rsi, str%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, str%1$cmov r9, 37%1$ccall _fprintf%1$cmov rdi, proc%1$cmov rsi, run%1$cmov rdx, buff%1$cmov rcx, r12%1$cmov r8, r12%1$cmov r9, r12%1$ccall _sprintf%1$cmov rdi, proc%1$ccall _system%1$cpop rdx%1$cret%1$cend:%1$cmov rax, 0%1$cpop rbx%1$cret%1$c", 0
name: db "Sully_%d.s", 0
run: db "nasm -f macho64 %s && gcc -m64 -lc Sully_%d.o -o Sully_%d && ./Sully_%d", 0
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
mov rcx, 34
mov r8, str
mov r9, 37
mov r10, r12
call _fprintf
mov rdi, proc
mov rsi, run
mov rdx, buff
mov rcx, r12
mov r8, r12
mov r9, r12
call _sprintf
mov rdi, proc
call _system
pop rdx
ret
end:
mov rax, 0
pop rbx
ret
