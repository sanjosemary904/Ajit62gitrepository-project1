.data
a:	.word 0x5
	.word 0x4
	.word 0x3
	.word 0x2
	.word 0x1
num:	.word 0x5
result:	.word 0x0

.text
.global main
main:

start:	set num, %g1
	ld [%g1], %g2	
	set result, %l0

	sub %g2,1,%g2	!n-1

	mov %g0, %i0	!i=0
	
	mov %g0, %i1	!j=0
loop1:	sub %g2, %i0, %i4	!n-1-i

	mov %g0, %i3	!fetching array	

loop2:	set a, %g1
	smul %i3, 4, %i3
	add %g1, %i3, %g1
	ld [%g1], %g3

	add %i3,1,%i5

	set a, %g1
	smul %i5, 4, %i5
	add %g1, %i5, %g1
	ld [%g1], %g4

	cmp %g3,%g4
	bl goto
	nop
	mov %g3, %i2
	mov %g4, %g3
	mov %i2, %g4

!goto:	st %l1, [%l0]
	!inc 4, %l0

	inc 1, %i3
	subcc %i1, %i4, %i6
	bne loop2
	inc 1, %i1
	
	subcc %g2,%i0,%i6
	bne loop1
	inc 1, %i0	

	set result, %l0
	ld [%l0], %g3 
	inc 4, %l0
	ld [%l0], %g4 
	inc 4, %l0
	ld [%l0], %g5 
	inc 4, %l0
	ld [%l0], %g6 
	inc 4, %l0
	ld [%l0], %g7 
	inc 4, %l0
	
	ta 0
	
	
	

