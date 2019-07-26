.text
.global main
main:
start:  mov 0x0003, %g2
        mov 0x0000, %g3
        mov 0x0004, %g4
        mov 0x0000, %g5

        vsubd8 %g2, %g4, %g6
	vsubd16 %g2, %g4, %g6
	vsubd32 %g2, %g4, %g6
        ta 0

