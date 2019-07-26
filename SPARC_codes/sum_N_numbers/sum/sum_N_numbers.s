.text
.global main
main:

start:	mov 64,%o0
	call sum 
	nop
	mov %o0,%g1
	ta 0

sum:	save  %sp, -64, %sp

	cmp %i0, 1
	bne goto
	nop

	mov 1, %i0
	ret

goto:	sub %i0,1, %o0
	call sum
	nop
	
	add %i0, %o0, %i0


	ret
	restore	
	
	
	
