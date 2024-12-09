section .text
    global _start

_start:
    xor rdi, rdi          ; Met RDI (argument de sortie) à 0
    mov rax, 60           ; Appel système pour terminer le programme (sys_exit)
    syscall               ; Effectue l'appel système

