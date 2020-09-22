

.MODEL SMALL 
.STACK 100H
.DATA
    INT1 DB ?
    INT2 DB ?
    RESULT DB ?
    
    MSG DB 10,13, "ENTER INT 1 : $"
    MSG1 DB 10,13,"ENTER INT 2 : $"
    MSG2 DB 10,13, "SMALLEST INT : $"
    
.CODE                

    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9
        LEA DX,MSG
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV INT1,AL
        
        MOV AH,9
        LEA DX,MSG1
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV INT2,AL
        
        MOV AH,9
        LEA DX,MSG2
        INT 21H
        
        MOV AL,INT1
        CMP AL,INT2
        JG FIRST
        
        FIRST :
        MOV AH,2
        MOV DL,INT1
        INT 21H
       
        
        JMP EXIT
                 
        SECOND :
        MOV AH,2
        MOV DL,INT2
        INT 21H 
        
        JMP EXIT
        
        
        EXIT :
        MOV AH,4CH
        INT 21H
        
        
        
        

        
    ENDP MAIN
    
END MAIN
        
        
        