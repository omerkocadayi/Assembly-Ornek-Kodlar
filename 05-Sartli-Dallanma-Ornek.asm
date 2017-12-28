data segment
         
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    mov ax,20
    mov bx,0   
    
    dongu:
        sub ax,bx
        dec ax      ; ax'i 1 azalt
        inc bx      ; bx'i 1 artýr
        cmp ax,5    ; ax ile 5'i karsilastir
        ja dongu    ; ax 5'ten buyukse donguye'git (jump if above)
     
ends

end start