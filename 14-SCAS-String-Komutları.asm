data segment
    str db "qarabuq universitesi$"
    altsatir db  0ah,0dh,24h
ends

stack segment
    dw   128  dup(0)
ends

code segment
ana proc far          
    mov ax, data
    mov ds, ax
    mov es,ax 
    
    lea dx,str
    mov ah,09h
    int 21h         ;orjinal metni ekrana yazdik
    
    lea dx,altsatir
    mov ah,09h
    int 21h         ;alt satira gectik
              
              
    mov al,'q'
    mov bl,'k'
    lea dx,str
    mov cx,20
     
    dongu:          
    repne scasb     ;str'deki harfler sirayla q ile karsilastiriliyor
    jne yaz
    mov [di-1],bl   ;q harfi bulunduysa k olarak degisiyor
    jmp dongu
    
    yaz:
    mov ah,09h
    lea dx,str      ;degisen metni yaziyoruz
    int 21h
    
    mov ax, 4c00h
    int 21h    
ends
end ana 

;altsatir db  0ah,0dh,24h  ->   bu tanimi ekrana cikti
;verirken bir alt satira gecmek icin kullaniyoruz 

   

