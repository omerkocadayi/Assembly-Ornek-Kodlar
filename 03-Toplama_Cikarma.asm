data segment
x dw 3
y db 6,4,2
z dw 5  
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    lea si,y
    mov ax,10
          
    add ax,2  ;toplama
    sub ax,8  ;cikarma
    
    add ax,[si+1]  
    
    add ax,x
    sub ax,z
                
                
    mov ax, 4c00h   ;exit
    int 21h    
ends

end start