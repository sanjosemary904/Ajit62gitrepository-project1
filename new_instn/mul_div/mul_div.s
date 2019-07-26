.data
	a:	.word 0xc
	b:	.word 0x3
	c:	.word 0x2
	d:	.word 0x3
.text
.global main
main:
start:	set a, %g1
	ld [%g1], %g2
	set b,  %g1
	ld [%g1], %g3
	set c , %g1
	ld [%g1], %g4
	set d, %g1
	ld [%g1], %g5

        umuld  %g2, %g4, %g6   
        udivd   %g2, %g4, %l0  

end:    ta 0
