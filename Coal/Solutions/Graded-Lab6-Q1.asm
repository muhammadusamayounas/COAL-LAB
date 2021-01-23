[org 0x0100]

jmp start

count: db 0 

start:

 mov ax,0xCD45; moving 0xCD45 into AX.
 mov cx,16; moving the count of AX which is 16 into CX.
 
 l1:
		sar ax,1; shifting arithmetic right AX.
		jc l2; If carry flag is set then jump to label l2.
		sub cx,1; decrementing the count.
		jnz l1; If CX is not equal to zero then again jump to label l1.
		jmp exit; else jump to exit.
		
 l2:
		add byte [count],1; Adding 1 in count variable.
		sub cx,1; decrementing the count.
		jnz l1; If CX is not equal to zero then again jump to label l1.
 
exit:

 mov ax,0x4c00; Program terminated.
 int 0x21