.data 
	a:	.word 0x1
	b:	.word 0x2
	c:	.word 0x3
	d:	.word 0x4

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

	smul %g2, %g4, %g2
	smul %g3, %g5, %g3
	add %g3, %g2, %g2

	set a, %g1
	st %g2, [%g1]
	
end:	ta 0
