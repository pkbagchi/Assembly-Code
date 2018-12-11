INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE
.DATA

MAIN PROC
    
    MOV BL,1
    MOV CL,1
    MOV BH,5
    MOV CH,1
    MOV AH,1
    
    MOV AH,2     
    
    SPACE:
        CMP CH,AH
        JE  FOR1
        PRINT ' '
        INC CH
        JMP SPACE
    
    FOR1:  
        CMP BL,5
        JG EXIT
        
    PRINTING:
        CMP CL,BH  
        JG SESH
        PRINT '* '
        INC CL
        JMP PRINTING
    SESH:
        PRINTN ''    
        MOV CL,1
        INC BL 
        DEC BH  
        INC AH   
        MOV CH,1
        JMP SPACE
    EXIT:
        
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN