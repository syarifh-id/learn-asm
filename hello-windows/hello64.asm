section .data
    hello db 'Hello, World!', 0

section .text
    global _start

_start:
    ; write our string to stdout
    mov rax, 1        ; syscall number for sys_write
    mov rdi, 1        ; file descriptor 1 (stdout)
    mov rsi, hello    ; pointer to our string
    mov rdx, 13       ; length of our string
    syscall           ; call kernel

    ; exit the program
    mov rax, 60       ; syscall number for sys_exit
    xor rdi, rdi      ; exit status 0
    syscall           ; call kernel
