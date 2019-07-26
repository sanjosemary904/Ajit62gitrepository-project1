.data
	a:	.word 0x0000000f
	b:	.word 0x00000000
	c:	.word 0x00000001
.text 
.global main
main:
start:	set a, %g1
	ld [%g1], %g2
	set b, %g1
	ld [%g1], %g3
	set c, %g1
	ld [%g1], %g6

	slld %g2, %g6, %l2
	srld %g2, %g6, %g4
	srad  %g2,%g6, %l0
	ta 0

