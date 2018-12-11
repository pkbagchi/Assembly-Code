.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1   ; INPUT
    INT 21H  
    MOV BL,AL 
    
    ; DECIMAL WAY...... 
    
    ;MOV AH,2   ;FOR SHOWING OUTPUT
    ;MOV DL,10
    ;INT 21H
    ;MOV DL,13
    ;INT 21H 
    
    ; HEXA DECIMAL WAY.....
    
    MOV AH,2
    MOV DL,0AH
    INT 21H      ; { NEW LINE }
    MOV DL,0DH
    INT 21H

    
    
    MOV AH,2    ; OUTPUT
    MOV DL,BL   
    INT 21H
              
              
    MOV AH, 4CH
    INT 21H     ; EXIT
    MAIN ENDP
END MAIN