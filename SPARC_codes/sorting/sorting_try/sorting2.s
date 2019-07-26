.data
a:.word 0x05
b:.word 0x04
c:.word 0x03
d:.word 0x02
e:.word 0x01
f:.word 0x06
g:.word 0x05
i:.word 0x00
.text

.global main
main:
_start:	set a, %g1
	ld [%g1], %g3
	add %g1, 04, %g1
!	inc %g1	
!	inc %g1	
!	inc %g1	
!	inc %g1	
	!set b, %g1
	ld [%g1], %g4
	set c, %g1
	ld [%g1], %g5
	set d, %g1
	ld [%g1], %g6
	set e, %g1
	ld [%g1], %g7

!outer loop 
	set f, %g1
	ld [%g1], %l2

!inner loop 
	set g, %g1
	ld [%g1], %l3

outloop:
	sub %l2,1,%l2
	be last
	nop

!set the starting address of the array
	set a, %g1 
loop:	
	sub %l3,1,%l3
	be  outloop
	nop
	
	
	ld  [%g1], %l4
	add  %g1, 4, %g1
	ld  [%g1], %l5

	cmp %l4, %l5
	bl  loop
	nop
	
	!call swap 
!	mov 15, %l6
!	jmpl swap, %l6
	nop
bloop:	ba loop
	nop
	

swap: 
	mov %l4, %g2
	mov %l5, %l4
	mov %g2, %l5

	st  %l5 , [%g1]
	sub %g1 , 4, %g1
	st  %l4 , [%g1]
	add %g1, 4, %g1
!	mov 0, %l6
!	jmpl bloop, %l6
	nop
!	ret

last:  

	ta 0

/*





	!sub %l3,1,%l3
	mov %g0, %l4
!compare g3 and g4
	cmp %g3, %g4
	bl  goto1
	nop
! Swaping g3 and g4 if g3 is greater than g4
	mov %g3, %g2
	mov %g4, %g3
	mov %g2, %g4

!compare g4 and g5
goto1:	cmp %g4, %g5
	bl goto2
	nop
! Swaping g4 and g5 if g4 is greater than g5
	mov %g4, %g2
	mov %g5, %g4
	mov %g2, %g5

!compare g5 and g6
goto2:	cmp %g5, %g6
	bl goto3
	nop
! Swaping g5 and g6 if g5 is greater than g6
	mov %g5, %g2
	mov %g6, %g5
	mov %g2, %g6

!compare g6 and g7
goto3:	cmp %g6, %g7
	bl goto
	nop
!	inc %l4
! Swaping g6 and g7 if g6 is greater than g7 goto5:
	mov %g6, %g2 
	mov %g7, %g6
	mov %g2, %g7
!	inc %l4
	
	!bl goto6

goto6:	nop
	sub %l2,1,%l2
	nop
test:   bne loop
	nop
goto:
!	cmp %l4,%l5 
!	bne goto6
	nop
	set a, %g1 
	st %g3, [%g1] 
	set b, %g1
	st %g4, [%g1]
	set c, %g1
	st %g5, [%g1]
	set d, %g1
	st %g6, [%g1]
	set e, %g1
	st %g7, [%g1]
	set g, %g1
	st %l2, [%g1]
	set f, %g1
	st %l3, [%g1]

	ta 0
*/
