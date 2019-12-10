;
; Subroutine that prints a string. It expects a pointer to a 
; string in the bx register. The end of the string is marked
; with 0x00.
;
print_string:
    pusha           ; push the current state to the stack.
    mov ah, 0x0e    ; set teletype something mode

print_string_next_char:
    mov al, [bx]                ; fetch the character from address bx
    cmp al, 0x00                ; check if the character is equal to 0x00
    je print_string_end         ; jump to end if char is 0x00
    int 0x10                    ; call BIOS interupt to print char
    inc bx                      ; add 1 to bx
    jmp print_string_next_char  ; goto next character

print_string_end:
    popa    ; pop the state from the stack
    ret      ; return

; Print a char in AL.
print_char:
    mov ah, 0x0e
    int 0x10
    ret