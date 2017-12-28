data segment
x dw 3                                      
y dw 40
sonuc dw ?         ;ici bos degisken tanimlama
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    ; carpma islemi sonucu her zaman ax register'inin icerisine atanir
    ; bolunen deger her zaman ax register'idir.
    
    mov ax,8
    mov bl,2
    mul bl          ; ax*bl 'nin sonucunu AX'e ata
    mul x           ; ax*x  'in sonucunu AX'e ata  
    
    mov sonuc,ax    ; ax degerini sonuc degiskenine ata
    
    div y           ; ax/y 'nin sonucunu AX'e ata
    
    ; bolme islemini db degisken ile yaparsak kalan AH'a
    ; dw degisken ile yaparsak kalan DX register'ina atanir
                
    mov ax, 4c00h   ; exit
    int 21h    
ends

end start