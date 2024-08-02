section .data
    hello db 'Hello, World!', 0

section .bss

section .text
    global main
    extern ExitProcess
    extern WriteConsoleA
    extern GetStdHandle

main:
    ; Get handle to stdout
    sub rsp, 28h
    mov ecx, -11
    call GetStdHandle
    mov rcx, rax

    ; Write our string to stdout
    mov r8d, 13
    lea rdx, [hello]
    mov r9, rsp
    sub rsp, 20h
    call WriteConsoleA

    ; Exit the program
    xor ecx, ecx
    call ExitProcess
