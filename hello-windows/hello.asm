section .data
    hello db 'Hello, World!', 0

section .bss

section .text
    global _main
    extern _ExitProcess@4
    extern _WriteConsoleA@20
    extern _GetStdHandle@4

_main:
    ; Get handle to stdout
    push -11
    call _GetStdHandle@4
    mov ebx, eax

    ; Write our string to stdout
    push 0
    push 0
    push 13
    push hello
    push ebx
    call _WriteConsoleA@20

    ; Exit the program
    push 0
    call _ExitProcess@4
