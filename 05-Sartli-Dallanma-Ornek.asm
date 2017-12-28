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
