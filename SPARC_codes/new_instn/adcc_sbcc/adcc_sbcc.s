.text
.global main
main:
start:	mov 5, %g2				
	mov 0, %g3				
						
	mov 5, %g4				
	mov 0, %g5				
						
	mov 1, %g6				
	mov 0, %g7

top:	xordcc %g2, %g4, %g2
	
	bne done
	nop

	addd %g2, %g6, %g2

	ba top
	nop

done:	ta 0
