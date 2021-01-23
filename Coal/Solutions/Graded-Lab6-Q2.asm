[org 0x0100]

jmp start

Value: db 0xAB, 0x7E, 0xAB, 0xED, 0x4B, 0x44, 0xAA, 0xCC, 0x12, 0xEE
count: db 0

start:

 mov bx,0; moving starting index of array in BX.
 mov cl,10; moving the count of array values which is 10 into CX.

 l1:
		mov al,[Value+bx]; moving respective array index value into AX.
		and al,1; Checking if the value of AX is even or odd.
		jnz l2; if value is odd the jump to label l2.
		add bx,1; increment to next address.
		sub cx,1; decrementing the count.
		jnz l1; If CX is not equal to zero then again jump to label l1.
		jmp exit; else jump to exit.
		
 l2:
		add byte [count],1; Adding 1 in count variable.
		add bx,1; incrementing to next address.
		sub cx,1; decrementing the count.
		jnz l1; If CX is not equal to zero then again jump to label l1.
 
exit:

 mov ax,0x4c00; Program terminated.
 int 0x21