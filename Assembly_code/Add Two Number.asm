.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
         MOV AH,1
         INT 21H
        
         MOV BL,AL
         INT 21H
        
         MOV CL,AL
    
         ADD BL,CL    ; BL= BL+CL       
         
         ;FOR SUBTRACT: SUB BL,CL    ; BL= BL-CL
         
         
         MOV AH,2
         MOV DL,0DH
         INT 21H       ; FOR NEW LINE
         MOV DL,0AH
         INT 21H
                
    
         MOV AH,2 
         SUB BL,48   ; BCZ 48 BESHI PRINT    ; FOR SUBTRACT ADD BL,48              
         MOV DL,BL   ; KORTECHE. KORLE 
         INT 21H     ; CHARACTER CHOLE ASHE 
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    