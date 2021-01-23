[org 0x100]
jmp start

str1 db 'Divident'
str2 db ':18'
str3 db 'Divisor:'
str4 db ' 4'
str5 db 'Quotient:'
str6 db '4'
str7 db 'Remainder:'
str8 db '2'
comma db ','


print:
	Mov [es:di],ax;
	add di,2
	mov al,[comma]
	Mov [es:di],ax;
	add di,2
	
RET	
	
display:
	
l1:
	Mov al, [si];		
	Inc si				
	Mov [es:di],ax;			
	Add di,2;			
	loop l1
	
	
	

	
RET	


start:
	mov ax, 0xb800
	mov es, ax
	mov si,str1
	mov di,0
	mov ah,0x0f
	mov cx,8
	add di,72
	call display
	mov si,str2
	mov ah,0x09
	mov cx,3
	call display
	
	
	mov si,str3
	mov di,160
	mov ah,0x0f
	mov cx,7
	add di,72
	call display
	mov si,str4
	mov ah,0x0A
	mov cx,2
	
	
	
	
	call display
	mov si,str5
	mov di,1600
	mov ah,0x4f
	mov cx,9
	add di,72
	call display
	mov si,str6
	mov ah,0x4E
	mov cx,1
	call display
	
	
	mov si,str7
	mov di,1760
	mov ah,0x0f
	mov cx,10
    add di,72
	call display
    mov si,str8
	mov ah,0x4E
	mov cx,1
	call display
	
	
	
	
		
mov ax,0x4c00
int 21h

