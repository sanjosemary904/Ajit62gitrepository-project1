.data
a:	.word 0x1
	.word 0x2
	.word 0x3
	.word 0x4
	.word 0x5
num:	.word 0x5

.text 
.global main
main:

start:	set a, %g1
	ld [%g1], %o0
	set num, %g2
	ld [%g2], %o1
	
loop2:	subcc %o1, 1, %o1
	be end
	nop
	inc 4, %g1
	ld [%g1], %o2
	call .mul
	nop
	ba loop2
	nop

end:	mov %o0, %g3
	ta 0
	
.mul:	save	
	smul %i0,%i2,%i0
	ret
	restore
	





