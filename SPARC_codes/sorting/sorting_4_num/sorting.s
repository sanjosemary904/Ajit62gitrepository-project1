.data
a:.word 0x04
b:.word 0x05
c:.word 0x03
h:.word 0x02
d:.word 0x00
e:.word 0x00
f:.word 0x05

g:.word 0x05          
.text
.global main
main:
_start:	set a, %g1
	ld [%g1], %g3
	set b, %g1
	ld [%g1], %g4
	set c, %g1
	ld [%g1], %g5
	set f, %g1
	ld [%g1], %l2
	set d, %g1
	ld [%g1], %l1
	set e, %g1
	ld [%g1], %l3
	set h, %g1
	ld [%g1], %g6
	set g, %g1
	ld [%g1], %l4
	
	sub %l1,1,%l4
	cmp %g3, %g4
	bl  goto1
	nop
	mov %g3, %g2
	mov %g4, %g3
	mov %g2, %g4
goto1:  inc %l3
	cmp %l3, %l4
	be goto2
	nop
goto2:	cmp %g4, %g5
	bl goto3
	nop
	mov %g4, %g2
	mov %g5, %g4
	mov %g2, %g5
goto3:  inc %l3
	cmp %l3, %l4
	be goto4
	nop
goto4:  cmp %g5, %g6
	bl goto5
	nop
	mov %g5, %g2
	mov %g6, %g5
	mov %g2, %g6
goto5:  inc %l3
	cmp %l3, %l4
	be outerloop1
	nop

outerloop1:inc %l1
	cmp %l1,%l2
	be goto11
	nop
goto11:	clr %l3
	sub %l4,%l1,%l4
	cmp %g3, %g4
	bl  goto6
	nop
	mov %g3, %g2
	mov %g4, %g3
	mov %g2, %g4
goto6:  inc %l3
	cmp %l3, %l4
	be goto7
	nop
goto7:	cmp %g4, %g5
	bl goto8
	nop
	mov %g4, %g2
	mov %g5, %g4
	mov %g2, %g5
goto8:  inc %l3
	cmp %l3, %l4
	be outerloop2
	nop
outerloop2:inc %l1
	cmp %l1,%l2
	be goto12
	nop
goto12:	clr %l3
	sub %l4,%l1,%l4
	cmp %g3, %g4
	bl  goto9
	nop
	mov %g3, %g2
	mov %g4, %g3
	mov %g2, %g4
goto9:  inc %l3
	cmp %l3, %l4
	be goto10
	nop

goto10:	nop
        set a, %g1
	st %g3, [%g1] 
	set b, %g1
	st %g4, [%g1]
	set c, %g1
	st %g5, [%g1]
	set h, %g1
	st %g6, [%g1]
	ta 0
