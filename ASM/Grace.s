;Comment
global _main
extern _fprintf
extern _fopen
section .data
str: db ";Comment%2$cglobal _main%2$cextern _fprintf%2$cextern _fopen%2$csection .data%2$cstr: db %3$c%1$s%3$c, 0%2$cname: db %3$cGrace_kid.s%3$c, 0%2$coption: db %3$cw%3$c%2$csection .text%2$c%4$cmacro MAIN 0%2$c_main:%2$cpush rbx%2$cmov rdi, name%2$cmov rsi, option%2$ccall _fopen%2$cmov rdi, rax%2$cmov rsi, str%2$cmov rdx, str%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, 37%2$ccall _fprintf%2$cpop rbx%2$cret%2$c%4$cendmacro%2$cMAIN%2$c", 0
name: db "Grace_kid.s", 0
option: db "w"
section .text
%macro MAIN 0
_main:
push rbx
mov rdi, name
mov rsi, option
call _fopen
mov rdi, rax
mov rsi, str
mov rdx, str
mov rcx, 10
mov r8, 34
mov r9, 37
call _fprintf
pop rbx
ret
%endmacro
MAIN
