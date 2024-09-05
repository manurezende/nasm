section .data
    msg db 'hello, world!', 0

section .text
    global _start

_start:
    mov rax, 1                  ; sys_write system call                              
    mov rdi, 1                  ; file descriptor 1 (stdout)
    mov rsi, msg                ; pointer to message
    mov rdx, 13                 ; message length
    syscall

    mov rax, 60                 ; sys_exit system call
    xor rdi, rdi                ; exit code 0
    syscall