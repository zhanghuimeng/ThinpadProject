.org 0x0  
.global _start  
.set noat  
_start:  
	li $t0, 0x0480ff04
	li $t1, 0x40933204
	add $s0, $t0, $t1
	li $s2, 0x45143108
	bne $s0, $s2, inst_error
	nop
	lui $1, 0x0003

	li $t0, 0x0480ff03
	li $t1, 0x40933203
	add $s0, $t0, $t1
	li $s2, 0x45143106
	bne $s0, $s2, inst_error
	nop
	lui $1, 0x0002
inst_error:
	lui $1, 0x0001

nop
