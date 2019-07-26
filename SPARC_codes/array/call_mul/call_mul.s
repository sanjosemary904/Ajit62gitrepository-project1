.data
a:	.word 0x3
b:	.word 0x4

.text 
.global main
main:

start:	set a, %g1
	ld [%g1], %o0
	set b, %g1
	ld [%g1], %o1

	call .mul
	nop
	
	mov %o2, %g1	
end:	ta 0	

.mul:	save	
	smul %i0,%i1,%i2
	ret
	restore
	





