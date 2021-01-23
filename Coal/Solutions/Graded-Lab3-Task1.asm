[org 0x0100]
mov ax,[A]; load value of  A in ax.
add ax,[B]; add value of B in value of ax and store in ax.
add ax,[C]; add value of C in value of ax and store in ax.
;step 1

mov cx,[A]; load value of A in cx.
sub cx,[C]; subtract value of C from value of cx and store result in cx.
;step 2

mov dh,ah; load value of of ah in dh.
sub dh,cl; Subtract value of cl from dh and store result in dh.
;step 3

mov ax,0x4c00
int 0x21

A: dw 150
B: dw 30
C: dw 20