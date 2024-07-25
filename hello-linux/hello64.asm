section .data
    hello db 'Hello, World!', 0x0A ; Definisikan string dengan karakter newline di akhir

section .text
    global _start               ; Entry point untuk linker

_start:
    ; Panggil sistem call write
    mov rax, 1                  ; Nomor sistem call untuk sys_write
    mov rdi, 1                  ; File descriptor untuk stdout
    mov rsi, hello              ; Pointer ke string yang akan dicetak
    mov rdx, 13                 ; Panjang string (jumlah karakter)
    syscall                     ; Panggil sistem call

    ; Panggil sistem call exit
    mov rax, 60                 ; Nomor sistem call untuk sys_exit
    xor rdi, rdi                ; Return code 0
    syscall                     ; Panggil sistem call
