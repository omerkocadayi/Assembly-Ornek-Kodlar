data segment
    sayi db 15
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax, data
    mov ds, ax
    mov es, ax
    
    ;AND     
    mov al,B5h
    and al,0Fh
                   
    ;OR           
    or al,00010000b          
              
    ;Mod Alma
    mov al,sayi
    and al,1
    
    ;SHR (Shift Right)
    mov al,30h
    shr al,01   ;al = 18h
    shr al,01   ;al = 0Ch
    
    ;SHL (Shift Left)
    shl al,01   ;al = 18h
    shl al,01   ;al = 30h
              
    mov ax, 4c00h
    int 21h  
ends
end start

;SAR (Shift Arithmetic Right)
    ;1 bit kaydirilir. en sag bitin degeri de kaydirilir, eski degeri korunur.

;SAL (Shift Arithmetic Left)
    ;1 bit kaydirilir. en sol bitin degeri de kaydirilir, eski degeri korunur.                                                                                                                                        
    
;ROR - ROL (Rotate Right-Left)
    ;Rotate komutlarinda sayi kaybolmaz.
    ;Sagdan-sola veya soldan-saga bitlerdeki degerler Carry bayragina duser.
    ;Sonrasinda Carry bayragindaki deger son bite yerlesir.    