data segment
x db 3        ;8 bitlik sayi tanimlama
y db 2,4,6,8  ;dizi tanimlama
z dw 5        ;16 bitlik sayi tanimlama
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    ;mov si,offset y    ; dizinin baslangic adresini alir
    lea si,y            ;" mov si,offset y " komutu ile ayni
    
    mov bx,9        ;anlik adresleme
    mov ax,bx       ;kaydedici adresleme
    mov ax,z        ;dogrudan adresleme
    mov ax,[si]     ;dolayli adresleme(dizinin 0. indisini atar)
    mov ax,[si+3]   ;index adresleme  (dizinin 3. indisini atar)
                
                
    mov ax, 4c00h   ;exit
    int 21h    
ends

end start