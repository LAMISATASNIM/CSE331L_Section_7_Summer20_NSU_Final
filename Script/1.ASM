

.MODEL SMALL 
.STACK 100H
.DATA
    MSG DB "ENTER THE UPPER CASE LETTER : $" 
    MSG1 DB 0DH,0AH, "THE LOWER CASE LETTER IS : $"
 
.CODE 
    MAIN PROC 
            MOV AX,@DATA
            MOV DS,AX
            
            MOV AH,9
            LEA DX,MSG 
            INT 21H
            
            MOV AH,1
            INT 21H
            
            MOV BL,AL
            
            MOV AH,9
            LEA DX,MSG1 
            INT 21H
            
            OR BL,20H   
            
            MOV AH,2
            MOV DL,BL
            INT 21H 
            
            MOV AH,4CH
            INT 21H
            
            MAIN ENDP
    END MAIN
                  