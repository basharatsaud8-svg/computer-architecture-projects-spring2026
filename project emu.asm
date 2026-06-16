TITLE Basic Logic Gates Simulation

.MODEL SMALL
.STACK 100H

.DATA
input1 DB 1
input2 DB 0

msg1 DB 13,10,'AND Gate Output: $'
msg2 DB 13,10,'OR Gate Output: $'
msg3 DB 13,10,'NOT Gate Output: $'
msg4 DB 13,10,'XOR Gate Output: $'

.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    ; AND Gate
    MOV AL,input1
    AND AL,input2
    MOV BL,AL

    LEA DX,msg1
    MOV AH,09H
    INT 21H

    MOV DL,BL
    ADD DL,'0'
    MOV AH,02H
    INT 21H

    ; OR Gate
    MOV AL,input1
    OR AL,input2
    MOV BL,AL

    LEA DX,msg2
    MOV AH,09H
    INT 21H

    MOV DL,BL
    ADD DL,'0'
    MOV AH,02H
    INT 21H

    ; NOT Gate
    MOV AL,input1
    NOT AL
    AND AL,01H
    MOV BL,AL

    LEA DX,msg3
    MOV AH,09H
    INT 21H

    MOV DL,BL
    ADD DL,'0'
    MOV AH,02H
    INT 21H

    ; XOR Gate
    MOV AL,input1
    XOR AL,input2
    MOV BL,AL

    LEA DX,msg4
    MOV AH,09H
    INT 21H

    MOV DL,BL
    ADD DL,'0'
    MOV AH,02H
    INT 21H

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN
