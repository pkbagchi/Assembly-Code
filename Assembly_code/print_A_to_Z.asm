.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV CX,26
    MOV DL,65
    
    TOP:
    MOV AH,2
    INT 21H
    INC DL
    
    LOOP TOP