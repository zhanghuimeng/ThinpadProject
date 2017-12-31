
inst.om:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <_start>:
<<<<<<< HEAD
   0:	34010100 	li	at,0x100
   4:	00200008 	jr	at
   8:	00000000 	nop
	...
  20:	20420001 	addi	v0,v0,1
  24:	40015800 	mfc0	at,c0_compare
  28:	20210064 	addi	at,at,100
  2c:	40815800 	mtc0	at,c0_compare
  30:	42000018 	eret
	...
 100:	34020000 	li	v0,0x0
 104:	34010064 	li	at,0x64
 108:	40815800 	mtc0	at,c0_compare
 10c:	3c011000 	lui	at,0x1000
 110:	34210401 	ori	at,at,0x401
 114:	40816000 	mtc0	at,c0_status

00000118 <_loop>:
 118:	08000046 	j	118 <_loop>
 11c:	00000000 	nop
=======
   0:	3c010101 	lui	at,0x101
   4:	34210101 	ori	at,at,0x101
   8:	34221100 	ori	v0,at,0x1100
   c:	00220825 	or	at,at,v0
  10:	302300fe 	andi	v1,at,0xfe
  14:	00610824 	and	at,v1,at
  18:	3824ff00 	xori	a0,at,0xff00
  1c:	00810826 	xor	at,a0,at
  20:	00810827 	nor	at,a0,at
>>>>>>> origin/cp0

Disassembly of section .reginfo:

00000000 <.reginfo>:
<<<<<<< HEAD
   0:	00000006 	srlv	zero,zero,zero
=======
   0:	0000001e 	0x1e
>>>>>>> origin/cp0
	...
