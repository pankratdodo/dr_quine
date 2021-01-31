global _main
extern _sprintf
extern _fprintf
extern _access
extern _open
extern _system
extern _dprintf
section .data
str: db "global _main%2$cextern _sprintf%2$cextern _fprintf%2$cextern _access%2$cextern _open%2$cextern _system%2$cextern _dprintf%2$csection .data%2$cstr: db %3$c%1$s%3$c, 0%2$cname: db %3$cSully_%%d.s%3$c, 0%2$crun: db %3$cnasm -f macho64 %%s -o cj.o && gcc -m64 -lc -o cj cj.o 2>&- && ./cj && rm -f cj cj.o%3$c, 0%2$cbuff: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%2$cproc: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%2$csection .text%2$c_main:%2$cpush rbx%2$cmov r9, %4$d%2$ccmp r9, 0%2$cjle end%2$cmov rcx, r9%2$ccall check%2$cmov rcx, rax%2$cmov r12, rax%2$ccall open%2$cmov rdi, rax%2$cmov r9, r12%2$ccall write%2$ccall child%2$cend:%2$cpop rax%2$cret%2$ccheck:%2$cpush rbx%2$cmov r12, rcx%2$ccall make%2$cmov rdi, buff%2$cmov rsi, 0%2$ccall _access%2$cjne end_check%2$cadd r12, 1%2$cend_check:%2$cpop rbx%2$cdec r12%2$cmov rax, r12%2$cret%2$cmake:%2$cpush rbx%2$cmov rdi, buff%2$cmov rsi, name%2$cmov rdx, rcx%2$ccall _sprintf%2$cpop rbx%2$cret%2$copen:%2$cpush rbx%2$ccall make%2$cmov rdi, buff%2$cmov rsi, 0x601%2$cmov rdx, 0x1a4%2$ccall _open%2$cpop rbx%2$cret%2$cwrite:%2$cpush rbx%2$cmov rsi, str%2$cmov rdx, str%2$cmov rcx, 10%2$cmov r8, 34%2$ccall _dprintf%2$cpop rbx%2$cret%2$cchild:%2$cpush rbx%2$cmov rdi, proc%2$cmov rsi, run%2$cmov rdx, buff%2$ccall _sprintf%2$cmov rdi, proc%2$ccall _system%2$cpop rbx%2$cret%2$c", 0
name: db "Sully_%d.s", 0
run: db "nasm -f macho64 %s -o cj.o && gcc -m64 -lc -o cj cj.o 2>&- && ./cj && rm -f cj cj.o", 0
buff: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
proc: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
section .text
_main:
push rbx
mov r9, 5
cmp r9, 0
jle end
mov rcx, r9
call check
mov rcx, rax
mov r12, rax
call open
mov rdi, rax
mov r9, r12
call write
call child
end:
pop rax
ret
check:
push rbx
mov r12, rcx
call make
mov rdi, buff
mov rsi, 0
call _access
jne end_check
add r12, 1
end_check:
pop rbx
dec r12
mov rax, r12
ret
make:
push rbx
mov rdi, buff
mov rsi, name
mov rdx, rcx
call _sprintf
pop rbx
ret
open:
push rbx
call make
mov rdi, buff
mov rsi, 0x601
mov rdx, 0x1a4
call _open
pop rbx
ret
write:
push rbx
mov rsi, str
mov rdx, str
mov rcx, 10
mov r8, 34
call _dprintf
pop rbx
ret
child:
push rbx
mov rdi, proc
mov rsi, run
mov rdx, buff
call _sprintf
mov rdi, proc
call _system
pop rbx
ret
