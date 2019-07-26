.data
a:	.word 0x1
	.word 0x2
	.word 0x3
	.word 0x4
	.word 0x5
	.word 0x6

	.word 0x1
	.word 0x2
	.word 0x3
	.word 0x4
	.word 0x5
	.word 0x6

row1:	.word 0x2
col1:	.word 0x3

row2:	.word 0x3
col2:	.word 0x2

result:	.word 0x0

.text
.global main
main:

start:	set col1, %g1
	ld [%g1], %g2
	set row2, %g1
	ld [%g1], %g3
	set row1, %g1
	ld [%g1], %g6
	set col2, %g1
	ld [%g1], %l5
	set result,%l6
	
	subcc %g2, %g3, %i0
	bne exit
	nop
	
	
	mov %g0, %g4 	!j=0
	add %g4,1,%g4
loop1:	mov %g0, %g5 	!i=0
	add %g5,1,%g5
	
loop2:	sub %g4,1, %l7
	smul %g2,%l7,%l0   !l0 = c1 * (j-1)	
	smul %g6,%g2,%i2  	! l1=r1*c1 +(i-1)
	add %g5, %i2, %l1
	sub %l1,1, %l1

	mov %g0, %l4	!sum = 0

	mov %g0, %g7 	!k=0
	add %g7,1,%g7
loop3:	set a,  %g1
	smul %l0, 4, %i5
	add %g1, %i5, %g1	
	ld [%g1], %l2

	set a,  %g1
	smul %l1, 4, %i3
	add %g1, %i3, %g1	
	ld [%g1], %l3
	
	smul %l2,%l3, %l3
	add %l3,%l4,%l4
	
	inc 1,%l0
	smul %l5, 4, %i4
	add %i4, %i3,%i3
	add %l1, %l5,%l1
	
	
	subcc %g7, %g2, %i0
	bne loop3
	inc 1,%g7

	
	st %l4, [%l6] 	!store sum
	inc 4, %l6
	


	
	subcc %g5, %l5, %i0
	bne loop2
	inc 1,%g5

	
	subcc %g4, %g6, %i0
	bne loop1
	inc 1,%g4
	
	
	set result, %g1
	ld [%g1], %g2 
	inc 4, %g1
	ld [%g1], %g3 
	inc 4, %g1
	ld [%g1], %g4 
	inc 4, %g1
	ld [%g1], %g5 
	inc 4, %g1
	
exit:	ta 0
	

	
	
	
	
	
	
	
	
	
