data segment
         
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    mov ax,30
    mov bx,2  
                                  
    sartsiz:
        inc bx
                                                
    sartli:
        add ax,bx
        dec ax
        cmp bx,10
        je sartli
    
    jmp sartsiz       ;sonsuz dongu
    
    mov ax, 4c00h
    int 21h  
     
ends
end start

;ja    = jump if above
;jb    = jump if below
;je    = jump if equal
;jae   = jump if above or equal
;jbe   = jump if below or equal
;jna   = jump if not above
;jnb   = jump if not below     
;jne   = jump if not equal
;jnae  = jump if not above or equal
;jnbe  = jump if not below or equal