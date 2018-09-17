;multiply

lxi h, 0001
mov b, m
lxi h, 0002
mov c, m
loop: add b
dcr c
jnz loop
sta 0003

hlt