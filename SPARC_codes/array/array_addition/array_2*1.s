.data 
	a:	.word 0x1
	b:	.word 0x2
	c:	.word 0x3
	d:	.word 0x4
	e:	.word 0x5
	f:	.word 0x6

.text 
.global main
main:

start:	mov %g0, %y
	set a, %g1
	ld [%g1], %g2 
	set b, %g1
	ld [%g1], %g3
	set c, %g1
	ld [%g1], %g4 
	set d, %g1
	ld [%g1], %g5
	set e, %g1
	ld [%g1], %g6 
	set f, %g1
	ld [%g1], %g7

	smul %g2, %g6, %g2
	smul %g3, %g7, %g3
	add %g2, %g3, %g2
	
	set a, %g1
	st %g2, [%g1] 
	
	smul %g4, %g6, %g4
	smul %g5, %g7, %g5
	add %g4, %g5, %g4
	
	set b, %g1
	st %g4, [%g1] 

end:	ta 0
