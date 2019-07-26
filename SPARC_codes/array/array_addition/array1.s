
.text
.global main
main:
_start:	mov %g0, %y
	set 0x01, %i0
	ld [%i0], %g1
	set 0x02, %i0
	ld [%i0], %g2
	set 0x3, %i0
	ld [%i0], %g3
	set 0x4, %i0
	ld [%i0], %g4
	set 0x5, %i0
	ld [%i0], %g5
	set 0x6, %i0
	ld [%i0], %g6
	set 0x7, %i0
	ld [%i0], %g7
	set 0x8, %i0
	ld [%i0], %i4

	set i, %l0
	ld [%l0], %i1
	set j, %l0
	ld [%l0], %i2
	set k, %l0
	ld [%l0], %i3
	
	set 0x00, %l0
	ld [%l0], %l4
	
	smul %g1, %g5, %l3
	add %l4, %l3, %l4
	
	add %i3, 1, %i3
	smul %g2, %g7, %l3
	add %l3, %l4, %l4
	set a, %i0
	st %l4, [%i0]
	ta 0

