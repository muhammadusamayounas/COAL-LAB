[org 0x0100]

mov bx,Num5; storing address of Num5 in BX.
add ax,[bx]; adding value of Num5 in AX.
mov cl,[bx-1]; storing the value of Num4 in Cl.
add ax,cx; Adding AX and CX and storing value in AX.
add ax,[bx-3]; Adding the value of Num3 in AX and storing it in AX. 
mov cl,[bx-4]; storing the value of Num2 in Cl.
add al,cl; Adding Al and Cl and storing value in Al.
mov cl,[bx-5]; storing the value of Num1 in Cl.
add ax,cx; Adding AX and CX and storing value in AX.
mov cl,[bx+2]; storing the value of Num6 in Cl.
add ax,cx; Adding AX and CX and storing value in AX.
add ax,[bx+3]; Adding the value of Num7 in AX and storing it in AX. 
add ax,[bx+5]; Adding the value of Num8 in AX and storing it in AX. 
mov cl,[bx+7]; storing the value of Num9 in Cl.
add ax,cx; Adding AX and CX and storing value in AX.
add ax,[bx+8]; Adding the value of Num10 in AX and storing it in AX. 
mov [SUM],ax; storing the Sum of all numbers present in AX into SUM variable.

mov ax,0x4c00; program terminated.
int 0x21

Num1: db 17
Num2: db -50
Num3: dw 0xFACD
Num4: db 250
Num5: dw -100
Num6: db 254
Num7: dw 3400
Num8: dw 0xA2AB
Num9: db 65h
Num10: dw 0x453
SUM: dw 0
