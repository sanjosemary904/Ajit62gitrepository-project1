.data
a:.word 0x05
b:.word 0x04
c:.word 0x03
d:.word 0x02
e:.word 0x01
f:.word 0x06
g:.word 0x05
.text

.global main
main:
_start:	set a, %g1
	ld [%g1], %g3
	set b, %g1
	ld [%g1], %g4
	set c, %g1
	ld [%g1], %g5
	set d, %g1
	ld [%g1], %g6
	set e, %g1
	ld [%g1], %g7
	set f, %g1
	ld [%g1], %l2
	set g, %g1
	ld [%g1], %l3
	sub %l2,1,%l2
	ba test
	nop
loop:	sub %l3,1,%l3
	cmp %g3, %g4
	bl  goto
	nop
	mov %g3, %g2
	mov %g4, %g3
	mov %g2, %g4
	cmp %g4, %g5
	bl goto
	nop
	mov %g4, %g2
	mov %g5, %g4
	mov %g2, %g5
	cmp %g5, %g6
	bl goto
	nop
	mov %g5, %g2
	mov %g6, %g5
	mov %g2, %g6
	cmp %g6, %g7
	bl goto
	nop
	mov %g6, %g2
	mov %g7, %g6
	mov %g2, %g7
test:   bne loop
	nop
goto: 	set a, %g1
	st %g3, [%g1] 
	set b, %g1
	st %g4, [%g1]
	iset c, %g1
	st %g5, [%g1]
	set d, %g1
	st %g6, [%g1]
	set e, %g1
	st %g7, [%g1]
	set g, %g1
	st %l2, [%g1]
	set f, %g1
	st %l3, [%g1]
	ta 0
