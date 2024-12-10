section .data
    msg db '1337', 10  ; La chaîne de caractères à afficher suivie d'un saut de ligne
    len equ $ - msg     ; Longueur de la chaîne

section .text
    global _start

_start:
    ; Écrire la chaîne avec l'appel système write
    mov rax, 1          ; sys_write (numéro d'appel système)
    mov rdi, 1          ; Descripteur de fichier (1 pour stdout)
    mov rsi, msg        ; Adresse de la chaîne
    mov rdx, len        ; Longueur de la chaîne
    syscall             ; Appel système pour écrire

    ; Quitter le programme avec exit
    xor rdi, rdi        ; Code de sortie = 0
    mov rax, 60         ; sys_exit (numéro d'appel système)
    syscall             ; Appel système pour quitter

