.seg "text"
	.global _main
	.align 4
	.proc 4
_main:	save %sp, -96, %sp	! allocate stack space, advance register window
	set 0, %l0		! i = 0
	set 5, %l1		! upper bound	
	set _b, %l2		! base address
	set 0, %l3		! total
	
L1:	
	cmp %l0, %l1		! i < n
	bge L2
	nop
	sll %l0, 2, %l4
	ld [%l4+%l2], %l4	! %l4 = a[i]
	add %l3, %l4, %l3	! total = total + a[i]
	add %l0, 1, %l0		! i++
	ba L1
	nop
L2:	
	set str, %o0
	mov %l3, %o1
	call _printf            ! printf("%d\n", total)
	nop

	ret; restore            ! return to caller.


