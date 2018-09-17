; count +ves, zeroes and -ves

lxi h, 0000h ;no of elements in array
mov b, m
lxi h, 0001h ;first element

count: cmp m ; c on A < M, z on eq, c and z otherwise
jc nonZero
jz zero
move: dcr b
jz stop
inx h
lda 0300h ;this is resetting a
jnz count

nonZero: jz negative
jnz positive


positive: inr c
jmp move

zero: inr d
jmp move

negative: inr e
jmp move

stop: mov a, c
sta 0200h
mov a, d
sta 0201h
mov a, e
sta 0202h
hlt
