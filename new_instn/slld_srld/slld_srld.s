
.text 
.global main
main:
start:	mov 0xf, %g2
	mov 0, %g3
	mov 0x1, %g4
	mov 0, %g5	

	slld %g2, 2, %l2
	srld %g2, 2, %g6
	srad  %g2,%g4, %l0
	ta 0

