
inst.om:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <_start>:
   0:	3c080480 	lui	t0,0x480
   4:	3508ff04 	ori	t0,t0,0xff04
   8:	3c094093 	lui	t1,0x4093
   c:	35293204 	ori	t1,t1,0x3204
  10:	01098020 	add	s0,t0,t1
  14:	3c124514 	lui	s2,0x4514
  18:	36523108 	ori	s2,s2,0x3108
  1c:	1612000e 	bne	s0,s2,58 <inst_error>
  20:	00000000 	nop
  24:	00000000 	nop
  28:	3c010003 	lui	at,0x3
  2c:	3c080480 	lui	t0,0x480
  30:	3508ff03 	ori	t0,t0,0xff03
  34:	3c094093 	lui	t1,0x4093
  38:	35293203 	ori	t1,t1,0x3203
  3c:	01098020 	add	s0,t0,t1
  40:	3c124514 	lui	s2,0x4514
  44:	36523106 	ori	s2,s2,0x3106
  48:	16120003 	bne	s0,s2,58 <inst_error>
  4c:	00000000 	nop
  50:	00000000 	nop
  54:	3c010002 	lui	at,0x2

00000058 <inst_error>:
  58:	3c010001 	lui	at,0x1
  5c:	00000000 	nop

Disassembly of section .reginfo:

00000000 <.reginfo>:
   0:	00050302 	srl	zero,a1,0xc
	...
