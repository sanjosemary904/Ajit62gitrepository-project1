.global main
main:

start:	mov 9, %o0

	call sum 
	nop

	mov %o0, %g1
	ta 0

do_calculation:
	mov 1, %i0
	ret
	restore

sum:	save %sp, -64, %sp
	cmp %i0, 1

	be do_calculation
	nop

	sub %i0,1, %o0

	call sum
	nop

	add %i0, %o0, %i0

	ret 
	restore
