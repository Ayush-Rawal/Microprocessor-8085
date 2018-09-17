lda 0001 ;no of elements in array
mov c,a
lxi h, 0003 ;first element
lda 0000 ;number to be searched
mov b, a
search: cmp m ; c on A < M, z on eq, c and z otherwise
jc search
jz found
dcr c
jz notFound
inx h
mov a, b
jmp search

found: mov a, h
sta 0301h
mov a, l
sta 0300h
notFound: hlt