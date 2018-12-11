INCLUDE 'EMU8086.INC' 
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,2
    
    MOV BL,1
    MOV CL,1
    MOV BH,1
    
    
    LOOP1:
         CMP BL,5
         JG EXIT
         
    LOOP2:
        CMP CL,BH   ; AKHON BH ER VALUE 1  
        JG NEWLINE
        MOV DL,'*'
        INT 21H
        INC CL
        JMP LOOP2
        
        
    NEWLINE:
        PRINT 10    ; FOR PRINTING NEWLINE
        PRINT 13    ; REMOVE EXTRA SPACE
        MOV CL,1    ; CL ER VALUE 5 HOI GECHE SO NEXT BAR LOOP ER VITORE DUKAR JONNO 1 KORE DILAM         
                    ; 5 ER BESHI HOLE EXIT E JABE, SO AI JONNO CL ER VALUE 1 KORA HOLO 
                    
                    
        INC BH      ; AKHANE BH ER VALUE 2,3,4,5 PORJONYO INCREASE HOBE
        INC BL 
        JMP LOOP1 
    
    
    EXIT:
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
