;
;   A boot sector program that prints a string using our functions.
;

[org 0x7c00]    ; tell the assembler where our code will be loaded.

    mov bx, HELLO_MSG   ; Use BX as a parameter to our function,
    call print_string   ; we can specify the address of a string.

    mov bx, GOODBYE_MSG
    call print_string

    mov bx, TEST_MSG
    call print_string

    mov dx, 0x1fb6  ; store the value to print in dx
    call print_hex

    jmp $

%include "print_string.asm"
%include "print_hex.asm"

; Data
HELLO_MSG:
    db 'Hello world!', 0    ; Zero on the end denotes the end of a string.

GOODBYE_MSG:
    db 'Goodbye!', 0

TEST_MSG:
    db 1, 2, 3, 4, 65, 66, 67, 0

; Padding and and magic number.
    times 510-($-$$) db 0
    dw 0xaa55
