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
              
    mov cx,5  ; dongulerde sayac olarak cx register'ini kullaniyoruz
    mov ax,2
    
    dongu:
    add ax,x
    sub ax,y
    inc ax
    dec y
    loop dongu
    
    mov ax, 4c00h
    int 21h
     
ends
end start