data segment
    str1 db "movsdene$"
    str2 db 9 dup(?)
    str3 db 9 dup(?)
ends

stack segment
    dw   128  dup(0)
ends

code segment
ana proc far          ; proc far -> farkli segmentlerden cagrilabilir
    mov ax, data
    mov ds, ax
    mov es,ax 
    
    call duz:
    call ters:
    
    duz proc near     ; proc near -> farkli segmentlerden cagrilamaz
        lea si,str1   ; source index (kaynak)
        lea di,str2   ; defination index (hedef)
        mov cx,9
        rep movsb
    duz endp
    
    
    ters proc near      ; proc near -> farkli segmentlerden cagrilamaz                          
        lea si,str1+8   ; source index (kaynak)
        lea di,str3+8   ; defination index (hedef)
        mov cx,9  
        std
        rep movsb
    ters endp
    
    mov ax, 4c00h
    int 21h
        
ends
end ana

;cld   -> kopyalama islemini soldan saga yap
;std   -> kopyalama islemini sagdan sola yap
;kopyalama turunu girmezsek, default olarak cld ile islem yapar    
;movsb -> mov islemini byte olarak gerceklestir..
;movsw -> mov islemini word olarak gerceklestir..
;rep   -> MOVSB,MOVSW,LODSB,LODSW,STOSB,STOSW komutlarý icin dongu ifadesi
