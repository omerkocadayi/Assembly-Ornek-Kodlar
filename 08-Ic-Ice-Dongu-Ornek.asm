data segment
    x dw 6
    y dw 7       
ends      

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
              
    mov cx,5  ; loop'ta sayac olarak cx register'ini kullaniyoruz
    mov ax,2
    
    
    dongu1:
        inc ax
        dongu2:
            add ax,x
            sub ax,y
            dec y
            cmp y,0
            je call son
            cmp y,4
            ja dongu2:    
    loop dongu1:
    
    son proc
        mov ax, 4c00h
        int 21h
    son endp 
ends
end start