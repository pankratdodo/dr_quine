; Comment
global _main
extern _printf
section .data
str: db "; Comment%2$cglobal _main%2$cextern _printf%2$csection .data%2$ccode: db %3$c%1$s%3$c%2$csection .text%2$cprint:%2$cpush rbx%2$cmov rdi, code%2$cmov rsi, code%2$cmov rdx, 10%2$cmov rcx, 34%2$ccall _printf%2$cpop rbx%2$cret%2$c_main:%2$c;Comment inside%2$cpush rbx%2$ccall print%2$cpop rbx%2$cret%2$c"
section .text
print:
push rbx
mov rdi, str
mov rsi, str
mov rdx, 10
mov rcx, 34
call _printf
pop rbx
ret
_main:
;Comment inside
push rbx
call print
pop rbx
ret
