.text 
.global main
main:
start:	mov 1, %g2
	mov 0, %g3

	mov 1, %g6
	mov 0, %g7	

        !addd %g2, %g6, %g4
	slld %g2, 4, %g6
	!srld %g2,2, %g4
	!srad %g2, 2, %l0
	ta 0


