

.MODEL SMALL 
;. STACK 100H
.DATA
    INT1 DB ?
    INT2 DB ?
    RESULT DB ?
    
    MSG DB 10,13, "ENTER INT 1 : $"
    MSG1 DB 10,13,"ENTER INT 2 : $"
    MSG2 DB 10,13, "MUL : $"
    
.CODE                

    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9
        LEA DX,MSG
        INT 21H
        
        MOV AH,1
        INT 21H
        SUB AL,30H
        MOV INT1,AL
        
        MOV AH,9
        LEA DX,MSG1
        INT 21H
        
        MOV AH,1
        INT 21H
        SUB AL,30H
        MOV INT2,AL
        
        MUL INT1
        MOV RESULT,AL
        
        ADD AH,30H
        ADD AL,30H
        MOV BX,AX
        
        MOV AH,9
        LEA DX,MSG2
        INT 21H 
        
        MOV AH,2
        MOV DL,BL
        INT 21H
        
    ENDP MAIN
    
END MAIN
        
        
        