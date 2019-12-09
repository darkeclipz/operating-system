;
;   A simple boot sector program that loops forever.
;

loop:
    jmp loop ; jump forever.

times 510-($-$$) db 0 ; write 0 till byte 510.
dw 0xaa55 ; write AA 55 to mark it as bootable.
