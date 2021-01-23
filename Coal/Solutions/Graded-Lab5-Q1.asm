[org 0x0100]

jmp start

Value: db 0xAB, 0X12 ,0XEF, 0X87, 0XAA, 0X77 ,0X7F, 0XF3 ,0X3F, 0XAB
total : db 0

start:

 mov bx,Value; Storing the address of 1st index of Value array in BX.
 mov cl,10; Storing the count of numbers in CX which is 10.

 l1:

	mov al,[bx]; Moving the value at the address of BX in al.
	cmp al,130; Comparing value in Al with 130.
	ja l2; If value in AL is greater than 130 then jump to label l2.

 l3:

	add bx,1; incrementing BX.
	sub cl,1; Decrementing CL.
	jnz l1; If cl is not 0 then again jump to label l1.
	jmp exit; otherwise jump to end label.

 l2:
	mov al,1; Moving 1 in the value of AL.
	add [total],al; Incrementing total.
	jmp l3; Jump to label l3.

exit:

	mov ax,0x4c00; Program terminated.
	int 0x21
