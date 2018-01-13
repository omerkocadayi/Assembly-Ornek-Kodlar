data segment
    str1 db "cmpsdene$"
    str2 db "cmpsdene$"
    x db "esit$"
    y db "esitdegil$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
ana proc far          
    mov ax, data
    mov ds, ax
    mov es,ax 
    
 
    lea si,str1   
    lea di,str2   
    mov cx,8
    
    repe cmpsb  ;repe -> repeat while equal  
    je esit
    
    mov ah,09h
    lea dx,y
    int 21h       
    jmp son
    
    esit:
        mov ah,09h
        lea dx,x
        int 21h
    
    son:
    mov ax, 4c00h
    int 21h    
ends
end ana

;rep    -> repeat
;repe   -> repeat while equal
;repne  -> repeat while not equal