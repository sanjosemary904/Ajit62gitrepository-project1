.data
x:	.word 0
y:	.word 0x9
z:	.word 0x42

.text
.global main 
main:
start:	set y, %g1
	ld [%g1], %g2
	set z, %g1
	ld [%g1], %g3
	mov %g0, %g4
	
	add %g2, 1, %g2
top:	subcc %g2, 1, %g2
	add %g4, %g3, %g4
	bg top
	nop
	set x, %g1
	st %g4, [%g1]
end:	ta 0












