.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV CX,10
    
    TOP:
    MOV AH,2
    MOV DL,'*'
    INT 21H
    
    LOOP TOP