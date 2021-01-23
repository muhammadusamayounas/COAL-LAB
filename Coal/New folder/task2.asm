[org 0x100]
jmp start

str1 db '*******'
str2 db '*******'
str3 db '*******'
str4 db '*******'
str5 db '*******'

	
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
	mov di,1600
	mov ah,0x0f
	mov cx,7
	add di,74
	call display
	mov ax, 0xb800
	mov es, ax
	mov si,str2
	mov di,1760
	mov ah,0x0f
	mov cx,7
	add di,74
	call display
	mov ax, 0xb800
	mov es, ax
	mov si,str3
	mov di,1920
	mov ah,0x0f
	mov cx,7
	add di,74
	call display
	mov ax, 0xb800
	mov es, ax
	mov si,str4
	mov di,2080
	mov ah,0x0f
	mov cx,7
	add di,74
	call display
	mov ax, 0xb800
	mov es, ax
	mov si,str5
	mov di,2240
	mov ah,0x0f
	mov cx,7
	add di,74
	call display


   again:
   MOV AH, 0 
   INT 0x16 


  MOV AH,07h 
  STOSW 
  cmp al, 0x51  ; PROGRAM WILL TERMINATE ON PRESSING LARGE Q 
  jne again
	

	
mov dh, 0x48
mov dl, 0x4B
mov bh, 0x4D
mov ah, 0x50

	
	
		
mov ax,0x4c00
int 21h

