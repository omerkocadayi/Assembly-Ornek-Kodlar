data segment 
    sonuc dw ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
            
    mov ax,10
    mov bx,4
    call carp       ; prosedur cagirma
    mov sonuc,ax
    
    mov ax, 4c00h   ; exit
    int 21h  
    
    carp proc       ; prosedur tanimlama
        mul bx
        ret
    carp endp       ; prosedur sonu
     
ends
end start