.text
.global main
main:
start:	mov 4, %g2
	mov 0, %g3

	mov 4, %g4
	mov 0, %g5

	subdcc %g2, %g4, %g0

	bne else
	nop

	slld %g2,2,%g2
	
end:	ta 0

else:	srld %g2,1,%g2
	ba end


