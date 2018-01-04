
kernel.elf:     file format elf32-tradlittlemips


Disassembly of section .text:

80001180 <START>:
80001180:	7f 80 10 3c 00 00 10 36 00 00 04 82 01 00 10 26     ...<...6.......&
80001190:	69 04 00 0c 00 00 00 00 00 00 04 82 fb ff 80 14     i...............
800011a0:	00 00 00 00                                         ....

800011a4 <WRITESERIAL>:
800011a4:	3c09bfd0 	lui	t1,0xbfd0

800011a8 <.TESTW>:
800011a8:	812803fc 	lb	t0,1020(t1)
800011ac:	31080001 	andi	t0,t0,0x1
800011b0:	15000003 	bnez	t0,800011c0 <.WSERIAL>
800011b4:	00000000 	nop
800011b8:	0800046a 	j	800011a8 <.TESTW>
800011bc:	00000000 	nop

800011c0 <.WSERIAL>:
800011c0:	3c09bfd0 	lui	t1,0xbfd0
800011c4:	a12403f8 	sb	a0,1016(t1)
800011c8:	03e00008 	jr	ra
800011cc:	00000000 	nop
