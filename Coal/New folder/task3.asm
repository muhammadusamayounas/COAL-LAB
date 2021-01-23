[org 0x100]
jmp start

str1 db 'Enter the first offset:'
str2 db 'Enter the Second offset:'


	
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
	mov cx,23
	call display
	mov ax, 0xb800
	mov es, ax
	mov si,str2
	mov di,320
	mov ah,0x0f
	mov cx,24
	call display


mov di,160
again:
MOV AH, 0
INT 0x16 

MOV AH,07h 
STOSW 
cmp al, 0x1b
jne again


	
	
		
mov ax,0x4c00
int 21h

