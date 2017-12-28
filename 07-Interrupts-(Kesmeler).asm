data segment
hello db "  merhaba assembly$"  
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    mov ah,01        ; klavyeden karakter okur
    int 21h
    
    
    mov ah,09        ; hello metnini ekrana yazdirir
    lea dx,hello
    int 21h

; interrupt'lar kutuphane gibi dusunulebilir.
; 21h kutuphanesinden 01 nolu, 09 nolu fonksiyonu kullan gibi..
; fonksiyon numarasini ah ile belirtiyoruz.
; farkli interruptlara internet uzerinden bakabilirsinizi..
    
    mov ax, 4c00h
    int 21h  
     
ends
end start