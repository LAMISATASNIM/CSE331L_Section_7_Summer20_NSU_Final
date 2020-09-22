
 .MODEL SMALL
 .STACK 100H

 .DATA    
 NUMBER DB ?
 MSG1 DB "ENTER THE INT : $"
 MSG DB "THE NUMBER IS ODD $"
    
 .CODE
   MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    

   MOV AX,11
   TEST AX,1
   
   MOV AH,9 
   LEA DX,MSG
   INT 21H
   




     MOV AH, 4CH                  
     INT 21H 
     
     
    MAIN ENDP
   
   
END MAIN