.text
.global _start
_start:
    pop %rdi
    mov %rsp, %rsi
    and $-16, %rsp
    call main
    push %rax
    mov stdout, %rdi
    call fflush
    pop %rdi
    call _exit
