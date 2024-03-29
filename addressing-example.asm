; simple boot sector program that demonstrates addressing

mov ah, 0x0e ; scrolling  teletype  BIOS  routine



; First attempt
mov al, the_secret
int 0x10            ; does this print an X?



; Second attempt
mov al, [the_secret]
int 0x10



; Third attempt (correct)
mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10



; Fourth attempt
mov al, [0x7c1e]
int 0x10



; loop forever
jmp $



the_secret:
    db "X"



; padding magic number
times 510-($-$$) db 0
dw 0xaa55