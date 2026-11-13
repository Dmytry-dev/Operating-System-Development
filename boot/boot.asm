BITS 16
ORG 0x7C00

MOV AX, 0x0
MOV ES, AX                                                                                                                                                                         


MOV AH, 0x13
MOV AL, 0x01
MOV BH, 0x00
MOV BL, 0x07
MOV CX, message_lenght
MOV DH, 0x00
MOV DL, 0x00
MOV BP, welcome_message
INT 0x10


start_loop: 
    JMP start_loop

welcome_message DB "Bootloader v0.1"
message_lenght EQU $ - welcome_message
TIMES 510 - ($ - $$) DB 0

DW 0xAA55
