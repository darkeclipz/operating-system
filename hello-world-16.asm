; A simple boot sector that print a message using BIOS routines.

mov ah, 0x0e  ; int 10/ah = 0eh -> scrolling teletype BIOS routine

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, '1'
int 0x10
mov al, 'o'
int 0x10

jmp $ ; jump to current address

; padding

times 510-($-$$) db 0 ; Pad the boot sector with zeros
dw 0xaa55 ; magic number so BIOS knows we are a boot sector.

