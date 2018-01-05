
main.elf:     file format elf32-tradbigmips
main.elf


Disassembly of section .text:

80000000 <_ftext>:
_ftext():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:65
80000000:	3c060040 	lui	a2,0x40
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:66
80000004:	40866000 	mtc0	a2,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:67
80000008:	40806800 	mtc0	zero,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:68
8000000c:	3c1d8020 	lui	sp,0x8020
80000010:	27bd48e8 	addiu	sp,sp,18664
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:69
80000014:	3c1c8002 	lui	gp,0x8002
80000018:	279c9b50 	addiu	gp,gp,-25776
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:70
8000001c:	34070000 	li	a3,0x0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:71
80000020:	00e00013 	mtlo	a3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:72
80000024:	34180000 	li	t8,0x0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:73
80000028:	03000011 	mthi	t8
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:75
8000002c:	08000187 	j	8000061c <locate>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:76
80000030:	00000000 	nop
	...
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:82
80000380:	24030001 	li	v1,1
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:83
80000384:	1043001b 	beq	v0,v1,800003f4 <syscall_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:84
80000388:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:85
8000038c:	24030002 	li	v1,2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:86
80000390:	1043002b 	beq	v0,v1,80000440 <break_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:87
80000394:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:88
80000398:	24030003 	li	v1,3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:89
8000039c:	1043003b 	beq	v0,v1,8000048c <eret_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:90
800003a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:91
800003a4:	24030004 	li	v1,4
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:92
800003a8:	1043003e 	beq	v0,v1,800004a4 <overflow_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:93
800003ac:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:94
800003b0:	24030005 	li	v1,5
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:95
800003b4:	10430049 	beq	v0,v1,800004dc <adel_load_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:96
800003b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:97
800003bc:	24030006 	li	v1,6
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:98
800003c0:	10430054 	beq	v0,v1,80000514 <ades_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:99
800003c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:100
800003c8:	24030007 	li	v1,7
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:101
800003cc:	1043005f 	beq	v0,v1,8000054c <adel_if_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:102
800003d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:103
800003d4:	24030008 	li	v1,8
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:104
800003d8:	1043006b 	beq	v0,v1,80000588 <reserved_inst_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:105
800003dc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:106
800003e0:	24030009 	li	v1,9
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:107
800003e4:	10430076 	beq	v0,v1,800005c0 <delay_slot_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:108
800003e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:109
800003ec:	1000007b 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:110
800003f0:	00000000 	nop

800003f4 <syscall_ex>:
syscall_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:112
800003f4:	00001021 	move	v0,zero
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:113
800003f8:	401a7000 	mfc0	k0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:114
800003fc:	3c1b8000 	lui	k1,0x8000
80000400:	277b1000 	addiu	k1,k1,4096
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:115
80000404:	175b0075 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:116
80000408:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:117
8000040c:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:118
80000410:	335a007c 	andi	k0,k0,0x7c
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:119
80000414:	241b0020 	li	k1,32
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:120
80000418:	175b0070 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:121
8000041c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:122
80000420:	401a6000 	mfc0	k0,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:123
80000424:	335a0002 	andi	k0,k0,0x2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:124
80000428:	241b0002 	li	k1,2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:125
8000042c:	175b006b 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:126
80000430:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:127
80000434:	3c0200ff 	lui	v0,0xff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:128
80000438:	10000068 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:129
8000043c:	00000000 	nop

80000440 <break_ex>:
break_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:131
80000440:	00001021 	move	v0,zero
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:132
80000444:	401a7000 	mfc0	k0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:133
80000448:	3c1b8000 	lui	k1,0x8000
8000044c:	277b2560 	addiu	k1,k1,9568
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:134
80000450:	175b0062 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:135
80000454:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:136
80000458:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:137
8000045c:	335a007c 	andi	k0,k0,0x7c
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:138
80000460:	241b0024 	li	k1,36
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:139
80000464:	175b005d 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:140
80000468:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:141
8000046c:	401a6000 	mfc0	k0,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:142
80000470:	335a0002 	andi	k0,k0,0x2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:143
80000474:	241b0002 	li	k1,2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:144
80000478:	175b0058 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:145
8000047c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:146
80000480:	3c02ff00 	lui	v0,0xff00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:147
80000484:	10000055 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:148
80000488:	00000000 	nop

8000048c <eret_ex>:
eret_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:150
8000048c:	3c1a8000 	lui	k0,0x8000
80000490:	275a13a0 	addiu	k0,k0,5024
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:151
80000494:	409a7000 	mtc0	k0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:152
80000498:	3c020f0f 	lui	v0,0xf0f
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:153
8000049c:	1000004f 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:154
800004a0:	00000000 	nop

800004a4 <overflow_ex>:
overflow_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:156
800004a4:	00001021 	move	v0,zero
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:157
800004a8:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:158
800004ac:	335a007c 	andi	k0,k0,0x7c
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:159
800004b0:	241b0030 	li	k1,48
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:160
800004b4:	175b0049 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:161
800004b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:162
800004bc:	401a6000 	mfc0	k0,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:163
800004c0:	335a0002 	andi	k0,k0,0x2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:164
800004c4:	241b0002 	li	k1,2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:165
800004c8:	175b0044 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:166
800004cc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:167
800004d0:	3c021234 	lui	v0,0x1234
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:168
800004d4:	10000041 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:169
800004d8:	00000000 	nop

800004dc <adel_load_ex>:
adel_load_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:171
800004dc:	00001021 	move	v0,zero
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:172
800004e0:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:173
800004e4:	335a007c 	andi	k0,k0,0x7c
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:174
800004e8:	241b0010 	li	k1,16
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:175
800004ec:	175b003b 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:176
800004f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:177
800004f4:	401a6000 	mfc0	k0,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:178
800004f8:	335a0002 	andi	k0,k0,0x2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:179
800004fc:	241b0002 	li	k1,2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:180
80000500:	175b0036 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:181
80000504:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:182
80000508:	3c025678 	lui	v0,0x5678
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:183
8000050c:	10000033 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:184
80000510:	00000000 	nop

80000514 <ades_ex>:
ades_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:186
80000514:	00001021 	move	v0,zero
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:187
80000518:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:188
8000051c:	335a007c 	andi	k0,k0,0x7c
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:189
80000520:	241b0014 	li	k1,20
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:190
80000524:	175b002d 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:191
80000528:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:192
8000052c:	401a6000 	mfc0	k0,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:193
80000530:	335a0002 	andi	k0,k0,0x2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:194
80000534:	241b0002 	li	k1,2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:195
80000538:	175b0028 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:196
8000053c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:197
80000540:	3c021111 	lui	v0,0x1111
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:198
80000544:	10000025 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:199
80000548:	00000000 	nop

8000054c <adel_if_ex>:
adel_if_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:201
8000054c:	00001021 	move	v0,zero
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:202
80000550:	409b7000 	mtc0	k1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:203
80000554:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:204
80000558:	335a007c 	andi	k0,k0,0x7c
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:205
8000055c:	241b0010 	li	k1,16
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:206
80000560:	175b001e 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:207
80000564:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:208
80000568:	401a6000 	mfc0	k0,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:209
8000056c:	335a0002 	andi	k0,k0,0x2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:210
80000570:	241b0002 	li	k1,2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:211
80000574:	175b0019 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:212
80000578:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:213
8000057c:	3c022222 	lui	v0,0x2222
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:214
80000580:	10000016 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:215
80000584:	00000000 	nop

80000588 <reserved_inst_ex>:
reserved_inst_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:217
80000588:	00001021 	move	v0,zero
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:218
8000058c:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:219
80000590:	335a007c 	andi	k0,k0,0x7c
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:220
80000594:	241b0028 	li	k1,40
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:221
80000598:	175b0010 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:222
8000059c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:223
800005a0:	401a6000 	mfc0	k0,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:224
800005a4:	335a0002 	andi	k0,k0,0x2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:225
800005a8:	241b0002 	li	k1,2
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:226
800005ac:	175b000b 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:227
800005b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:228
800005b4:	3c023333 	lui	v0,0x3333
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:229
800005b8:	10000008 	b	800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:230
800005bc:	00000000 	nop

800005c0 <delay_slot_ex>:
delay_slot_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:232
800005c0:	00001021 	move	v0,zero
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:233
800005c4:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:234
800005c8:	3c1b8000 	lui	k1,0x8000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:235
800005cc:	035bd024 	and	k0,k0,k1
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:236
800005d0:	175b0002 	bne	k0,k1,800005dc <other_ex>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:237
800005d4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:238
800005d8:	3c024444 	lui	v0,0x4444

800005dc <other_ex>:
other_ex():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:240
800005dc:	401a6800 	mfc0	k0,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:241
800005e0:	40037000 	mfc0	v1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:242
800005e4:	3c1b8000 	lui	k1,0x8000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:243
800005e8:	24630004 	addiu	v1,v1,4
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:244
800005ec:	035bd024 	and	k0,k0,k1
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:245
800005f0:	13400002 	beqz	k0,800005fc <other_ex+0x20>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:246
800005f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:247
800005f8:	24630004 	addiu	v1,v1,4
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:249
800005fc:	40837000 	mtc0	v1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:250
80000600:	14400002 	bnez	v0,8000060c <ex_ret>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:251
80000604:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:252
80000608:	3c02ffff 	lui	v0,0xffff

8000060c <ex_ret>:
ex_ret():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:255
8000060c:	42000018 	eret
	...

8000061c <locate>:
locate():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:265
8000061c:	3409ffff 	li	t1,0xffff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:266
80000620:	3c08bfd0 	lui	t0,0xbfd0
80000624:	3508f000 	ori	t0,t0,0xf000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:267
80000628:	ad090000 	sw	t1,0(t0)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:269
8000062c:	3c11bfd0 	lui	s1,0xbfd0
80000630:	3631f010 	ori	s1,s1,0xf010
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:270
80000634:	3c130000 	lui	s3,0x0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:271
80000638:	ae330000 	sw	s3,0(s1)

8000063c <inst_test>:
inst_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:273
8000063c:	0c00049a 	jal	80001268 <n1_add_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:274
80000640:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:277
80000644:	0c00032e 	jal	80000cb8 <n2_addi_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:278
80000648:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:281
8000064c:	0c0003ae 	jal	80000eb8 <n3_addu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:282
80000650:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:285
80000654:	0c00030c 	jal	80000c30 <n4_addiu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:286
80000658:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:289
8000065c:	0c0004ac 	jal	800012b0 <n5_sub_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:290
80000660:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:293
80000664:	0c000944 	jal	80002510 <n6_subu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:294
80000668:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:297
8000066c:	0c0002e6 	jal	80000b98 <n7_slt_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:298
80000670:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:301
80000674:	0c00048a 	jal	80001228 <n8_slti_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:302
80000678:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:305
8000067c:	0c00099e 	jal	80002678 <n9_sltu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:306
80000680:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:309
80000684:	0c0004be 	jal	800012f8 <n10_sltiu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:310
80000688:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:329
8000068c:	0c00121c 	jal	80004870 <n15_and_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:330
80000690:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:333
80000694:	0c001162 	jal	80004588 <n16_andi_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:334
80000698:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:337
8000069c:	0c00122e 	jal	800048b8 <n17_lui_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:338
800006a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:341
800006a4:	0c0004ce 	jal	80001338 <n18_nor_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:342
800006a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:345
800006ac:	0c00098c 	jal	80002630 <n19_or_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:346
800006b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:349
800006b4:	0c0011f8 	jal	800047e0 <n20_ori_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:350
800006b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:353
800006bc:	0c000a0a 	jal	80002828 <n21_xor_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:354
800006c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:357
800006c4:	0c001122 	jal	80004488 <n22_xori_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:358
800006c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:361
800006cc:	0c001172 	jal	800045c8 <n23_sll_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:362
800006d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:365
800006d4:	0c00097a 	jal	800025e8 <n24_sllv_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:366
800006d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:369
800006dc:	0c00120a 	jal	80004828 <n25_sra_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:370
800006e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:373
800006e4:	0c001184 	jal	80004610 <n26_srav_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:374
800006e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:377
800006ec:	0c00043a 	jal	800010e8 <n27_srl_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:378
800006f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:381
800006f4:	0c00031e 	jal	80000c78 <n28_srlv_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:382
800006f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:385
800006fc:	0c0010ea 	jal	800043a8 <n29_beq_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:386
80000700:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:389
80000704:	0c000904 	jal	80002410 <n30_bne_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:390
80000708:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:393
8000070c:	0c001134 	jal	800044d0 <n31_bgez_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:394
80000710:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:397
80000714:	0c0011be 	jal	800046f8 <n32_bgtz_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:398
80000718:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:401
8000071c:	0c000366 	jal	80000d98 <n33_blez_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:402
80000720:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:405
80000724:	0c00044c 	jal	80001130 <n34_bltz_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:406
80000728:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:417
8000072c:	0c00040a 	jal	80001028 <n37_j_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:418
80000730:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:421
80000734:	0c0009c6 	jal	80002718 <n38_jal_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:422
80000738:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:425
8000073c:	0c0002ac 	jal	80000ab0 <n39_jr_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:426
80000740:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:429
80000744:	0c0003c0 	jal	80000f00 <n40_jalr_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:430
80000748:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:433
8000074c:	0c0011ac 	jal	800046b0 <n41_mfhi_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:434
80000750:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:437
80000754:	0c000340 	jal	80000d00 <n42_mflo_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:438
80000758:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:441
8000075c:	0c0009f8 	jal	800027e0 <n43_mthi_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:442
80000760:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:445
80000764:	0c00039c 	jal	80000e70 <n44_mtlo_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:446
80000768:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:453
8000076c:	0c0003fe 	jal	80000ff8 <n46_syscall_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:454
80000770:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:457
80000774:	0c0002f8 	jal	80000be0 <n47_lb_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:458
80000778:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:461
8000077c:	0c000a1c 	jal	80002870 <n48_lbu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:462
80000780:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:465
80000784:	0c0004f2 	jal	800013c8 <n49_lh_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:466
80000788:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:473
8000078c:	0c001196 	jal	80004658 <n51_lw_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:474
80000790:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:485
80000794:	0c000962 	jal	80002588 <n52_sb_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:486
80000798:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:493
8000079c:	0c000350 	jal	80000d40 <n54_sw_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:494
800007a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:505
800007a4:	0c0004e0 	jal	80001380 <n55_eret_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:506
800007a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:507
800007ac:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:508
800007b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:509
800007b4:	0c0009b0 	jal	800026c0 <n56_mfc0_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:510
800007b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:511
800007bc:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:512
800007c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:513
800007c4:	0c000296 	jal	80000a58 <n57_mtc0_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:514
800007c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:515
800007cc:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:516
800007d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:568
800007d4:	3c028001 	lui	v0,0x8001
800007d8:	24421974 	addiu	v0,v0,6516
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:569
800007dc:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:570
800007e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:571
800007e4:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:572
800007e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:573
800007ec:	3c028000 	lui	v0,0x8000
800007f0:	2442674c 	addiu	v0,v0,26444
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:574
800007f4:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:575
800007f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:576
800007fc:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:577
80000800:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:578
80000804:	3c028001 	lui	v0,0x8001
80000808:	2442f030 	addiu	v0,v0,-4048
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:579
8000080c:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:580
80000810:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:581
80000814:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:582
80000818:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:583
8000081c:	3c028001 	lui	v0,0x8001
80000820:	244291bc 	addiu	v0,v0,-28228
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:584
80000824:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:585
80000828:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:586
8000082c:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:587
80000830:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:588
80000834:	3c028001 	lui	v0,0x8001
80000838:	2442930c 	addiu	v0,v0,-27892
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:589
8000083c:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:590
80000840:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:591
80000844:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:592
80000848:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:593
8000084c:	3c028000 	lui	v0,0x8000
80000850:	24426954 	addiu	v0,v0,26964
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:594
80000854:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:595
80000858:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:596
8000085c:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:597
80000860:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:598
80000864:	3c028001 	lui	v0,0x8001
80000868:	2442ede0 	addiu	v0,v0,-4640
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:599
8000086c:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:600
80000870:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:601
80000874:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:602
80000878:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:603
8000087c:	3c028001 	lui	v0,0x8001
80000880:	2442eef8 	addiu	v0,v0,-4360
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:604
80000884:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:605
80000888:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:606
8000088c:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:607
80000890:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:608
80000894:	3c028001 	lui	v0,0x8001
80000898:	2442f13c 	addiu	v0,v0,-3780
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:609
8000089c:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:610
800008a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:611
800008a4:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:612
800008a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:613
800008ac:	3c028001 	lui	v0,0x8001
800008b0:	2442a794 	addiu	v0,v0,-22636
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:614
800008b4:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:615
800008b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:616
800008bc:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:617
800008c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:618
800008c4:	3c028000 	lui	v0,0x8000
800008c8:	2442684c 	addiu	v0,v0,26700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:619
800008cc:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:620
800008d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:621
800008d4:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:622
800008d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:623
800008dc:	3c028001 	lui	v0,0x8001
800008e0:	24421a58 	addiu	v0,v0,6744
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:624
800008e4:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:625
800008e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:626
800008ec:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:627
800008f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:628
800008f4:	3c028001 	lui	v0,0x8001
800008f8:	2442da88 	addiu	v0,v0,-9592
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:629
800008fc:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:630
80000900:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:631
80000904:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:632
80000908:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:633
8000090c:	3c028000 	lui	v0,0x8000
80000910:	24424908 	addiu	v0,v0,18696
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:634
80000914:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:635
80000918:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:636
8000091c:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:637
80000920:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:638
80000924:	3c028001 	lui	v0,0x8001
80000928:	2442b2fc 	addiu	v0,v0,-19716
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:639
8000092c:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:640
80000930:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:641
80000934:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:642
80000938:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:643
8000093c:	3c028001 	lui	v0,0x8001
80000940:	2442f1e8 	addiu	v0,v0,-3608
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:644
80000944:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:645
80000948:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:646
8000094c:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:647
80000950:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:648
80000954:	3c028001 	lui	v0,0x8001
80000958:	2442943c 	addiu	v0,v0,-27588
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:649
8000095c:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:650
80000960:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:651
80000964:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:652
80000968:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:653
8000096c:	3c028000 	lui	v0,0x8000
80000970:	24426a70 	addiu	v0,v0,27248
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:654
80000974:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:655
80000978:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:656
8000097c:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:657
80000980:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:658
80000984:	3c028001 	lui	v0,0x8001
80000988:	24420540 	addiu	v0,v0,1344
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:659
8000098c:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:660
80000990:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:661
80000994:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:662
80000998:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:663
8000099c:	3c028001 	lui	v0,0x8001
800009a0:	2442c654 	addiu	v0,v0,-14764
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:664
800009a4:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:665
800009a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:666
800009ac:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:667
800009b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:668
800009b4:	3c028001 	lui	v0,0x8001
800009b8:	24428804 	addiu	v0,v0,-30716
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:669
800009bc:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:670
800009c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:671
800009c4:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:672
800009c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:673
800009cc:	3c028000 	lui	v0,0x8000
800009d0:	24427dc8 	addiu	v0,v0,32200
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:674
800009d4:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:675
800009d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:676
800009dc:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:677
800009e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:678
800009e4:	3c028001 	lui	v0,0x8001
800009e8:	2442a894 	addiu	v0,v0,-22380
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:679
800009ec:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:680
800009f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:681
800009f4:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:682
800009f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:683
800009fc:	3c028000 	lui	v0,0x8000
80000a00:	24425c60 	addiu	v0,v0,23648
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:684
80000a04:	0040f809 	jalr	v0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:685
80000a08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:686
80000a0c:	0c00028f 	jal	80000a3c <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:687
80000a10:	00000000 	nop

80000a14 <test_end>:
test_end():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:691
80000a14:	2404005b 	li	a0,91
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:692
80000a18:	10930003 	beq	a0,s3,80000a28 <test_end+0x14>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:693
80000a1c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:695
80000a20:	10000004 	b	80000a34 <test_end+0x20>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:696
80000a24:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:699
80000a28:	3c08bfd0 	lui	t0,0xbfd0
80000a2c:	3508f000 	ori	t0,t0,0xf000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:700
80000a30:	ad000000 	sw	zero,0(t0)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:702
80000a34:	1000ffff 	b	80000a34 <test_end+0x20>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:703
80000a38:	00000000 	nop

80000a3c <wait_1s>:
wait_1s():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:707
80000a3c:	3c0800f0 	lui	t0,0xf0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:709
80000a40:	2508ffff 	addiu	t0,t0,-1
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:710
80000a44:	1500fffe 	bnez	t0,80000a40 <wait_1s+0x4>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:711
80000a48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:712
80000a4c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:713
80000a50:	00000000 	nop
80000a54:	00000000 	nop

80000a58 <n57_mtc0_test>:
n57_mtc0_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:11
80000a58:	3c043900 	lui	a0,0x3900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:12
80000a5c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:14
80000a60:	3c08bfc0 	lui	t0,0xbfc0
80000a64:	3508ffff 	ori	t0,t0,0xffff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:23
80000a68:	40096000 	mfc0	t1,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:24
80000a6c:	40896000 	mtc0	t1,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:26
80000a70:	40096800 	mfc0	t1,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:27
80000a74:	40896800 	mtc0	t1,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:29
80000a78:	40097000 	mfc0	t1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:30
80000a7c:	40887000 	mtc0	t0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:31
80000a80:	40107000 	mfc0	s0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:32
80000a84:	40897000 	mtc0	t1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:33
80000a88:	15100004 	bne	t0,s0,80000a9c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:34
80000a8c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:36
80000a90:	14400002 	bnez	v0,80000a9c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:37
80000a94:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:39
80000a98:	26730001 	addiu	s3,s3,1

80000a9c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:42
80000a9c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:43
80000aa0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:44
80000aa4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:45
80000aa8:	00000000 	nop
inst_error():
80000aac:	00000000 	nop

80000ab0 <n39_jr_test>:
n39_jr_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:11
80000ab0:	3c042700 	lui	a0,0x2700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:12
80000ab4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:14
80000ab8:	3c0cc21e 	lui	t4,0xc21e
80000abc:	358c6e78 	ori	t4,t4,0x6e78
80000ac0:	3c0d0e2e 	lui	t5,0xe2e
80000ac4:	35ada248 	ori	t5,t5,0xa248
80000ac8:	24100000 	li	s0,0
80000acc:	24120000 	li	s2,0
80000ad0:	3c088000 	lui	t0,0x8000
80000ad4:	25080ae8 	addiu	t0,t0,2792
80000ad8:	3c098000 	lui	t1,0x8000
80000adc:	25290b50 	addiu	t1,t1,2896
80000ae0:	1000000a 	b	80000b0c <n39_jr_test+0x5c>
80000ae4:	00000000 	nop
80000ae8:	3c10c21e 	lui	s0,0xc21e
80000aec:	36106e78 	ori	s0,s0,0x6e78
80000af0:	01200008 	jr	t1
80000af4:	00000000 	nop
80000af8:	10000017 	b	80000b58 <n39_jr_test+0xa8>
80000afc:	00000000 	nop
80000b00:	00000021 	move	zero,zero
80000b04:	00000021 	move	zero,zero
80000b08:	00000021 	move	zero,zero
80000b0c:	01000008 	jr	t0
80000b10:	00000000 	nop
80000b14:	10000010 	b	80000b58 <n39_jr_test+0xa8>
80000b18:	00000000 	nop
80000b1c:	00000021 	move	zero,zero
80000b20:	00000021 	move	zero,zero
80000b24:	00000021 	move	zero,zero
80000b28:	00000021 	move	zero,zero
80000b2c:	00000021 	move	zero,zero
80000b30:	00000021 	move	zero,zero
80000b34:	00000021 	move	zero,zero
80000b38:	00000021 	move	zero,zero
80000b3c:	00000021 	move	zero,zero
80000b40:	00000021 	move	zero,zero
80000b44:	00000021 	move	zero,zero
80000b48:	00000021 	move	zero,zero
80000b4c:	00000021 	move	zero,zero
80000b50:	3c120e2e 	lui	s2,0xe2e
80000b54:	3652a248 	ori	s2,s2,0xa248
80000b58:	00000000 	nop
80000b5c:	3c14c21e 	lui	s4,0xc21e
80000b60:	36946e78 	ori	s4,s4,0x6e78
80000b64:	16140008 	bne	s0,s4,80000b88 <inst_error>
80000b68:	00000000 	nop
80000b6c:	3c150e2e 	lui	s5,0xe2e
80000b70:	36b5a248 	ori	s5,s5,0xa248
80000b74:	16550004 	bne	s2,s5,80000b88 <inst_error>
80000b78:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:16
80000b7c:	14400002 	bnez	v0,80000b88 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:17
80000b80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:19
80000b84:	26730001 	addiu	s3,s3,1

80000b88 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:22
80000b88:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:23
80000b8c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:24
80000b90:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:25
80000b94:	00000000 	nop

80000b98 <n7_slt_test>:
n7_slt_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:11
80000b98:	3c040700 	lui	a0,0x700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:12
80000b9c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:14
80000ba0:	3c087245 	lui	t0,0x7245
80000ba4:	3508316a 	ori	t0,t0,0x316a
80000ba8:	3c097835 	lui	t1,0x7835
80000bac:	352906f0 	ori	t1,t1,0x6f0
80000bb0:	0109802a 	slt	s0,t0,t1
80000bb4:	24120001 	li	s2,1
80000bb8:	16120004 	bne	s0,s2,80000bcc <inst_error>
80000bbc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:16
80000bc0:	14400002 	bnez	v0,80000bcc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:17
80000bc4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:19
80000bc8:	26730001 	addiu	s3,s3,1

80000bcc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:22
80000bcc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:23
80000bd0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:24
80000bd4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:25
80000bd8:	00000000 	nop
inst_error():
80000bdc:	00000000 	nop

80000be0 <n47_lb_test>:
n47_lb_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:11
80000be0:	3c042f00 	lui	a0,0x2f00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:12
80000be4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:14
80000be8:	3c09c83b 	lui	t1,0xc83b
80000bec:	35290be0 	ori	t1,t1,0xbe0
80000bf0:	3c088002 	lui	t0,0x8002
80000bf4:	35086760 	ori	t0,t0,0x6760
80000bf8:	240a37a1 	li	t2,14241
80000bfc:	240c37a0 	li	t4,14240
80000c00:	ad0937a0 	sw	t1,14240(t0)
80000c04:	811037a1 	lb	s0,14241(t0)
80000c08:	2412000b 	li	s2,11
80000c0c:	16120004 	bne	s0,s2,80000c20 <inst_error>
80000c10:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:16
80000c14:	14400002 	bnez	v0,80000c20 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:17
80000c18:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:19
80000c1c:	26730001 	addiu	s3,s3,1

80000c20 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:22
80000c20:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:23
80000c24:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:24
80000c28:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:25
80000c2c:	00000000 	nop

80000c30 <n4_addiu_test>:
n4_addiu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:11
80000c30:	3c040400 	lui	a0,0x400
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:12
80000c34:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:14
80000c38:	3c08fb26 	lui	t0,0xfb26
80000c3c:	35083d10 	ori	t0,t0,0x3d10
80000c40:	3409ec96 	li	t1,0xec96
80000c44:	2510ec96 	addiu	s0,t0,-4970
80000c48:	3c12fb26 	lui	s2,0xfb26
80000c4c:	365229a6 	ori	s2,s2,0x29a6
80000c50:	16120004 	bne	s0,s2,80000c64 <inst_error>
80000c54:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:16
80000c58:	14400002 	bnez	v0,80000c64 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:17
80000c5c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:19
80000c60:	26730001 	addiu	s3,s3,1

80000c64 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:22
80000c64:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:23
80000c68:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:24
80000c6c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:25
80000c70:	00000000 	nop
inst_error():
80000c74:	00000000 	nop

80000c78 <n28_srlv_test>:
n28_srlv_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:11
80000c78:	3c041c00 	lui	a0,0x1c00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:12
80000c7c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:14
80000c80:	3c081f8f 	lui	t0,0x1f8f
80000c84:	35086000 	ori	t0,t0,0x6000
80000c88:	2409001c 	li	t1,28
80000c8c:	01288006 	srlv	s0,t0,t1
80000c90:	24120001 	li	s2,1
80000c94:	16120004 	bne	s0,s2,80000ca8 <inst_error>
80000c98:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:16
80000c9c:	14400002 	bnez	v0,80000ca8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:17
80000ca0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:19
80000ca4:	26730001 	addiu	s3,s3,1

80000ca8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:22
80000ca8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:23
80000cac:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:24
80000cb0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:25
80000cb4:	00000000 	nop

80000cb8 <n2_addi_test>:
n2_addi_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:11
80000cb8:	3c040200 	lui	a0,0x200
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:12
80000cbc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:14
80000cc0:	3c080151 	lui	t0,0x151
80000cc4:	3508e5c0 	ori	t0,t0,0xe5c0
80000cc8:	3409b945 	li	t1,0xb945
80000ccc:	2110b945 	addi	s0,t0,-18107
80000cd0:	3c120151 	lui	s2,0x151
80000cd4:	36529f05 	ori	s2,s2,0x9f05
80000cd8:	16120004 	bne	s0,s2,80000cec <inst_error>
80000cdc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:16
80000ce0:	14400002 	bnez	v0,80000cec <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:17
80000ce4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:19
80000ce8:	26730001 	addiu	s3,s3,1

80000cec <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:22
80000cec:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:23
80000cf0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:24
80000cf4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:25
80000cf8:	00000000 	nop
inst_error():
80000cfc:	00000000 	nop

80000d00 <n42_mflo_test>:
n42_mflo_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:11
80000d00:	3c042a00 	lui	a0,0x2a00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:12
80000d04:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:14
80000d08:	3c0808fc 	lui	t0,0x8fc
80000d0c:	01000013 	mtlo	t0
80000d10:	00008012 	mflo	s0
80000d14:	3c1208fc 	lui	s2,0x8fc
80000d18:	16120004 	bne	s0,s2,80000d2c <inst_error>
80000d1c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:16
80000d20:	14400002 	bnez	v0,80000d2c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:17
80000d24:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:19
80000d28:	26730001 	addiu	s3,s3,1

80000d2c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:22
80000d2c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:23
80000d30:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:24
80000d34:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:25
80000d38:	00000000 	nop
inst_error():
80000d3c:	00000000 	nop

80000d40 <n54_sw_test>:
n54_sw_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:11
80000d40:	3c043600 	lui	a0,0x3600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:12
80000d44:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:14
80000d48:	3c096175 	lui	t1,0x6175
80000d4c:	35294443 	ori	t1,t1,0x4443
80000d50:	3c088002 	lui	t0,0x8002
80000d54:	350877a0 	ori	t0,t0,0x77a0
80000d58:	240a7b14 	li	t2,31508
80000d5c:	240c7b14 	li	t4,31508
80000d60:	ad097b14 	sw	t1,31508(t0)
80000d64:	8d107b14 	lw	s0,31508(t0)
80000d68:	3c126175 	lui	s2,0x6175
80000d6c:	36524443 	ori	s2,s2,0x4443
80000d70:	16120004 	bne	s0,s2,80000d84 <inst_error>
80000d74:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:17
80000d78:	14400002 	bnez	v0,80000d84 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:18
80000d7c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:20
80000d80:	26730001 	addiu	s3,s3,1

80000d84 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:23
80000d84:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:24
80000d88:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:25
80000d8c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:26
80000d90:	00000000 	nop
inst_error():
80000d94:	00000000 	nop

80000d98 <n33_blez_test>:
n33_blez_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:11
80000d98:	3c042100 	lui	a0,0x2100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:12
80000d9c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:14
80000da0:	3c0c6ad0 	lui	t4,0x6ad0
80000da4:	358ca0b8 	ori	t4,t4,0xa0b8
80000da8:	3c0d8f08 	lui	t5,0x8f08
80000dac:	35addb03 	ori	t5,t5,0xdb03
80000db0:	24100000 	li	s0,0
80000db4:	24120000 	li	s2,0
80000db8:	10000011 	b	80000e00 <n33_blez_test+0x68>
80000dbc:	00000000 	nop
80000dc0:	3c106ad0 	lui	s0,0x6ad0
80000dc4:	3610a0b8 	ori	s0,s0,0xa0b8
80000dc8:	19000017 	blez	t0,80000e28 <n33_blez_test+0x90>
80000dcc:	00000000 	nop
80000dd0:	10000017 	b	80000e30 <n33_blez_test+0x98>
80000dd4:	00000000 	nop
80000dd8:	00000021 	move	zero,zero
80000ddc:	00000021 	move	zero,zero
80000de0:	00000021 	move	zero,zero
80000de4:	00000021 	move	zero,zero
80000de8:	00000021 	move	zero,zero
80000dec:	00000021 	move	zero,zero
80000df0:	00000021 	move	zero,zero
80000df4:	00000021 	move	zero,zero
80000df8:	00000021 	move	zero,zero
80000dfc:	00000021 	move	zero,zero
80000e00:	3c0895b9 	lui	t0,0x95b9
80000e04:	3508206f 	ori	t0,t0,0x206f
80000e08:	1900ffed 	blez	t0,80000dc0 <n33_blez_test+0x28>
80000e0c:	00000000 	nop
80000e10:	10000007 	b	80000e30 <n33_blez_test+0x98>
80000e14:	00000000 	nop
80000e18:	00000021 	move	zero,zero
80000e1c:	00000021 	move	zero,zero
80000e20:	00000021 	move	zero,zero
80000e24:	00000021 	move	zero,zero
80000e28:	3c128f08 	lui	s2,0x8f08
80000e2c:	3652db03 	ori	s2,s2,0xdb03
80000e30:	00000000 	nop
80000e34:	3c146ad0 	lui	s4,0x6ad0
80000e38:	3694a0b8 	ori	s4,s4,0xa0b8
80000e3c:	16140008 	bne	s0,s4,80000e60 <inst_error>
80000e40:	00000000 	nop
80000e44:	3c158f08 	lui	s5,0x8f08
80000e48:	36b5db03 	ori	s5,s5,0xdb03
80000e4c:	16550004 	bne	s2,s5,80000e60 <inst_error>
80000e50:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:16
80000e54:	14400002 	bnez	v0,80000e60 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:17
80000e58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:19
80000e5c:	26730001 	addiu	s3,s3,1

80000e60 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:22
80000e60:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:23
80000e64:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:24
80000e68:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:25
80000e6c:	00000000 	nop

80000e70 <n44_mtlo_test>:
n44_mtlo_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:11
80000e70:	3c042c00 	lui	a0,0x2c00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:12
80000e74:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:14
80000e78:	3c08c10d 	lui	t0,0xc10d
80000e7c:	350876f1 	ori	t0,t0,0x76f1
80000e80:	01000013 	mtlo	t0
80000e84:	00008012 	mflo	s0
80000e88:	3c12c10d 	lui	s2,0xc10d
80000e8c:	365276f1 	ori	s2,s2,0x76f1
80000e90:	16120004 	bne	s0,s2,80000ea4 <inst_error>
80000e94:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:17
80000e98:	14400002 	bnez	v0,80000ea4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:18
80000e9c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:20
80000ea0:	26730001 	addiu	s3,s3,1

80000ea4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:23
80000ea4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:24
80000ea8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:25
80000eac:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:26
80000eb0:	00000000 	nop
inst_error():
80000eb4:	00000000 	nop

80000eb8 <n3_addu_test>:
n3_addu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:11
80000eb8:	3c040300 	lui	a0,0x300
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:12
80000ebc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:14
80000ec0:	3c081ade 	lui	t0,0x1ade
80000ec4:	3508f300 	ori	t0,t0,0xf300
80000ec8:	3c0951dd 	lui	t1,0x51dd
80000ecc:	352958de 	ori	t1,t1,0x58de
80000ed0:	01098021 	addu	s0,t0,t1
80000ed4:	3c126cbc 	lui	s2,0x6cbc
80000ed8:	36524bde 	ori	s2,s2,0x4bde
80000edc:	16120004 	bne	s0,s2,80000ef0 <inst_error>
80000ee0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:16
80000ee4:	14400002 	bnez	v0,80000ef0 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:17
80000ee8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:19
80000eec:	26730001 	addiu	s3,s3,1

80000ef0 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:22
80000ef0:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:23
80000ef4:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:24
80000ef8:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:25
80000efc:	00000000 	nop

80000f00 <n40_jalr_test>:
n40_jalr_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:11
80000f00:	3c042800 	lui	a0,0x2800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:12
80000f04:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:14
80000f08:	001fb021 	addu	s6,zero,ra
80000f0c:	3c0c6e6b 	lui	t4,0x6e6b
80000f10:	358c362a 	ori	t4,t4,0x362a
80000f14:	3c0d240b 	lui	t5,0x240b
80000f18:	35adaf26 	ori	t5,t5,0xaf26
80000f1c:	24100000 	li	s0,0
80000f20:	3c088000 	lui	t0,0x8000
80000f24:	25080f3c 	addiu	t0,t0,3900
80000f28:	3c098000 	lui	t1,0x8000
80000f2c:	25290f94 	addiu	t1,t1,3988
80000f30:	24120000 	li	s2,0
80000f34:	10000011 	b	80000f7c <n40_jalr_test+0x7c>
80000f38:	00000000 	nop
80000f3c:	3c106e6b 	lui	s0,0x6e6b
80000f40:	3610362a 	ori	s0,s0,0x362a
80000f44:	0120f809 	jalr	t1
80000f48:	00000000 	nop
80000f4c:	10000013 	b	80000f9c <n40_jalr_test+0x9c>
80000f50:	00000000 	nop
80000f54:	00000021 	move	zero,zero
80000f58:	00000021 	move	zero,zero
80000f5c:	00000021 	move	zero,zero
80000f60:	00000021 	move	zero,zero
80000f64:	00000021 	move	zero,zero
80000f68:	00000021 	move	zero,zero
80000f6c:	00000021 	move	zero,zero
80000f70:	00000021 	move	zero,zero
80000f74:	00000021 	move	zero,zero
80000f78:	00000021 	move	zero,zero
80000f7c:	0100f809 	jalr	t0
80000f80:	00000000 	nop
80000f84:	10000005 	b	80000f9c <n40_jalr_test+0x9c>
80000f88:	00000000 	nop
80000f8c:	00000021 	move	zero,zero
80000f90:	00000021 	move	zero,zero
80000f94:	3c12240b 	lui	s2,0x240b
80000f98:	3652af26 	ori	s2,s2,0xaf26
80000f9c:	001fa021 	addu	s4,zero,ra
80000fa0:	0016f821 	addu	ra,zero,s6
80000fa4:	3c158000 	lui	s5,0x8000
80000fa8:	26b50f44 	addiu	s5,s5,3908
80000fac:	3c0d6e6b 	lui	t5,0x6e6b
80000fb0:	35ad362a 	ori	t5,t5,0x362a
80000fb4:	160d000b 	bne	s0,t5,80000fe4 <inst_error>
80000fb8:	00000000 	nop
80000fbc:	3c0c240b 	lui	t4,0x240b
80000fc0:	358caf26 	ori	t4,t4,0xaf26
80000fc4:	164c0007 	bne	s2,t4,80000fe4 <inst_error>
80000fc8:	00000000 	nop
80000fcc:	26b50008 	addiu	s5,s5,8
80000fd0:	16950004 	bne	s4,s5,80000fe4 <inst_error>
80000fd4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:16
80000fd8:	14400002 	bnez	v0,80000fe4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:17
80000fdc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:19
80000fe0:	26730001 	addiu	s3,s3,1

80000fe4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:22
80000fe4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:23
80000fe8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:24
80000fec:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:25
80000ff0:	00000000 	nop
inst_error():
80000ff4:	00000000 	nop

80000ff8 <n46_syscall_test>:
n46_syscall_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:11
80000ff8:	3c042e00 	lui	a0,0x2e00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:12
80000ffc:	24020001 	li	v0,1

80001000 <syscall_pc>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:16
80001000:	0000000c 	syscall
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:18
80001004:	3c1000ff 	lui	s0,0xff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:19
80001008:	14500002 	bne	v0,s0,80001014 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:20
8000100c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:22
80001010:	26730001 	addiu	s3,s3,1

80001014 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:25
80001014:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:26
80001018:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:27
8000101c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:28
80001020:	00000000 	nop
inst_error():
80001024:	00000000 	nop

80001028 <n37_j_test>:
n37_j_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:11
80001028:	3c042500 	lui	a0,0x2500
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:12
8000102c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:14
80001030:	3c0c42ea 	lui	t4,0x42ea
80001034:	358c6edf 	ori	t4,t4,0x6edf
80001038:	3c0d2407 	lui	t5,0x2407
8000103c:	35ad1ba8 	ori	t5,t5,0x1ba8
80001040:	24100000 	li	s0,0
80001044:	24120000 	li	s2,0
80001048:	1000000a 	b	80001074 <n37_j_test+0x4c>
8000104c:	00000000 	nop
80001050:	3c1042ea 	lui	s0,0x42ea
80001054:	36106edf 	ori	s0,s0,0x6edf
80001058:	08000428 	j	800010a0 <n37_j_test+0x78>
8000105c:	00000000 	nop
80001060:	10000011 	b	800010a8 <n37_j_test+0x80>
80001064:	00000000 	nop
80001068:	00000021 	move	zero,zero
8000106c:	00000021 	move	zero,zero
80001070:	00000021 	move	zero,zero
80001074:	08000414 	j	80001050 <n37_j_test+0x28>
80001078:	00000000 	nop
8000107c:	1000000a 	b	800010a8 <n37_j_test+0x80>
80001080:	00000000 	nop
80001084:	00000021 	move	zero,zero
80001088:	00000021 	move	zero,zero
8000108c:	00000021 	move	zero,zero
80001090:	00000021 	move	zero,zero
80001094:	00000021 	move	zero,zero
80001098:	00000021 	move	zero,zero
8000109c:	00000021 	move	zero,zero
800010a0:	3c122407 	lui	s2,0x2407
800010a4:	36521ba8 	ori	s2,s2,0x1ba8
800010a8:	00000000 	nop
800010ac:	3c1442ea 	lui	s4,0x42ea
800010b0:	36946edf 	ori	s4,s4,0x6edf
800010b4:	16140008 	bne	s0,s4,800010d8 <inst_error>
800010b8:	00000000 	nop
800010bc:	3c152407 	lui	s5,0x2407
800010c0:	36b51ba8 	ori	s5,s5,0x1ba8
800010c4:	16550004 	bne	s2,s5,800010d8 <inst_error>
800010c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:16
800010cc:	14400002 	bnez	v0,800010d8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:17
800010d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:19
800010d4:	26730001 	addiu	s3,s3,1

800010d8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:22
800010d8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:23
800010dc:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:24
800010e0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:25
800010e4:	00000000 	nop

800010e8 <n27_srl_test>:
n27_srl_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:11
800010e8:	3c041b00 	lui	a0,0x1b00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:12
800010ec:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:14
800010f0:	3c088e8f 	lui	t0,0x8e8f
800010f4:	3508fce0 	ori	t0,t0,0xfce0
800010f8:	24090002 	li	t1,2
800010fc:	00088082 	srl	s0,t0,0x2
80001100:	3c1223a3 	lui	s2,0x23a3
80001104:	3652ff38 	ori	s2,s2,0xff38
80001108:	16120004 	bne	s0,s2,8000111c <inst_error>
8000110c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:16
80001110:	14400002 	bnez	v0,8000111c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:17
80001114:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:19
80001118:	26730001 	addiu	s3,s3,1

8000111c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:22
8000111c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:23
80001120:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:24
80001124:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:25
80001128:	00000000 	nop
inst_error():
8000112c:	00000000 	nop

80001130 <n34_bltz_test>:
n34_bltz_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:11
80001130:	3c042200 	lui	a0,0x2200
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:12
80001134:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:14
80001138:	3c0c933a 	lui	t4,0x933a
8000113c:	358c7610 	ori	t4,t4,0x7610
80001140:	3c0dee03 	lui	t5,0xee03
80001144:	35ad4360 	ori	t5,t5,0x4360
80001148:	24100000 	li	s0,0
8000114c:	24120000 	li	s2,0
80001150:	10000010 	b	80001194 <n34_bltz_test+0x64>
80001154:	00000000 	nop
80001158:	3c10933a 	lui	s0,0x933a
8000115c:	36107610 	ori	s0,s0,0x7610
80001160:	0500001f 	bltz	t0,800011e0 <n34_bltz_test+0xb0>
80001164:	00000000 	nop
80001168:	1000001f 	b	800011e8 <n34_bltz_test+0xb8>
8000116c:	00000000 	nop
80001170:	00000021 	move	zero,zero
80001174:	00000021 	move	zero,zero
80001178:	00000021 	move	zero,zero
8000117c:	00000021 	move	zero,zero
80001180:	00000021 	move	zero,zero
80001184:	00000021 	move	zero,zero
80001188:	00000021 	move	zero,zero
8000118c:	00000021 	move	zero,zero
80001190:	00000021 	move	zero,zero
80001194:	3c089e0d 	lui	t0,0x9e0d
80001198:	35087d08 	ori	t0,t0,0x7d08
8000119c:	0500ffee 	bltz	t0,80001158 <n34_bltz_test+0x28>
800011a0:	00000000 	nop
800011a4:	10000010 	b	800011e8 <n34_bltz_test+0xb8>
800011a8:	00000000 	nop
800011ac:	00000021 	move	zero,zero
800011b0:	00000021 	move	zero,zero
800011b4:	00000021 	move	zero,zero
800011b8:	00000021 	move	zero,zero
800011bc:	00000021 	move	zero,zero
800011c0:	00000021 	move	zero,zero
800011c4:	00000021 	move	zero,zero
800011c8:	00000021 	move	zero,zero
800011cc:	00000021 	move	zero,zero
800011d0:	00000021 	move	zero,zero
800011d4:	00000021 	move	zero,zero
800011d8:	00000021 	move	zero,zero
800011dc:	00000021 	move	zero,zero
800011e0:	3c12ee03 	lui	s2,0xee03
800011e4:	36524360 	ori	s2,s2,0x4360
800011e8:	00000000 	nop
800011ec:	3c14933a 	lui	s4,0x933a
800011f0:	36947610 	ori	s4,s4,0x7610
800011f4:	16140008 	bne	s0,s4,80001218 <inst_error>
800011f8:	00000000 	nop
800011fc:	3c15ee03 	lui	s5,0xee03
80001200:	36b54360 	ori	s5,s5,0x4360
80001204:	16550004 	bne	s2,s5,80001218 <inst_error>
80001208:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:16
8000120c:	14400002 	bnez	v0,80001218 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:17
80001210:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:19
80001214:	26730001 	addiu	s3,s3,1

80001218 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:22
80001218:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:23
8000121c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:24
80001220:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:25
80001224:	00000000 	nop

80001228 <n8_slti_test>:
n8_slti_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:11
80001228:	3c040800 	lui	a0,0x800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:12
8000122c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:14
80001230:	3c08d9d1 	lui	t0,0xd9d1
80001234:	350829b5 	ori	t0,t0,0x29b5
80001238:	24090988 	li	t1,2440
8000123c:	29100988 	slti	s0,t0,2440
80001240:	24120001 	li	s2,1
80001244:	16120004 	bne	s0,s2,80001258 <inst_error>
80001248:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:16
8000124c:	14400002 	bnez	v0,80001258 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:17
80001250:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:19
80001254:	26730001 	addiu	s3,s3,1

80001258 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:22
80001258:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:23
8000125c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:24
80001260:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:25
80001264:	00000000 	nop

80001268 <n1_add_test>:
n1_add_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:11
80001268:	3c040100 	lui	a0,0x100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:12
8000126c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:14
80001270:	3c080480 	lui	t0,0x480
80001274:	3508ff04 	ori	t0,t0,0xff04
80001278:	3c094093 	lui	t1,0x4093
8000127c:	35293204 	ori	t1,t1,0x3204
80001280:	01098020 	add	s0,t0,t1
80001284:	3c124514 	lui	s2,0x4514
80001288:	36523108 	ori	s2,s2,0x3108
8000128c:	16120004 	bne	s0,s2,800012a0 <inst_error>
80001290:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:16
80001294:	14400002 	bnez	v0,800012a0 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:17
80001298:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:19
8000129c:	26730001 	addiu	s3,s3,1

800012a0 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:22
800012a0:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:23
800012a4:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:24
800012a8:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:25
800012ac:	00000000 	nop

800012b0 <n5_sub_test>:
n5_sub_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:11
800012b0:	3c040500 	lui	a0,0x500
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:12
800012b4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:14
800012b8:	3c0814ff 	lui	t0,0x14ff
800012bc:	3508b0e6 	ori	t0,t0,0xb0e6
800012c0:	3c09088c 	lui	t1,0x88c
800012c4:	3529b248 	ori	t1,t1,0xb248
800012c8:	01098022 	sub	s0,t0,t1
800012cc:	3c120c72 	lui	s2,0xc72
800012d0:	3652fe9e 	ori	s2,s2,0xfe9e
800012d4:	16120004 	bne	s0,s2,800012e8 <inst_error>
800012d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:16
800012dc:	14400002 	bnez	v0,800012e8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:17
800012e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:19
800012e4:	26730001 	addiu	s3,s3,1

800012e8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:22
800012e8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:23
800012ec:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:24
800012f0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:25
800012f4:	00000000 	nop

800012f8 <n10_sltiu_test>:
n10_sltiu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:11
800012f8:	3c040a00 	lui	a0,0xa00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:12
800012fc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:14
80001300:	3c08c254 	lui	t0,0xc254
80001304:	3508e3d8 	ori	t0,t0,0xe3d8
80001308:	3409f469 	li	t1,0xf469
8000130c:	2d10f469 	sltiu	s0,t0,-2967
80001310:	24120001 	li	s2,1
80001314:	16120004 	bne	s0,s2,80001328 <inst_error>
80001318:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:16
8000131c:	14400002 	bnez	v0,80001328 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:17
80001320:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:19
80001324:	26730001 	addiu	s3,s3,1

80001328 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:22
80001328:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:23
8000132c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:24
80001330:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:25
80001334:	00000000 	nop

80001338 <n18_nor_test>:
n18_nor_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:11
80001338:	3c041200 	lui	a0,0x1200
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:12
8000133c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:14
80001340:	3c08ad9c 	lui	t0,0xad9c
80001344:	3508c00e 	ori	t0,t0,0xc00e
80001348:	3c0938b7 	lui	t1,0x38b7
8000134c:	3529ec24 	ori	t1,t1,0xec24
80001350:	01098027 	nor	s0,t0,t1
80001354:	3c124240 	lui	s2,0x4240
80001358:	365213d1 	ori	s2,s2,0x13d1
8000135c:	16120004 	bne	s0,s2,80001370 <inst_error>
80001360:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:16
80001364:	14400002 	bnez	v0,80001370 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:17
80001368:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:19
8000136c:	26730001 	addiu	s3,s3,1

80001370 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:22
80001370:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:23
80001374:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:24
80001378:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:25
8000137c:	00000000 	nop

80001380 <n55_eret_test>:
n55_eret_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:11
80001380:	3c043700 	lui	a0,0x3700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:12
80001384:	24020003 	li	v0,3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:14
80001388:	3c087fff 	lui	t0,0x7fff
8000138c:	3508ffff 	ori	t0,t0,0xffff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:15
80001390:	21087fff 	addi	t0,t0,32767
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:16
80001394:	3c021234 	lui	v0,0x1234
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:17
80001398:	3c028765 	lui	v0,0x8765
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:18
8000139c:	3c025678 	lui	v0,0x5678

800013a0 <eret_ret_pc>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:21
800013a0:	3c024321 	lui	v0,0x4321
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:23
800013a4:	3c100f0f 	lui	s0,0xf0f
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:24
800013a8:	14500002 	bne	v0,s0,800013b4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:25
800013ac:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:27
800013b0:	26730001 	addiu	s3,s3,1

800013b4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:30
800013b4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:31
800013b8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:32
800013bc:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:33
800013c0:	00000000 	nop
inst_error():
800013c4:	00000000 	nop

800013c8 <n49_lh_test>:
n49_lh_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:11
800013c8:	3c043100 	lui	a0,0x3100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:12
800013cc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:14
800013d0:	3c095184 	lui	t1,0x5184
800013d4:	35292560 	ori	t1,t1,0x2560
800013d8:	3c088002 	lui	t0,0x8002
800013dc:	35082bc4 	ori	t0,t0,0x2bc4
800013e0:	240a127c 	li	t2,4732
800013e4:	240c127c 	li	t4,4732
800013e8:	ad09127c 	sw	t1,4732(t0)
800013ec:	8510127c 	lh	s0,4732(t0)
800013f0:	24122560 	li	s2,9568
800013f4:	16120401 	bne	s0,s2,800023fc <inst_error>
800013f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:15
800013fc:	3c092516 	lui	t1,0x2516
80001400:	3529116e 	ori	t1,t1,0x116e
80001404:	3c088002 	lui	t0,0x8002
80001408:	35082220 	ori	t0,t0,0x2220
8000140c:	340aa890 	li	t2,0xa890
80001410:	340ca890 	li	t4,0xa890
80001414:	3c010001 	lui	at,0x1
80001418:	00280821 	addu	at,at,t0
8000141c:	ac29a890 	sw	t1,-22384(at)
80001420:	3c100001 	lui	s0,0x1
80001424:	02088021 	addu	s0,s0,t0
80001428:	8610a890 	lh	s0,-22384(s0)
8000142c:	2412116e 	li	s2,4462
80001430:	161203f2 	bne	s0,s2,800023fc <inst_error>
80001434:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:16
80001438:	3c094932 	lui	t1,0x4932
8000143c:	3529330c 	ori	t1,t1,0x330c
80001440:	3c088002 	lui	t0,0x8002
80001444:	35083810 	ori	t0,t0,0x3810
80001448:	340a8526 	li	t2,0x8526
8000144c:	340c8524 	li	t4,0x8524
80001450:	3c010001 	lui	at,0x1
80001454:	00280821 	addu	at,at,t0
80001458:	ac298524 	sw	t1,-31452(at)
8000145c:	3c100001 	lui	s0,0x1
80001460:	02088021 	addu	s0,s0,t0
80001464:	86108526 	lh	s0,-31450(s0)
80001468:	24124932 	li	s2,18738
8000146c:	161203e3 	bne	s0,s2,800023fc <inst_error>
80001470:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:17
80001474:	3c09be4d 	lui	t1,0xbe4d
80001478:	35299ac8 	ori	t1,t1,0x9ac8
8000147c:	3c088002 	lui	t0,0x8002
80001480:	3508ac60 	ori	t0,t0,0xac60
80001484:	240a0092 	li	t2,146
80001488:	240c0090 	li	t4,144
8000148c:	ad090090 	sw	t1,144(t0)
80001490:	85100092 	lh	s0,146(t0)
80001494:	2412be4d 	li	s2,-16819
80001498:	161203d8 	bne	s0,s2,800023fc <inst_error>
8000149c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:18
800014a0:	3c095f0c 	lui	t1,0x5f0c
800014a4:	35290856 	ori	t1,t1,0x856
800014a8:	3c088002 	lui	t0,0x8002
800014ac:	35081800 	ori	t0,t0,0x1800
800014b0:	340a8964 	li	t2,0x8964
800014b4:	340c8964 	li	t4,0x8964
800014b8:	3c010001 	lui	at,0x1
800014bc:	00280821 	addu	at,at,t0
800014c0:	ac298964 	sw	t1,-30364(at)
800014c4:	3c100001 	lui	s0,0x1
800014c8:	02088021 	addu	s0,s0,t0
800014cc:	86108964 	lh	s0,-30364(s0)
800014d0:	24120856 	li	s2,2134
800014d4:	161203c9 	bne	s0,s2,800023fc <inst_error>
800014d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:19
800014dc:	3c09bfa5 	lui	t1,0xbfa5
800014e0:	3529bc80 	ori	t1,t1,0xbc80
800014e4:	3c088002 	lui	t0,0x8002
800014e8:	35089ca0 	ori	t0,t0,0x9ca0
800014ec:	240a2950 	li	t2,10576
800014f0:	240c2950 	li	t4,10576
800014f4:	ad092950 	sw	t1,10576(t0)
800014f8:	85102950 	lh	s0,10576(t0)
800014fc:	2412bc80 	li	s2,-17280
80001500:	161203be 	bne	s0,s2,800023fc <inst_error>
80001504:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:20
80001508:	3c0967b0 	lui	t1,0x67b0
8000150c:	3529ca80 	ori	t1,t1,0xca80
80001510:	3c088002 	lui	t0,0x8002
80001514:	3508b258 	ori	t0,t0,0xb258
80001518:	240a2f74 	li	t2,12148
8000151c:	240c2f74 	li	t4,12148
80001520:	ad092f74 	sw	t1,12148(t0)
80001524:	85102f74 	lh	s0,12148(t0)
80001528:	2412ca80 	li	s2,-13696
8000152c:	161203b3 	bne	s0,s2,800023fc <inst_error>
80001530:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:21
80001534:	3c09b0c4 	lui	t1,0xb0c4
80001538:	3529ee88 	ori	t1,t1,0xee88
8000153c:	3c088002 	lui	t0,0x8002
80001540:	35080a08 	ori	t0,t0,0xa08
80001544:	240a29d4 	li	t2,10708
80001548:	240c29d4 	li	t4,10708
8000154c:	ad0929d4 	sw	t1,10708(t0)
80001550:	851029d4 	lh	s0,10708(t0)
80001554:	2412ee88 	li	s2,-4472
80001558:	161203a8 	bne	s0,s2,800023fc <inst_error>
8000155c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:22
80001560:	3c09a28f 	lui	t1,0xa28f
80001564:	3529bedc 	ori	t1,t1,0xbedc
80001568:	3c088002 	lui	t0,0x8002
8000156c:	3508130c 	ori	t0,t0,0x130c
80001570:	340acf28 	li	t2,0xcf28
80001574:	340ccf28 	li	t4,0xcf28
80001578:	3c010001 	lui	at,0x1
8000157c:	00280821 	addu	at,at,t0
80001580:	ac29cf28 	sw	t1,-12504(at)
80001584:	3c100001 	lui	s0,0x1
80001588:	02088021 	addu	s0,s0,t0
8000158c:	8610cf28 	lh	s0,-12504(s0)
80001590:	2412bedc 	li	s2,-16676
80001594:	16120399 	bne	s0,s2,800023fc <inst_error>
80001598:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:23
8000159c:	3c090158 	lui	t1,0x158
800015a0:	35299400 	ori	t1,t1,0x9400
800015a4:	3c088002 	lui	t0,0x8002
800015a8:	35083568 	ori	t0,t0,0x3568
800015ac:	340a9f36 	li	t2,0x9f36
800015b0:	340c9f34 	li	t4,0x9f34
800015b4:	3c010001 	lui	at,0x1
800015b8:	00280821 	addu	at,at,t0
800015bc:	ac299f34 	sw	t1,-24780(at)
800015c0:	3c100001 	lui	s0,0x1
800015c4:	02088021 	addu	s0,s0,t0
800015c8:	86109f36 	lh	s0,-24778(s0)
800015cc:	24120158 	li	s2,344
800015d0:	1612038a 	bne	s0,s2,800023fc <inst_error>
800015d4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:24
800015d8:	3c092048 	lui	t1,0x2048
800015dc:	35293e02 	ori	t1,t1,0x3e02
800015e0:	3c088002 	lui	t0,0x8002
800015e4:	3508d600 	ori	t0,t0,0xd600
800015e8:	240a1e7c 	li	t2,7804
800015ec:	240c1e7c 	li	t4,7804
800015f0:	ad091e7c 	sw	t1,7804(t0)
800015f4:	85101e7c 	lh	s0,7804(t0)
800015f8:	24123e02 	li	s2,15874
800015fc:	1612037f 	bne	s0,s2,800023fc <inst_error>
80001600:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:25
80001604:	3c096171 	lui	t1,0x6171
80001608:	35298b00 	ori	t1,t1,0x8b00
8000160c:	3c088002 	lui	t0,0x8002
80001610:	35088550 	ori	t0,t0,0x8550
80001614:	240a24e0 	li	t2,9440
80001618:	240c24e0 	li	t4,9440
8000161c:	ad0924e0 	sw	t1,9440(t0)
80001620:	851024e0 	lh	s0,9440(t0)
80001624:	24128b00 	li	s2,-29952
80001628:	16120374 	bne	s0,s2,800023fc <inst_error>
8000162c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:26
80001630:	3c09b204 	lui	t1,0xb204
80001634:	35294740 	ori	t1,t1,0x4740
80001638:	3c088002 	lui	t0,0x8002
8000163c:	35081a30 	ori	t0,t0,0x1a30
80001640:	240a6d88 	li	t2,28040
80001644:	240c6d88 	li	t4,28040
80001648:	ad096d88 	sw	t1,28040(t0)
8000164c:	85106d88 	lh	s0,28040(t0)
80001650:	24124740 	li	s2,18240
80001654:	16120369 	bne	s0,s2,800023fc <inst_error>
80001658:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:27
8000165c:	3c096dbe 	lui	t1,0x6dbe
80001660:	352993b6 	ori	t1,t1,0x93b6
80001664:	3c088002 	lui	t0,0x8002
80001668:	35082a08 	ori	t0,t0,0x2a08
8000166c:	240a13e0 	li	t2,5088
80001670:	240c13e0 	li	t4,5088
80001674:	ad0913e0 	sw	t1,5088(t0)
80001678:	851013e0 	lh	s0,5088(t0)
8000167c:	241293b6 	li	s2,-27722
80001680:	1612035e 	bne	s0,s2,800023fc <inst_error>
80001684:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:28
80001688:	3c09e96e 	lui	t1,0xe96e
8000168c:	35297db0 	ori	t1,t1,0x7db0
80001690:	3c088002 	lui	t0,0x8002
80001694:	350825e8 	ori	t0,t0,0x25e8
80001698:	340ab50a 	li	t2,0xb50a
8000169c:	340cb508 	li	t4,0xb508
800016a0:	3c010001 	lui	at,0x1
800016a4:	00280821 	addu	at,at,t0
800016a8:	ac29b508 	sw	t1,-19192(at)
800016ac:	3c100001 	lui	s0,0x1
800016b0:	02088021 	addu	s0,s0,t0
800016b4:	8610b50a 	lh	s0,-19190(s0)
800016b8:	2412e96e 	li	s2,-5778
800016bc:	1612034f 	bne	s0,s2,800023fc <inst_error>
800016c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:29
800016c4:	3c096737 	lui	t1,0x6737
800016c8:	3529a118 	ori	t1,t1,0xa118
800016cc:	3c088002 	lui	t0,0x8002
800016d0:	35084f78 	ori	t0,t0,0x4f78
800016d4:	240a4fae 	li	t2,20398
800016d8:	240c4fac 	li	t4,20396
800016dc:	ad094fac 	sw	t1,20396(t0)
800016e0:	85104fae 	lh	s0,20398(t0)
800016e4:	24126737 	li	s2,26423
800016e8:	16120344 	bne	s0,s2,800023fc <inst_error>
800016ec:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:30
800016f0:	3c092fec 	lui	t1,0x2fec
800016f4:	35297a40 	ori	t1,t1,0x7a40
800016f8:	3c088002 	lui	t0,0x8002
800016fc:	35085228 	ori	t0,t0,0x5228
80001700:	340aa466 	li	t2,0xa466
80001704:	340ca464 	li	t4,0xa464
80001708:	3c010001 	lui	at,0x1
8000170c:	00280821 	addu	at,at,t0
80001710:	ac29a464 	sw	t1,-23452(at)
80001714:	3c100001 	lui	s0,0x1
80001718:	02088021 	addu	s0,s0,t0
8000171c:	8610a466 	lh	s0,-23450(s0)
80001720:	24122fec 	li	s2,12268
80001724:	16120335 	bne	s0,s2,800023fc <inst_error>
80001728:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:31
8000172c:	3c095805 	lui	t1,0x5805
80001730:	3529df3d 	ori	t1,t1,0xdf3d
80001734:	3c088002 	lui	t0,0x8002
80001738:	3508e870 	ori	t0,t0,0xe870
8000173c:	240a0454 	li	t2,1108
80001740:	240c0454 	li	t4,1108
80001744:	ad090454 	sw	t1,1108(t0)
80001748:	85100454 	lh	s0,1108(t0)
8000174c:	2412df3d 	li	s2,-8387
80001750:	1612032a 	bne	s0,s2,800023fc <inst_error>
80001754:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:32
80001758:	3c094ea0 	lui	t1,0x4ea0
8000175c:	3529d20c 	ori	t1,t1,0xd20c
80001760:	3c088002 	lui	t0,0x8002
80001764:	35082194 	ori	t0,t0,0x2194
80001768:	340ad7c8 	li	t2,0xd7c8
8000176c:	340cd7c8 	li	t4,0xd7c8
80001770:	3c010001 	lui	at,0x1
80001774:	00280821 	addu	at,at,t0
80001778:	ac29d7c8 	sw	t1,-10296(at)
8000177c:	3c100001 	lui	s0,0x1
80001780:	02088021 	addu	s0,s0,t0
80001784:	8610d7c8 	lh	s0,-10296(s0)
80001788:	2412d20c 	li	s2,-11764
8000178c:	1612031b 	bne	s0,s2,800023fc <inst_error>
80001790:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:33
80001794:	3c097bf8 	lui	t1,0x7bf8
80001798:	3529d942 	ori	t1,t1,0xd942
8000179c:	3c088002 	lui	t0,0x8002
800017a0:	35085d50 	ori	t0,t0,0x5d50
800017a4:	340aa000 	li	t2,0xa000
800017a8:	340ca000 	li	t4,0xa000
800017ac:	3c010001 	lui	at,0x1
800017b0:	00280821 	addu	at,at,t0
800017b4:	ac29a000 	sw	t1,-24576(at)
800017b8:	3c100001 	lui	s0,0x1
800017bc:	02088021 	addu	s0,s0,t0
800017c0:	8610a000 	lh	s0,-24576(s0)
800017c4:	2412d942 	li	s2,-9918
800017c8:	1612030c 	bne	s0,s2,800023fc <inst_error>
800017cc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:34
800017d0:	3c0937ee 	lui	t1,0x37ee
800017d4:	3529910e 	ori	t1,t1,0x910e
800017d8:	3c088002 	lui	t0,0x8002
800017dc:	350897f0 	ori	t0,t0,0x97f0
800017e0:	240a0174 	li	t2,372
800017e4:	240c0174 	li	t4,372
800017e8:	ad090174 	sw	t1,372(t0)
800017ec:	85100174 	lh	s0,372(t0)
800017f0:	2412910e 	li	s2,-28402
800017f4:	16120301 	bne	s0,s2,800023fc <inst_error>
800017f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:35
800017fc:	3c090259 	lui	t1,0x259
80001800:	35293920 	ori	t1,t1,0x3920
80001804:	3c088002 	lui	t0,0x8002
80001808:	350823b8 	ori	t0,t0,0x23b8
8000180c:	340ab00c 	li	t2,0xb00c
80001810:	340cb00c 	li	t4,0xb00c
80001814:	3c010001 	lui	at,0x1
80001818:	00280821 	addu	at,at,t0
8000181c:	ac29b00c 	sw	t1,-20468(at)
80001820:	3c100001 	lui	s0,0x1
80001824:	02088021 	addu	s0,s0,t0
80001828:	8610b00c 	lh	s0,-20468(s0)
8000182c:	24123920 	li	s2,14624
80001830:	161202f2 	bne	s0,s2,800023fc <inst_error>
80001834:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:36
80001838:	3c09b7e2 	lui	t1,0xb7e2
8000183c:	35291268 	ori	t1,t1,0x1268
80001840:	3c088002 	lui	t0,0x8002
80001844:	3508cba8 	ori	t0,t0,0xcba8
80001848:	240a221c 	li	t2,8732
8000184c:	240c221c 	li	t4,8732
80001850:	ad09221c 	sw	t1,8732(t0)
80001854:	8510221c 	lh	s0,8732(t0)
80001858:	24121268 	li	s2,4712
8000185c:	161202e7 	bne	s0,s2,800023fc <inst_error>
80001860:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:37
80001864:	3c090074 	lui	t1,0x74
80001868:	3529b9d0 	ori	t1,t1,0xb9d0
8000186c:	3c088002 	lui	t0,0x8002
80001870:	350817a8 	ori	t0,t0,0x17a8
80001874:	340ac28c 	li	t2,0xc28c
80001878:	340cc28c 	li	t4,0xc28c
8000187c:	3c010001 	lui	at,0x1
80001880:	00280821 	addu	at,at,t0
80001884:	ac29c28c 	sw	t1,-15732(at)
80001888:	3c100001 	lui	s0,0x1
8000188c:	02088021 	addu	s0,s0,t0
80001890:	8610c28c 	lh	s0,-15732(s0)
80001894:	2412b9d0 	li	s2,-17968
80001898:	161202d8 	bne	s0,s2,800023fc <inst_error>
8000189c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:38
800018a0:	3c091326 	lui	t1,0x1326
800018a4:	3529e800 	ori	t1,t1,0xe800
800018a8:	3c088002 	lui	t0,0x8002
800018ac:	35080848 	ori	t0,t0,0x848
800018b0:	340a816e 	li	t2,0x816e
800018b4:	340c816c 	li	t4,0x816c
800018b8:	3c010001 	lui	at,0x1
800018bc:	00280821 	addu	at,at,t0
800018c0:	ac29816c 	sw	t1,-32404(at)
800018c4:	3c100001 	lui	s0,0x1
800018c8:	02088021 	addu	s0,s0,t0
800018cc:	8610816e 	lh	s0,-32402(s0)
800018d0:	24121326 	li	s2,4902
800018d4:	161202c9 	bne	s0,s2,800023fc <inst_error>
800018d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:39
800018dc:	3c09b42e 	lui	t1,0xb42e
800018e0:	35295a40 	ori	t1,t1,0x5a40
800018e4:	3c088002 	lui	t0,0x8002
800018e8:	35083b34 	ori	t0,t0,0x3b34
800018ec:	240a14d8 	li	t2,5336
800018f0:	240c14d8 	li	t4,5336
800018f4:	ad0914d8 	sw	t1,5336(t0)
800018f8:	851014d8 	lh	s0,5336(t0)
800018fc:	24125a40 	li	s2,23104
80001900:	161202be 	bne	s0,s2,800023fc <inst_error>
80001904:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:40
80001908:	3c09783e 	lui	t1,0x783e
8000190c:	35290a00 	ori	t1,t1,0xa00
80001910:	3c088002 	lui	t0,0x8002
80001914:	35087838 	ori	t0,t0,0x7838
80001918:	240a2c3c 	li	t2,11324
8000191c:	240c2c3c 	li	t4,11324
80001920:	ad092c3c 	sw	t1,11324(t0)
80001924:	85102c3c 	lh	s0,11324(t0)
80001928:	24120a00 	li	s2,2560
8000192c:	161202b3 	bne	s0,s2,800023fc <inst_error>
80001930:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:41
80001934:	3c09d694 	lui	t1,0xd694
80001938:	35292958 	ori	t1,t1,0x2958
8000193c:	3c088002 	lui	t0,0x8002
80001940:	350853a8 	ori	t0,t0,0x53a8
80001944:	240a564a 	li	t2,22090
80001948:	240c5648 	li	t4,22088
8000194c:	ad095648 	sw	t1,22088(t0)
80001950:	8510564a 	lh	s0,22090(t0)
80001954:	2412d694 	li	s2,-10604
80001958:	161202a8 	bne	s0,s2,800023fc <inst_error>
8000195c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:42
80001960:	3c099d23 	lui	t1,0x9d23
80001964:	35297d60 	ori	t1,t1,0x7d60
80001968:	3c088002 	lui	t0,0x8002
8000196c:	35080600 	ori	t0,t0,0x600
80001970:	240a590c 	li	t2,22796
80001974:	240c590c 	li	t4,22796
80001978:	ad09590c 	sw	t1,22796(t0)
8000197c:	8510590c 	lh	s0,22796(t0)
80001980:	24127d60 	li	s2,32096
80001984:	1612029d 	bne	s0,s2,800023fc <inst_error>
80001988:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:43
8000198c:	3c09098f 	lui	t1,0x98f
80001990:	35292730 	ori	t1,t1,0x2730
80001994:	3c088002 	lui	t0,0x8002
80001998:	35081b58 	ori	t0,t0,0x1b58
8000199c:	340a88a8 	li	t2,0x88a8
800019a0:	340c88a8 	li	t4,0x88a8
800019a4:	3c010001 	lui	at,0x1
800019a8:	00280821 	addu	at,at,t0
800019ac:	ac2988a8 	sw	t1,-30552(at)
800019b0:	3c100001 	lui	s0,0x1
800019b4:	02088021 	addu	s0,s0,t0
800019b8:	861088a8 	lh	s0,-30552(s0)
800019bc:	24122730 	li	s2,10032
800019c0:	1612028e 	bne	s0,s2,800023fc <inst_error>
800019c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:44
800019c8:	3c092ab8 	lui	t1,0x2ab8
800019cc:	3529ce90 	ori	t1,t1,0xce90
800019d0:	3c088002 	lui	t0,0x8002
800019d4:	350831ec 	ori	t0,t0,0x31ec
800019d8:	240a38d0 	li	t2,14544
800019dc:	240c38d0 	li	t4,14544
800019e0:	ad0938d0 	sw	t1,14544(t0)
800019e4:	851038d0 	lh	s0,14544(t0)
800019e8:	2412ce90 	li	s2,-12656
800019ec:	16120283 	bne	s0,s2,800023fc <inst_error>
800019f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:45
800019f4:	3c0937fd 	lui	t1,0x37fd
800019f8:	3529bec8 	ori	t1,t1,0xbec8
800019fc:	3c088002 	lui	t0,0x8002
80001a00:	35084890 	ori	t0,t0,0x4890
80001a04:	240a5bd2 	li	t2,23506
80001a08:	240c5bd0 	li	t4,23504
80001a0c:	ad095bd0 	sw	t1,23504(t0)
80001a10:	85105bd2 	lh	s0,23506(t0)
80001a14:	241237fd 	li	s2,14333
80001a18:	16120278 	bne	s0,s2,800023fc <inst_error>
80001a1c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:46
80001a20:	3c0934fc 	lui	t1,0x34fc
80001a24:	352933ac 	ori	t1,t1,0x33ac
80001a28:	3c088002 	lui	t0,0x8002
80001a2c:	35085448 	ori	t0,t0,0x5448
80001a30:	240a16d2 	li	t2,5842
80001a34:	240c16d0 	li	t4,5840
80001a38:	ad0916d0 	sw	t1,5840(t0)
80001a3c:	851016d2 	lh	s0,5842(t0)
80001a40:	241234fc 	li	s2,13564
80001a44:	1612026d 	bne	s0,s2,800023fc <inst_error>
80001a48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:47
80001a4c:	3c09dcc1 	lui	t1,0xdcc1
80001a50:	352944c8 	ori	t1,t1,0x44c8
80001a54:	3c088002 	lui	t0,0x8002
80001a58:	35086940 	ori	t0,t0,0x6940
80001a5c:	240a673c 	li	t2,26428
80001a60:	240c673c 	li	t4,26428
80001a64:	ad09673c 	sw	t1,26428(t0)
80001a68:	8510673c 	lh	s0,26428(t0)
80001a6c:	241244c8 	li	s2,17608
80001a70:	16120262 	bne	s0,s2,800023fc <inst_error>
80001a74:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:48
80001a78:	3c093354 	lui	t1,0x3354
80001a7c:	3529e5b4 	ori	t1,t1,0xe5b4
80001a80:	3c088002 	lui	t0,0x8002
80001a84:	35085834 	ori	t0,t0,0x5834
80001a88:	240a3926 	li	t2,14630
80001a8c:	240c3924 	li	t4,14628
80001a90:	ad093924 	sw	t1,14628(t0)
80001a94:	85103926 	lh	s0,14630(t0)
80001a98:	24123354 	li	s2,13140
80001a9c:	16120257 	bne	s0,s2,800023fc <inst_error>
80001aa0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:49
80001aa4:	3c09b5e7 	lui	t1,0xb5e7
80001aa8:	3529da8e 	ori	t1,t1,0xda8e
80001aac:	3c088002 	lui	t0,0x8002
80001ab0:	3508cc78 	ori	t0,t0,0xcc78
80001ab4:	240a0800 	li	t2,2048
80001ab8:	240c0800 	li	t4,2048
80001abc:	ad090800 	sw	t1,2048(t0)
80001ac0:	85100800 	lh	s0,2048(t0)
80001ac4:	2412da8e 	li	s2,-9586
80001ac8:	1612024c 	bne	s0,s2,800023fc <inst_error>
80001acc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:50
80001ad0:	3c098c87 	lui	t1,0x8c87
80001ad4:	3529a650 	ori	t1,t1,0xa650
80001ad8:	3c088002 	lui	t0,0x8002
80001adc:	35082d9c 	ori	t0,t0,0x2d9c
80001ae0:	240a6440 	li	t2,25664
80001ae4:	240c6440 	li	t4,25664
80001ae8:	ad096440 	sw	t1,25664(t0)
80001aec:	85106440 	lh	s0,25664(t0)
80001af0:	2412a650 	li	s2,-22960
80001af4:	16120241 	bne	s0,s2,800023fc <inst_error>
80001af8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:51
80001afc:	3c093df2 	lui	t1,0x3df2
80001b00:	35299bc0 	ori	t1,t1,0x9bc0
80001b04:	3c088003 	lui	t0,0x8003
80001b08:	340a834e 	li	t2,0x834e
80001b0c:	340c834c 	li	t4,0x834c
80001b10:	3c010001 	lui	at,0x1
80001b14:	00280821 	addu	at,at,t0
80001b18:	ac29834c 	sw	t1,-31924(at)
80001b1c:	3c100001 	lui	s0,0x1
80001b20:	02088021 	addu	s0,s0,t0
80001b24:	8610834e 	lh	s0,-31922(s0)
80001b28:	24123df2 	li	s2,15858
80001b2c:	16120233 	bne	s0,s2,800023fc <inst_error>
80001b30:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:52
80001b34:	3c09975c 	lui	t1,0x975c
80001b38:	35293a5c 	ori	t1,t1,0x3a5c
80001b3c:	3c088003 	lui	t0,0x8003
80001b40:	340ae8cc 	li	t2,0xe8cc
80001b44:	340ce8cc 	li	t4,0xe8cc
80001b48:	3c010001 	lui	at,0x1
80001b4c:	00280821 	addu	at,at,t0
80001b50:	ac29e8cc 	sw	t1,-5940(at)
80001b54:	3c100001 	lui	s0,0x1
80001b58:	02088021 	addu	s0,s0,t0
80001b5c:	8610e8cc 	lh	s0,-5940(s0)
80001b60:	24123a5c 	li	s2,14940
80001b64:	16120225 	bne	s0,s2,800023fc <inst_error>
80001b68:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:53
80001b6c:	3c0929ab 	lui	t1,0x29ab
80001b70:	352953d6 	ori	t1,t1,0x53d6
80001b74:	3c088003 	lui	t0,0x8003
80001b78:	340a89e8 	li	t2,0x89e8
80001b7c:	340c89e8 	li	t4,0x89e8
80001b80:	3c010001 	lui	at,0x1
80001b84:	00280821 	addu	at,at,t0
80001b88:	ac2989e8 	sw	t1,-30232(at)
80001b8c:	3c100001 	lui	s0,0x1
80001b90:	02088021 	addu	s0,s0,t0
80001b94:	861089e8 	lh	s0,-30232(s0)
80001b98:	241253d6 	li	s2,21462
80001b9c:	16120217 	bne	s0,s2,800023fc <inst_error>
80001ba0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:54
80001ba4:	3c09763b 	lui	t1,0x763b
80001ba8:	35292600 	ori	t1,t1,0x2600
80001bac:	3c088003 	lui	t0,0x8003
80001bb0:	240a3e7c 	li	t2,15996
80001bb4:	240c3e7c 	li	t4,15996
80001bb8:	ad093e7c 	sw	t1,15996(t0)
80001bbc:	85103e7c 	lh	s0,15996(t0)
80001bc0:	24122600 	li	s2,9728
80001bc4:	1612020d 	bne	s0,s2,800023fc <inst_error>
80001bc8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:55
80001bcc:	3c09774e 	lui	t1,0x774e
80001bd0:	3529d370 	ori	t1,t1,0xd370
80001bd4:	3c088003 	lui	t0,0x8003
80001bd8:	340aa760 	li	t2,0xa760
80001bdc:	340ca760 	li	t4,0xa760
80001be0:	3c010001 	lui	at,0x1
80001be4:	00280821 	addu	at,at,t0
80001be8:	ac29a760 	sw	t1,-22688(at)
80001bec:	3c100001 	lui	s0,0x1
80001bf0:	02088021 	addu	s0,s0,t0
80001bf4:	8610a760 	lh	s0,-22688(s0)
80001bf8:	2412d370 	li	s2,-11408
80001bfc:	161201ff 	bne	s0,s2,800023fc <inst_error>
80001c00:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:56
80001c04:	3c098e24 	lui	t1,0x8e24
80001c08:	3529d680 	ori	t1,t1,0xd680
80001c0c:	3c088003 	lui	t0,0x8003
80001c10:	340affe0 	li	t2,0xffe0
80001c14:	340cffe0 	li	t4,0xffe0
80001c18:	3c010001 	lui	at,0x1
80001c1c:	00280821 	addu	at,at,t0
80001c20:	ac29ffe0 	sw	t1,-32(at)
80001c24:	3c100001 	lui	s0,0x1
80001c28:	02088021 	addu	s0,s0,t0
80001c2c:	8610ffe0 	lh	s0,-32(s0)
80001c30:	2412d680 	li	s2,-10624
80001c34:	161201f1 	bne	s0,s2,800023fc <inst_error>
80001c38:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:57
80001c3c:	3c09fe39 	lui	t1,0xfe39
80001c40:	352936cb 	ori	t1,t1,0x36cb
80001c44:	3c088003 	lui	t0,0x8003
80001c48:	240a17b0 	li	t2,6064
80001c4c:	240c17b0 	li	t4,6064
80001c50:	ad0917b0 	sw	t1,6064(t0)
80001c54:	851017b0 	lh	s0,6064(t0)
80001c58:	241236cb 	li	s2,14027
80001c5c:	161201e7 	bne	s0,s2,800023fc <inst_error>
80001c60:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:58
80001c64:	3c090b89 	lui	t1,0xb89
80001c68:	35292a40 	ori	t1,t1,0x2a40
80001c6c:	3c088003 	lui	t0,0x8003
80001c70:	340ab03a 	li	t2,0xb03a
80001c74:	340cb038 	li	t4,0xb038
80001c78:	3c010001 	lui	at,0x1
80001c7c:	00280821 	addu	at,at,t0
80001c80:	ac29b038 	sw	t1,-20424(at)
80001c84:	3c100001 	lui	s0,0x1
80001c88:	02088021 	addu	s0,s0,t0
80001c8c:	8610b03a 	lh	s0,-20422(s0)
80001c90:	24120b89 	li	s2,2953
80001c94:	161201d9 	bne	s0,s2,800023fc <inst_error>
80001c98:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:59
80001c9c:	3c09d92f 	lui	t1,0xd92f
80001ca0:	3529e108 	ori	t1,t1,0xe108
80001ca4:	3c088003 	lui	t0,0x8003
80001ca8:	240a5d48 	li	t2,23880
80001cac:	240c5d48 	li	t4,23880
80001cb0:	ad095d48 	sw	t1,23880(t0)
80001cb4:	85105d48 	lh	s0,23880(t0)
80001cb8:	2412e108 	li	s2,-7928
80001cbc:	161201cf 	bne	s0,s2,800023fc <inst_error>
80001cc0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:60
80001cc4:	3c094c4b 	lui	t1,0x4c4b
80001cc8:	3529c954 	ori	t1,t1,0xc954
80001ccc:	3c088003 	lui	t0,0x8003
80001cd0:	240a2258 	li	t2,8792
80001cd4:	240c2258 	li	t4,8792
80001cd8:	ad092258 	sw	t1,8792(t0)
80001cdc:	85102258 	lh	s0,8792(t0)
80001ce0:	2412c954 	li	s2,-13996
80001ce4:	161201c5 	bne	s0,s2,800023fc <inst_error>
80001ce8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:61
80001cec:	3c09b7ba 	lui	t1,0xb7ba
80001cf0:	3529ba40 	ori	t1,t1,0xba40
80001cf4:	3c088003 	lui	t0,0x8003
80001cf8:	340aa106 	li	t2,0xa106
80001cfc:	340ca104 	li	t4,0xa104
80001d00:	3c010001 	lui	at,0x1
80001d04:	00280821 	addu	at,at,t0
80001d08:	ac29a104 	sw	t1,-24316(at)
80001d0c:	3c100001 	lui	s0,0x1
80001d10:	02088021 	addu	s0,s0,t0
80001d14:	8610a106 	lh	s0,-24314(s0)
80001d18:	2412b7ba 	li	s2,-18502
80001d1c:	161201b7 	bne	s0,s2,800023fc <inst_error>
80001d20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:62
80001d24:	3c098a75 	lui	t1,0x8a75
80001d28:	35294a34 	ori	t1,t1,0x4a34
80001d2c:	3c088003 	lui	t0,0x8003
80001d30:	240a53a8 	li	t2,21416
80001d34:	240c53a8 	li	t4,21416
80001d38:	ad0953a8 	sw	t1,21416(t0)
80001d3c:	851053a8 	lh	s0,21416(t0)
80001d40:	24124a34 	li	s2,18996
80001d44:	161201ad 	bne	s0,s2,800023fc <inst_error>
80001d48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:63
80001d4c:	3c09062c 	lui	t1,0x62c
80001d50:	35290990 	ori	t1,t1,0x990
80001d54:	3c088003 	lui	t0,0x8003
80001d58:	340ab7c0 	li	t2,0xb7c0
80001d5c:	340cb7c0 	li	t4,0xb7c0
80001d60:	3c010001 	lui	at,0x1
80001d64:	00280821 	addu	at,at,t0
80001d68:	ac29b7c0 	sw	t1,-18496(at)
80001d6c:	3c100001 	lui	s0,0x1
80001d70:	02088021 	addu	s0,s0,t0
80001d74:	8610b7c0 	lh	s0,-18496(s0)
80001d78:	24120990 	li	s2,2448
80001d7c:	1612019f 	bne	s0,s2,800023fc <inst_error>
80001d80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:64
80001d84:	3c09f3c0 	lui	t1,0xf3c0
80001d88:	3529fc50 	ori	t1,t1,0xfc50
80001d8c:	3c088003 	lui	t0,0x8003
80001d90:	340ae692 	li	t2,0xe692
80001d94:	340ce690 	li	t4,0xe690
80001d98:	3c010001 	lui	at,0x1
80001d9c:	00280821 	addu	at,at,t0
80001da0:	ac29e690 	sw	t1,-6512(at)
80001da4:	3c100001 	lui	s0,0x1
80001da8:	02088021 	addu	s0,s0,t0
80001dac:	8610e692 	lh	s0,-6510(s0)
80001db0:	2412f3c0 	li	s2,-3136
80001db4:	16120191 	bne	s0,s2,800023fc <inst_error>
80001db8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:65
80001dbc:	3c09941e 	lui	t1,0x941e
80001dc0:	35291b70 	ori	t1,t1,0x1b70
80001dc4:	3c088003 	lui	t0,0x8003
80001dc8:	340a9544 	li	t2,0x9544
80001dcc:	340c9544 	li	t4,0x9544
80001dd0:	3c010001 	lui	at,0x1
80001dd4:	00280821 	addu	at,at,t0
80001dd8:	ac299544 	sw	t1,-27324(at)
80001ddc:	3c100001 	lui	s0,0x1
80001de0:	02088021 	addu	s0,s0,t0
80001de4:	86109544 	lh	s0,-27324(s0)
80001de8:	24121b70 	li	s2,7024
80001dec:	16120183 	bne	s0,s2,800023fc <inst_error>
80001df0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:66
80001df4:	3c0906a8 	lui	t1,0x6a8
80001df8:	3529f600 	ori	t1,t1,0xf600
80001dfc:	3c088003 	lui	t0,0x8003
80001e00:	340ac14e 	li	t2,0xc14e
80001e04:	340cc14c 	li	t4,0xc14c
80001e08:	3c010001 	lui	at,0x1
80001e0c:	00280821 	addu	at,at,t0
80001e10:	ac29c14c 	sw	t1,-16052(at)
80001e14:	3c100001 	lui	s0,0x1
80001e18:	02088021 	addu	s0,s0,t0
80001e1c:	8610c14e 	lh	s0,-16050(s0)
80001e20:	241206a8 	li	s2,1704
80001e24:	16120175 	bne	s0,s2,800023fc <inst_error>
80001e28:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:67
80001e2c:	3c09f0c9 	lui	t1,0xf0c9
80001e30:	3529f8c0 	ori	t1,t1,0xf8c0
80001e34:	3c088003 	lui	t0,0x8003
80001e38:	240a4156 	li	t2,16726
80001e3c:	240c4154 	li	t4,16724
80001e40:	ad094154 	sw	t1,16724(t0)
80001e44:	85104156 	lh	s0,16726(t0)
80001e48:	2412f0c9 	li	s2,-3895
80001e4c:	1612016b 	bne	s0,s2,800023fc <inst_error>
80001e50:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:68
80001e54:	3c096d67 	lui	t1,0x6d67
80001e58:	3529df7c 	ori	t1,t1,0xdf7c
80001e5c:	3c088003 	lui	t0,0x8003
80001e60:	240a1ce6 	li	t2,7398
80001e64:	240c1ce4 	li	t4,7396
80001e68:	ad091ce4 	sw	t1,7396(t0)
80001e6c:	85101ce6 	lh	s0,7398(t0)
80001e70:	24126d67 	li	s2,28007
80001e74:	16120161 	bne	s0,s2,800023fc <inst_error>
80001e78:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:69
80001e7c:	3c097b5c 	lui	t1,0x7b5c
80001e80:	35298c40 	ori	t1,t1,0x8c40
80001e84:	3c088003 	lui	t0,0x8003
80001e88:	340aa170 	li	t2,0xa170
80001e8c:	340ca170 	li	t4,0xa170
80001e90:	3c010001 	lui	at,0x1
80001e94:	00280821 	addu	at,at,t0
80001e98:	ac29a170 	sw	t1,-24208(at)
80001e9c:	3c100001 	lui	s0,0x1
80001ea0:	02088021 	addu	s0,s0,t0
80001ea4:	8610a170 	lh	s0,-24208(s0)
80001ea8:	24128c40 	li	s2,-29632
80001eac:	16120153 	bne	s0,s2,800023fc <inst_error>
80001eb0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:70
80001eb4:	3c09a01d 	lui	t1,0xa01d
80001eb8:	352988d6 	ori	t1,t1,0x88d6
80001ebc:	3c088003 	lui	t0,0x8003
80001ec0:	340af236 	li	t2,0xf236
80001ec4:	340cf234 	li	t4,0xf234
80001ec8:	3c010001 	lui	at,0x1
80001ecc:	00280821 	addu	at,at,t0
80001ed0:	ac29f234 	sw	t1,-3532(at)
80001ed4:	3c100001 	lui	s0,0x1
80001ed8:	02088021 	addu	s0,s0,t0
80001edc:	8610f236 	lh	s0,-3530(s0)
80001ee0:	2412a01d 	li	s2,-24547
80001ee4:	16120145 	bne	s0,s2,800023fc <inst_error>
80001ee8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:71
80001eec:	3c09bb91 	lui	t1,0xbb91
80001ef0:	3529715e 	ori	t1,t1,0x715e
80001ef4:	3c088003 	lui	t0,0x8003
80001ef8:	340aea5e 	li	t2,0xea5e
80001efc:	340cea5c 	li	t4,0xea5c
80001f00:	3c010001 	lui	at,0x1
80001f04:	00280821 	addu	at,at,t0
80001f08:	ac29ea5c 	sw	t1,-5540(at)
80001f0c:	3c100001 	lui	s0,0x1
80001f10:	02088021 	addu	s0,s0,t0
80001f14:	8610ea5e 	lh	s0,-5538(s0)
80001f18:	2412bb91 	li	s2,-17519
80001f1c:	16120137 	bne	s0,s2,800023fc <inst_error>
80001f20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:72
80001f24:	3c09a208 	lui	t1,0xa208
80001f28:	35296268 	ori	t1,t1,0x6268
80001f2c:	3c088003 	lui	t0,0x8003
80001f30:	340aae6c 	li	t2,0xae6c
80001f34:	340cae6c 	li	t4,0xae6c
80001f38:	3c010001 	lui	at,0x1
80001f3c:	00280821 	addu	at,at,t0
80001f40:	ac29ae6c 	sw	t1,-20884(at)
80001f44:	3c100001 	lui	s0,0x1
80001f48:	02088021 	addu	s0,s0,t0
80001f4c:	8610ae6c 	lh	s0,-20884(s0)
80001f50:	24126268 	li	s2,25192
80001f54:	16120129 	bne	s0,s2,800023fc <inst_error>
80001f58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:73
80001f5c:	3c09c16e 	lui	t1,0xc16e
80001f60:	35297fd2 	ori	t1,t1,0x7fd2
80001f64:	3c088003 	lui	t0,0x8003
80001f68:	240a10e4 	li	t2,4324
80001f6c:	240c10e4 	li	t4,4324
80001f70:	ad0910e4 	sw	t1,4324(t0)
80001f74:	851010e4 	lh	s0,4324(t0)
80001f78:	24127fd2 	li	s2,32722
80001f7c:	1612011f 	bne	s0,s2,800023fc <inst_error>
80001f80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:74
80001f84:	3c09f26f 	lui	t1,0xf26f
80001f88:	35290540 	ori	t1,t1,0x540
80001f8c:	3c088003 	lui	t0,0x8003
80001f90:	240a7fb8 	li	t2,32696
80001f94:	240c7fb8 	li	t4,32696
80001f98:	ad097fb8 	sw	t1,32696(t0)
80001f9c:	85107fb8 	lh	s0,32696(t0)
80001fa0:	24120540 	li	s2,1344
80001fa4:	16120115 	bne	s0,s2,800023fc <inst_error>
80001fa8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:75
80001fac:	3c095df5 	lui	t1,0x5df5
80001fb0:	3529b227 	ori	t1,t1,0xb227
80001fb4:	3c088003 	lui	t0,0x8003
80001fb8:	240a2b56 	li	t2,11094
80001fbc:	240c2b54 	li	t4,11092
80001fc0:	ad092b54 	sw	t1,11092(t0)
80001fc4:	85102b56 	lh	s0,11094(t0)
80001fc8:	24125df5 	li	s2,24053
80001fcc:	1612010b 	bne	s0,s2,800023fc <inst_error>
80001fd0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:76
80001fd4:	3c0917cb 	lui	t1,0x17cb
80001fd8:	35292286 	ori	t1,t1,0x2286
80001fdc:	3c088003 	lui	t0,0x8003
80001fe0:	340aa610 	li	t2,0xa610
80001fe4:	340ca610 	li	t4,0xa610
80001fe8:	3c010001 	lui	at,0x1
80001fec:	00280821 	addu	at,at,t0
80001ff0:	ac29a610 	sw	t1,-23024(at)
80001ff4:	3c100001 	lui	s0,0x1
80001ff8:	02088021 	addu	s0,s0,t0
80001ffc:	8610a610 	lh	s0,-23024(s0)
80002000:	24122286 	li	s2,8838
80002004:	161200fd 	bne	s0,s2,800023fc <inst_error>
80002008:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:77
8000200c:	3c09cc5b 	lui	t1,0xcc5b
80002010:	35292bee 	ori	t1,t1,0x2bee
80002014:	3c088003 	lui	t0,0x8003
80002018:	340aba32 	li	t2,0xba32
8000201c:	340cba30 	li	t4,0xba30
80002020:	3c010001 	lui	at,0x1
80002024:	00280821 	addu	at,at,t0
80002028:	ac29ba30 	sw	t1,-17872(at)
8000202c:	3c100001 	lui	s0,0x1
80002030:	02088021 	addu	s0,s0,t0
80002034:	8610ba32 	lh	s0,-17870(s0)
80002038:	2412cc5b 	li	s2,-13221
8000203c:	161200ef 	bne	s0,s2,800023fc <inst_error>
80002040:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:78
80002044:	3c09f148 	lui	t1,0xf148
80002048:	3529bba0 	ori	t1,t1,0xbba0
8000204c:	3c088003 	lui	t0,0x8003
80002050:	340aa0d2 	li	t2,0xa0d2
80002054:	340ca0d0 	li	t4,0xa0d0
80002058:	3c010001 	lui	at,0x1
8000205c:	00280821 	addu	at,at,t0
80002060:	ac29a0d0 	sw	t1,-24368(at)
80002064:	3c100001 	lui	s0,0x1
80002068:	02088021 	addu	s0,s0,t0
8000206c:	8610a0d2 	lh	s0,-24366(s0)
80002070:	2412f148 	li	s2,-3768
80002074:	161200e1 	bne	s0,s2,800023fc <inst_error>
80002078:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:79
8000207c:	3c093377 	lui	t1,0x3377
80002080:	352925a6 	ori	t1,t1,0x25a6
80002084:	3c088003 	lui	t0,0x8003
80002088:	240a762e 	li	t2,30254
8000208c:	240c762c 	li	t4,30252
80002090:	ad09762c 	sw	t1,30252(t0)
80002094:	8510762e 	lh	s0,30254(t0)
80002098:	24123377 	li	s2,13175
8000209c:	161200d7 	bne	s0,s2,800023fc <inst_error>
800020a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:80
800020a4:	3c092982 	lui	t1,0x2982
800020a8:	3529116c 	ori	t1,t1,0x116c
800020ac:	3c088003 	lui	t0,0x8003
800020b0:	340ab980 	li	t2,0xb980
800020b4:	340cb980 	li	t4,0xb980
800020b8:	3c010001 	lui	at,0x1
800020bc:	00280821 	addu	at,at,t0
800020c0:	ac29b980 	sw	t1,-18048(at)
800020c4:	3c100001 	lui	s0,0x1
800020c8:	02088021 	addu	s0,s0,t0
800020cc:	8610b980 	lh	s0,-18048(s0)
800020d0:	2412116c 	li	s2,4460
800020d4:	161200c9 	bne	s0,s2,800023fc <inst_error>
800020d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:81
800020dc:	3c09f335 	lui	t1,0xf335
800020e0:	3529ae26 	ori	t1,t1,0xae26
800020e4:	3c088003 	lui	t0,0x8003
800020e8:	340ade14 	li	t2,0xde14
800020ec:	340cde14 	li	t4,0xde14
800020f0:	3c010001 	lui	at,0x1
800020f4:	00280821 	addu	at,at,t0
800020f8:	ac29de14 	sw	t1,-8684(at)
800020fc:	3c100001 	lui	s0,0x1
80002100:	02088021 	addu	s0,s0,t0
80002104:	8610de14 	lh	s0,-8684(s0)
80002108:	2412ae26 	li	s2,-20954
8000210c:	161200bb 	bne	s0,s2,800023fc <inst_error>
80002110:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:82
80002114:	3c091cea 	lui	t1,0x1cea
80002118:	35293011 	ori	t1,t1,0x3011
8000211c:	3c088003 	lui	t0,0x8003
80002120:	240a4610 	li	t2,17936
80002124:	240c4610 	li	t4,17936
80002128:	ad094610 	sw	t1,17936(t0)
8000212c:	85104610 	lh	s0,17936(t0)
80002130:	24123011 	li	s2,12305
80002134:	161200b1 	bne	s0,s2,800023fc <inst_error>
80002138:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:83
8000213c:	3c095288 	lui	t1,0x5288
80002140:	3529a4be 	ori	t1,t1,0xa4be
80002144:	3c088003 	lui	t0,0x8003
80002148:	240a20e0 	li	t2,8416
8000214c:	240c20e0 	li	t4,8416
80002150:	ad0920e0 	sw	t1,8416(t0)
80002154:	851020e0 	lh	s0,8416(t0)
80002158:	2412a4be 	li	s2,-23362
8000215c:	161200a7 	bne	s0,s2,800023fc <inst_error>
80002160:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:84
80002164:	3c09aba5 	lui	t1,0xaba5
80002168:	35298c80 	ori	t1,t1,0x8c80
8000216c:	3c088003 	lui	t0,0x8003
80002170:	340acecc 	li	t2,0xcecc
80002174:	340ccecc 	li	t4,0xcecc
80002178:	3c010001 	lui	at,0x1
8000217c:	00280821 	addu	at,at,t0
80002180:	ac29cecc 	sw	t1,-12596(at)
80002184:	3c100001 	lui	s0,0x1
80002188:	02088021 	addu	s0,s0,t0
8000218c:	8610cecc 	lh	s0,-12596(s0)
80002190:	24128c80 	li	s2,-29568
80002194:	16120099 	bne	s0,s2,800023fc <inst_error>
80002198:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:85
8000219c:	3c098780 	lui	t1,0x8780
800021a0:	352918c0 	ori	t1,t1,0x18c0
800021a4:	3c088003 	lui	t0,0x8003
800021a8:	240a1a08 	li	t2,6664
800021ac:	240c1a08 	li	t4,6664
800021b0:	ad091a08 	sw	t1,6664(t0)
800021b4:	85101a08 	lh	s0,6664(t0)
800021b8:	241218c0 	li	s2,6336
800021bc:	1612008f 	bne	s0,s2,800023fc <inst_error>
800021c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:86
800021c4:	3c09dcfe 	lui	t1,0xdcfe
800021c8:	35297908 	ori	t1,t1,0x7908
800021cc:	3c088003 	lui	t0,0x8003
800021d0:	240a0002 	li	t2,2
800021d4:	240c0000 	li	t4,0
800021d8:	ad090000 	sw	t1,0(t0)
800021dc:	85100002 	lh	s0,2(t0)
800021e0:	2412dcfe 	li	s2,-8962
800021e4:	16120085 	bne	s0,s2,800023fc <inst_error>
800021e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:87
800021ec:	3c09ca7e 	lui	t1,0xca7e
800021f0:	35292534 	ori	t1,t1,0x2534
800021f4:	3c088003 	lui	t0,0x8003
800021f8:	240a0000 	li	t2,0
800021fc:	240c0000 	li	t4,0
80002200:	ad090000 	sw	t1,0(t0)
80002204:	85100000 	lh	s0,0(t0)
80002208:	24122534 	li	s2,9524
8000220c:	1612007b 	bne	s0,s2,800023fc <inst_error>
80002210:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:88
80002214:	3c093a5f 	lui	t1,0x3a5f
80002218:	35295000 	ori	t1,t1,0x5000
8000221c:	3c088003 	lui	t0,0x8003
80002220:	240a0000 	li	t2,0
80002224:	240c0000 	li	t4,0
80002228:	ad090000 	sw	t1,0(t0)
8000222c:	85100000 	lh	s0,0(t0)
80002230:	24125000 	li	s2,20480
80002234:	16120071 	bne	s0,s2,800023fc <inst_error>
80002238:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:89
8000223c:	3c09c087 	lui	t1,0xc087
80002240:	3529931c 	ori	t1,t1,0x931c
80002244:	3c088003 	lui	t0,0x8003
80002248:	240a0000 	li	t2,0
8000224c:	240c0000 	li	t4,0
80002250:	ad090000 	sw	t1,0(t0)
80002254:	85100000 	lh	s0,0(t0)
80002258:	2412931c 	li	s2,-27876
8000225c:	16120067 	bne	s0,s2,800023fc <inst_error>
80002260:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:90
80002264:	3c090352 	lui	t1,0x352
80002268:	3529c2b4 	ori	t1,t1,0xc2b4
8000226c:	3c088003 	lui	t0,0x8003
80002270:	240a0002 	li	t2,2
80002274:	240c0000 	li	t4,0
80002278:	ad090000 	sw	t1,0(t0)
8000227c:	85100002 	lh	s0,2(t0)
80002280:	24120352 	li	s2,850
80002284:	1612005d 	bne	s0,s2,800023fc <inst_error>
80002288:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:91
8000228c:	3c096742 	lui	t1,0x6742
80002290:	352936b0 	ori	t1,t1,0x36b0
80002294:	3c088003 	lui	t0,0x8003
80002298:	240a0000 	li	t2,0
8000229c:	240c0000 	li	t4,0
800022a0:	ad090000 	sw	t1,0(t0)
800022a4:	85100000 	lh	s0,0(t0)
800022a8:	241236b0 	li	s2,14000
800022ac:	16120053 	bne	s0,s2,800023fc <inst_error>
800022b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:92
800022b4:	3c09b800 	lui	t1,0xb800
800022b8:	35298adc 	ori	t1,t1,0x8adc
800022bc:	3c088003 	lui	t0,0x8003
800022c0:	240a0002 	li	t2,2
800022c4:	240c0000 	li	t4,0
800022c8:	ad090000 	sw	t1,0(t0)
800022cc:	85100002 	lh	s0,2(t0)
800022d0:	2412b800 	li	s2,-18432
800022d4:	16120049 	bne	s0,s2,800023fc <inst_error>
800022d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:93
800022dc:	3c099368 	lui	t1,0x9368
800022e0:	3529c576 	ori	t1,t1,0xc576
800022e4:	3c088003 	lui	t0,0x8003
800022e8:	240a0000 	li	t2,0
800022ec:	240c0000 	li	t4,0
800022f0:	ad090000 	sw	t1,0(t0)
800022f4:	85100000 	lh	s0,0(t0)
800022f8:	2412c576 	li	s2,-14986
800022fc:	1612003f 	bne	s0,s2,800023fc <inst_error>
80002300:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:94
80002304:	3c09fba1 	lui	t1,0xfba1
80002308:	3529ce40 	ori	t1,t1,0xce40
8000230c:	3c088003 	lui	t0,0x8003
80002310:	240a0000 	li	t2,0
80002314:	240c0000 	li	t4,0
80002318:	ad090000 	sw	t1,0(t0)
8000231c:	85100000 	lh	s0,0(t0)
80002320:	2412ce40 	li	s2,-12736
80002324:	16120035 	bne	s0,s2,800023fc <inst_error>
80002328:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:95
8000232c:	3c09585c 	lui	t1,0x585c
80002330:	35295e30 	ori	t1,t1,0x5e30
80002334:	3c088003 	lui	t0,0x8003
80002338:	240a0000 	li	t2,0
8000233c:	240c0000 	li	t4,0
80002340:	ad090000 	sw	t1,0(t0)
80002344:	85100000 	lh	s0,0(t0)
80002348:	24125e30 	li	s2,24112
8000234c:	1612002b 	bne	s0,s2,800023fc <inst_error>
80002350:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:96
80002354:	3c099915 	lui	t1,0x9915
80002358:	3529f89c 	ori	t1,t1,0xf89c
8000235c:	3c088003 	lui	t0,0x8003
80002360:	240a0000 	li	t2,0
80002364:	240c0000 	li	t4,0
80002368:	ad090000 	sw	t1,0(t0)
8000236c:	85100000 	lh	s0,0(t0)
80002370:	2412f89c 	li	s2,-1892
80002374:	16120021 	bne	s0,s2,800023fc <inst_error>
80002378:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:97
8000237c:	3c098aef 	lui	t1,0x8aef
80002380:	3529a220 	ori	t1,t1,0xa220
80002384:	3c088003 	lui	t0,0x8003
80002388:	240a0002 	li	t2,2
8000238c:	240c0000 	li	t4,0
80002390:	ad090000 	sw	t1,0(t0)
80002394:	85100002 	lh	s0,2(t0)
80002398:	24128aef 	li	s2,-29969
8000239c:	16120017 	bne	s0,s2,800023fc <inst_error>
800023a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:98
800023a4:	3c0942cc 	lui	t1,0x42cc
800023a8:	3529ca62 	ori	t1,t1,0xca62
800023ac:	3c088003 	lui	t0,0x8003
800023b0:	240a0000 	li	t2,0
800023b4:	240c0000 	li	t4,0
800023b8:	ad090000 	sw	t1,0(t0)
800023bc:	85100000 	lh	s0,0(t0)
800023c0:	2412ca62 	li	s2,-13726
800023c4:	1612000d 	bne	s0,s2,800023fc <inst_error>
800023c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:99
800023cc:	24090000 	li	t1,0
800023d0:	3c088003 	lui	t0,0x8003
800023d4:	240a0000 	li	t2,0
800023d8:	240c0000 	li	t4,0
800023dc:	ad090000 	sw	t1,0(t0)
800023e0:	85100000 	lh	s0,0(t0)
800023e4:	24120000 	li	s2,0
800023e8:	16120004 	bne	s0,s2,800023fc <inst_error>
800023ec:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:101
800023f0:	14400002 	bnez	v0,800023fc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:102
800023f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:104
800023f8:	26730001 	addiu	s3,s3,1

800023fc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:107
800023fc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:108
80002400:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:109
80002404:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:110
80002408:	00000000 	nop
inst_error():
8000240c:	00000000 	nop

80002410 <n30_bne_test>:
n30_bne_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:11
80002410:	3c041e00 	lui	a0,0x1e00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:12
80002414:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:14
80002418:	3c0c235f 	lui	t4,0x235f
8000241c:	358cde00 	ori	t4,t4,0xde00
80002420:	3c0ddd59 	lui	t5,0xdd59
80002424:	35ad7dde 	ori	t5,t5,0x7dde
80002428:	24100000 	li	s0,0
8000242c:	24120000 	li	s2,0
80002430:	10000015 	b	80002488 <n30_bne_test+0x78>
80002434:	00000000 	nop
80002438:	3c10235f 	lui	s0,0x235f
8000243c:	3610de00 	ori	s0,s0,0xde00
80002440:	15280021 	bne	t1,t0,800024c8 <n30_bne_test+0xb8>
80002444:	00000000 	nop
80002448:	10000021 	b	800024d0 <n30_bne_test+0xc0>
8000244c:	00000000 	nop
80002450:	00000021 	move	zero,zero
80002454:	00000021 	move	zero,zero
80002458:	00000021 	move	zero,zero
8000245c:	00000021 	move	zero,zero
80002460:	00000021 	move	zero,zero
80002464:	00000021 	move	zero,zero
80002468:	00000021 	move	zero,zero
8000246c:	00000021 	move	zero,zero
80002470:	00000021 	move	zero,zero
80002474:	00000021 	move	zero,zero
80002478:	00000021 	move	zero,zero
8000247c:	00000021 	move	zero,zero
80002480:	00000021 	move	zero,zero
80002484:	00000021 	move	zero,zero
80002488:	3c08bcaa 	lui	t0,0xbcaa
8000248c:	3508bd27 	ori	t0,t0,0xbd27
80002490:	3c0982a7 	lui	t1,0x82a7
80002494:	35297a9d 	ori	t1,t1,0x7a9d
80002498:	1509ffe7 	bne	t0,t1,80002438 <n30_bne_test+0x28>
8000249c:	00000000 	nop
800024a0:	1000000b 	b	800024d0 <n30_bne_test+0xc0>
800024a4:	00000000 	nop
800024a8:	00000021 	move	zero,zero
800024ac:	00000021 	move	zero,zero
800024b0:	00000021 	move	zero,zero
800024b4:	00000021 	move	zero,zero
800024b8:	00000021 	move	zero,zero
800024bc:	00000021 	move	zero,zero
800024c0:	00000021 	move	zero,zero
800024c4:	00000021 	move	zero,zero
800024c8:	3c12dd59 	lui	s2,0xdd59
800024cc:	36527dde 	ori	s2,s2,0x7dde
800024d0:	00000000 	nop
800024d4:	3c14235f 	lui	s4,0x235f
800024d8:	3694de00 	ori	s4,s4,0xde00
800024dc:	16140008 	bne	s0,s4,80002500 <inst_error>
800024e0:	00000000 	nop
800024e4:	3c15dd59 	lui	s5,0xdd59
800024e8:	36b57dde 	ori	s5,s5,0x7dde
800024ec:	16550004 	bne	s2,s5,80002500 <inst_error>
800024f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:16
800024f4:	14400002 	bnez	v0,80002500 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:17
800024f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:19
800024fc:	26730001 	addiu	s3,s3,1

80002500 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:22
80002500:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:23
80002504:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:24
80002508:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:25
8000250c:	00000000 	nop

80002510 <n6_subu_test>:
n6_subu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:11
80002510:	3c040600 	lui	a0,0x600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:12
80002514:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:14
80002518:	3c08d6fc 	lui	t0,0xd6fc
8000251c:	35080584 	ori	t0,t0,0x584
80002520:	3c095f97 	lui	t1,0x5f97
80002524:	352965a8 	ori	t1,t1,0x65a8
80002528:	01098023 	subu	s0,t0,t1
8000252c:	3c127764 	lui	s2,0x7764
80002530:	36529fdc 	ori	s2,s2,0x9fdc
80002534:	16120004 	bne	s0,s2,80002548 <inst_error>
80002538:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:16
8000253c:	14400002 	bnez	v0,80002548 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:17
80002540:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:19
80002544:	26730001 	addiu	s3,s3,1

80002548 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:22
80002548:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:23
8000254c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:24
80002550:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:25
80002554:	00000000 	nop

80002558 <n45_break_test>:
n45_break_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:11
80002558:	3c042d00 	lui	a0,0x2d00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:12
8000255c:	24020002 	li	v0,2

80002560 <break_pc>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:16
80002560:	0000000d 	break
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:18
80002564:	3c10ff00 	lui	s0,0xff00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:19
80002568:	14500002 	bne	v0,s0,80002574 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:20
8000256c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:22
80002570:	26730001 	addiu	s3,s3,1

80002574 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:25
80002574:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:26
80002578:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:27
8000257c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:28
80002580:	00000000 	nop
inst_error():
80002584:	00000000 	nop

80002588 <n52_sb_test>:
n52_sb_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:11
80002588:	3c043400 	lui	a0,0x3400
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:12
8000258c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:14
80002590:	3c097955 	lui	t1,0x7955
80002594:	3529c40a 	ori	t1,t1,0xc40a
80002598:	3c088002 	lui	t0,0x8002
8000259c:	350816ec 	ori	t0,t0,0x16ec
800025a0:	240a61ec 	li	t2,25068
800025a4:	240c61ec 	li	t4,25068
800025a8:	3c0db4f0 	lui	t5,0xb4f0
800025ac:	35ad0930 	ori	t5,t5,0x930
800025b0:	ad0d61ec 	sw	t5,25068(t0)
800025b4:	a10961ec 	sb	t1,25068(t0)
800025b8:	8d1061ec 	lw	s0,25068(t0)
800025bc:	3c12b4f0 	lui	s2,0xb4f0
800025c0:	3652090a 	ori	s2,s2,0x90a
800025c4:	16120004 	bne	s0,s2,800025d8 <inst_error>
800025c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:16
800025cc:	14400002 	bnez	v0,800025d8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:17
800025d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:19
800025d4:	26730001 	addiu	s3,s3,1

800025d8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:22
800025d8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:23
800025dc:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:24
800025e0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:25
800025e4:	00000000 	nop

800025e8 <n24_sllv_test>:
n24_sllv_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:11
800025e8:	3c041800 	lui	a0,0x1800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:12
800025ec:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:14
800025f0:	3c0879db 	lui	t0,0x79db
800025f4:	3508db34 	ori	t0,t0,0xdb34
800025f8:	24090007 	li	t1,7
800025fc:	01288004 	sllv	s0,t0,t1
80002600:	3c12eded 	lui	s2,0xeded
80002604:	36529a00 	ori	s2,s2,0x9a00
80002608:	16120004 	bne	s0,s2,8000261c <inst_error>
8000260c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:16
80002610:	14400002 	bnez	v0,8000261c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:17
80002614:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:19
80002618:	26730001 	addiu	s3,s3,1

8000261c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:22
8000261c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:23
80002620:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:24
80002624:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:25
80002628:	00000000 	nop
inst_error():
8000262c:	00000000 	nop

80002630 <n19_or_test>:
n19_or_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:11
80002630:	3c041300 	lui	a0,0x1300
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:12
80002634:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:14
80002638:	3c0850e4 	lui	t0,0x50e4
8000263c:	35081484 	ori	t0,t0,0x1484
80002640:	3c09ad35 	lui	t1,0xad35
80002644:	3529ea94 	ori	t1,t1,0xea94
80002648:	01098025 	or	s0,t0,t1
8000264c:	3c12fdf5 	lui	s2,0xfdf5
80002650:	3652fe94 	ori	s2,s2,0xfe94
80002654:	16120004 	bne	s0,s2,80002668 <inst_error>
80002658:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:16
8000265c:	14400002 	bnez	v0,80002668 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:17
80002660:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:19
80002664:	26730001 	addiu	s3,s3,1

80002668 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:22
80002668:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:23
8000266c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:24
80002670:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:25
80002674:	00000000 	nop

80002678 <n9_sltu_test>:
n9_sltu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:11
80002678:	3c040900 	lui	a0,0x900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:12
8000267c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:14
80002680:	3c08158f 	lui	t0,0x158f
80002684:	35082b29 	ori	t0,t0,0x2b29
80002688:	3c09421c 	lui	t1,0x421c
8000268c:	35290a42 	ori	t1,t1,0xa42
80002690:	0109802b 	sltu	s0,t0,t1
80002694:	24120001 	li	s2,1
80002698:	16120004 	bne	s0,s2,800026ac <inst_error>
8000269c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:16
800026a0:	14400002 	bnez	v0,800026ac <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:17
800026a4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:19
800026a8:	26730001 	addiu	s3,s3,1

800026ac <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:22
800026ac:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:23
800026b0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:24
800026b4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:25
800026b8:	00000000 	nop
inst_error():
800026bc:	00000000 	nop

800026c0 <n56_mfc0_test>:
n56_mfc0_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:11
800026c0:	3c043800 	lui	a0,0x3800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:12
800026c4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:14
800026c8:	3c08bfc0 	lui	t0,0xbfc0
800026cc:	3508ffff 	ori	t0,t0,0xffff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:17
800026d0:	40094000 	mfc0	t1,c0_badvaddr
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:24
800026d4:	40096000 	mfc0	t1,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:25
800026d8:	40896000 	mtc0	t1,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:27
800026dc:	40096800 	mfc0	t1,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:28
800026e0:	40896800 	mtc0	t1,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:30
800026e4:	40097000 	mfc0	t1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:31
800026e8:	40887000 	mtc0	t0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:32
800026ec:	40107000 	mfc0	s0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:33
800026f0:	40897000 	mtc0	t1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:34
800026f4:	15100004 	bne	t0,s0,80002708 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:35
800026f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:37
800026fc:	14400002 	bnez	v0,80002708 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:38
80002700:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:40
80002704:	26730001 	addiu	s3,s3,1

80002708 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:43
80002708:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:44
8000270c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:45
80002710:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:46
80002714:	00000000 	nop

80002718 <n38_jal_test>:
n38_jal_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:11
80002718:	3c042600 	lui	a0,0x2600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:12
8000271c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:14
80002720:	001fb021 	addu	s6,zero,ra
80002724:	3c0c8c3e 	lui	t4,0x8c3e
80002728:	358c1efa 	ori	t4,t4,0x1efa
8000272c:	3c0deb2b 	lui	t5,0xeb2b
80002730:	35add57c 	ori	t5,t5,0xd57c
80002734:	24100000 	li	s0,0
80002738:	24120000 	li	s2,0
8000273c:	1000000b 	b	8000276c <n38_jal_test+0x54>
80002740:	00000000 	nop
80002744:	3c108c3e 	lui	s0,0x8c3e
80002748:	36101efa 	ori	s0,s0,0x1efa
8000274c:	0c0009e0 	jal	80002780 <n38_jal_test+0x68>
80002750:	00000000 	nop
80002754:	1000000c 	b	80002788 <n38_jal_test+0x70>
80002758:	00000000 	nop
8000275c:	00000021 	move	zero,zero
80002760:	00000021 	move	zero,zero
80002764:	00000021 	move	zero,zero
80002768:	00000021 	move	zero,zero
8000276c:	0c0009d1 	jal	80002744 <n38_jal_test+0x2c>
80002770:	00000000 	nop
80002774:	10000004 	b	80002788 <n38_jal_test+0x70>
80002778:	00000000 	nop
8000277c:	00000021 	move	zero,zero
80002780:	3c12eb2b 	lui	s2,0xeb2b
80002784:	3652d57c 	ori	s2,s2,0xd57c
80002788:	001fa021 	addu	s4,zero,ra
8000278c:	0016f821 	addu	ra,zero,s6
80002790:	3c158000 	lui	s5,0x8000
80002794:	26b5274c 	addiu	s5,s5,10060
80002798:	3c0d8c3e 	lui	t5,0x8c3e
8000279c:	35ad1efa 	ori	t5,t5,0x1efa
800027a0:	160d000b 	bne	s0,t5,800027d0 <inst_error>
800027a4:	00000000 	nop
800027a8:	3c0ceb2b 	lui	t4,0xeb2b
800027ac:	358cd57c 	ori	t4,t4,0xd57c
800027b0:	164c0007 	bne	s2,t4,800027d0 <inst_error>
800027b4:	00000000 	nop
800027b8:	26b50008 	addiu	s5,s5,8
800027bc:	16950004 	bne	s4,s5,800027d0 <inst_error>
800027c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:16
800027c4:	14400002 	bnez	v0,800027d0 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:17
800027c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:19
800027cc:	26730001 	addiu	s3,s3,1

800027d0 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:22
800027d0:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:23
800027d4:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:24
800027d8:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:25
800027dc:	00000000 	nop

800027e0 <n43_mthi_test>:
n43_mthi_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:11
800027e0:	3c042b00 	lui	a0,0x2b00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:12
800027e4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:14
800027e8:	3c08a0fd 	lui	t0,0xa0fd
800027ec:	350856b0 	ori	t0,t0,0x56b0
800027f0:	01000011 	mthi	t0
800027f4:	00008010 	mfhi	s0
800027f8:	3c12a0fd 	lui	s2,0xa0fd
800027fc:	365256b0 	ori	s2,s2,0x56b0
80002800:	16120004 	bne	s0,s2,80002814 <inst_error>
80002804:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:16
80002808:	14400002 	bnez	v0,80002814 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:17
8000280c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:19
80002810:	26730001 	addiu	s3,s3,1

80002814 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:22
80002814:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:23
80002818:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:24
8000281c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:25
80002820:	00000000 	nop
inst_error():
80002824:	00000000 	nop

80002828 <n21_xor_test>:
n21_xor_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:11
80002828:	3c041500 	lui	a0,0x1500
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:12
8000282c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:14
80002830:	3c081773 	lui	t0,0x1773
80002834:	3508df80 	ori	t0,t0,0xdf80
80002838:	3c09b5af 	lui	t1,0xb5af
8000283c:	352951d2 	ori	t1,t1,0x51d2
80002840:	01098026 	xor	s0,t0,t1
80002844:	3c12a2dc 	lui	s2,0xa2dc
80002848:	36528e52 	ori	s2,s2,0x8e52
8000284c:	16120004 	bne	s0,s2,80002860 <inst_error>
80002850:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:16
80002854:	14400002 	bnez	v0,80002860 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:17
80002858:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:19
8000285c:	26730001 	addiu	s3,s3,1

80002860 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:22
80002860:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:23
80002864:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:24
80002868:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:25
8000286c:	00000000 	nop

80002870 <n48_lbu_test>:
n48_lbu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:11
80002870:	3c043000 	lui	a0,0x3000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:12
80002874:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:14
80002878:	3c0979db 	lui	t1,0x79db
8000287c:	3529f0ff 	ori	t1,t1,0xf0ff
80002880:	3c088002 	lui	t0,0x8002
80002884:	35085498 	ori	t0,t0,0x5498
80002888:	240a1408 	li	t2,5128
8000288c:	240c1408 	li	t4,5128
80002890:	ad091408 	sw	t1,5128(t0)
80002894:	91101408 	lbu	s0,5128(t0)
80002898:	241200ff 	li	s2,255
8000289c:	161206bd 	bne	s0,s2,80004394 <inst_error>
800028a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:15
800028a4:	3c099b5b 	lui	t1,0x9b5b
800028a8:	3529ab6c 	ori	t1,t1,0xab6c
800028ac:	3c088002 	lui	t0,0x8002
800028b0:	35084430 	ori	t0,t0,0x4430
800028b4:	240a252e 	li	t2,9518
800028b8:	240c252c 	li	t4,9516
800028bc:	ad09252c 	sw	t1,9516(t0)
800028c0:	9110252e 	lbu	s0,9518(t0)
800028c4:	2412005b 	li	s2,91
800028c8:	161206b2 	bne	s0,s2,80004394 <inst_error>
800028cc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:16
800028d0:	3c09d156 	lui	t1,0xd156
800028d4:	3529f470 	ori	t1,t1,0xf470
800028d8:	3c088002 	lui	t0,0x8002
800028dc:	350845d8 	ori	t0,t0,0x45d8
800028e0:	240a760b 	li	t2,30219
800028e4:	240c7608 	li	t4,30216
800028e8:	ad097608 	sw	t1,30216(t0)
800028ec:	9110760b 	lbu	s0,30219(t0)
800028f0:	241200d1 	li	s2,209
800028f4:	161206a7 	bne	s0,s2,80004394 <inst_error>
800028f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:17
800028fc:	3c094d85 	lui	t1,0x4d85
80002900:	352964c0 	ori	t1,t1,0x64c0
80002904:	3c088002 	lui	t0,0x8002
80002908:	3508abac 	ori	t0,t0,0xabac
8000290c:	240a5180 	li	t2,20864
80002910:	240c5180 	li	t4,20864
80002914:	ad095180 	sw	t1,20864(t0)
80002918:	91105180 	lbu	s0,20864(t0)
8000291c:	241200c0 	li	s2,192
80002920:	1612069c 	bne	s0,s2,80004394 <inst_error>
80002924:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:18
80002928:	3c09927c 	lui	t1,0x927c
8000292c:	35299930 	ori	t1,t1,0x9930
80002930:	3c088002 	lui	t0,0x8002
80002934:	3508ae00 	ori	t0,t0,0xae00
80002938:	240a4a28 	li	t2,18984
8000293c:	240c4a28 	li	t4,18984
80002940:	ad094a28 	sw	t1,18984(t0)
80002944:	91104a28 	lbu	s0,18984(t0)
80002948:	24120030 	li	s2,48
8000294c:	16120691 	bne	s0,s2,80004394 <inst_error>
80002950:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:19
80002954:	3c099ec5 	lui	t1,0x9ec5
80002958:	3529966a 	ori	t1,t1,0x966a
8000295c:	3c088002 	lui	t0,0x8002
80002960:	350872b8 	ori	t0,t0,0x72b8
80002964:	240a1e9c 	li	t2,7836
80002968:	240c1e9c 	li	t4,7836
8000296c:	ad091e9c 	sw	t1,7836(t0)
80002970:	91101e9c 	lbu	s0,7836(t0)
80002974:	2412006a 	li	s2,106
80002978:	16120686 	bne	s0,s2,80004394 <inst_error>
8000297c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:20
80002980:	3c0913f9 	lui	t1,0x13f9
80002984:	35291e58 	ori	t1,t1,0x1e58
80002988:	3c088002 	lui	t0,0x8002
8000298c:	35081f30 	ori	t0,t0,0x1f30
80002990:	340ab600 	li	t2,0xb600
80002994:	340cb600 	li	t4,0xb600
80002998:	3c010001 	lui	at,0x1
8000299c:	00280821 	addu	at,at,t0
800029a0:	ac29b600 	sw	t1,-18944(at)
800029a4:	3c100001 	lui	s0,0x1
800029a8:	02088021 	addu	s0,s0,t0
800029ac:	9210b600 	lbu	s0,-18944(s0)
800029b0:	24120058 	li	s2,88
800029b4:	16120677 	bne	s0,s2,80004394 <inst_error>
800029b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:21
800029bc:	3c090249 	lui	t1,0x249
800029c0:	3529eebd 	ori	t1,t1,0xeebd
800029c4:	3c088002 	lui	t0,0x8002
800029c8:	35083d28 	ori	t0,t0,0x3d28
800029cc:	240a7e74 	li	t2,32372
800029d0:	240c7e74 	li	t4,32372
800029d4:	ad097e74 	sw	t1,32372(t0)
800029d8:	91107e74 	lbu	s0,32372(t0)
800029dc:	241200bd 	li	s2,189
800029e0:	1612066c 	bne	s0,s2,80004394 <inst_error>
800029e4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:22
800029e8:	3c094d40 	lui	t1,0x4d40
800029ec:	3529dd0e 	ori	t1,t1,0xdd0e
800029f0:	3c088002 	lui	t0,0x8002
800029f4:	35082c50 	ori	t0,t0,0x2c50
800029f8:	340ac2d2 	li	t2,0xc2d2
800029fc:	340cc2d0 	li	t4,0xc2d0
80002a00:	3c010001 	lui	at,0x1
80002a04:	00280821 	addu	at,at,t0
80002a08:	ac29c2d0 	sw	t1,-15664(at)
80002a0c:	3c100001 	lui	s0,0x1
80002a10:	02088021 	addu	s0,s0,t0
80002a14:	9210c2d2 	lbu	s0,-15662(s0)
80002a18:	24120040 	li	s2,64
80002a1c:	1612065d 	bne	s0,s2,80004394 <inst_error>
80002a20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:23
80002a24:	3c091dd0 	lui	t1,0x1dd0
80002a28:	352943a8 	ori	t1,t1,0x43a8
80002a2c:	3c088002 	lui	t0,0x8002
80002a30:	35086a7c 	ori	t0,t0,0x6a7c
80002a34:	240a30f8 	li	t2,12536
80002a38:	240c30f8 	li	t4,12536
80002a3c:	ad0930f8 	sw	t1,12536(t0)
80002a40:	911030f8 	lbu	s0,12536(t0)
80002a44:	241200a8 	li	s2,168
80002a48:	16120652 	bne	s0,s2,80004394 <inst_error>
80002a4c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:24
80002a50:	3c09ed11 	lui	t1,0xed11
80002a54:	35291118 	ori	t1,t1,0x1118
80002a58:	3c088002 	lui	t0,0x8002
80002a5c:	350842b4 	ori	t0,t0,0x42b4
80002a60:	240a2b60 	li	t2,11104
80002a64:	240c2b60 	li	t4,11104
80002a68:	ad092b60 	sw	t1,11104(t0)
80002a6c:	91102b60 	lbu	s0,11104(t0)
80002a70:	24120018 	li	s2,24
80002a74:	16120647 	bne	s0,s2,80004394 <inst_error>
80002a78:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:25
80002a7c:	3c096937 	lui	t1,0x6937
80002a80:	3529c000 	ori	t1,t1,0xc000
80002a84:	3c088002 	lui	t0,0x8002
80002a88:	3508e7f0 	ori	t0,t0,0xe7f0
80002a8c:	240a0749 	li	t2,1865
80002a90:	240c0748 	li	t4,1864
80002a94:	ad090748 	sw	t1,1864(t0)
80002a98:	91100749 	lbu	s0,1865(t0)
80002a9c:	241200c0 	li	s2,192
80002aa0:	1612063c 	bne	s0,s2,80004394 <inst_error>
80002aa4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:26
80002aa8:	3c09e4f7 	lui	t1,0xe4f7
80002aac:	35296a00 	ori	t1,t1,0x6a00
80002ab0:	3c088002 	lui	t0,0x8002
80002ab4:	3508a130 	ori	t0,t0,0xa130
80002ab8:	240a0768 	li	t2,1896
80002abc:	240c0768 	li	t4,1896
80002ac0:	ad090768 	sw	t1,1896(t0)
80002ac4:	91100768 	lbu	s0,1896(t0)
80002ac8:	24120000 	li	s2,0
80002acc:	16120631 	bne	s0,s2,80004394 <inst_error>
80002ad0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:27
80002ad4:	3c09ee33 	lui	t1,0xee33
80002ad8:	3529dcd0 	ori	t1,t1,0xdcd0
80002adc:	3c088002 	lui	t0,0x8002
80002ae0:	3508bc2c 	ori	t0,t0,0xbc2c
80002ae4:	240a1868 	li	t2,6248
80002ae8:	240c1868 	li	t4,6248
80002aec:	ad091868 	sw	t1,6248(t0)
80002af0:	91101868 	lbu	s0,6248(t0)
80002af4:	241200d0 	li	s2,208
80002af8:	16120626 	bne	s0,s2,80004394 <inst_error>
80002afc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:28
80002b00:	3c09a6a6 	lui	t1,0xa6a6
80002b04:	35297232 	ori	t1,t1,0x7232
80002b08:	3c088002 	lui	t0,0x8002
80002b0c:	35088b40 	ori	t0,t0,0x8b40
80002b10:	240a2f07 	li	t2,12039
80002b14:	240c2f04 	li	t4,12036
80002b18:	ad092f04 	sw	t1,12036(t0)
80002b1c:	91102f07 	lbu	s0,12039(t0)
80002b20:	241200a6 	li	s2,166
80002b24:	1612061b 	bne	s0,s2,80004394 <inst_error>
80002b28:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:29
80002b2c:	3c092c62 	lui	t1,0x2c62
80002b30:	3529e6d4 	ori	t1,t1,0xe6d4
80002b34:	3c088002 	lui	t0,0x8002
80002b38:	35083cd4 	ori	t0,t0,0x3cd4
80002b3c:	240a0270 	li	t2,624
80002b40:	240c0270 	li	t4,624
80002b44:	ad090270 	sw	t1,624(t0)
80002b48:	91100270 	lbu	s0,624(t0)
80002b4c:	241200d4 	li	s2,212
80002b50:	16120610 	bne	s0,s2,80004394 <inst_error>
80002b54:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:30
80002b58:	3c09dbe7 	lui	t1,0xdbe7
80002b5c:	35295a30 	ori	t1,t1,0x5a30
80002b60:	3c088002 	lui	t0,0x8002
80002b64:	35082854 	ori	t0,t0,0x2854
80002b68:	240a0666 	li	t2,1638
80002b6c:	240c0664 	li	t4,1636
80002b70:	ad090664 	sw	t1,1636(t0)
80002b74:	91100666 	lbu	s0,1638(t0)
80002b78:	241200e7 	li	s2,231
80002b7c:	16120605 	bne	s0,s2,80004394 <inst_error>
80002b80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:31
80002b84:	3c09d220 	lui	t1,0xd220
80002b88:	35291348 	ori	t1,t1,0x1348
80002b8c:	3c088002 	lui	t0,0x8002
80002b90:	35088b40 	ori	t0,t0,0x8b40
80002b94:	240a2bc1 	li	t2,11201
80002b98:	240c2bc0 	li	t4,11200
80002b9c:	ad092bc0 	sw	t1,11200(t0)
80002ba0:	91102bc1 	lbu	s0,11201(t0)
80002ba4:	24120013 	li	s2,19
80002ba8:	161205fa 	bne	s0,s2,80004394 <inst_error>
80002bac:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:32
80002bb0:	3c09bc50 	lui	t1,0xbc50
80002bb4:	35299f3c 	ori	t1,t1,0x9f3c
80002bb8:	3c088002 	lui	t0,0x8002
80002bbc:	35080910 	ori	t0,t0,0x910
80002bc0:	340a81c3 	li	t2,0x81c3
80002bc4:	340c81c0 	li	t4,0x81c0
80002bc8:	3c010001 	lui	at,0x1
80002bcc:	00280821 	addu	at,at,t0
80002bd0:	ac2981c0 	sw	t1,-32320(at)
80002bd4:	3c100001 	lui	s0,0x1
80002bd8:	02088021 	addu	s0,s0,t0
80002bdc:	921081c3 	lbu	s0,-32317(s0)
80002be0:	241200bc 	li	s2,188
80002be4:	161205eb 	bne	s0,s2,80004394 <inst_error>
80002be8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:33
80002bec:	3c09d03b 	lui	t1,0xd03b
80002bf0:	3529b99a 	ori	t1,t1,0xb99a
80002bf4:	3c088002 	lui	t0,0x8002
80002bf8:	35082a84 	ori	t0,t0,0x2a84
80002bfc:	240a3780 	li	t2,14208
80002c00:	240c3780 	li	t4,14208
80002c04:	ad093780 	sw	t1,14208(t0)
80002c08:	91103780 	lbu	s0,14208(t0)
80002c0c:	2412009a 	li	s2,154
80002c10:	161205e0 	bne	s0,s2,80004394 <inst_error>
80002c14:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:34
80002c18:	3c09c1da 	lui	t1,0xc1da
80002c1c:	35293a60 	ori	t1,t1,0x3a60
80002c20:	3c088002 	lui	t0,0x8002
80002c24:	350891c0 	ori	t0,t0,0x91c0
80002c28:	240a54d0 	li	t2,21712
80002c2c:	240c54d0 	li	t4,21712
80002c30:	ad0954d0 	sw	t1,21712(t0)
80002c34:	911054d0 	lbu	s0,21712(t0)
80002c38:	24120060 	li	s2,96
80002c3c:	161205d5 	bne	s0,s2,80004394 <inst_error>
80002c40:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:35
80002c44:	3c092c56 	lui	t1,0x2c56
80002c48:	3529dcf0 	ori	t1,t1,0xdcf0
80002c4c:	3c088002 	lui	t0,0x8002
80002c50:	35086094 	ori	t0,t0,0x6094
80002c54:	240a4c86 	li	t2,19590
80002c58:	240c4c84 	li	t4,19588
80002c5c:	ad094c84 	sw	t1,19588(t0)
80002c60:	91104c86 	lbu	s0,19590(t0)
80002c64:	24120056 	li	s2,86
80002c68:	161205ca 	bne	s0,s2,80004394 <inst_error>
80002c6c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:36
80002c70:	3c09f4a5 	lui	t1,0xf4a5
80002c74:	35293d22 	ori	t1,t1,0x3d22
80002c78:	3c088002 	lui	t0,0x8002
80002c7c:	35080384 	ori	t0,t0,0x384
80002c80:	240a5326 	li	t2,21286
80002c84:	240c5324 	li	t4,21284
80002c88:	ad095324 	sw	t1,21284(t0)
80002c8c:	91105326 	lbu	s0,21286(t0)
80002c90:	241200a5 	li	s2,165
80002c94:	161205bf 	bne	s0,s2,80004394 <inst_error>
80002c98:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:37
80002c9c:	3c0944b6 	lui	t1,0x44b6
80002ca0:	35296444 	ori	t1,t1,0x6444
80002ca4:	3c088002 	lui	t0,0x8002
80002ca8:	35089c48 	ori	t0,t0,0x9c48
80002cac:	240a3580 	li	t2,13696
80002cb0:	240c3580 	li	t4,13696
80002cb4:	ad093580 	sw	t1,13696(t0)
80002cb8:	91103580 	lbu	s0,13696(t0)
80002cbc:	24120044 	li	s2,68
80002cc0:	161205b4 	bne	s0,s2,80004394 <inst_error>
80002cc4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:38
80002cc8:	3c092982 	lui	t1,0x2982
80002ccc:	3529f7ac 	ori	t1,t1,0xf7ac
80002cd0:	3c088002 	lui	t0,0x8002
80002cd4:	35080a18 	ori	t0,t0,0xa18
80002cd8:	240a1208 	li	t2,4616
80002cdc:	240c1208 	li	t4,4616
80002ce0:	ad091208 	sw	t1,4616(t0)
80002ce4:	91101208 	lbu	s0,4616(t0)
80002ce8:	241200ac 	li	s2,172
80002cec:	161205a9 	bne	s0,s2,80004394 <inst_error>
80002cf0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:39
80002cf4:	3c099089 	lui	t1,0x9089
80002cf8:	35295498 	ori	t1,t1,0x5498
80002cfc:	3c088002 	lui	t0,0x8002
80002d00:	35086210 	ori	t0,t0,0x6210
80002d04:	240a759c 	li	t2,30108
80002d08:	240c759c 	li	t4,30108
80002d0c:	ad09759c 	sw	t1,30108(t0)
80002d10:	9110759c 	lbu	s0,30108(t0)
80002d14:	24120098 	li	s2,152
80002d18:	1612059e 	bne	s0,s2,80004394 <inst_error>
80002d1c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:40
80002d20:	3c0971d0 	lui	t1,0x71d0
80002d24:	35294400 	ori	t1,t1,0x4400
80002d28:	3c088002 	lui	t0,0x8002
80002d2c:	35081d08 	ori	t0,t0,0x1d08
80002d30:	240a6faf 	li	t2,28591
80002d34:	240c6fac 	li	t4,28588
80002d38:	ad096fac 	sw	t1,28588(t0)
80002d3c:	91106faf 	lbu	s0,28591(t0)
80002d40:	24120071 	li	s2,113
80002d44:	16120593 	bne	s0,s2,80004394 <inst_error>
80002d48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:41
80002d4c:	3c09244f 	lui	t1,0x244f
80002d50:	35292870 	ori	t1,t1,0x2870
80002d54:	3c088002 	lui	t0,0x8002
80002d58:	35081f50 	ori	t0,t0,0x1f50
80002d5c:	340aa4c9 	li	t2,0xa4c9
80002d60:	340ca4c8 	li	t4,0xa4c8
80002d64:	3c010001 	lui	at,0x1
80002d68:	00280821 	addu	at,at,t0
80002d6c:	ac29a4c8 	sw	t1,-23352(at)
80002d70:	3c100001 	lui	s0,0x1
80002d74:	02088021 	addu	s0,s0,t0
80002d78:	9210a4c9 	lbu	s0,-23351(s0)
80002d7c:	24120028 	li	s2,40
80002d80:	16120584 	bne	s0,s2,80004394 <inst_error>
80002d84:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:42
80002d88:	3c0960bd 	lui	t1,0x60bd
80002d8c:	3529b8c0 	ori	t1,t1,0xb8c0
80002d90:	3c088002 	lui	t0,0x8002
80002d94:	350860e0 	ori	t0,t0,0x60e0
80002d98:	340a9944 	li	t2,0x9944
80002d9c:	340c9944 	li	t4,0x9944
80002da0:	3c010001 	lui	at,0x1
80002da4:	00280821 	addu	at,at,t0
80002da8:	ac299944 	sw	t1,-26300(at)
80002dac:	3c100001 	lui	s0,0x1
80002db0:	02088021 	addu	s0,s0,t0
80002db4:	92109944 	lbu	s0,-26300(s0)
80002db8:	241200c0 	li	s2,192
80002dbc:	16120575 	bne	s0,s2,80004394 <inst_error>
80002dc0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:43
80002dc4:	3c09952b 	lui	t1,0x952b
80002dc8:	3529094a 	ori	t1,t1,0x94a
80002dcc:	3c088002 	lui	t0,0x8002
80002dd0:	35084a94 	ori	t0,t0,0x4a94
80002dd4:	240a5700 	li	t2,22272
80002dd8:	240c5700 	li	t4,22272
80002ddc:	ad095700 	sw	t1,22272(t0)
80002de0:	91105700 	lbu	s0,22272(t0)
80002de4:	2412004a 	li	s2,74
80002de8:	1612056a 	bne	s0,s2,80004394 <inst_error>
80002dec:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:44
80002df0:	3c09407a 	lui	t1,0x407a
80002df4:	35298b80 	ori	t1,t1,0x8b80
80002df8:	3c088002 	lui	t0,0x8002
80002dfc:	3508bb68 	ori	t0,t0,0xbb68
80002e00:	240a3d78 	li	t2,15736
80002e04:	240c3d78 	li	t4,15736
80002e08:	ad093d78 	sw	t1,15736(t0)
80002e0c:	91103d78 	lbu	s0,15736(t0)
80002e10:	24120080 	li	s2,128
80002e14:	1612055f 	bne	s0,s2,80004394 <inst_error>
80002e18:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:45
80002e1c:	3c091ca9 	lui	t1,0x1ca9
80002e20:	35293e6d 	ori	t1,t1,0x3e6d
80002e24:	3c088002 	lui	t0,0x8002
80002e28:	35080c60 	ori	t0,t0,0xc60
80002e2c:	240a7e14 	li	t2,32276
80002e30:	240c7e14 	li	t4,32276
80002e34:	ad097e14 	sw	t1,32276(t0)
80002e38:	91107e14 	lbu	s0,32276(t0)
80002e3c:	2412006d 	li	s2,109
80002e40:	16120554 	bne	s0,s2,80004394 <inst_error>
80002e44:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:46
80002e48:	3c09cbb3 	lui	t1,0xcbb3
80002e4c:	35295de0 	ori	t1,t1,0x5de0
80002e50:	3c088002 	lui	t0,0x8002
80002e54:	35082358 	ori	t0,t0,0x2358
80002e58:	240a24e0 	li	t2,9440
80002e5c:	240c24e0 	li	t4,9440
80002e60:	ad0924e0 	sw	t1,9440(t0)
80002e64:	911024e0 	lbu	s0,9440(t0)
80002e68:	241200e0 	li	s2,224
80002e6c:	16120549 	bne	s0,s2,80004394 <inst_error>
80002e70:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:47
80002e74:	3c098bc6 	lui	t1,0x8bc6
80002e78:	35290e3a 	ori	t1,t1,0xe3a
80002e7c:	3c088002 	lui	t0,0x8002
80002e80:	35082aa0 	ori	t0,t0,0x2aa0
80002e84:	240a354a 	li	t2,13642
80002e88:	240c3548 	li	t4,13640
80002e8c:	ad093548 	sw	t1,13640(t0)
80002e90:	9110354a 	lbu	s0,13642(t0)
80002e94:	241200c6 	li	s2,198
80002e98:	1612053e 	bne	s0,s2,80004394 <inst_error>
80002e9c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:48
80002ea0:	3c099502 	lui	t1,0x9502
80002ea4:	35290f1e 	ori	t1,t1,0xf1e
80002ea8:	3c088002 	lui	t0,0x8002
80002eac:	35082008 	ori	t0,t0,0x2008
80002eb0:	240a320d 	li	t2,12813
80002eb4:	240c320c 	li	t4,12812
80002eb8:	ad09320c 	sw	t1,12812(t0)
80002ebc:	9110320d 	lbu	s0,12813(t0)
80002ec0:	2412000f 	li	s2,15
80002ec4:	16120533 	bne	s0,s2,80004394 <inst_error>
80002ec8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:49
80002ecc:	3c094c60 	lui	t1,0x4c60
80002ed0:	352982f4 	ori	t1,t1,0x82f4
80002ed4:	3c088002 	lui	t0,0x8002
80002ed8:	350829e8 	ori	t0,t0,0x29e8
80002edc:	240a59ec 	li	t2,23020
80002ee0:	240c59ec 	li	t4,23020
80002ee4:	ad0959ec 	sw	t1,23020(t0)
80002ee8:	911059ec 	lbu	s0,23020(t0)
80002eec:	241200f4 	li	s2,244
80002ef0:	16120528 	bne	s0,s2,80004394 <inst_error>
80002ef4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:50
80002ef8:	3c09e8c2 	lui	t1,0xe8c2
80002efc:	35299c44 	ori	t1,t1,0x9c44
80002f00:	3c088002 	lui	t0,0x8002
80002f04:	350841e4 	ori	t0,t0,0x41e4
80002f08:	240a30ca 	li	t2,12490
80002f0c:	240c30c8 	li	t4,12488
80002f10:	ad0930c8 	sw	t1,12488(t0)
80002f14:	911030ca 	lbu	s0,12490(t0)
80002f18:	241200c2 	li	s2,194
80002f1c:	1612051d 	bne	s0,s2,80004394 <inst_error>
80002f20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:51
80002f24:	3c097dd8 	lui	t1,0x7dd8
80002f28:	35299185 	ori	t1,t1,0x9185
80002f2c:	3c088002 	lui	t0,0x8002
80002f30:	3508c0a8 	ori	t0,t0,0xc0a8
80002f34:	240a3184 	li	t2,12676
80002f38:	240c3184 	li	t4,12676
80002f3c:	ad093184 	sw	t1,12676(t0)
80002f40:	91103184 	lbu	s0,12676(t0)
80002f44:	24120085 	li	s2,133
80002f48:	16120512 	bne	s0,s2,80004394 <inst_error>
80002f4c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:52
80002f50:	3c09f2ef 	lui	t1,0xf2ef
80002f54:	35292428 	ori	t1,t1,0x2428
80002f58:	3c088002 	lui	t0,0x8002
80002f5c:	35084478 	ori	t0,t0,0x4478
80002f60:	340ab5bc 	li	t2,0xb5bc
80002f64:	340cb5bc 	li	t4,0xb5bc
80002f68:	3c010001 	lui	at,0x1
80002f6c:	00280821 	addu	at,at,t0
80002f70:	ac29b5bc 	sw	t1,-19012(at)
80002f74:	3c100001 	lui	s0,0x1
80002f78:	02088021 	addu	s0,s0,t0
80002f7c:	9210b5bc 	lbu	s0,-19012(s0)
80002f80:	24120028 	li	s2,40
80002f84:	16120503 	bne	s0,s2,80004394 <inst_error>
80002f88:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:53
80002f8c:	3c092789 	lui	t1,0x2789
80002f90:	3529e735 	ori	t1,t1,0xe735
80002f94:	3c088002 	lui	t0,0x8002
80002f98:	35088088 	ori	t0,t0,0x8088
80002f9c:	240a187c 	li	t2,6268
80002fa0:	240c187c 	li	t4,6268
80002fa4:	ad09187c 	sw	t1,6268(t0)
80002fa8:	9110187c 	lbu	s0,6268(t0)
80002fac:	24120035 	li	s2,53
80002fb0:	161204f8 	bne	s0,s2,80004394 <inst_error>
80002fb4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:54
80002fb8:	3c095761 	lui	t1,0x5761
80002fbc:	35293900 	ori	t1,t1,0x3900
80002fc0:	3c088002 	lui	t0,0x8002
80002fc4:	35086434 	ori	t0,t0,0x6434
80002fc8:	340a80c8 	li	t2,0x80c8
80002fcc:	340c80c8 	li	t4,0x80c8
80002fd0:	3c010001 	lui	at,0x1
80002fd4:	00280821 	addu	at,at,t0
80002fd8:	ac2980c8 	sw	t1,-32568(at)
80002fdc:	3c100001 	lui	s0,0x1
80002fe0:	02088021 	addu	s0,s0,t0
80002fe4:	921080c8 	lbu	s0,-32568(s0)
80002fe8:	24120000 	li	s2,0
80002fec:	161204e9 	bne	s0,s2,80004394 <inst_error>
80002ff0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:55
80002ff4:	3c09f831 	lui	t1,0xf831
80002ff8:	3529d258 	ori	t1,t1,0xd258
80002ffc:	3c088002 	lui	t0,0x8002
80003000:	3508b5f0 	ori	t0,t0,0xb5f0
80003004:	240a12cc 	li	t2,4812
80003008:	240c12cc 	li	t4,4812
8000300c:	ad0912cc 	sw	t1,4812(t0)
80003010:	911012cc 	lbu	s0,4812(t0)
80003014:	24120058 	li	s2,88
80003018:	161204de 	bne	s0,s2,80004394 <inst_error>
8000301c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:56
80003020:	3c099476 	lui	t1,0x9476
80003024:	35298ba0 	ori	t1,t1,0x8ba0
80003028:	3c088002 	lui	t0,0x8002
8000302c:	35089ef8 	ori	t0,t0,0x9ef8
80003030:	240a3d84 	li	t2,15748
80003034:	240c3d84 	li	t4,15748
80003038:	ad093d84 	sw	t1,15748(t0)
8000303c:	91103d84 	lbu	s0,15748(t0)
80003040:	241200a0 	li	s2,160
80003044:	161204d3 	bne	s0,s2,80004394 <inst_error>
80003048:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:57
8000304c:	3c096f5a 	lui	t1,0x6f5a
80003050:	3529b393 	ori	t1,t1,0xb393
80003054:	3c088002 	lui	t0,0x8002
80003058:	350823d0 	ori	t0,t0,0x23d0
8000305c:	240a61b8 	li	t2,25016
80003060:	240c61b8 	li	t4,25016
80003064:	ad0961b8 	sw	t1,25016(t0)
80003068:	911061b8 	lbu	s0,25016(t0)
8000306c:	24120093 	li	s2,147
80003070:	161204c8 	bne	s0,s2,80004394 <inst_error>
80003074:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:58
80003078:	3c09d734 	lui	t1,0xd734
8000307c:	352983da 	ori	t1,t1,0x83da
80003080:	3c088002 	lui	t0,0x8002
80003084:	35087a70 	ori	t0,t0,0x7a70
80003088:	240a5009 	li	t2,20489
8000308c:	240c5008 	li	t4,20488
80003090:	ad095008 	sw	t1,20488(t0)
80003094:	91105009 	lbu	s0,20489(t0)
80003098:	24120083 	li	s2,131
8000309c:	161204bd 	bne	s0,s2,80004394 <inst_error>
800030a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:59
800030a4:	3c094ab1 	lui	t1,0x4ab1
800030a8:	3529c5a6 	ori	t1,t1,0xc5a6
800030ac:	3c088002 	lui	t0,0x8002
800030b0:	35086ea8 	ori	t0,t0,0x6ea8
800030b4:	240a61a0 	li	t2,24992
800030b8:	240c61a0 	li	t4,24992
800030bc:	ad0961a0 	sw	t1,24992(t0)
800030c0:	911061a0 	lbu	s0,24992(t0)
800030c4:	241200a6 	li	s2,166
800030c8:	161204b2 	bne	s0,s2,80004394 <inst_error>
800030cc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:60
800030d0:	3c09d4b6 	lui	t1,0xd4b6
800030d4:	3529c948 	ori	t1,t1,0xc948
800030d8:	3c088002 	lui	t0,0x8002
800030dc:	35085864 	ori	t0,t0,0x5864
800030e0:	240a6d0f 	li	t2,27919
800030e4:	240c6d0c 	li	t4,27916
800030e8:	ad096d0c 	sw	t1,27916(t0)
800030ec:	91106d0f 	lbu	s0,27919(t0)
800030f0:	241200d4 	li	s2,212
800030f4:	161204a7 	bne	s0,s2,80004394 <inst_error>
800030f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:61
800030fc:	3c091b18 	lui	t1,0x1b18
80003100:	35299c1c 	ori	t1,t1,0x9c1c
80003104:	3c088002 	lui	t0,0x8002
80003108:	35082564 	ori	t0,t0,0x2564
8000310c:	240a317e 	li	t2,12670
80003110:	240c317c 	li	t4,12668
80003114:	ad09317c 	sw	t1,12668(t0)
80003118:	9110317e 	lbu	s0,12670(t0)
8000311c:	24120018 	li	s2,24
80003120:	1612049c 	bne	s0,s2,80004394 <inst_error>
80003124:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:62
80003128:	3c09861b 	lui	t1,0x861b
8000312c:	35293d98 	ori	t1,t1,0x3d98
80003130:	3c088002 	lui	t0,0x8002
80003134:	35085df8 	ori	t0,t0,0x5df8
80003138:	340a89a0 	li	t2,0x89a0
8000313c:	340c89a0 	li	t4,0x89a0
80003140:	3c010001 	lui	at,0x1
80003144:	00280821 	addu	at,at,t0
80003148:	ac2989a0 	sw	t1,-30304(at)
8000314c:	3c100001 	lui	s0,0x1
80003150:	02088021 	addu	s0,s0,t0
80003154:	921089a0 	lbu	s0,-30304(s0)
80003158:	24120098 	li	s2,152
8000315c:	1612048d 	bne	s0,s2,80004394 <inst_error>
80003160:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:63
80003164:	3c091f87 	lui	t1,0x1f87
80003168:	35296f58 	ori	t1,t1,0x6f58
8000316c:	3c088002 	lui	t0,0x8002
80003170:	350810e0 	ori	t0,t0,0x10e0
80003174:	240a46bc 	li	t2,18108
80003178:	240c46bc 	li	t4,18108
8000317c:	ad0946bc 	sw	t1,18108(t0)
80003180:	911046bc 	lbu	s0,18108(t0)
80003184:	24120058 	li	s2,88
80003188:	16120482 	bne	s0,s2,80004394 <inst_error>
8000318c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:64
80003190:	3c093b20 	lui	t1,0x3b20
80003194:	35297858 	ori	t1,t1,0x7858
80003198:	3c088002 	lui	t0,0x8002
8000319c:	350814a4 	ori	t0,t0,0x14a4
800031a0:	240a1cf6 	li	t2,7414
800031a4:	240c1cf4 	li	t4,7412
800031a8:	ad091cf4 	sw	t1,7412(t0)
800031ac:	91101cf6 	lbu	s0,7414(t0)
800031b0:	24120020 	li	s2,32
800031b4:	16120477 	bne	s0,s2,80004394 <inst_error>
800031b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:65
800031bc:	3c0967c1 	lui	t1,0x67c1
800031c0:	3529dd18 	ori	t1,t1,0xdd18
800031c4:	3c088002 	lui	t0,0x8002
800031c8:	3508d370 	ori	t0,t0,0xd370
800031cc:	240a2326 	li	t2,8998
800031d0:	240c2324 	li	t4,8996
800031d4:	ad092324 	sw	t1,8996(t0)
800031d8:	91102326 	lbu	s0,8998(t0)
800031dc:	241200c1 	li	s2,193
800031e0:	1612046c 	bne	s0,s2,80004394 <inst_error>
800031e4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:66
800031e8:	3c097066 	lui	t1,0x7066
800031ec:	352969a8 	ori	t1,t1,0x69a8
800031f0:	3c088002 	lui	t0,0x8002
800031f4:	350823dc 	ori	t0,t0,0x23dc
800031f8:	240a3fb0 	li	t2,16304
800031fc:	240c3fb0 	li	t4,16304
80003200:	ad093fb0 	sw	t1,16304(t0)
80003204:	91103fb0 	lbu	s0,16304(t0)
80003208:	241200a8 	li	s2,168
8000320c:	16120461 	bne	s0,s2,80004394 <inst_error>
80003210:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:67
80003214:	3c090e43 	lui	t1,0xe43
80003218:	352983c0 	ori	t1,t1,0x83c0
8000321c:	3c088003 	lui	t0,0x8003
80003220:	240a44a9 	li	t2,17577
80003224:	240c44a8 	li	t4,17576
80003228:	ad0944a8 	sw	t1,17576(t0)
8000322c:	911044a9 	lbu	s0,17577(t0)
80003230:	24120083 	li	s2,131
80003234:	16120457 	bne	s0,s2,80004394 <inst_error>
80003238:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:68
8000323c:	3c09d9c8 	lui	t1,0xd9c8
80003240:	352961cc 	ori	t1,t1,0x61cc
80003244:	3c088003 	lui	t0,0x8003
80003248:	240a5d3e 	li	t2,23870
8000324c:	240c5d3c 	li	t4,23868
80003250:	ad095d3c 	sw	t1,23868(t0)
80003254:	91105d3e 	lbu	s0,23870(t0)
80003258:	241200c8 	li	s2,200
8000325c:	1612044d 	bne	s0,s2,80004394 <inst_error>
80003260:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:69
80003264:	3c09fecf 	lui	t1,0xfecf
80003268:	352979cc 	ori	t1,t1,0x79cc
8000326c:	3c088003 	lui	t0,0x8003
80003270:	240a6c20 	li	t2,27680
80003274:	240c6c20 	li	t4,27680
80003278:	ad096c20 	sw	t1,27680(t0)
8000327c:	91106c20 	lbu	s0,27680(t0)
80003280:	241200cc 	li	s2,204
80003284:	16120443 	bne	s0,s2,80004394 <inst_error>
80003288:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:70
8000328c:	3c0962ea 	lui	t1,0x62ea
80003290:	3529b940 	ori	t1,t1,0xb940
80003294:	3c088003 	lui	t0,0x8003
80003298:	340acfe1 	li	t2,0xcfe1
8000329c:	340ccfe0 	li	t4,0xcfe0
800032a0:	3c010001 	lui	at,0x1
800032a4:	00280821 	addu	at,at,t0
800032a8:	ac29cfe0 	sw	t1,-12320(at)
800032ac:	3c100001 	lui	s0,0x1
800032b0:	02088021 	addu	s0,s0,t0
800032b4:	9210cfe1 	lbu	s0,-12319(s0)
800032b8:	241200b9 	li	s2,185
800032bc:	16120435 	bne	s0,s2,80004394 <inst_error>
800032c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:71
800032c4:	3c09c5f7 	lui	t1,0xc5f7
800032c8:	35291c93 	ori	t1,t1,0x1c93
800032cc:	3c088003 	lui	t0,0x8003
800032d0:	240a03ac 	li	t2,940
800032d4:	240c03ac 	li	t4,940
800032d8:	ad0903ac 	sw	t1,940(t0)
800032dc:	911003ac 	lbu	s0,940(t0)
800032e0:	24120093 	li	s2,147
800032e4:	1612042b 	bne	s0,s2,80004394 <inst_error>
800032e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:72
800032ec:	3c09dc99 	lui	t1,0xdc99
800032f0:	35290bc0 	ori	t1,t1,0xbc0
800032f4:	3c088003 	lui	t0,0x8003
800032f8:	240a4632 	li	t2,17970
800032fc:	240c4630 	li	t4,17968
80003300:	ad094630 	sw	t1,17968(t0)
80003304:	91104632 	lbu	s0,17970(t0)
80003308:	24120099 	li	s2,153
8000330c:	16120421 	bne	s0,s2,80004394 <inst_error>
80003310:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:73
80003314:	3c09ffa8 	lui	t1,0xffa8
80003318:	352921b0 	ori	t1,t1,0x21b0
8000331c:	3c088003 	lui	t0,0x8003
80003320:	240a047a 	li	t2,1146
80003324:	240c0478 	li	t4,1144
80003328:	ad090478 	sw	t1,1144(t0)
8000332c:	9110047a 	lbu	s0,1146(t0)
80003330:	241200a8 	li	s2,168
80003334:	16120417 	bne	s0,s2,80004394 <inst_error>
80003338:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:74
8000333c:	3c09669c 	lui	t1,0x669c
80003340:	3529b8f8 	ori	t1,t1,0xb8f8
80003344:	3c088003 	lui	t0,0x8003
80003348:	240a5dc8 	li	t2,24008
8000334c:	240c5dc8 	li	t4,24008
80003350:	ad095dc8 	sw	t1,24008(t0)
80003354:	91105dc8 	lbu	s0,24008(t0)
80003358:	241200f8 	li	s2,248
8000335c:	1612040d 	bne	s0,s2,80004394 <inst_error>
80003360:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:75
80003364:	3c09d965 	lui	t1,0xd965
80003368:	35290b98 	ori	t1,t1,0xb98
8000336c:	3c088003 	lui	t0,0x8003
80003370:	340ad202 	li	t2,0xd202
80003374:	340cd200 	li	t4,0xd200
80003378:	3c010001 	lui	at,0x1
8000337c:	00280821 	addu	at,at,t0
80003380:	ac29d200 	sw	t1,-11776(at)
80003384:	3c100001 	lui	s0,0x1
80003388:	02088021 	addu	s0,s0,t0
8000338c:	9210d202 	lbu	s0,-11774(s0)
80003390:	24120065 	li	s2,101
80003394:	161203ff 	bne	s0,s2,80004394 <inst_error>
80003398:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:76
8000339c:	3c09845c 	lui	t1,0x845c
800033a0:	352979fc 	ori	t1,t1,0x79fc
800033a4:	3c088003 	lui	t0,0x8003
800033a8:	340af504 	li	t2,0xf504
800033ac:	340cf504 	li	t4,0xf504
800033b0:	3c010001 	lui	at,0x1
800033b4:	00280821 	addu	at,at,t0
800033b8:	ac29f504 	sw	t1,-2812(at)
800033bc:	3c100001 	lui	s0,0x1
800033c0:	02088021 	addu	s0,s0,t0
800033c4:	9210f504 	lbu	s0,-2812(s0)
800033c8:	241200fc 	li	s2,252
800033cc:	161203f1 	bne	s0,s2,80004394 <inst_error>
800033d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:77
800033d4:	3c09a7ed 	lui	t1,0xa7ed
800033d8:	35299420 	ori	t1,t1,0x9420
800033dc:	3c088003 	lui	t0,0x8003
800033e0:	340ae5e8 	li	t2,0xe5e8
800033e4:	340ce5e8 	li	t4,0xe5e8
800033e8:	3c010001 	lui	at,0x1
800033ec:	00280821 	addu	at,at,t0
800033f0:	ac29e5e8 	sw	t1,-6680(at)
800033f4:	3c100001 	lui	s0,0x1
800033f8:	02088021 	addu	s0,s0,t0
800033fc:	9210e5e8 	lbu	s0,-6680(s0)
80003400:	24120020 	li	s2,32
80003404:	161203e3 	bne	s0,s2,80004394 <inst_error>
80003408:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:78
8000340c:	3c09a458 	lui	t1,0xa458
80003410:	3529f1f2 	ori	t1,t1,0xf1f2
80003414:	3c088003 	lui	t0,0x8003
80003418:	340a9125 	li	t2,0x9125
8000341c:	340c9124 	li	t4,0x9124
80003420:	3c010001 	lui	at,0x1
80003424:	00280821 	addu	at,at,t0
80003428:	ac299124 	sw	t1,-28380(at)
8000342c:	3c100001 	lui	s0,0x1
80003430:	02088021 	addu	s0,s0,t0
80003434:	92109125 	lbu	s0,-28379(s0)
80003438:	241200f1 	li	s2,241
8000343c:	161203d5 	bne	s0,s2,80004394 <inst_error>
80003440:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:79
80003444:	3c09ad33 	lui	t1,0xad33
80003448:	3529ad20 	ori	t1,t1,0xad20
8000344c:	3c088003 	lui	t0,0x8003
80003450:	340adb1a 	li	t2,0xdb1a
80003454:	340cdb18 	li	t4,0xdb18
80003458:	3c010001 	lui	at,0x1
8000345c:	00280821 	addu	at,at,t0
80003460:	ac29db18 	sw	t1,-9448(at)
80003464:	3c100001 	lui	s0,0x1
80003468:	02088021 	addu	s0,s0,t0
8000346c:	9210db1a 	lbu	s0,-9446(s0)
80003470:	24120033 	li	s2,51
80003474:	161203c7 	bne	s0,s2,80004394 <inst_error>
80003478:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:80
8000347c:	3c09bd74 	lui	t1,0xbd74
80003480:	35293318 	ori	t1,t1,0x3318
80003484:	3c088003 	lui	t0,0x8003
80003488:	340ac2f8 	li	t2,0xc2f8
8000348c:	340cc2f8 	li	t4,0xc2f8
80003490:	3c010001 	lui	at,0x1
80003494:	00280821 	addu	at,at,t0
80003498:	ac29c2f8 	sw	t1,-15624(at)
8000349c:	3c100001 	lui	s0,0x1
800034a0:	02088021 	addu	s0,s0,t0
800034a4:	9210c2f8 	lbu	s0,-15624(s0)
800034a8:	24120018 	li	s2,24
800034ac:	161203b9 	bne	s0,s2,80004394 <inst_error>
800034b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:81
800034b4:	3c09ec31 	lui	t1,0xec31
800034b8:	35295702 	ori	t1,t1,0x5702
800034bc:	3c088003 	lui	t0,0x8003
800034c0:	240a0230 	li	t2,560
800034c4:	240c0230 	li	t4,560
800034c8:	ad090230 	sw	t1,560(t0)
800034cc:	91100230 	lbu	s0,560(t0)
800034d0:	24120002 	li	s2,2
800034d4:	161203af 	bne	s0,s2,80004394 <inst_error>
800034d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:82
800034dc:	3c097b43 	lui	t1,0x7b43
800034e0:	35293429 	ori	t1,t1,0x3429
800034e4:	3c088003 	lui	t0,0x8003
800034e8:	240a0ae0 	li	t2,2784
800034ec:	240c0ae0 	li	t4,2784
800034f0:	ad090ae0 	sw	t1,2784(t0)
800034f4:	91100ae0 	lbu	s0,2784(t0)
800034f8:	24120029 	li	s2,41
800034fc:	161203a5 	bne	s0,s2,80004394 <inst_error>
80003500:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:83
80003504:	3c093455 	lui	t1,0x3455
80003508:	352992f0 	ori	t1,t1,0x92f0
8000350c:	3c088003 	lui	t0,0x8003
80003510:	340ad080 	li	t2,0xd080
80003514:	340cd080 	li	t4,0xd080
80003518:	3c010001 	lui	at,0x1
8000351c:	00280821 	addu	at,at,t0
80003520:	ac29d080 	sw	t1,-12160(at)
80003524:	3c100001 	lui	s0,0x1
80003528:	02088021 	addu	s0,s0,t0
8000352c:	9210d080 	lbu	s0,-12160(s0)
80003530:	241200f0 	li	s2,240
80003534:	16120397 	bne	s0,s2,80004394 <inst_error>
80003538:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:84
8000353c:	3c0915fe 	lui	t1,0x15fe
80003540:	3529c970 	ori	t1,t1,0xc970
80003544:	3c088003 	lui	t0,0x8003
80003548:	340aa6d0 	li	t2,0xa6d0
8000354c:	340ca6d0 	li	t4,0xa6d0
80003550:	3c010001 	lui	at,0x1
80003554:	00280821 	addu	at,at,t0
80003558:	ac29a6d0 	sw	t1,-22832(at)
8000355c:	3c100001 	lui	s0,0x1
80003560:	02088021 	addu	s0,s0,t0
80003564:	9210a6d0 	lbu	s0,-22832(s0)
80003568:	24120070 	li	s2,112
8000356c:	16120389 	bne	s0,s2,80004394 <inst_error>
80003570:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:85
80003574:	3c09483e 	lui	t1,0x483e
80003578:	3529c7ee 	ori	t1,t1,0xc7ee
8000357c:	3c088003 	lui	t0,0x8003
80003580:	340a8570 	li	t2,0x8570
80003584:	340c8570 	li	t4,0x8570
80003588:	3c010001 	lui	at,0x1
8000358c:	00280821 	addu	at,at,t0
80003590:	ac298570 	sw	t1,-31376(at)
80003594:	3c100001 	lui	s0,0x1
80003598:	02088021 	addu	s0,s0,t0
8000359c:	92108570 	lbu	s0,-31376(s0)
800035a0:	241200ee 	li	s2,238
800035a4:	1612037b 	bne	s0,s2,80004394 <inst_error>
800035a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:86
800035ac:	3c09ca82 	lui	t1,0xca82
800035b0:	3529fc00 	ori	t1,t1,0xfc00
800035b4:	3c088003 	lui	t0,0x8003
800035b8:	240a5cfe 	li	t2,23806
800035bc:	240c5cfc 	li	t4,23804
800035c0:	ad095cfc 	sw	t1,23804(t0)
800035c4:	91105cfe 	lbu	s0,23806(t0)
800035c8:	24120082 	li	s2,130
800035cc:	16120371 	bne	s0,s2,80004394 <inst_error>
800035d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:87
800035d4:	3c092595 	lui	t1,0x2595
800035d8:	35293f20 	ori	t1,t1,0x3f20
800035dc:	3c088003 	lui	t0,0x8003
800035e0:	340ad0c3 	li	t2,0xd0c3
800035e4:	340cd0c0 	li	t4,0xd0c0
800035e8:	3c010001 	lui	at,0x1
800035ec:	00280821 	addu	at,at,t0
800035f0:	ac29d0c0 	sw	t1,-12096(at)
800035f4:	3c100001 	lui	s0,0x1
800035f8:	02088021 	addu	s0,s0,t0
800035fc:	9210d0c3 	lbu	s0,-12093(s0)
80003600:	24120025 	li	s2,37
80003604:	16120363 	bne	s0,s2,80004394 <inst_error>
80003608:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:88
8000360c:	3c09c718 	lui	t1,0xc718
80003610:	35294dde 	ori	t1,t1,0x4dde
80003614:	3c088003 	lui	t0,0x8003
80003618:	240a5558 	li	t2,21848
8000361c:	240c5558 	li	t4,21848
80003620:	ad095558 	sw	t1,21848(t0)
80003624:	91105558 	lbu	s0,21848(t0)
80003628:	241200de 	li	s2,222
8000362c:	16120359 	bne	s0,s2,80004394 <inst_error>
80003630:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:89
80003634:	3c09899b 	lui	t1,0x899b
80003638:	3529e100 	ori	t1,t1,0xe100
8000363c:	3c088003 	lui	t0,0x8003
80003640:	340af0c4 	li	t2,0xf0c4
80003644:	340cf0c4 	li	t4,0xf0c4
80003648:	3c010001 	lui	at,0x1
8000364c:	00280821 	addu	at,at,t0
80003650:	ac29f0c4 	sw	t1,-3900(at)
80003654:	3c100001 	lui	s0,0x1
80003658:	02088021 	addu	s0,s0,t0
8000365c:	9210f0c4 	lbu	s0,-3900(s0)
80003660:	24120000 	li	s2,0
80003664:	1612034b 	bne	s0,s2,80004394 <inst_error>
80003668:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:90
8000366c:	3c094629 	lui	t1,0x4629
80003670:	3529ad14 	ori	t1,t1,0xad14
80003674:	3c088003 	lui	t0,0x8003
80003678:	340af550 	li	t2,0xf550
8000367c:	340cf550 	li	t4,0xf550
80003680:	3c010001 	lui	at,0x1
80003684:	00280821 	addu	at,at,t0
80003688:	ac29f550 	sw	t1,-2736(at)
8000368c:	3c100001 	lui	s0,0x1
80003690:	02088021 	addu	s0,s0,t0
80003694:	9210f550 	lbu	s0,-2736(s0)
80003698:	24120014 	li	s2,20
8000369c:	1612033d 	bne	s0,s2,80004394 <inst_error>
800036a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:91
800036a4:	3c09b741 	lui	t1,0xb741
800036a8:	3529c3b2 	ori	t1,t1,0xc3b2
800036ac:	3c088003 	lui	t0,0x8003
800036b0:	340a9370 	li	t2,0x9370
800036b4:	340c9370 	li	t4,0x9370
800036b8:	3c010001 	lui	at,0x1
800036bc:	00280821 	addu	at,at,t0
800036c0:	ac299370 	sw	t1,-27792(at)
800036c4:	3c100001 	lui	s0,0x1
800036c8:	02088021 	addu	s0,s0,t0
800036cc:	92109370 	lbu	s0,-27792(s0)
800036d0:	241200b2 	li	s2,178
800036d4:	1612032f 	bne	s0,s2,80004394 <inst_error>
800036d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:92
800036dc:	3c093b7a 	lui	t1,0x3b7a
800036e0:	35298198 	ori	t1,t1,0x8198
800036e4:	3c088003 	lui	t0,0x8003
800036e8:	240a2dc5 	li	t2,11717
800036ec:	240c2dc4 	li	t4,11716
800036f0:	ad092dc4 	sw	t1,11716(t0)
800036f4:	91102dc5 	lbu	s0,11717(t0)
800036f8:	24120081 	li	s2,129
800036fc:	16120325 	bne	s0,s2,80004394 <inst_error>
80003700:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:93
80003704:	3c09c5e5 	lui	t1,0xc5e5
80003708:	352941f6 	ori	t1,t1,0x41f6
8000370c:	3c088003 	lui	t0,0x8003
80003710:	240a3560 	li	t2,13664
80003714:	240c3560 	li	t4,13664
80003718:	ad093560 	sw	t1,13664(t0)
8000371c:	91103560 	lbu	s0,13664(t0)
80003720:	241200f6 	li	s2,246
80003724:	1612031b 	bne	s0,s2,80004394 <inst_error>
80003728:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:94
8000372c:	3c09df5b 	lui	t1,0xdf5b
80003730:	35291a0a 	ori	t1,t1,0x1a0a
80003734:	3c088003 	lui	t0,0x8003
80003738:	340ad8c0 	li	t2,0xd8c0
8000373c:	340cd8c0 	li	t4,0xd8c0
80003740:	3c010001 	lui	at,0x1
80003744:	00280821 	addu	at,at,t0
80003748:	ac29d8c0 	sw	t1,-10048(at)
8000374c:	3c100001 	lui	s0,0x1
80003750:	02088021 	addu	s0,s0,t0
80003754:	9210d8c0 	lbu	s0,-10048(s0)
80003758:	2412000a 	li	s2,10
8000375c:	1612030d 	bne	s0,s2,80004394 <inst_error>
80003760:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:95
80003764:	3c099e06 	lui	t1,0x9e06
80003768:	3529fab8 	ori	t1,t1,0xfab8
8000376c:	3c088003 	lui	t0,0x8003
80003770:	240a04ca 	li	t2,1226
80003774:	240c04c8 	li	t4,1224
80003778:	ad0904c8 	sw	t1,1224(t0)
8000377c:	911004ca 	lbu	s0,1226(t0)
80003780:	24120006 	li	s2,6
80003784:	16120303 	bne	s0,s2,80004394 <inst_error>
80003788:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:96
8000378c:	3c0970df 	lui	t1,0x70df
80003790:	35295f2c 	ori	t1,t1,0x5f2c
80003794:	3c088003 	lui	t0,0x8003
80003798:	340ab6ba 	li	t2,0xb6ba
8000379c:	340cb6b8 	li	t4,0xb6b8
800037a0:	3c010001 	lui	at,0x1
800037a4:	00280821 	addu	at,at,t0
800037a8:	ac29b6b8 	sw	t1,-18760(at)
800037ac:	3c100001 	lui	s0,0x1
800037b0:	02088021 	addu	s0,s0,t0
800037b4:	9210b6ba 	lbu	s0,-18758(s0)
800037b8:	241200df 	li	s2,223
800037bc:	161202f5 	bne	s0,s2,80004394 <inst_error>
800037c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:97
800037c4:	3c095717 	lui	t1,0x5717
800037c8:	3529a104 	ori	t1,t1,0xa104
800037cc:	3c088003 	lui	t0,0x8003
800037d0:	340aedc2 	li	t2,0xedc2
800037d4:	340cedc0 	li	t4,0xedc0
800037d8:	3c010001 	lui	at,0x1
800037dc:	00280821 	addu	at,at,t0
800037e0:	ac29edc0 	sw	t1,-4672(at)
800037e4:	3c100001 	lui	s0,0x1
800037e8:	02088021 	addu	s0,s0,t0
800037ec:	9210edc2 	lbu	s0,-4670(s0)
800037f0:	24120017 	li	s2,23
800037f4:	161202e7 	bne	s0,s2,80004394 <inst_error>
800037f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:98
800037fc:	3c0991f2 	lui	t1,0x91f2
80003800:	3529f789 	ori	t1,t1,0xf789
80003804:	3c088003 	lui	t0,0x8003
80003808:	340acf86 	li	t2,0xcf86
8000380c:	340ccf84 	li	t4,0xcf84
80003810:	3c010001 	lui	at,0x1
80003814:	00280821 	addu	at,at,t0
80003818:	ac29cf84 	sw	t1,-12412(at)
8000381c:	3c100001 	lui	s0,0x1
80003820:	02088021 	addu	s0,s0,t0
80003824:	9210cf86 	lbu	s0,-12410(s0)
80003828:	241200f2 	li	s2,242
8000382c:	161202d9 	bne	s0,s2,80004394 <inst_error>
80003830:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:99
80003834:	3c0948f3 	lui	t1,0x48f3
80003838:	3529e380 	ori	t1,t1,0xe380
8000383c:	3c088003 	lui	t0,0x8003
80003840:	240a7b7c 	li	t2,31612
80003844:	240c7b7c 	li	t4,31612
80003848:	ad097b7c 	sw	t1,31612(t0)
8000384c:	91107b7c 	lbu	s0,31612(t0)
80003850:	24120080 	li	s2,128
80003854:	161202cf 	bne	s0,s2,80004394 <inst_error>
80003858:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:100
8000385c:	3c09804e 	lui	t1,0x804e
80003860:	35290100 	ori	t1,t1,0x100
80003864:	3c088003 	lui	t0,0x8003
80003868:	340ace00 	li	t2,0xce00
8000386c:	340cce00 	li	t4,0xce00
80003870:	3c010001 	lui	at,0x1
80003874:	00280821 	addu	at,at,t0
80003878:	ac29ce00 	sw	t1,-12800(at)
8000387c:	3c100001 	lui	s0,0x1
80003880:	02088021 	addu	s0,s0,t0
80003884:	9210ce00 	lbu	s0,-12800(s0)
80003888:	24120000 	li	s2,0
8000388c:	161202c1 	bne	s0,s2,80004394 <inst_error>
80003890:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:101
80003894:	3c092763 	lui	t1,0x2763
80003898:	35295fe4 	ori	t1,t1,0x5fe4
8000389c:	3c088003 	lui	t0,0x8003
800038a0:	340af2e0 	li	t2,0xf2e0
800038a4:	340cf2e0 	li	t4,0xf2e0
800038a8:	3c010001 	lui	at,0x1
800038ac:	00280821 	addu	at,at,t0
800038b0:	ac29f2e0 	sw	t1,-3360(at)
800038b4:	3c100001 	lui	s0,0x1
800038b8:	02088021 	addu	s0,s0,t0
800038bc:	9210f2e0 	lbu	s0,-3360(s0)
800038c0:	241200e4 	li	s2,228
800038c4:	161202b3 	bne	s0,s2,80004394 <inst_error>
800038c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:102
800038cc:	3c09ffcb 	lui	t1,0xffcb
800038d0:	3529e970 	ori	t1,t1,0xe970
800038d4:	3c088003 	lui	t0,0x8003
800038d8:	240a59ae 	li	t2,22958
800038dc:	240c59ac 	li	t4,22956
800038e0:	ad0959ac 	sw	t1,22956(t0)
800038e4:	911059ae 	lbu	s0,22958(t0)
800038e8:	241200cb 	li	s2,203
800038ec:	161202a9 	bne	s0,s2,80004394 <inst_error>
800038f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:103
800038f4:	3c095a3c 	lui	t1,0x5a3c
800038f8:	3529ef6e 	ori	t1,t1,0xef6e
800038fc:	3c088003 	lui	t0,0x8003
80003900:	340aa605 	li	t2,0xa605
80003904:	340ca604 	li	t4,0xa604
80003908:	3c010001 	lui	at,0x1
8000390c:	00280821 	addu	at,at,t0
80003910:	ac29a604 	sw	t1,-23036(at)
80003914:	3c100001 	lui	s0,0x1
80003918:	02088021 	addu	s0,s0,t0
8000391c:	9210a605 	lbu	s0,-23035(s0)
80003920:	241200ef 	li	s2,239
80003924:	1612029b 	bne	s0,s2,80004394 <inst_error>
80003928:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:104
8000392c:	3c09ef7b 	lui	t1,0xef7b
80003930:	35295e90 	ori	t1,t1,0x5e90
80003934:	3c088003 	lui	t0,0x8003
80003938:	340a8896 	li	t2,0x8896
8000393c:	340c8894 	li	t4,0x8894
80003940:	3c010001 	lui	at,0x1
80003944:	00280821 	addu	at,at,t0
80003948:	ac298894 	sw	t1,-30572(at)
8000394c:	3c100001 	lui	s0,0x1
80003950:	02088021 	addu	s0,s0,t0
80003954:	92108896 	lbu	s0,-30570(s0)
80003958:	2412007b 	li	s2,123
8000395c:	1612028d 	bne	s0,s2,80004394 <inst_error>
80003960:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:105
80003964:	3c09262a 	lui	t1,0x262a
80003968:	35295e90 	ori	t1,t1,0x5e90
8000396c:	3c088003 	lui	t0,0x8003
80003970:	340af96f 	li	t2,0xf96f
80003974:	340cf96c 	li	t4,0xf96c
80003978:	3c010001 	lui	at,0x1
8000397c:	00280821 	addu	at,at,t0
80003980:	ac29f96c 	sw	t1,-1684(at)
80003984:	3c100001 	lui	s0,0x1
80003988:	02088021 	addu	s0,s0,t0
8000398c:	9210f96f 	lbu	s0,-1681(s0)
80003990:	24120026 	li	s2,38
80003994:	1612027f 	bne	s0,s2,80004394 <inst_error>
80003998:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:106
8000399c:	3c09a267 	lui	t1,0xa267
800039a0:	352901e8 	ori	t1,t1,0x1e8
800039a4:	3c088003 	lui	t0,0x8003
800039a8:	340a9399 	li	t2,0x9399
800039ac:	340c9398 	li	t4,0x9398
800039b0:	3c010001 	lui	at,0x1
800039b4:	00280821 	addu	at,at,t0
800039b8:	ac299398 	sw	t1,-27752(at)
800039bc:	3c100001 	lui	s0,0x1
800039c0:	02088021 	addu	s0,s0,t0
800039c4:	92109399 	lbu	s0,-27751(s0)
800039c8:	24120001 	li	s2,1
800039cc:	16120271 	bne	s0,s2,80004394 <inst_error>
800039d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:107
800039d4:	3c092f2f 	lui	t1,0x2f2f
800039d8:	352973f0 	ori	t1,t1,0x73f0
800039dc:	3c088003 	lui	t0,0x8003
800039e0:	340aea14 	li	t2,0xea14
800039e4:	340cea14 	li	t4,0xea14
800039e8:	3c010001 	lui	at,0x1
800039ec:	00280821 	addu	at,at,t0
800039f0:	ac29ea14 	sw	t1,-5612(at)
800039f4:	3c100001 	lui	s0,0x1
800039f8:	02088021 	addu	s0,s0,t0
800039fc:	9210ea14 	lbu	s0,-5612(s0)
80003a00:	241200f0 	li	s2,240
80003a04:	16120263 	bne	s0,s2,80004394 <inst_error>
80003a08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:108
80003a0c:	3c0938ce 	lui	t1,0x38ce
80003a10:	35294640 	ori	t1,t1,0x4640
80003a14:	3c088003 	lui	t0,0x8003
80003a18:	240a5782 	li	t2,22402
80003a1c:	240c5780 	li	t4,22400
80003a20:	ad095780 	sw	t1,22400(t0)
80003a24:	91105782 	lbu	s0,22402(t0)
80003a28:	241200ce 	li	s2,206
80003a2c:	16120259 	bne	s0,s2,80004394 <inst_error>
80003a30:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:109
80003a34:	3c09bb69 	lui	t1,0xbb69
80003a38:	3529c800 	ori	t1,t1,0xc800
80003a3c:	3c088003 	lui	t0,0x8003
80003a40:	240a0b46 	li	t2,2886
80003a44:	240c0b44 	li	t4,2884
80003a48:	ad090b44 	sw	t1,2884(t0)
80003a4c:	91100b46 	lbu	s0,2886(t0)
80003a50:	24120069 	li	s2,105
80003a54:	1612024f 	bne	s0,s2,80004394 <inst_error>
80003a58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:110
80003a5c:	3c097b9d 	lui	t1,0x7b9d
80003a60:	3529a800 	ori	t1,t1,0xa800
80003a64:	3c088003 	lui	t0,0x8003
80003a68:	340af04a 	li	t2,0xf04a
80003a6c:	340cf048 	li	t4,0xf048
80003a70:	3c010001 	lui	at,0x1
80003a74:	00280821 	addu	at,at,t0
80003a78:	ac29f048 	sw	t1,-4024(at)
80003a7c:	3c100001 	lui	s0,0x1
80003a80:	02088021 	addu	s0,s0,t0
80003a84:	9210f04a 	lbu	s0,-4022(s0)
80003a88:	2412009d 	li	s2,157
80003a8c:	16120241 	bne	s0,s2,80004394 <inst_error>
80003a90:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:111
80003a94:	3c095568 	lui	t1,0x5568
80003a98:	3529c260 	ori	t1,t1,0xc260
80003a9c:	3c088003 	lui	t0,0x8003
80003aa0:	240a72e0 	li	t2,29408
80003aa4:	240c72e0 	li	t4,29408
80003aa8:	ad0972e0 	sw	t1,29408(t0)
80003aac:	911072e0 	lbu	s0,29408(t0)
80003ab0:	24120060 	li	s2,96
80003ab4:	16120237 	bne	s0,s2,80004394 <inst_error>
80003ab8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:112
80003abc:	3c094bd9 	lui	t1,0x4bd9
80003ac0:	35293c80 	ori	t1,t1,0x3c80
80003ac4:	3c088003 	lui	t0,0x8003
80003ac8:	340aee30 	li	t2,0xee30
80003acc:	340cee30 	li	t4,0xee30
80003ad0:	3c010001 	lui	at,0x1
80003ad4:	00280821 	addu	at,at,t0
80003ad8:	ac29ee30 	sw	t1,-4560(at)
80003adc:	3c100001 	lui	s0,0x1
80003ae0:	02088021 	addu	s0,s0,t0
80003ae4:	9210ee30 	lbu	s0,-4560(s0)
80003ae8:	24120080 	li	s2,128
80003aec:	16120229 	bne	s0,s2,80004394 <inst_error>
80003af0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:113
80003af4:	3c0923ad 	lui	t1,0x23ad
80003af8:	3529f432 	ori	t1,t1,0xf432
80003afc:	3c088003 	lui	t0,0x8003
80003b00:	240a6009 	li	t2,24585
80003b04:	240c6008 	li	t4,24584
80003b08:	ad096008 	sw	t1,24584(t0)
80003b0c:	91106009 	lbu	s0,24585(t0)
80003b10:	241200f4 	li	s2,244
80003b14:	1612021f 	bne	s0,s2,80004394 <inst_error>
80003b18:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:114
80003b1c:	3c096187 	lui	t1,0x6187
80003b20:	3529f420 	ori	t1,t1,0xf420
80003b24:	3c088003 	lui	t0,0x8003
80003b28:	240a2fd4 	li	t2,12244
80003b2c:	240c2fd4 	li	t4,12244
80003b30:	ad092fd4 	sw	t1,12244(t0)
80003b34:	91102fd4 	lbu	s0,12244(t0)
80003b38:	24120020 	li	s2,32
80003b3c:	16120215 	bne	s0,s2,80004394 <inst_error>
80003b40:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:115
80003b44:	3c096836 	lui	t1,0x6836
80003b48:	35293fa0 	ori	t1,t1,0x3fa0
80003b4c:	3c088003 	lui	t0,0x8003
80003b50:	240a3e68 	li	t2,15976
80003b54:	240c3e68 	li	t4,15976
80003b58:	ad093e68 	sw	t1,15976(t0)
80003b5c:	91103e68 	lbu	s0,15976(t0)
80003b60:	241200a0 	li	s2,160
80003b64:	1612020b 	bne	s0,s2,80004394 <inst_error>
80003b68:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:116
80003b6c:	3c093723 	lui	t1,0x3723
80003b70:	3529c7f3 	ori	t1,t1,0xc7f3
80003b74:	3c088003 	lui	t0,0x8003
80003b78:	240a43e0 	li	t2,17376
80003b7c:	240c43e0 	li	t4,17376
80003b80:	ad0943e0 	sw	t1,17376(t0)
80003b84:	911043e0 	lbu	s0,17376(t0)
80003b88:	241200f3 	li	s2,243
80003b8c:	16120201 	bne	s0,s2,80004394 <inst_error>
80003b90:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:117
80003b94:	3c09d367 	lui	t1,0xd367
80003b98:	3529e11a 	ori	t1,t1,0xe11a
80003b9c:	3c088003 	lui	t0,0x8003
80003ba0:	240a0000 	li	t2,0
80003ba4:	240c0000 	li	t4,0
80003ba8:	ad090000 	sw	t1,0(t0)
80003bac:	91100000 	lbu	s0,0(t0)
80003bb0:	2412001a 	li	s2,26
80003bb4:	161201f7 	bne	s0,s2,80004394 <inst_error>
80003bb8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:118
80003bbc:	3c09ea1b 	lui	t1,0xea1b
80003bc0:	3529c1e0 	ori	t1,t1,0xc1e0
80003bc4:	3c088003 	lui	t0,0x8003
80003bc8:	240a0003 	li	t2,3
80003bcc:	240c0000 	li	t4,0
80003bd0:	ad090000 	sw	t1,0(t0)
80003bd4:	91100003 	lbu	s0,3(t0)
80003bd8:	241200ea 	li	s2,234
80003bdc:	161201ed 	bne	s0,s2,80004394 <inst_error>
80003be0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:119
80003be4:	3c090dbc 	lui	t1,0xdbc
80003be8:	3529d2ea 	ori	t1,t1,0xd2ea
80003bec:	3c088003 	lui	t0,0x8003
80003bf0:	240a0001 	li	t2,1
80003bf4:	240c0000 	li	t4,0
80003bf8:	ad090000 	sw	t1,0(t0)
80003bfc:	91100001 	lbu	s0,1(t0)
80003c00:	241200d2 	li	s2,210
80003c04:	161201e3 	bne	s0,s2,80004394 <inst_error>
80003c08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:120
80003c0c:	3c092e83 	lui	t1,0x2e83
80003c10:	352977c6 	ori	t1,t1,0x77c6
80003c14:	3c088003 	lui	t0,0x8003
80003c18:	240a0000 	li	t2,0
80003c1c:	240c0000 	li	t4,0
80003c20:	ad090000 	sw	t1,0(t0)
80003c24:	91100000 	lbu	s0,0(t0)
80003c28:	241200c6 	li	s2,198
80003c2c:	161201d9 	bne	s0,s2,80004394 <inst_error>
80003c30:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:121
80003c34:	3c0985d1 	lui	t1,0x85d1
80003c38:	3529767c 	ori	t1,t1,0x767c
80003c3c:	3c088003 	lui	t0,0x8003
80003c40:	240a0001 	li	t2,1
80003c44:	240c0000 	li	t4,0
80003c48:	ad090000 	sw	t1,0(t0)
80003c4c:	91100001 	lbu	s0,1(t0)
80003c50:	24120076 	li	s2,118
80003c54:	161201cf 	bne	s0,s2,80004394 <inst_error>
80003c58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:122
80003c5c:	3c092a80 	lui	t1,0x2a80
80003c60:	35297b6e 	ori	t1,t1,0x7b6e
80003c64:	3c088003 	lui	t0,0x8003
80003c68:	240a0000 	li	t2,0
80003c6c:	240c0000 	li	t4,0
80003c70:	ad090000 	sw	t1,0(t0)
80003c74:	91100000 	lbu	s0,0(t0)
80003c78:	2412006e 	li	s2,110
80003c7c:	161201c5 	bne	s0,s2,80004394 <inst_error>
80003c80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:123
80003c84:	3c097c7e 	lui	t1,0x7c7e
80003c88:	3529468b 	ori	t1,t1,0x468b
80003c8c:	3c088003 	lui	t0,0x8003
80003c90:	240a0001 	li	t2,1
80003c94:	240c0000 	li	t4,0
80003c98:	ad090000 	sw	t1,0(t0)
80003c9c:	91100001 	lbu	s0,1(t0)
80003ca0:	24120046 	li	s2,70
80003ca4:	161201bb 	bne	s0,s2,80004394 <inst_error>
80003ca8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:124
80003cac:	3c09766b 	lui	t1,0x766b
80003cb0:	352930aa 	ori	t1,t1,0x30aa
80003cb4:	3c088003 	lui	t0,0x8003
80003cb8:	240a0000 	li	t2,0
80003cbc:	240c0000 	li	t4,0
80003cc0:	ad090000 	sw	t1,0(t0)
80003cc4:	91100000 	lbu	s0,0(t0)
80003cc8:	241200aa 	li	s2,170
80003ccc:	161201b1 	bne	s0,s2,80004394 <inst_error>
80003cd0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:125
80003cd4:	3c09f311 	lui	t1,0xf311
80003cd8:	35292744 	ori	t1,t1,0x2744
80003cdc:	3c088003 	lui	t0,0x8003
80003ce0:	240a0003 	li	t2,3
80003ce4:	240c0000 	li	t4,0
80003ce8:	ad090000 	sw	t1,0(t0)
80003cec:	91100003 	lbu	s0,3(t0)
80003cf0:	241200f3 	li	s2,243
80003cf4:	161201a7 	bne	s0,s2,80004394 <inst_error>
80003cf8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:126
80003cfc:	3c0924da 	lui	t1,0x24da
80003d00:	3529377c 	ori	t1,t1,0x377c
80003d04:	3c088003 	lui	t0,0x8003
80003d08:	240a0001 	li	t2,1
80003d0c:	240c0000 	li	t4,0
80003d10:	ad090000 	sw	t1,0(t0)
80003d14:	91100001 	lbu	s0,1(t0)
80003d18:	24120037 	li	s2,55
80003d1c:	1612019d 	bne	s0,s2,80004394 <inst_error>
80003d20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:127
80003d24:	3c099eda 	lui	t1,0x9eda
80003d28:	35291a30 	ori	t1,t1,0x1a30
80003d2c:	3c088003 	lui	t0,0x8003
80003d30:	240a0001 	li	t2,1
80003d34:	240c0000 	li	t4,0
80003d38:	ad090000 	sw	t1,0(t0)
80003d3c:	91100001 	lbu	s0,1(t0)
80003d40:	2412001a 	li	s2,26
80003d44:	16120193 	bne	s0,s2,80004394 <inst_error>
80003d48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:128
80003d4c:	3c091e77 	lui	t1,0x1e77
80003d50:	352930fe 	ori	t1,t1,0x30fe
80003d54:	3c088003 	lui	t0,0x8003
80003d58:	240a0000 	li	t2,0
80003d5c:	240c0000 	li	t4,0
80003d60:	ad090000 	sw	t1,0(t0)
80003d64:	91100000 	lbu	s0,0(t0)
80003d68:	241200fe 	li	s2,254
80003d6c:	16120189 	bne	s0,s2,80004394 <inst_error>
80003d70:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:129
80003d74:	3c094acf 	lui	t1,0x4acf
80003d78:	3529dea0 	ori	t1,t1,0xdea0
80003d7c:	3c088003 	lui	t0,0x8003
80003d80:	240a0001 	li	t2,1
80003d84:	240c0000 	li	t4,0
80003d88:	ad090000 	sw	t1,0(t0)
80003d8c:	91100001 	lbu	s0,1(t0)
80003d90:	241200de 	li	s2,222
80003d94:	1612017f 	bne	s0,s2,80004394 <inst_error>
80003d98:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:130
80003d9c:	3c0984b7 	lui	t1,0x84b7
80003da0:	35290109 	ori	t1,t1,0x109
80003da4:	3c088003 	lui	t0,0x8003
80003da8:	240a0003 	li	t2,3
80003dac:	240c0000 	li	t4,0
80003db0:	ad090000 	sw	t1,0(t0)
80003db4:	91100003 	lbu	s0,3(t0)
80003db8:	24120084 	li	s2,132
80003dbc:	16120175 	bne	s0,s2,80004394 <inst_error>
80003dc0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:131
80003dc4:	3c09e4fb 	lui	t1,0xe4fb
80003dc8:	35293fe0 	ori	t1,t1,0x3fe0
80003dcc:	3c088003 	lui	t0,0x8003
80003dd0:	240a0002 	li	t2,2
80003dd4:	240c0000 	li	t4,0
80003dd8:	ad090000 	sw	t1,0(t0)
80003ddc:	91100002 	lbu	s0,2(t0)
80003de0:	241200fb 	li	s2,251
80003de4:	1612016b 	bne	s0,s2,80004394 <inst_error>
80003de8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:132
80003dec:	3c095a32 	lui	t1,0x5a32
80003df0:	35291c70 	ori	t1,t1,0x1c70
80003df4:	3c088003 	lui	t0,0x8003
80003df8:	240a0003 	li	t2,3
80003dfc:	240c0000 	li	t4,0
80003e00:	ad090000 	sw	t1,0(t0)
80003e04:	91100003 	lbu	s0,3(t0)
80003e08:	2412005a 	li	s2,90
80003e0c:	16120161 	bne	s0,s2,80004394 <inst_error>
80003e10:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:133
80003e14:	3c092d4b 	lui	t1,0x2d4b
80003e18:	3529afb8 	ori	t1,t1,0xafb8
80003e1c:	3c088003 	lui	t0,0x8003
80003e20:	240a0000 	li	t2,0
80003e24:	240c0000 	li	t4,0
80003e28:	ad090000 	sw	t1,0(t0)
80003e2c:	91100000 	lbu	s0,0(t0)
80003e30:	241200b8 	li	s2,184
80003e34:	16120157 	bne	s0,s2,80004394 <inst_error>
80003e38:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:134
80003e3c:	3c093b25 	lui	t1,0x3b25
80003e40:	35290b23 	ori	t1,t1,0xb23
80003e44:	3c088003 	lui	t0,0x8003
80003e48:	240a0001 	li	t2,1
80003e4c:	240c0000 	li	t4,0
80003e50:	ad090000 	sw	t1,0(t0)
80003e54:	91100001 	lbu	s0,1(t0)
80003e58:	2412000b 	li	s2,11
80003e5c:	1612014d 	bne	s0,s2,80004394 <inst_error>
80003e60:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:135
80003e64:	3c095f9c 	lui	t1,0x5f9c
80003e68:	352975e8 	ori	t1,t1,0x75e8
80003e6c:	3c088003 	lui	t0,0x8003
80003e70:	240a0000 	li	t2,0
80003e74:	240c0000 	li	t4,0
80003e78:	ad090000 	sw	t1,0(t0)
80003e7c:	91100000 	lbu	s0,0(t0)
80003e80:	241200e8 	li	s2,232
80003e84:	16120143 	bne	s0,s2,80004394 <inst_error>
80003e88:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:136
80003e8c:	3c09c37b 	lui	t1,0xc37b
80003e90:	352966a0 	ori	t1,t1,0x66a0
80003e94:	3c088003 	lui	t0,0x8003
80003e98:	240a0002 	li	t2,2
80003e9c:	240c0000 	li	t4,0
80003ea0:	ad090000 	sw	t1,0(t0)
80003ea4:	91100002 	lbu	s0,2(t0)
80003ea8:	2412007b 	li	s2,123
80003eac:	16120139 	bne	s0,s2,80004394 <inst_error>
80003eb0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:137
80003eb4:	3c099beb 	lui	t1,0x9beb
80003eb8:	352924a0 	ori	t1,t1,0x24a0
80003ebc:	3c088003 	lui	t0,0x8003
80003ec0:	240a0000 	li	t2,0
80003ec4:	240c0000 	li	t4,0
80003ec8:	ad090000 	sw	t1,0(t0)
80003ecc:	91100000 	lbu	s0,0(t0)
80003ed0:	241200a0 	li	s2,160
80003ed4:	1612012f 	bne	s0,s2,80004394 <inst_error>
80003ed8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:138
80003edc:	3c0910fd 	lui	t1,0x10fd
80003ee0:	3529c3f6 	ori	t1,t1,0xc3f6
80003ee4:	3c088003 	lui	t0,0x8003
80003ee8:	240a0003 	li	t2,3
80003eec:	240c0000 	li	t4,0
80003ef0:	ad090000 	sw	t1,0(t0)
80003ef4:	91100003 	lbu	s0,3(t0)
80003ef8:	24120010 	li	s2,16
80003efc:	16120125 	bne	s0,s2,80004394 <inst_error>
80003f00:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:139
80003f04:	3c0958cf 	lui	t1,0x58cf
80003f08:	35291c72 	ori	t1,t1,0x1c72
80003f0c:	3c088003 	lui	t0,0x8003
80003f10:	240a0002 	li	t2,2
80003f14:	240c0000 	li	t4,0
80003f18:	ad090000 	sw	t1,0(t0)
80003f1c:	91100002 	lbu	s0,2(t0)
80003f20:	241200cf 	li	s2,207
80003f24:	1612011b 	bne	s0,s2,80004394 <inst_error>
80003f28:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:140
80003f2c:	3c0901e4 	lui	t1,0x1e4
80003f30:	3529337c 	ori	t1,t1,0x337c
80003f34:	3c088003 	lui	t0,0x8003
80003f38:	240a0002 	li	t2,2
80003f3c:	240c0000 	li	t4,0
80003f40:	ad090000 	sw	t1,0(t0)
80003f44:	91100002 	lbu	s0,2(t0)
80003f48:	241200e4 	li	s2,228
80003f4c:	16120111 	bne	s0,s2,80004394 <inst_error>
80003f50:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:141
80003f54:	3c09cadc 	lui	t1,0xcadc
80003f58:	3529a1a0 	ori	t1,t1,0xa1a0
80003f5c:	3c088003 	lui	t0,0x8003
80003f60:	240a0001 	li	t2,1
80003f64:	240c0000 	li	t4,0
80003f68:	ad090000 	sw	t1,0(t0)
80003f6c:	91100001 	lbu	s0,1(t0)
80003f70:	241200a1 	li	s2,161
80003f74:	16120107 	bne	s0,s2,80004394 <inst_error>
80003f78:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:142
80003f7c:	3c09e439 	lui	t1,0xe439
80003f80:	3529bcca 	ori	t1,t1,0xbcca
80003f84:	3c088003 	lui	t0,0x8003
80003f88:	240a0002 	li	t2,2
80003f8c:	240c0000 	li	t4,0
80003f90:	ad090000 	sw	t1,0(t0)
80003f94:	91100002 	lbu	s0,2(t0)
80003f98:	24120039 	li	s2,57
80003f9c:	161200fd 	bne	s0,s2,80004394 <inst_error>
80003fa0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:143
80003fa4:	3c09cac5 	lui	t1,0xcac5
80003fa8:	35298484 	ori	t1,t1,0x8484
80003fac:	3c088003 	lui	t0,0x8003
80003fb0:	240a0002 	li	t2,2
80003fb4:	240c0000 	li	t4,0
80003fb8:	ad090000 	sw	t1,0(t0)
80003fbc:	91100002 	lbu	s0,2(t0)
80003fc0:	241200c5 	li	s2,197
80003fc4:	161200f3 	bne	s0,s2,80004394 <inst_error>
80003fc8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:144
80003fcc:	3c09d6fd 	lui	t1,0xd6fd
80003fd0:	35295b64 	ori	t1,t1,0x5b64
80003fd4:	3c088003 	lui	t0,0x8003
80003fd8:	240a0000 	li	t2,0
80003fdc:	240c0000 	li	t4,0
80003fe0:	ad090000 	sw	t1,0(t0)
80003fe4:	91100000 	lbu	s0,0(t0)
80003fe8:	24120064 	li	s2,100
80003fec:	161200e9 	bne	s0,s2,80004394 <inst_error>
80003ff0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:145
80003ff4:	3c090b32 	lui	t1,0xb32
80003ff8:	352979d8 	ori	t1,t1,0x79d8
80003ffc:	3c088003 	lui	t0,0x8003
80004000:	240a0003 	li	t2,3
80004004:	240c0000 	li	t4,0
80004008:	ad090000 	sw	t1,0(t0)
8000400c:	91100003 	lbu	s0,3(t0)
80004010:	2412000b 	li	s2,11
80004014:	161200df 	bne	s0,s2,80004394 <inst_error>
80004018:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:146
8000401c:	3c096307 	lui	t1,0x6307
80004020:	35294a44 	ori	t1,t1,0x4a44
80004024:	3c088003 	lui	t0,0x8003
80004028:	240a0001 	li	t2,1
8000402c:	240c0000 	li	t4,0
80004030:	ad090000 	sw	t1,0(t0)
80004034:	91100001 	lbu	s0,1(t0)
80004038:	2412004a 	li	s2,74
8000403c:	161200d5 	bne	s0,s2,80004394 <inst_error>
80004040:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:147
80004044:	3c09d84c 	lui	t1,0xd84c
80004048:	35298078 	ori	t1,t1,0x8078
8000404c:	3c088003 	lui	t0,0x8003
80004050:	240a0003 	li	t2,3
80004054:	240c0000 	li	t4,0
80004058:	ad090000 	sw	t1,0(t0)
8000405c:	91100003 	lbu	s0,3(t0)
80004060:	241200d8 	li	s2,216
80004064:	161200cb 	bne	s0,s2,80004394 <inst_error>
80004068:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:148
8000406c:	3c09f9e9 	lui	t1,0xf9e9
80004070:	3529931a 	ori	t1,t1,0x931a
80004074:	3c088003 	lui	t0,0x8003
80004078:	240a0003 	li	t2,3
8000407c:	240c0000 	li	t4,0
80004080:	ad090000 	sw	t1,0(t0)
80004084:	91100003 	lbu	s0,3(t0)
80004088:	241200f9 	li	s2,249
8000408c:	161200c1 	bne	s0,s2,80004394 <inst_error>
80004090:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:149
80004094:	3c091e1d 	lui	t1,0x1e1d
80004098:	352911d0 	ori	t1,t1,0x11d0
8000409c:	3c088003 	lui	t0,0x8003
800040a0:	240a0003 	li	t2,3
800040a4:	240c0000 	li	t4,0
800040a8:	ad090000 	sw	t1,0(t0)
800040ac:	91100003 	lbu	s0,3(t0)
800040b0:	2412001e 	li	s2,30
800040b4:	161200b7 	bne	s0,s2,80004394 <inst_error>
800040b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:150
800040bc:	3c09d4be 	lui	t1,0xd4be
800040c0:	35290052 	ori	t1,t1,0x52
800040c4:	3c088003 	lui	t0,0x8003
800040c8:	240a0003 	li	t2,3
800040cc:	240c0000 	li	t4,0
800040d0:	ad090000 	sw	t1,0(t0)
800040d4:	91100003 	lbu	s0,3(t0)
800040d8:	241200d4 	li	s2,212
800040dc:	161200ad 	bne	s0,s2,80004394 <inst_error>
800040e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:151
800040e4:	3c09c1d5 	lui	t1,0xc1d5
800040e8:	3529e430 	ori	t1,t1,0xe430
800040ec:	3c088003 	lui	t0,0x8003
800040f0:	240a0001 	li	t2,1
800040f4:	240c0000 	li	t4,0
800040f8:	ad090000 	sw	t1,0(t0)
800040fc:	91100001 	lbu	s0,1(t0)
80004100:	241200e4 	li	s2,228
80004104:	161200a3 	bne	s0,s2,80004394 <inst_error>
80004108:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:152
8000410c:	3c09f4fd 	lui	t1,0xf4fd
80004110:	352959b0 	ori	t1,t1,0x59b0
80004114:	3c088003 	lui	t0,0x8003
80004118:	240a0000 	li	t2,0
8000411c:	240c0000 	li	t4,0
80004120:	ad090000 	sw	t1,0(t0)
80004124:	91100000 	lbu	s0,0(t0)
80004128:	241200b0 	li	s2,176
8000412c:	16120099 	bne	s0,s2,80004394 <inst_error>
80004130:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:153
80004134:	3c09dd4f 	lui	t1,0xdd4f
80004138:	35293800 	ori	t1,t1,0x3800
8000413c:	3c088003 	lui	t0,0x8003
80004140:	240a0002 	li	t2,2
80004144:	240c0000 	li	t4,0
80004148:	ad090000 	sw	t1,0(t0)
8000414c:	91100002 	lbu	s0,2(t0)
80004150:	2412004f 	li	s2,79
80004154:	1612008f 	bne	s0,s2,80004394 <inst_error>
80004158:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:154
8000415c:	3c099b0f 	lui	t1,0x9b0f
80004160:	35291ecc 	ori	t1,t1,0x1ecc
80004164:	3c088003 	lui	t0,0x8003
80004168:	240a0003 	li	t2,3
8000416c:	240c0000 	li	t4,0
80004170:	ad090000 	sw	t1,0(t0)
80004174:	91100003 	lbu	s0,3(t0)
80004178:	2412009b 	li	s2,155
8000417c:	16120085 	bne	s0,s2,80004394 <inst_error>
80004180:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:155
80004184:	3c09b3f1 	lui	t1,0xb3f1
80004188:	35290774 	ori	t1,t1,0x774
8000418c:	3c088003 	lui	t0,0x8003
80004190:	240a0001 	li	t2,1
80004194:	240c0000 	li	t4,0
80004198:	ad090000 	sw	t1,0(t0)
8000419c:	91100001 	lbu	s0,1(t0)
800041a0:	24120007 	li	s2,7
800041a4:	1612007b 	bne	s0,s2,80004394 <inst_error>
800041a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:156
800041ac:	3c0987ec 	lui	t1,0x87ec
800041b0:	352925fc 	ori	t1,t1,0x25fc
800041b4:	3c088003 	lui	t0,0x8003
800041b8:	240a0001 	li	t2,1
800041bc:	240c0000 	li	t4,0
800041c0:	ad090000 	sw	t1,0(t0)
800041c4:	91100001 	lbu	s0,1(t0)
800041c8:	24120025 	li	s2,37
800041cc:	16120071 	bne	s0,s2,80004394 <inst_error>
800041d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:157
800041d4:	3c0907e1 	lui	t1,0x7e1
800041d8:	3529f300 	ori	t1,t1,0xf300
800041dc:	3c088003 	lui	t0,0x8003
800041e0:	240a0000 	li	t2,0
800041e4:	240c0000 	li	t4,0
800041e8:	ad090000 	sw	t1,0(t0)
800041ec:	91100000 	lbu	s0,0(t0)
800041f0:	24120000 	li	s2,0
800041f4:	16120067 	bne	s0,s2,80004394 <inst_error>
800041f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:158
800041fc:	3c09933c 	lui	t1,0x933c
80004200:	3529b3e0 	ori	t1,t1,0xb3e0
80004204:	3c088003 	lui	t0,0x8003
80004208:	240a0003 	li	t2,3
8000420c:	240c0000 	li	t4,0
80004210:	ad090000 	sw	t1,0(t0)
80004214:	91100003 	lbu	s0,3(t0)
80004218:	24120093 	li	s2,147
8000421c:	1612005d 	bne	s0,s2,80004394 <inst_error>
80004220:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:159
80004224:	3c09ace9 	lui	t1,0xace9
80004228:	3529f794 	ori	t1,t1,0xf794
8000422c:	3c088003 	lui	t0,0x8003
80004230:	240a0000 	li	t2,0
80004234:	240c0000 	li	t4,0
80004238:	ad090000 	sw	t1,0(t0)
8000423c:	91100000 	lbu	s0,0(t0)
80004240:	24120094 	li	s2,148
80004244:	16120053 	bne	s0,s2,80004394 <inst_error>
80004248:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:160
8000424c:	3c0960a3 	lui	t1,0x60a3
80004250:	3529b6d8 	ori	t1,t1,0xb6d8
80004254:	3c088003 	lui	t0,0x8003
80004258:	240a0001 	li	t2,1
8000425c:	240c0000 	li	t4,0
80004260:	ad090000 	sw	t1,0(t0)
80004264:	91100001 	lbu	s0,1(t0)
80004268:	241200b6 	li	s2,182
8000426c:	16120049 	bne	s0,s2,80004394 <inst_error>
80004270:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:161
80004274:	3c09954e 	lui	t1,0x954e
80004278:	3529b5ee 	ori	t1,t1,0xb5ee
8000427c:	3c088003 	lui	t0,0x8003
80004280:	240a0001 	li	t2,1
80004284:	240c0000 	li	t4,0
80004288:	ad090000 	sw	t1,0(t0)
8000428c:	91100001 	lbu	s0,1(t0)
80004290:	241200b5 	li	s2,181
80004294:	1612003f 	bne	s0,s2,80004394 <inst_error>
80004298:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:162
8000429c:	3c0995ff 	lui	t1,0x95ff
800042a0:	3529cf80 	ori	t1,t1,0xcf80
800042a4:	3c088003 	lui	t0,0x8003
800042a8:	240a0003 	li	t2,3
800042ac:	240c0000 	li	t4,0
800042b0:	ad090000 	sw	t1,0(t0)
800042b4:	91100003 	lbu	s0,3(t0)
800042b8:	24120095 	li	s2,149
800042bc:	16120035 	bne	s0,s2,80004394 <inst_error>
800042c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:163
800042c4:	3c09e20e 	lui	t1,0xe20e
800042c8:	3529fe40 	ori	t1,t1,0xfe40
800042cc:	3c088003 	lui	t0,0x8003
800042d0:	240a0000 	li	t2,0
800042d4:	240c0000 	li	t4,0
800042d8:	ad090000 	sw	t1,0(t0)
800042dc:	91100000 	lbu	s0,0(t0)
800042e0:	24120040 	li	s2,64
800042e4:	1612002b 	bne	s0,s2,80004394 <inst_error>
800042e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:164
800042ec:	3c09826e 	lui	t1,0x826e
800042f0:	35290c40 	ori	t1,t1,0xc40
800042f4:	3c088003 	lui	t0,0x8003
800042f8:	240a0003 	li	t2,3
800042fc:	240c0000 	li	t4,0
80004300:	ad090000 	sw	t1,0(t0)
80004304:	91100003 	lbu	s0,3(t0)
80004308:	24120082 	li	s2,130
8000430c:	16120021 	bne	s0,s2,80004394 <inst_error>
80004310:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:165
80004314:	3c093c7f 	lui	t1,0x3c7f
80004318:	35293796 	ori	t1,t1,0x3796
8000431c:	3c088003 	lui	t0,0x8003
80004320:	240a0003 	li	t2,3
80004324:	240c0000 	li	t4,0
80004328:	ad090000 	sw	t1,0(t0)
8000432c:	91100003 	lbu	s0,3(t0)
80004330:	2412003c 	li	s2,60
80004334:	16120017 	bne	s0,s2,80004394 <inst_error>
80004338:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:166
8000433c:	3c09d82d 	lui	t1,0xd82d
80004340:	35294498 	ori	t1,t1,0x4498
80004344:	3c088003 	lui	t0,0x8003
80004348:	240a0002 	li	t2,2
8000434c:	240c0000 	li	t4,0
80004350:	ad090000 	sw	t1,0(t0)
80004354:	91100002 	lbu	s0,2(t0)
80004358:	2412002d 	li	s2,45
8000435c:	1612000d 	bne	s0,s2,80004394 <inst_error>
80004360:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:167
80004364:	24090000 	li	t1,0
80004368:	3c088003 	lui	t0,0x8003
8000436c:	240a0000 	li	t2,0
80004370:	240c0000 	li	t4,0
80004374:	ad090000 	sw	t1,0(t0)
80004378:	91100000 	lbu	s0,0(t0)
8000437c:	24120000 	li	s2,0
80004380:	16120004 	bne	s0,s2,80004394 <inst_error>
80004384:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:169
80004388:	14400002 	bnez	v0,80004394 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:170
8000438c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:172
80004390:	26730001 	addiu	s3,s3,1

80004394 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:175
80004394:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:176
80004398:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:177
8000439c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:178
800043a0:	00000000 	nop
inst_error():
800043a4:	00000000 	nop

800043a8 <n29_beq_test>:
n29_beq_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:11
800043a8:	3c041d00 	lui	a0,0x1d00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:12
800043ac:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:14
800043b0:	3c0c0fb1 	lui	t4,0xfb1
800043b4:	358c6a80 	ori	t4,t4,0x6a80
800043b8:	3c0ddf22 	lui	t5,0xdf22
800043bc:	35ad5ddc 	ori	t5,t5,0x5ddc
800043c0:	24100000 	li	s0,0
800043c4:	24120000 	li	s2,0
800043c8:	1000000d 	b	80004400 <n29_beq_test+0x58>
800043cc:	00000000 	nop
800043d0:	3c100fb1 	lui	s0,0xfb1
800043d4:	36106a80 	ori	s0,s0,0x6a80
800043d8:	1128001a 	beq	t1,t0,80004444 <n29_beq_test+0x9c>
800043dc:	00000000 	nop
800043e0:	1000001a 	b	8000444c <n29_beq_test+0xa4>
800043e4:	00000000 	nop
800043e8:	00000021 	move	zero,zero
800043ec:	00000021 	move	zero,zero
800043f0:	00000021 	move	zero,zero
800043f4:	00000021 	move	zero,zero
800043f8:	00000021 	move	zero,zero
800043fc:	00000021 	move	zero,zero
80004400:	3c085291 	lui	t0,0x5291
80004404:	35089078 	ori	t0,t0,0x9078
80004408:	3c098146 	lui	t1,0x8146
8000440c:	35298400 	ori	t1,t1,0x8400
80004410:	1109ffef 	beq	t0,t1,800043d0 <n29_beq_test+0x28>
80004414:	00000000 	nop
80004418:	1000000c 	b	8000444c <n29_beq_test+0xa4>
8000441c:	00000000 	nop
80004420:	00000021 	move	zero,zero
80004424:	00000021 	move	zero,zero
80004428:	00000021 	move	zero,zero
8000442c:	00000021 	move	zero,zero
80004430:	00000021 	move	zero,zero
80004434:	00000021 	move	zero,zero
80004438:	00000021 	move	zero,zero
8000443c:	00000021 	move	zero,zero
80004440:	00000021 	move	zero,zero
80004444:	3c12df22 	lui	s2,0xdf22
80004448:	36525ddc 	ori	s2,s2,0x5ddc
8000444c:	00000000 	nop
80004450:	24140000 	li	s4,0
80004454:	16140007 	bne	s0,s4,80004474 <inst_error>
80004458:	00000000 	nop
8000445c:	24150000 	li	s5,0
80004460:	16550004 	bne	s2,s5,80004474 <inst_error>
80004464:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:16
80004468:	14400002 	bnez	v0,80004474 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:17
8000446c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:19
80004470:	26730001 	addiu	s3,s3,1

80004474 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:22
80004474:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:23
80004478:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:24
8000447c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:25
80004480:	00000000 	nop
inst_error():
80004484:	00000000 	nop

80004488 <n22_xori_test>:
n22_xori_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:11
80004488:	3c041600 	lui	a0,0x1600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:12
8000448c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:14
80004490:	3c084406 	lui	t0,0x4406
80004494:	3508a500 	ori	t0,t0,0xa500
80004498:	240914bf 	li	t1,5311
8000449c:	391014bf 	xori	s0,t0,0x14bf
800044a0:	3c124406 	lui	s2,0x4406
800044a4:	3652b1bf 	ori	s2,s2,0xb1bf
800044a8:	16120004 	bne	s0,s2,800044bc <inst_error>
800044ac:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:16
800044b0:	14400002 	bnez	v0,800044bc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:17
800044b4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:19
800044b8:	26730001 	addiu	s3,s3,1

800044bc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:22
800044bc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:23
800044c0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:24
800044c4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:25
800044c8:	00000000 	nop
inst_error():
800044cc:	00000000 	nop

800044d0 <n31_bgez_test>:
n31_bgez_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:11
800044d0:	3c041f00 	lui	a0,0x1f00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:12
800044d4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:14
800044d8:	3c0cbe6e 	lui	t4,0xbe6e
800044dc:	358c1670 	ori	t4,t4,0x1670
800044e0:	3c0d28b8 	lui	t5,0x28b8
800044e4:	35ad50c0 	ori	t5,t5,0x50c0
800044e8:	24100000 	li	s0,0
800044ec:	24120000 	li	s2,0
800044f0:	1000000d 	b	80004528 <n31_bgez_test+0x58>
800044f4:	00000000 	nop
800044f8:	3c10be6e 	lui	s0,0xbe6e
800044fc:	36101670 	ori	s0,s0,0x1670
80004500:	05010010 	bgez	t0,80004544 <n31_bgez_test+0x74>
80004504:	00000000 	nop
80004508:	10000010 	b	8000454c <n31_bgez_test+0x7c>
8000450c:	00000000 	nop
80004510:	00000021 	move	zero,zero
80004514:	00000021 	move	zero,zero
80004518:	00000021 	move	zero,zero
8000451c:	00000021 	move	zero,zero
80004520:	00000021 	move	zero,zero
80004524:	00000021 	move	zero,zero
80004528:	3c08dd4f 	lui	t0,0xdd4f
8000452c:	35081370 	ori	t0,t0,0x1370
80004530:	0501fff1 	bgez	t0,800044f8 <n31_bgez_test+0x28>
80004534:	00000000 	nop
80004538:	10000004 	b	8000454c <n31_bgez_test+0x7c>
8000453c:	00000000 	nop
80004540:	00000021 	move	zero,zero
80004544:	3c1228b8 	lui	s2,0x28b8
80004548:	365250c0 	ori	s2,s2,0x50c0
8000454c:	00000000 	nop
80004550:	24140000 	li	s4,0
80004554:	16140007 	bne	s0,s4,80004574 <inst_error>
80004558:	00000000 	nop
8000455c:	24150000 	li	s5,0
80004560:	16550004 	bne	s2,s5,80004574 <inst_error>
80004564:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:16
80004568:	14400002 	bnez	v0,80004574 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:17
8000456c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:19
80004570:	26730001 	addiu	s3,s3,1

80004574 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:22
80004574:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:23
80004578:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:24
8000457c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:25
80004580:	00000000 	nop
inst_error():
80004584:	00000000 	nop

80004588 <n16_andi_test>:
n16_andi_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:11
80004588:	3c041000 	lui	a0,0x1000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:12
8000458c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:14
80004590:	3c084c23 	lui	t0,0x4c23
80004594:	3508cdd4 	ori	t0,t0,0xcdd4
80004598:	24095e89 	li	t1,24201
8000459c:	31105e89 	andi	s0,t0,0x5e89
800045a0:	24124c80 	li	s2,19584
800045a4:	16120004 	bne	s0,s2,800045b8 <inst_error>
800045a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:16
800045ac:	14400002 	bnez	v0,800045b8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:17
800045b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:19
800045b4:	26730001 	addiu	s3,s3,1

800045b8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:22
800045b8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:23
800045bc:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:24
800045c0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:25
800045c4:	00000000 	nop

800045c8 <n23_sll_test>:
n23_sll_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:11
800045c8:	3c041700 	lui	a0,0x1700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:12
800045cc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:14
800045d0:	3c084799 	lui	t0,0x4799
800045d4:	35084e5e 	ori	t0,t0,0x4e5e
800045d8:	24090001 	li	t1,1
800045dc:	00088040 	sll	s0,t0,0x1
800045e0:	3c128f32 	lui	s2,0x8f32
800045e4:	36529cbc 	ori	s2,s2,0x9cbc
800045e8:	16120004 	bne	s0,s2,800045fc <inst_error>
800045ec:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:16
800045f0:	14400002 	bnez	v0,800045fc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:17
800045f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:19
800045f8:	26730001 	addiu	s3,s3,1

800045fc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:22
800045fc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:23
80004600:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:24
80004604:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:25
80004608:	00000000 	nop
inst_error():
8000460c:	00000000 	nop

80004610 <n26_srav_test>:
n26_srav_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:11
80004610:	3c041a00 	lui	a0,0x1a00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:12
80004614:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:14
80004618:	3c083e59 	lui	t0,0x3e59
8000461c:	35084300 	ori	t0,t0,0x4300
80004620:	24090003 	li	t1,3
80004624:	01288007 	srav	s0,t0,t1
80004628:	3c1207cb 	lui	s2,0x7cb
8000462c:	36522860 	ori	s2,s2,0x2860
80004630:	16120004 	bne	s0,s2,80004644 <inst_error>
80004634:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:16
80004638:	14400002 	bnez	v0,80004644 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:17
8000463c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:19
80004640:	26730001 	addiu	s3,s3,1

80004644 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:22
80004644:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:23
80004648:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:24
8000464c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:25
80004650:	00000000 	nop
inst_error():
80004654:	00000000 	nop

80004658 <n51_lw_test>:
n51_lw_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:11
80004658:	3c043300 	lui	a0,0x3300
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:12
8000465c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:14
80004660:	3c09c822 	lui	t1,0xc822
80004664:	3529c7e8 	ori	t1,t1,0xc7e8
80004668:	3c088002 	lui	t0,0x8002
8000466c:	350834c0 	ori	t0,t0,0x34c0
80004670:	240a66a8 	li	t2,26280
80004674:	240c66a8 	li	t4,26280
80004678:	ad0966a8 	sw	t1,26280(t0)
8000467c:	8d1066a8 	lw	s0,26280(t0)
80004680:	3c12c822 	lui	s2,0xc822
80004684:	3652c7e8 	ori	s2,s2,0xc7e8
80004688:	16120004 	bne	s0,s2,8000469c <inst_error>
8000468c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:17
80004690:	14400002 	bnez	v0,8000469c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:18
80004694:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:20
80004698:	26730001 	addiu	s3,s3,1

8000469c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:23
8000469c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:24
800046a0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:25
800046a4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:26
800046a8:	00000000 	nop
inst_error():
800046ac:	00000000 	nop

800046b0 <n41_mfhi_test>:
n41_mfhi_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:11
800046b0:	3c042900 	lui	a0,0x2900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:12
800046b4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:14
800046b8:	3c08bd59 	lui	t0,0xbd59
800046bc:	350872d1 	ori	t0,t0,0x72d1
800046c0:	01000011 	mthi	t0
800046c4:	00008010 	mfhi	s0
800046c8:	3c12bd59 	lui	s2,0xbd59
800046cc:	365272d1 	ori	s2,s2,0x72d1
800046d0:	16120004 	bne	s0,s2,800046e4 <inst_error>
800046d4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:17
800046d8:	14400002 	bnez	v0,800046e4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:18
800046dc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:20
800046e0:	26730001 	addiu	s3,s3,1

800046e4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:23
800046e4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:24
800046e8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:25
800046ec:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:26
800046f0:	00000000 	nop
inst_error():
800046f4:	00000000 	nop

800046f8 <n32_bgtz_test>:
n32_bgtz_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:11
800046f8:	3c042000 	lui	a0,0x2000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:12
800046fc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:14
80004700:	3c0c40b4 	lui	t4,0x40b4
80004704:	358c0d40 	ori	t4,t4,0xd40
80004708:	3c0d45eb 	lui	t5,0x45eb
8000470c:	35ad9450 	ori	t5,t5,0x9450
80004710:	24100000 	li	s0,0
80004714:	24120000 	li	s2,0
80004718:	10000015 	b	80004770 <n32_bgtz_test+0x78>
8000471c:	00000000 	nop
80004720:	3c1040b4 	lui	s0,0x40b4
80004724:	36100d40 	ori	s0,s0,0xd40
80004728:	1d00001c 	bgtz	t0,8000479c <n32_bgtz_test+0xa4>
8000472c:	00000000 	nop
80004730:	1000001c 	b	800047a4 <n32_bgtz_test+0xac>
80004734:	00000000 	nop
80004738:	00000021 	move	zero,zero
8000473c:	00000021 	move	zero,zero
80004740:	00000021 	move	zero,zero
80004744:	00000021 	move	zero,zero
80004748:	00000021 	move	zero,zero
8000474c:	00000021 	move	zero,zero
80004750:	00000021 	move	zero,zero
80004754:	00000021 	move	zero,zero
80004758:	00000021 	move	zero,zero
8000475c:	00000021 	move	zero,zero
80004760:	00000021 	move	zero,zero
80004764:	00000021 	move	zero,zero
80004768:	00000021 	move	zero,zero
8000476c:	00000021 	move	zero,zero
80004770:	3c08cc73 	lui	t0,0xcc73
80004774:	35088190 	ori	t0,t0,0x8190
80004778:	1d00ffe9 	bgtz	t0,80004720 <n32_bgtz_test+0x28>
8000477c:	00000000 	nop
80004780:	10000008 	b	800047a4 <n32_bgtz_test+0xac>
80004784:	00000000 	nop
80004788:	00000021 	move	zero,zero
8000478c:	00000021 	move	zero,zero
80004790:	00000021 	move	zero,zero
80004794:	00000021 	move	zero,zero
80004798:	00000021 	move	zero,zero
8000479c:	3c1245eb 	lui	s2,0x45eb
800047a0:	36529450 	ori	s2,s2,0x9450
800047a4:	00000000 	nop
800047a8:	24140000 	li	s4,0
800047ac:	16140007 	bne	s0,s4,800047cc <inst_error>
800047b0:	00000000 	nop
800047b4:	24150000 	li	s5,0
800047b8:	16550004 	bne	s2,s5,800047cc <inst_error>
800047bc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:17
800047c0:	14400002 	bnez	v0,800047cc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:18
800047c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:20
800047c8:	26730001 	addiu	s3,s3,1

800047cc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:23
800047cc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:24
800047d0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:25
800047d4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:26
800047d8:	00000000 	nop
inst_error():
800047dc:	00000000 	nop

800047e0 <n20_ori_test>:
n20_ori_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:11
800047e0:	3c041400 	lui	a0,0x1400
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:12
800047e4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:14
800047e8:	3c080d48 	lui	t0,0xd48
800047ec:	3508918a 	ori	t0,t0,0x918a
800047f0:	24097fe6 	li	t1,32742
800047f4:	35107fe6 	ori	s0,t0,0x7fe6
800047f8:	3c120d48 	lui	s2,0xd48
800047fc:	3652ffee 	ori	s2,s2,0xffee
80004800:	16120004 	bne	s0,s2,80004814 <inst_error>
80004804:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:16
80004808:	14400002 	bnez	v0,80004814 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:17
8000480c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:19
80004810:	26730001 	addiu	s3,s3,1

80004814 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:22
80004814:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:23
80004818:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:24
8000481c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:25
80004820:	00000000 	nop
inst_error():
80004824:	00000000 	nop

80004828 <n25_sra_test>:
n25_sra_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:11
80004828:	3c041900 	lui	a0,0x1900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:12
8000482c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:14
80004830:	3c087e00 	lui	t0,0x7e00
80004834:	350883f0 	ori	t0,t0,0x83f0
80004838:	24090009 	li	t1,9
8000483c:	00088243 	sra	s0,t0,0x9
80004840:	3c12003f 	lui	s2,0x3f
80004844:	36520041 	ori	s2,s2,0x41
80004848:	16120004 	bne	s0,s2,8000485c <inst_error>
8000484c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:16
80004850:	14400002 	bnez	v0,8000485c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:17
80004854:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:19
80004858:	26730001 	addiu	s3,s3,1

8000485c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:22
8000485c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:23
80004860:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:24
80004864:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:25
80004868:	00000000 	nop
inst_error():
8000486c:	00000000 	nop

80004870 <n15_and_test>:
n15_and_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:11
80004870:	3c040f00 	lui	a0,0xf00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:12
80004874:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:14
80004878:	3c085c95 	lui	t0,0x5c95
8000487c:	3508951a 	ori	t0,t0,0x951a
80004880:	3c09ca00 	lui	t1,0xca00
80004884:	3529c414 	ori	t1,t1,0xc414
80004888:	01098024 	and	s0,t0,t1
8000488c:	3c124800 	lui	s2,0x4800
80004890:	36528410 	ori	s2,s2,0x8410
80004894:	16120004 	bne	s0,s2,800048a8 <inst_error>
80004898:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:16
8000489c:	14400002 	bnez	v0,800048a8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:17
800048a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:19
800048a4:	26730001 	addiu	s3,s3,1

800048a8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:22
800048a8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:23
800048ac:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:24
800048b0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:25
800048b4:	00000000 	nop

800048b8 <n17_lui_test>:
n17_lui_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:11
800048b8:	3c041100 	lui	a0,0x1100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:12
800048bc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:14
800048c0:	3c085f00 	lui	t0,0x5f00
800048c4:	3c105f00 	lui	s0,0x5f00
800048c8:	15100004 	bne	t0,s0,800048dc <inst_error>
800048cc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:16
800048d0:	14400002 	bnez	v0,800048dc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:17
800048d4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:19
800048d8:	26730001 	addiu	s3,s3,1

800048dc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:22
800048dc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:23
800048e0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:24
800048e4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:25
800048e8:	00000000 	nop
inst_error():
800048ec:	00000000 	nop
800048f0:	bd0a03dc 	cache	0xa,988(t0)
	...

Disassembly of section .data:

80004908 <_fdata>:
_fdata():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:14
80004908:	3c045100 	lui	a0,0x5100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:17
8000490c:	24020009 	li	v0,9
80004910:	00008021 	move	s0,zero
80004914:	00009021 	move	s2,zero
80004918:	3c087fff 	lui	t0,0x7fff
8000491c:	3508ffff 	ori	t0,t0,0xffff
80004920:	3c097fff 	lui	t1,0x7fff
80004924:	3529ffff 	ori	t1,t1,0xffff
80004928:	3c0a8002 	lui	t2,0x8002
8000492c:	354afff0 	ori	t2,t2,0xfff0
80004930:	ad480000 	sw	t0,0(t2)
80004934:	10000004 	b	80004948 <_fdata+0x40>
80004938:	00000000 	nop
8000493c:	26522222 	addiu	s2,s2,8738
80004940:	10000007 	b	80004960 <_fdata+0x58>
80004944:	00000000 	nop
80004948:	26101111 	addiu	s0,s0,4369
8000494c:	15480004 	bne	t2,t0,80004960 <_fdata+0x58>
80004950:	21147fff 	addi	s4,t0,32767
80004954:	26100002 	addiu	s0,s0,2
80004958:	26100002 	addiu	s0,s0,2
8000495c:	26100002 	addiu	s0,s0,2
80004960:	02129021 	addu	s2,s0,s2
80004964:	24141117 	li	s4,4375
80004968:	169204b9 	bne	s4,s2,80005c50 <inst_error>
8000496c:	00000000 	nop
80004970:	3c144444 	lui	s4,0x4444
80004974:	168204b6 	bne	s4,v0,80005c50 <inst_error>
80004978:	00000000 	nop
8000497c:	24020009 	li	v0,9
80004980:	00008021 	move	s0,zero
80004984:	00009021 	move	s2,zero
80004988:	3c087fff 	lui	t0,0x7fff
8000498c:	3508ffff 	ori	t0,t0,0xffff
80004990:	3c097fff 	lui	t1,0x7fff
80004994:	3529ffff 	ori	t1,t1,0xffff
80004998:	3c0a8002 	lui	t2,0x8002
8000499c:	354afff0 	ori	t2,t2,0xfff0
800049a0:	ad480000 	sw	t0,0(t2)
800049a4:	10000004 	b	800049b8 <_fdata+0xb0>
800049a8:	00000000 	nop
800049ac:	26522222 	addiu	s2,s2,8738
800049b0:	10000007 	b	800049d0 <_fdata+0xc8>
800049b4:	00000000 	nop
800049b8:	26101111 	addiu	s0,s0,4369
800049bc:	15280004 	bne	t1,t0,800049d0 <_fdata+0xc8>
800049c0:	21147fff 	addi	s4,t0,32767
800049c4:	26100002 	addiu	s0,s0,2
800049c8:	26100002 	addiu	s0,s0,2
800049cc:	26100002 	addiu	s0,s0,2
800049d0:	02129021 	addu	s2,s0,s2
800049d4:	24141117 	li	s4,4375
800049d8:	1692049d 	bne	s4,s2,80005c50 <inst_error>
800049dc:	00000000 	nop
800049e0:	3c144444 	lui	s4,0x4444
800049e4:	1682049a 	bne	s4,v0,80005c50 <inst_error>
800049e8:	00000000 	nop
800049ec:	24020009 	li	v0,9
800049f0:	00008021 	move	s0,zero
800049f4:	00009021 	move	s2,zero
800049f8:	3c087fff 	lui	t0,0x7fff
800049fc:	3508ffff 	ori	t0,t0,0xffff
80004a00:	3c097fff 	lui	t1,0x7fff
80004a04:	3529ffff 	ori	t1,t1,0xffff
80004a08:	3c0a8002 	lui	t2,0x8002
80004a0c:	354afff0 	ori	t2,t2,0xfff0
80004a10:	ad480000 	sw	t0,0(t2)
80004a14:	10000004 	b	80004a28 <_fdata+0x120>
80004a18:	00000000 	nop
80004a1c:	26522222 	addiu	s2,s2,8738
80004a20:	10000007 	b	80004a40 <_fdata+0x138>
80004a24:	00000000 	nop
80004a28:	26101111 	addiu	s0,s0,4369
80004a2c:	1548fffb 	bne	t2,t0,80004a1c <_fdata+0x114>
80004a30:	21147fff 	addi	s4,t0,32767
80004a34:	26100002 	addiu	s0,s0,2
80004a38:	26100002 	addiu	s0,s0,2
80004a3c:	26100002 	addiu	s0,s0,2
80004a40:	02129021 	addu	s2,s0,s2
80004a44:	24141117 	li	s4,4375
80004a48:	16920481 	bne	s4,s2,80005c50 <inst_error>
80004a4c:	00000000 	nop
80004a50:	3c144444 	lui	s4,0x4444
80004a54:	1682047e 	bne	s4,v0,80005c50 <inst_error>
80004a58:	00000000 	nop
80004a5c:	24020009 	li	v0,9
80004a60:	00008021 	move	s0,zero
80004a64:	00009021 	move	s2,zero
80004a68:	3c087fff 	lui	t0,0x7fff
80004a6c:	3508ffff 	ori	t0,t0,0xffff
80004a70:	3c097fff 	lui	t1,0x7fff
80004a74:	3529ffff 	ori	t1,t1,0xffff
80004a78:	3c0a8002 	lui	t2,0x8002
80004a7c:	354afff0 	ori	t2,t2,0xfff0
80004a80:	ad480000 	sw	t0,0(t2)
80004a84:	10000004 	b	80004a98 <_fdata+0x190>
80004a88:	00000000 	nop
80004a8c:	26522222 	addiu	s2,s2,8738
80004a90:	10000007 	b	80004ab0 <_fdata+0x1a8>
80004a94:	00000000 	nop
80004a98:	26101111 	addiu	s0,s0,4369
80004a9c:	1528fffb 	bne	t1,t0,80004a8c <_fdata+0x184>
80004aa0:	21147fff 	addi	s4,t0,32767
80004aa4:	26100002 	addiu	s0,s0,2
80004aa8:	26100002 	addiu	s0,s0,2
80004aac:	26100002 	addiu	s0,s0,2
80004ab0:	02129021 	addu	s2,s0,s2
80004ab4:	24141117 	li	s4,4375
80004ab8:	16920465 	bne	s4,s2,80005c50 <inst_error>
80004abc:	00000000 	nop
80004ac0:	3c144444 	lui	s4,0x4444
80004ac4:	16820462 	bne	s4,v0,80005c50 <inst_error>
80004ac8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:18
80004acc:	24020009 	li	v0,9
80004ad0:	00008021 	move	s0,zero
80004ad4:	00009021 	move	s2,zero
80004ad8:	3c087fff 	lui	t0,0x7fff
80004adc:	3508ffff 	ori	t0,t0,0xffff
80004ae0:	3c097fff 	lui	t1,0x7fff
80004ae4:	3529ffff 	ori	t1,t1,0xffff
80004ae8:	3c0a8002 	lui	t2,0x8002
80004aec:	354afff0 	ori	t2,t2,0xfff0
80004af0:	ad480000 	sw	t0,0(t2)
80004af4:	10000004 	b	80004b08 <_fdata+0x200>
80004af8:	00000000 	nop
80004afc:	26522222 	addiu	s2,s2,8738
80004b00:	10000007 	b	80004b20 <_fdata+0x218>
80004b04:	00000000 	nop
80004b08:	26101111 	addiu	s0,s0,4369
80004b0c:	15480004 	bne	t2,t0,80004b20 <_fdata+0x218>
80004b10:	0109a020 	add	s4,t0,t1
80004b14:	26100002 	addiu	s0,s0,2
80004b18:	26100002 	addiu	s0,s0,2
80004b1c:	26100002 	addiu	s0,s0,2
80004b20:	02129021 	addu	s2,s0,s2
80004b24:	24141117 	li	s4,4375
80004b28:	16920449 	bne	s4,s2,80005c50 <inst_error>
80004b2c:	00000000 	nop
80004b30:	3c144444 	lui	s4,0x4444
80004b34:	16820446 	bne	s4,v0,80005c50 <inst_error>
80004b38:	00000000 	nop
80004b3c:	24020009 	li	v0,9
80004b40:	00008021 	move	s0,zero
80004b44:	00009021 	move	s2,zero
80004b48:	3c087fff 	lui	t0,0x7fff
80004b4c:	3508ffff 	ori	t0,t0,0xffff
80004b50:	3c097fff 	lui	t1,0x7fff
80004b54:	3529ffff 	ori	t1,t1,0xffff
80004b58:	3c0a8002 	lui	t2,0x8002
80004b5c:	354afff0 	ori	t2,t2,0xfff0
80004b60:	ad480000 	sw	t0,0(t2)
80004b64:	10000004 	b	80004b78 <_fdata+0x270>
80004b68:	00000000 	nop
80004b6c:	26522222 	addiu	s2,s2,8738
80004b70:	10000007 	b	80004b90 <_fdata+0x288>
80004b74:	00000000 	nop
80004b78:	26101111 	addiu	s0,s0,4369
80004b7c:	15280004 	bne	t1,t0,80004b90 <_fdata+0x288>
80004b80:	0109a020 	add	s4,t0,t1
80004b84:	26100002 	addiu	s0,s0,2
80004b88:	26100002 	addiu	s0,s0,2
80004b8c:	26100002 	addiu	s0,s0,2
80004b90:	02129021 	addu	s2,s0,s2
80004b94:	24141117 	li	s4,4375
80004b98:	1692042d 	bne	s4,s2,80005c50 <inst_error>
80004b9c:	00000000 	nop
80004ba0:	3c144444 	lui	s4,0x4444
80004ba4:	1682042a 	bne	s4,v0,80005c50 <inst_error>
80004ba8:	00000000 	nop
80004bac:	24020009 	li	v0,9
80004bb0:	00008021 	move	s0,zero
80004bb4:	00009021 	move	s2,zero
80004bb8:	3c087fff 	lui	t0,0x7fff
80004bbc:	3508ffff 	ori	t0,t0,0xffff
80004bc0:	3c097fff 	lui	t1,0x7fff
80004bc4:	3529ffff 	ori	t1,t1,0xffff
80004bc8:	3c0a8002 	lui	t2,0x8002
80004bcc:	354afff0 	ori	t2,t2,0xfff0
80004bd0:	ad480000 	sw	t0,0(t2)
80004bd4:	10000004 	b	80004be8 <_fdata+0x2e0>
80004bd8:	00000000 	nop
80004bdc:	26522222 	addiu	s2,s2,8738
80004be0:	10000007 	b	80004c00 <_fdata+0x2f8>
80004be4:	00000000 	nop
80004be8:	26101111 	addiu	s0,s0,4369
80004bec:	1548fffb 	bne	t2,t0,80004bdc <_fdata+0x2d4>
80004bf0:	0109a020 	add	s4,t0,t1
80004bf4:	26100002 	addiu	s0,s0,2
80004bf8:	26100002 	addiu	s0,s0,2
80004bfc:	26100002 	addiu	s0,s0,2
80004c00:	02129021 	addu	s2,s0,s2
80004c04:	24141117 	li	s4,4375
80004c08:	16920411 	bne	s4,s2,80005c50 <inst_error>
80004c0c:	00000000 	nop
80004c10:	3c144444 	lui	s4,0x4444
80004c14:	1682040e 	bne	s4,v0,80005c50 <inst_error>
80004c18:	00000000 	nop
80004c1c:	24020009 	li	v0,9
80004c20:	00008021 	move	s0,zero
80004c24:	00009021 	move	s2,zero
80004c28:	3c087fff 	lui	t0,0x7fff
80004c2c:	3508ffff 	ori	t0,t0,0xffff
80004c30:	3c097fff 	lui	t1,0x7fff
80004c34:	3529ffff 	ori	t1,t1,0xffff
80004c38:	3c0a8002 	lui	t2,0x8002
80004c3c:	354afff0 	ori	t2,t2,0xfff0
80004c40:	ad480000 	sw	t0,0(t2)
80004c44:	10000004 	b	80004c58 <_fdata+0x350>
80004c48:	00000000 	nop
80004c4c:	26522222 	addiu	s2,s2,8738
80004c50:	10000007 	b	80004c70 <_fdata+0x368>
80004c54:	00000000 	nop
80004c58:	26101111 	addiu	s0,s0,4369
80004c5c:	1528fffb 	bne	t1,t0,80004c4c <_fdata+0x344>
80004c60:	0109a020 	add	s4,t0,t1
80004c64:	26100002 	addiu	s0,s0,2
80004c68:	26100002 	addiu	s0,s0,2
80004c6c:	26100002 	addiu	s0,s0,2
80004c70:	02129021 	addu	s2,s0,s2
80004c74:	24141117 	li	s4,4375
80004c78:	169203f5 	bne	s4,s2,80005c50 <inst_error>
80004c7c:	00000000 	nop
80004c80:	3c144444 	lui	s4,0x4444
80004c84:	168203f2 	bne	s4,v0,80005c50 <inst_error>
80004c88:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:19
80004c8c:	24020009 	li	v0,9
80004c90:	00008021 	move	s0,zero
80004c94:	00009021 	move	s2,zero
80004c98:	3c087fff 	lui	t0,0x7fff
80004c9c:	3508ffff 	ori	t0,t0,0xffff
80004ca0:	3c097fff 	lui	t1,0x7fff
80004ca4:	3529ffff 	ori	t1,t1,0xffff
80004ca8:	3c0a8002 	lui	t2,0x8002
80004cac:	354afff0 	ori	t2,t2,0xfff0
80004cb0:	ad480000 	sw	t0,0(t2)
80004cb4:	10000004 	b	80004cc8 <_fdata+0x3c0>
80004cb8:	00000000 	nop
80004cbc:	26522222 	addiu	s2,s2,8738
80004cc0:	10000007 	b	80004ce0 <_fdata+0x3d8>
80004cc4:	00000000 	nop
80004cc8:	26101111 	addiu	s0,s0,4369
80004ccc:	15480004 	bne	t2,t0,80004ce0 <_fdata+0x3d8>
80004cd0:	010aa022 	sub	s4,t0,t2
80004cd4:	26100002 	addiu	s0,s0,2
80004cd8:	26100002 	addiu	s0,s0,2
80004cdc:	26100002 	addiu	s0,s0,2
80004ce0:	02129021 	addu	s2,s0,s2
80004ce4:	24141117 	li	s4,4375
80004ce8:	169203d9 	bne	s4,s2,80005c50 <inst_error>
80004cec:	00000000 	nop
80004cf0:	3c144444 	lui	s4,0x4444
80004cf4:	168203d6 	bne	s4,v0,80005c50 <inst_error>
80004cf8:	00000000 	nop
80004cfc:	24020009 	li	v0,9
80004d00:	00008021 	move	s0,zero
80004d04:	00009021 	move	s2,zero
80004d08:	3c087fff 	lui	t0,0x7fff
80004d0c:	3508ffff 	ori	t0,t0,0xffff
80004d10:	3c097fff 	lui	t1,0x7fff
80004d14:	3529ffff 	ori	t1,t1,0xffff
80004d18:	3c0a8002 	lui	t2,0x8002
80004d1c:	354afff0 	ori	t2,t2,0xfff0
80004d20:	ad480000 	sw	t0,0(t2)
80004d24:	10000004 	b	80004d38 <_fdata+0x430>
80004d28:	00000000 	nop
80004d2c:	26522222 	addiu	s2,s2,8738
80004d30:	10000007 	b	80004d50 <_fdata+0x448>
80004d34:	00000000 	nop
80004d38:	26101111 	addiu	s0,s0,4369
80004d3c:	15280004 	bne	t1,t0,80004d50 <_fdata+0x448>
80004d40:	010aa022 	sub	s4,t0,t2
80004d44:	26100002 	addiu	s0,s0,2
80004d48:	26100002 	addiu	s0,s0,2
80004d4c:	26100002 	addiu	s0,s0,2
80004d50:	02129021 	addu	s2,s0,s2
80004d54:	24141117 	li	s4,4375
80004d58:	169203bd 	bne	s4,s2,80005c50 <inst_error>
80004d5c:	00000000 	nop
80004d60:	3c144444 	lui	s4,0x4444
80004d64:	168203ba 	bne	s4,v0,80005c50 <inst_error>
80004d68:	00000000 	nop
80004d6c:	24020009 	li	v0,9
80004d70:	00008021 	move	s0,zero
80004d74:	00009021 	move	s2,zero
80004d78:	3c087fff 	lui	t0,0x7fff
80004d7c:	3508ffff 	ori	t0,t0,0xffff
80004d80:	3c097fff 	lui	t1,0x7fff
80004d84:	3529ffff 	ori	t1,t1,0xffff
80004d88:	3c0a8002 	lui	t2,0x8002
80004d8c:	354afff0 	ori	t2,t2,0xfff0
80004d90:	ad480000 	sw	t0,0(t2)
80004d94:	10000004 	b	80004da8 <_fdata+0x4a0>
80004d98:	00000000 	nop
80004d9c:	26522222 	addiu	s2,s2,8738
80004da0:	10000007 	b	80004dc0 <_fdata+0x4b8>
80004da4:	00000000 	nop
80004da8:	26101111 	addiu	s0,s0,4369
80004dac:	1548fffb 	bne	t2,t0,80004d9c <_fdata+0x494>
80004db0:	010aa022 	sub	s4,t0,t2
80004db4:	26100002 	addiu	s0,s0,2
80004db8:	26100002 	addiu	s0,s0,2
80004dbc:	26100002 	addiu	s0,s0,2
80004dc0:	02129021 	addu	s2,s0,s2
80004dc4:	24141117 	li	s4,4375
80004dc8:	169203a1 	bne	s4,s2,80005c50 <inst_error>
80004dcc:	00000000 	nop
80004dd0:	3c144444 	lui	s4,0x4444
80004dd4:	1682039e 	bne	s4,v0,80005c50 <inst_error>
80004dd8:	00000000 	nop
80004ddc:	24020009 	li	v0,9
80004de0:	00008021 	move	s0,zero
80004de4:	00009021 	move	s2,zero
80004de8:	3c087fff 	lui	t0,0x7fff
80004dec:	3508ffff 	ori	t0,t0,0xffff
80004df0:	3c097fff 	lui	t1,0x7fff
80004df4:	3529ffff 	ori	t1,t1,0xffff
80004df8:	3c0a8002 	lui	t2,0x8002
80004dfc:	354afff0 	ori	t2,t2,0xfff0
80004e00:	ad480000 	sw	t0,0(t2)
80004e04:	10000004 	b	80004e18 <_fdata+0x510>
80004e08:	00000000 	nop
80004e0c:	26522222 	addiu	s2,s2,8738
80004e10:	10000007 	b	80004e30 <_fdata+0x528>
80004e14:	00000000 	nop
80004e18:	26101111 	addiu	s0,s0,4369
80004e1c:	1528fffb 	bne	t1,t0,80004e0c <_fdata+0x504>
80004e20:	010aa022 	sub	s4,t0,t2
80004e24:	26100002 	addiu	s0,s0,2
80004e28:	26100002 	addiu	s0,s0,2
80004e2c:	26100002 	addiu	s0,s0,2
80004e30:	02129021 	addu	s2,s0,s2
80004e34:	24141117 	li	s4,4375
80004e38:	16920385 	bne	s4,s2,80005c50 <inst_error>
80004e3c:	00000000 	nop
80004e40:	3c144444 	lui	s4,0x4444
80004e44:	16820382 	bne	s4,v0,80005c50 <inst_error>
80004e48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:20
80004e4c:	24020009 	li	v0,9
80004e50:	00008021 	move	s0,zero
80004e54:	00009021 	move	s2,zero
80004e58:	3c087fff 	lui	t0,0x7fff
80004e5c:	3508ffff 	ori	t0,t0,0xffff
80004e60:	3c097fff 	lui	t1,0x7fff
80004e64:	3529ffff 	ori	t1,t1,0xffff
80004e68:	3c0a8002 	lui	t2,0x8002
80004e6c:	354afff0 	ori	t2,t2,0xfff0
80004e70:	ad480000 	sw	t0,0(t2)
80004e74:	10000004 	b	80004e88 <_fdata+0x580>
80004e78:	00000000 	nop
80004e7c:	26522222 	addiu	s2,s2,8738
80004e80:	10000007 	b	80004ea0 <_fdata+0x598>
80004e84:	00000000 	nop
80004e88:	26101111 	addiu	s0,s0,4369
80004e8c:	15480004 	bne	t2,t0,80004ea0 <_fdata+0x598>
80004e90:	85540003 	lh	s4,3(t2)
80004e94:	26100002 	addiu	s0,s0,2
80004e98:	26100002 	addiu	s0,s0,2
80004e9c:	26100002 	addiu	s0,s0,2
80004ea0:	02129021 	addu	s2,s0,s2
80004ea4:	24141117 	li	s4,4375
80004ea8:	16920369 	bne	s4,s2,80005c50 <inst_error>
80004eac:	00000000 	nop
80004eb0:	3c144444 	lui	s4,0x4444
80004eb4:	16820366 	bne	s4,v0,80005c50 <inst_error>
80004eb8:	00000000 	nop
80004ebc:	24020009 	li	v0,9
80004ec0:	00008021 	move	s0,zero
80004ec4:	00009021 	move	s2,zero
80004ec8:	3c087fff 	lui	t0,0x7fff
80004ecc:	3508ffff 	ori	t0,t0,0xffff
80004ed0:	3c097fff 	lui	t1,0x7fff
80004ed4:	3529ffff 	ori	t1,t1,0xffff
80004ed8:	3c0a8002 	lui	t2,0x8002
80004edc:	354afff0 	ori	t2,t2,0xfff0
80004ee0:	ad480000 	sw	t0,0(t2)
80004ee4:	10000004 	b	80004ef8 <_fdata+0x5f0>
80004ee8:	00000000 	nop
80004eec:	26522222 	addiu	s2,s2,8738
80004ef0:	10000007 	b	80004f10 <_fdata+0x608>
80004ef4:	00000000 	nop
80004ef8:	26101111 	addiu	s0,s0,4369
80004efc:	15280004 	bne	t1,t0,80004f10 <_fdata+0x608>
80004f00:	85540003 	lh	s4,3(t2)
80004f04:	26100002 	addiu	s0,s0,2
80004f08:	26100002 	addiu	s0,s0,2
80004f0c:	26100002 	addiu	s0,s0,2
80004f10:	02129021 	addu	s2,s0,s2
80004f14:	24141117 	li	s4,4375
80004f18:	1692034d 	bne	s4,s2,80005c50 <inst_error>
80004f1c:	00000000 	nop
80004f20:	3c144444 	lui	s4,0x4444
80004f24:	1682034a 	bne	s4,v0,80005c50 <inst_error>
80004f28:	00000000 	nop
80004f2c:	24020009 	li	v0,9
80004f30:	00008021 	move	s0,zero
80004f34:	00009021 	move	s2,zero
80004f38:	3c087fff 	lui	t0,0x7fff
80004f3c:	3508ffff 	ori	t0,t0,0xffff
80004f40:	3c097fff 	lui	t1,0x7fff
80004f44:	3529ffff 	ori	t1,t1,0xffff
80004f48:	3c0a8002 	lui	t2,0x8002
80004f4c:	354afff0 	ori	t2,t2,0xfff0
80004f50:	ad480000 	sw	t0,0(t2)
80004f54:	10000004 	b	80004f68 <_fdata+0x660>
80004f58:	00000000 	nop
80004f5c:	26522222 	addiu	s2,s2,8738
80004f60:	10000007 	b	80004f80 <_fdata+0x678>
80004f64:	00000000 	nop
80004f68:	26101111 	addiu	s0,s0,4369
80004f6c:	1548fffb 	bne	t2,t0,80004f5c <_fdata+0x654>
80004f70:	85540003 	lh	s4,3(t2)
80004f74:	26100002 	addiu	s0,s0,2
80004f78:	26100002 	addiu	s0,s0,2
80004f7c:	26100002 	addiu	s0,s0,2
80004f80:	02129021 	addu	s2,s0,s2
80004f84:	24141117 	li	s4,4375
80004f88:	16920331 	bne	s4,s2,80005c50 <inst_error>
80004f8c:	00000000 	nop
80004f90:	3c144444 	lui	s4,0x4444
80004f94:	1682032e 	bne	s4,v0,80005c50 <inst_error>
80004f98:	00000000 	nop
80004f9c:	24020009 	li	v0,9
80004fa0:	00008021 	move	s0,zero
80004fa4:	00009021 	move	s2,zero
80004fa8:	3c087fff 	lui	t0,0x7fff
80004fac:	3508ffff 	ori	t0,t0,0xffff
80004fb0:	3c097fff 	lui	t1,0x7fff
80004fb4:	3529ffff 	ori	t1,t1,0xffff
80004fb8:	3c0a8002 	lui	t2,0x8002
80004fbc:	354afff0 	ori	t2,t2,0xfff0
80004fc0:	ad480000 	sw	t0,0(t2)
80004fc4:	10000004 	b	80004fd8 <_fdata+0x6d0>
80004fc8:	00000000 	nop
80004fcc:	26522222 	addiu	s2,s2,8738
80004fd0:	10000007 	b	80004ff0 <_fdata+0x6e8>
80004fd4:	00000000 	nop
80004fd8:	26101111 	addiu	s0,s0,4369
80004fdc:	1528fffb 	bne	t1,t0,80004fcc <_fdata+0x6c4>
80004fe0:	85540003 	lh	s4,3(t2)
80004fe4:	26100002 	addiu	s0,s0,2
80004fe8:	26100002 	addiu	s0,s0,2
80004fec:	26100002 	addiu	s0,s0,2
80004ff0:	02129021 	addu	s2,s0,s2
80004ff4:	24141117 	li	s4,4375
80004ff8:	16920315 	bne	s4,s2,80005c50 <inst_error>
80004ffc:	00000000 	nop
80005000:	3c144444 	lui	s4,0x4444
80005004:	16820312 	bne	s4,v0,80005c50 <inst_error>
80005008:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:21
8000500c:	24020009 	li	v0,9
80005010:	00008021 	move	s0,zero
80005014:	00009021 	move	s2,zero
80005018:	3c087fff 	lui	t0,0x7fff
8000501c:	3508ffff 	ori	t0,t0,0xffff
80005020:	3c097fff 	lui	t1,0x7fff
80005024:	3529ffff 	ori	t1,t1,0xffff
80005028:	3c0a8002 	lui	t2,0x8002
8000502c:	354afff0 	ori	t2,t2,0xfff0
80005030:	ad480000 	sw	t0,0(t2)
80005034:	10000004 	b	80005048 <_fdata+0x740>
80005038:	00000000 	nop
8000503c:	26522222 	addiu	s2,s2,8738
80005040:	10000007 	b	80005060 <_fdata+0x758>
80005044:	00000000 	nop
80005048:	26101111 	addiu	s0,s0,4369
8000504c:	15480004 	bne	t2,t0,80005060 <_fdata+0x758>
80005050:	95540003 	lhu	s4,3(t2)
80005054:	26100002 	addiu	s0,s0,2
80005058:	26100002 	addiu	s0,s0,2
8000505c:	26100002 	addiu	s0,s0,2
80005060:	02129021 	addu	s2,s0,s2
80005064:	24141117 	li	s4,4375
80005068:	169202f9 	bne	s4,s2,80005c50 <inst_error>
8000506c:	00000000 	nop
80005070:	3c144444 	lui	s4,0x4444
80005074:	168202f6 	bne	s4,v0,80005c50 <inst_error>
80005078:	00000000 	nop
8000507c:	24020009 	li	v0,9
80005080:	00008021 	move	s0,zero
80005084:	00009021 	move	s2,zero
80005088:	3c087fff 	lui	t0,0x7fff
8000508c:	3508ffff 	ori	t0,t0,0xffff
80005090:	3c097fff 	lui	t1,0x7fff
80005094:	3529ffff 	ori	t1,t1,0xffff
80005098:	3c0a8002 	lui	t2,0x8002
8000509c:	354afff0 	ori	t2,t2,0xfff0
800050a0:	ad480000 	sw	t0,0(t2)
800050a4:	10000004 	b	800050b8 <_fdata+0x7b0>
800050a8:	00000000 	nop
800050ac:	26522222 	addiu	s2,s2,8738
800050b0:	10000007 	b	800050d0 <_fdata+0x7c8>
800050b4:	00000000 	nop
800050b8:	26101111 	addiu	s0,s0,4369
800050bc:	15280004 	bne	t1,t0,800050d0 <_fdata+0x7c8>
800050c0:	95540003 	lhu	s4,3(t2)
800050c4:	26100002 	addiu	s0,s0,2
800050c8:	26100002 	addiu	s0,s0,2
800050cc:	26100002 	addiu	s0,s0,2
800050d0:	02129021 	addu	s2,s0,s2
800050d4:	24141117 	li	s4,4375
800050d8:	169202dd 	bne	s4,s2,80005c50 <inst_error>
800050dc:	00000000 	nop
800050e0:	3c144444 	lui	s4,0x4444
800050e4:	168202da 	bne	s4,v0,80005c50 <inst_error>
800050e8:	00000000 	nop
800050ec:	24020009 	li	v0,9
800050f0:	00008021 	move	s0,zero
800050f4:	00009021 	move	s2,zero
800050f8:	3c087fff 	lui	t0,0x7fff
800050fc:	3508ffff 	ori	t0,t0,0xffff
80005100:	3c097fff 	lui	t1,0x7fff
80005104:	3529ffff 	ori	t1,t1,0xffff
80005108:	3c0a8002 	lui	t2,0x8002
8000510c:	354afff0 	ori	t2,t2,0xfff0
80005110:	ad480000 	sw	t0,0(t2)
80005114:	10000004 	b	80005128 <_fdata+0x820>
80005118:	00000000 	nop
8000511c:	26522222 	addiu	s2,s2,8738
80005120:	10000007 	b	80005140 <_fdata+0x838>
80005124:	00000000 	nop
80005128:	26101111 	addiu	s0,s0,4369
8000512c:	1548fffb 	bne	t2,t0,8000511c <_fdata+0x814>
80005130:	95540003 	lhu	s4,3(t2)
80005134:	26100002 	addiu	s0,s0,2
80005138:	26100002 	addiu	s0,s0,2
8000513c:	26100002 	addiu	s0,s0,2
80005140:	02129021 	addu	s2,s0,s2
80005144:	24141117 	li	s4,4375
80005148:	169202c1 	bne	s4,s2,80005c50 <inst_error>
8000514c:	00000000 	nop
80005150:	3c144444 	lui	s4,0x4444
80005154:	168202be 	bne	s4,v0,80005c50 <inst_error>
80005158:	00000000 	nop
8000515c:	24020009 	li	v0,9
80005160:	00008021 	move	s0,zero
80005164:	00009021 	move	s2,zero
80005168:	3c087fff 	lui	t0,0x7fff
8000516c:	3508ffff 	ori	t0,t0,0xffff
80005170:	3c097fff 	lui	t1,0x7fff
80005174:	3529ffff 	ori	t1,t1,0xffff
80005178:	3c0a8002 	lui	t2,0x8002
8000517c:	354afff0 	ori	t2,t2,0xfff0
80005180:	ad480000 	sw	t0,0(t2)
80005184:	10000004 	b	80005198 <_fdata+0x890>
80005188:	00000000 	nop
8000518c:	26522222 	addiu	s2,s2,8738
80005190:	10000007 	b	800051b0 <_fdata+0x8a8>
80005194:	00000000 	nop
80005198:	26101111 	addiu	s0,s0,4369
8000519c:	1528fffb 	bne	t1,t0,8000518c <_fdata+0x884>
800051a0:	95540003 	lhu	s4,3(t2)
800051a4:	26100002 	addiu	s0,s0,2
800051a8:	26100002 	addiu	s0,s0,2
800051ac:	26100002 	addiu	s0,s0,2
800051b0:	02129021 	addu	s2,s0,s2
800051b4:	24141117 	li	s4,4375
800051b8:	169202a5 	bne	s4,s2,80005c50 <inst_error>
800051bc:	00000000 	nop
800051c0:	3c144444 	lui	s4,0x4444
800051c4:	168202a2 	bne	s4,v0,80005c50 <inst_error>
800051c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:22
800051cc:	24020009 	li	v0,9
800051d0:	00008021 	move	s0,zero
800051d4:	00009021 	move	s2,zero
800051d8:	3c087fff 	lui	t0,0x7fff
800051dc:	3508ffff 	ori	t0,t0,0xffff
800051e0:	3c097fff 	lui	t1,0x7fff
800051e4:	3529ffff 	ori	t1,t1,0xffff
800051e8:	3c0a8002 	lui	t2,0x8002
800051ec:	354afff0 	ori	t2,t2,0xfff0
800051f0:	ad480000 	sw	t0,0(t2)
800051f4:	10000004 	b	80005208 <_fdata+0x900>
800051f8:	00000000 	nop
800051fc:	26522222 	addiu	s2,s2,8738
80005200:	10000007 	b	80005220 <_fdata+0x918>
80005204:	00000000 	nop
80005208:	26101111 	addiu	s0,s0,4369
8000520c:	15480004 	bne	t2,t0,80005220 <_fdata+0x918>
80005210:	8d540003 	lw	s4,3(t2)
80005214:	26100002 	addiu	s0,s0,2
80005218:	26100002 	addiu	s0,s0,2
8000521c:	26100002 	addiu	s0,s0,2
80005220:	02129021 	addu	s2,s0,s2
80005224:	24141117 	li	s4,4375
80005228:	16920289 	bne	s4,s2,80005c50 <inst_error>
8000522c:	00000000 	nop
80005230:	3c144444 	lui	s4,0x4444
80005234:	16820286 	bne	s4,v0,80005c50 <inst_error>
80005238:	00000000 	nop
8000523c:	24020009 	li	v0,9
80005240:	00008021 	move	s0,zero
80005244:	00009021 	move	s2,zero
80005248:	3c087fff 	lui	t0,0x7fff
8000524c:	3508ffff 	ori	t0,t0,0xffff
80005250:	3c097fff 	lui	t1,0x7fff
80005254:	3529ffff 	ori	t1,t1,0xffff
80005258:	3c0a8002 	lui	t2,0x8002
8000525c:	354afff0 	ori	t2,t2,0xfff0
80005260:	ad480000 	sw	t0,0(t2)
80005264:	10000004 	b	80005278 <_fdata+0x970>
80005268:	00000000 	nop
8000526c:	26522222 	addiu	s2,s2,8738
80005270:	10000007 	b	80005290 <_fdata+0x988>
80005274:	00000000 	nop
80005278:	26101111 	addiu	s0,s0,4369
8000527c:	15280004 	bne	t1,t0,80005290 <_fdata+0x988>
80005280:	8d540003 	lw	s4,3(t2)
80005284:	26100002 	addiu	s0,s0,2
80005288:	26100002 	addiu	s0,s0,2
8000528c:	26100002 	addiu	s0,s0,2
80005290:	02129021 	addu	s2,s0,s2
80005294:	24141117 	li	s4,4375
80005298:	1692026d 	bne	s4,s2,80005c50 <inst_error>
8000529c:	00000000 	nop
800052a0:	3c144444 	lui	s4,0x4444
800052a4:	1682026a 	bne	s4,v0,80005c50 <inst_error>
800052a8:	00000000 	nop
800052ac:	24020009 	li	v0,9
800052b0:	00008021 	move	s0,zero
800052b4:	00009021 	move	s2,zero
800052b8:	3c087fff 	lui	t0,0x7fff
800052bc:	3508ffff 	ori	t0,t0,0xffff
800052c0:	3c097fff 	lui	t1,0x7fff
800052c4:	3529ffff 	ori	t1,t1,0xffff
800052c8:	3c0a8002 	lui	t2,0x8002
800052cc:	354afff0 	ori	t2,t2,0xfff0
800052d0:	ad480000 	sw	t0,0(t2)
800052d4:	10000004 	b	800052e8 <_fdata+0x9e0>
800052d8:	00000000 	nop
800052dc:	26522222 	addiu	s2,s2,8738
800052e0:	10000007 	b	80005300 <_fdata+0x9f8>
800052e4:	00000000 	nop
800052e8:	26101111 	addiu	s0,s0,4369
800052ec:	1548fffb 	bne	t2,t0,800052dc <_fdata+0x9d4>
800052f0:	8d540003 	lw	s4,3(t2)
800052f4:	26100002 	addiu	s0,s0,2
800052f8:	26100002 	addiu	s0,s0,2
800052fc:	26100002 	addiu	s0,s0,2
80005300:	02129021 	addu	s2,s0,s2
80005304:	24141117 	li	s4,4375
80005308:	16920251 	bne	s4,s2,80005c50 <inst_error>
8000530c:	00000000 	nop
80005310:	3c144444 	lui	s4,0x4444
80005314:	1682024e 	bne	s4,v0,80005c50 <inst_error>
80005318:	00000000 	nop
8000531c:	24020009 	li	v0,9
80005320:	00008021 	move	s0,zero
80005324:	00009021 	move	s2,zero
80005328:	3c087fff 	lui	t0,0x7fff
8000532c:	3508ffff 	ori	t0,t0,0xffff
80005330:	3c097fff 	lui	t1,0x7fff
80005334:	3529ffff 	ori	t1,t1,0xffff
80005338:	3c0a8002 	lui	t2,0x8002
8000533c:	354afff0 	ori	t2,t2,0xfff0
80005340:	ad480000 	sw	t0,0(t2)
80005344:	10000004 	b	80005358 <_fdata+0xa50>
80005348:	00000000 	nop
8000534c:	26522222 	addiu	s2,s2,8738
80005350:	10000007 	b	80005370 <_fdata+0xa68>
80005354:	00000000 	nop
80005358:	26101111 	addiu	s0,s0,4369
8000535c:	1528fffb 	bne	t1,t0,8000534c <_fdata+0xa44>
80005360:	8d540003 	lw	s4,3(t2)
80005364:	26100002 	addiu	s0,s0,2
80005368:	26100002 	addiu	s0,s0,2
8000536c:	26100002 	addiu	s0,s0,2
80005370:	02129021 	addu	s2,s0,s2
80005374:	24141117 	li	s4,4375
80005378:	16920235 	bne	s4,s2,80005c50 <inst_error>
8000537c:	00000000 	nop
80005380:	3c144444 	lui	s4,0x4444
80005384:	16820232 	bne	s4,v0,80005c50 <inst_error>
80005388:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:23
8000538c:	24020009 	li	v0,9
80005390:	00008021 	move	s0,zero
80005394:	00009021 	move	s2,zero
80005398:	3c087fff 	lui	t0,0x7fff
8000539c:	3508ffff 	ori	t0,t0,0xffff
800053a0:	3c097fff 	lui	t1,0x7fff
800053a4:	3529ffff 	ori	t1,t1,0xffff
800053a8:	3c0a8002 	lui	t2,0x8002
800053ac:	354afff0 	ori	t2,t2,0xfff0
800053b0:	ad480000 	sw	t0,0(t2)
800053b4:	10000004 	b	800053c8 <_fdata+0xac0>
800053b8:	00000000 	nop
800053bc:	26522222 	addiu	s2,s2,8738
800053c0:	10000007 	b	800053e0 <_fdata+0xad8>
800053c4:	00000000 	nop
800053c8:	26101111 	addiu	s0,s0,4369
800053cc:	15480004 	bne	t2,t0,800053e0 <_fdata+0xad8>
800053d0:	a5540003 	sh	s4,3(t2)
800053d4:	26100002 	addiu	s0,s0,2
800053d8:	26100002 	addiu	s0,s0,2
800053dc:	26100002 	addiu	s0,s0,2
800053e0:	02129021 	addu	s2,s0,s2
800053e4:	24141117 	li	s4,4375
800053e8:	16920219 	bne	s4,s2,80005c50 <inst_error>
800053ec:	00000000 	nop
800053f0:	3c144444 	lui	s4,0x4444
800053f4:	16820216 	bne	s4,v0,80005c50 <inst_error>
800053f8:	00000000 	nop
800053fc:	24020009 	li	v0,9
80005400:	00008021 	move	s0,zero
80005404:	00009021 	move	s2,zero
80005408:	3c087fff 	lui	t0,0x7fff
8000540c:	3508ffff 	ori	t0,t0,0xffff
80005410:	3c097fff 	lui	t1,0x7fff
80005414:	3529ffff 	ori	t1,t1,0xffff
80005418:	3c0a8002 	lui	t2,0x8002
8000541c:	354afff0 	ori	t2,t2,0xfff0
80005420:	ad480000 	sw	t0,0(t2)
80005424:	10000004 	b	80005438 <_fdata+0xb30>
80005428:	00000000 	nop
8000542c:	26522222 	addiu	s2,s2,8738
80005430:	10000007 	b	80005450 <_fdata+0xb48>
80005434:	00000000 	nop
80005438:	26101111 	addiu	s0,s0,4369
8000543c:	15280004 	bne	t1,t0,80005450 <_fdata+0xb48>
80005440:	a5540003 	sh	s4,3(t2)
80005444:	26100002 	addiu	s0,s0,2
80005448:	26100002 	addiu	s0,s0,2
8000544c:	26100002 	addiu	s0,s0,2
80005450:	02129021 	addu	s2,s0,s2
80005454:	24141117 	li	s4,4375
80005458:	169201fd 	bne	s4,s2,80005c50 <inst_error>
8000545c:	00000000 	nop
80005460:	3c144444 	lui	s4,0x4444
80005464:	168201fa 	bne	s4,v0,80005c50 <inst_error>
80005468:	00000000 	nop
8000546c:	24020009 	li	v0,9
80005470:	00008021 	move	s0,zero
80005474:	00009021 	move	s2,zero
80005478:	3c087fff 	lui	t0,0x7fff
8000547c:	3508ffff 	ori	t0,t0,0xffff
80005480:	3c097fff 	lui	t1,0x7fff
80005484:	3529ffff 	ori	t1,t1,0xffff
80005488:	3c0a8002 	lui	t2,0x8002
8000548c:	354afff0 	ori	t2,t2,0xfff0
80005490:	ad480000 	sw	t0,0(t2)
80005494:	10000004 	b	800054a8 <_fdata+0xba0>
80005498:	00000000 	nop
8000549c:	26522222 	addiu	s2,s2,8738
800054a0:	10000007 	b	800054c0 <_fdata+0xbb8>
800054a4:	00000000 	nop
800054a8:	26101111 	addiu	s0,s0,4369
800054ac:	1548fffb 	bne	t2,t0,8000549c <_fdata+0xb94>
800054b0:	a5540003 	sh	s4,3(t2)
800054b4:	26100002 	addiu	s0,s0,2
800054b8:	26100002 	addiu	s0,s0,2
800054bc:	26100002 	addiu	s0,s0,2
800054c0:	02129021 	addu	s2,s0,s2
800054c4:	24141117 	li	s4,4375
800054c8:	169201e1 	bne	s4,s2,80005c50 <inst_error>
800054cc:	00000000 	nop
800054d0:	3c144444 	lui	s4,0x4444
800054d4:	168201de 	bne	s4,v0,80005c50 <inst_error>
800054d8:	00000000 	nop
800054dc:	24020009 	li	v0,9
800054e0:	00008021 	move	s0,zero
800054e4:	00009021 	move	s2,zero
800054e8:	3c087fff 	lui	t0,0x7fff
800054ec:	3508ffff 	ori	t0,t0,0xffff
800054f0:	3c097fff 	lui	t1,0x7fff
800054f4:	3529ffff 	ori	t1,t1,0xffff
800054f8:	3c0a8002 	lui	t2,0x8002
800054fc:	354afff0 	ori	t2,t2,0xfff0
80005500:	ad480000 	sw	t0,0(t2)
80005504:	10000004 	b	80005518 <_fdata+0xc10>
80005508:	00000000 	nop
8000550c:	26522222 	addiu	s2,s2,8738
80005510:	10000007 	b	80005530 <_fdata+0xc28>
80005514:	00000000 	nop
80005518:	26101111 	addiu	s0,s0,4369
8000551c:	1528fffb 	bne	t1,t0,8000550c <_fdata+0xc04>
80005520:	a5540003 	sh	s4,3(t2)
80005524:	26100002 	addiu	s0,s0,2
80005528:	26100002 	addiu	s0,s0,2
8000552c:	26100002 	addiu	s0,s0,2
80005530:	02129021 	addu	s2,s0,s2
80005534:	24141117 	li	s4,4375
80005538:	169201c5 	bne	s4,s2,80005c50 <inst_error>
8000553c:	00000000 	nop
80005540:	3c144444 	lui	s4,0x4444
80005544:	168201c2 	bne	s4,v0,80005c50 <inst_error>
80005548:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:24
8000554c:	24020009 	li	v0,9
80005550:	00008021 	move	s0,zero
80005554:	00009021 	move	s2,zero
80005558:	3c087fff 	lui	t0,0x7fff
8000555c:	3508ffff 	ori	t0,t0,0xffff
80005560:	3c097fff 	lui	t1,0x7fff
80005564:	3529ffff 	ori	t1,t1,0xffff
80005568:	3c0a8002 	lui	t2,0x8002
8000556c:	354afff0 	ori	t2,t2,0xfff0
80005570:	ad480000 	sw	t0,0(t2)
80005574:	10000004 	b	80005588 <_fdata+0xc80>
80005578:	00000000 	nop
8000557c:	26522222 	addiu	s2,s2,8738
80005580:	10000007 	b	800055a0 <_fdata+0xc98>
80005584:	00000000 	nop
80005588:	26101111 	addiu	s0,s0,4369
8000558c:	15480004 	bne	t2,t0,800055a0 <_fdata+0xc98>
80005590:	ad540003 	sw	s4,3(t2)
80005594:	26100002 	addiu	s0,s0,2
80005598:	26100002 	addiu	s0,s0,2
8000559c:	26100002 	addiu	s0,s0,2
800055a0:	02129021 	addu	s2,s0,s2
800055a4:	24141117 	li	s4,4375
800055a8:	169201a9 	bne	s4,s2,80005c50 <inst_error>
800055ac:	00000000 	nop
800055b0:	3c144444 	lui	s4,0x4444
800055b4:	168201a6 	bne	s4,v0,80005c50 <inst_error>
800055b8:	00000000 	nop
800055bc:	24020009 	li	v0,9
800055c0:	00008021 	move	s0,zero
800055c4:	00009021 	move	s2,zero
800055c8:	3c087fff 	lui	t0,0x7fff
800055cc:	3508ffff 	ori	t0,t0,0xffff
800055d0:	3c097fff 	lui	t1,0x7fff
800055d4:	3529ffff 	ori	t1,t1,0xffff
800055d8:	3c0a8002 	lui	t2,0x8002
800055dc:	354afff0 	ori	t2,t2,0xfff0
800055e0:	ad480000 	sw	t0,0(t2)
800055e4:	10000004 	b	800055f8 <_fdata+0xcf0>
800055e8:	00000000 	nop
800055ec:	26522222 	addiu	s2,s2,8738
800055f0:	10000007 	b	80005610 <_fdata+0xd08>
800055f4:	00000000 	nop
800055f8:	26101111 	addiu	s0,s0,4369
800055fc:	15280004 	bne	t1,t0,80005610 <_fdata+0xd08>
80005600:	ad540003 	sw	s4,3(t2)
80005604:	26100002 	addiu	s0,s0,2
80005608:	26100002 	addiu	s0,s0,2
8000560c:	26100002 	addiu	s0,s0,2
80005610:	02129021 	addu	s2,s0,s2
80005614:	24141117 	li	s4,4375
80005618:	1692018d 	bne	s4,s2,80005c50 <inst_error>
8000561c:	00000000 	nop
80005620:	3c144444 	lui	s4,0x4444
80005624:	1682018a 	bne	s4,v0,80005c50 <inst_error>
80005628:	00000000 	nop
8000562c:	24020009 	li	v0,9
80005630:	00008021 	move	s0,zero
80005634:	00009021 	move	s2,zero
80005638:	3c087fff 	lui	t0,0x7fff
8000563c:	3508ffff 	ori	t0,t0,0xffff
80005640:	3c097fff 	lui	t1,0x7fff
80005644:	3529ffff 	ori	t1,t1,0xffff
80005648:	3c0a8002 	lui	t2,0x8002
8000564c:	354afff0 	ori	t2,t2,0xfff0
80005650:	ad480000 	sw	t0,0(t2)
80005654:	10000004 	b	80005668 <_fdata+0xd60>
80005658:	00000000 	nop
8000565c:	26522222 	addiu	s2,s2,8738
80005660:	10000007 	b	80005680 <_fdata+0xd78>
80005664:	00000000 	nop
80005668:	26101111 	addiu	s0,s0,4369
8000566c:	1548fffb 	bne	t2,t0,8000565c <_fdata+0xd54>
80005670:	ad540003 	sw	s4,3(t2)
80005674:	26100002 	addiu	s0,s0,2
80005678:	26100002 	addiu	s0,s0,2
8000567c:	26100002 	addiu	s0,s0,2
80005680:	02129021 	addu	s2,s0,s2
80005684:	24141117 	li	s4,4375
80005688:	16920171 	bne	s4,s2,80005c50 <inst_error>
8000568c:	00000000 	nop
80005690:	3c144444 	lui	s4,0x4444
80005694:	1682016e 	bne	s4,v0,80005c50 <inst_error>
80005698:	00000000 	nop
8000569c:	24020009 	li	v0,9
800056a0:	00008021 	move	s0,zero
800056a4:	00009021 	move	s2,zero
800056a8:	3c087fff 	lui	t0,0x7fff
800056ac:	3508ffff 	ori	t0,t0,0xffff
800056b0:	3c097fff 	lui	t1,0x7fff
800056b4:	3529ffff 	ori	t1,t1,0xffff
800056b8:	3c0a8002 	lui	t2,0x8002
800056bc:	354afff0 	ori	t2,t2,0xfff0
800056c0:	ad480000 	sw	t0,0(t2)
800056c4:	10000004 	b	800056d8 <_fdata+0xdd0>
800056c8:	00000000 	nop
800056cc:	26522222 	addiu	s2,s2,8738
800056d0:	10000007 	b	800056f0 <_fdata+0xde8>
800056d4:	00000000 	nop
800056d8:	26101111 	addiu	s0,s0,4369
800056dc:	1528fffb 	bne	t1,t0,800056cc <_fdata+0xdc4>
800056e0:	ad540003 	sw	s4,3(t2)
800056e4:	26100002 	addiu	s0,s0,2
800056e8:	26100002 	addiu	s0,s0,2
800056ec:	26100002 	addiu	s0,s0,2
800056f0:	02129021 	addu	s2,s0,s2
800056f4:	24141117 	li	s4,4375
800056f8:	16920155 	bne	s4,s2,80005c50 <inst_error>
800056fc:	00000000 	nop
80005700:	3c144444 	lui	s4,0x4444
80005704:	16820152 	bne	s4,v0,80005c50 <inst_error>
80005708:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:25
8000570c:	24020009 	li	v0,9
80005710:	00008021 	move	s0,zero
80005714:	00009021 	move	s2,zero
80005718:	3c087fff 	lui	t0,0x7fff
8000571c:	3508ffff 	ori	t0,t0,0xffff
80005720:	3c097fff 	lui	t1,0x7fff
80005724:	3529ffff 	ori	t1,t1,0xffff
80005728:	3c0a8002 	lui	t2,0x8002
8000572c:	354afff0 	ori	t2,t2,0xfff0
80005730:	ad480000 	sw	t0,0(t2)
80005734:	10000004 	b	80005748 <_fdata+0xe40>
80005738:	00000000 	nop
8000573c:	26522222 	addiu	s2,s2,8738
80005740:	10000007 	b	80005760 <_fdata+0xe58>
80005744:	00000000 	nop
80005748:	26101111 	addiu	s0,s0,4369
8000574c:	15480004 	bne	t2,t0,80005760 <_fdata+0xe58>
80005750:	6f76e210 	0x6f76e210
80005754:	26100002 	addiu	s0,s0,2
80005758:	26100002 	addiu	s0,s0,2
8000575c:	26100002 	addiu	s0,s0,2
80005760:	02129021 	addu	s2,s0,s2
80005764:	24141117 	li	s4,4375
80005768:	16920139 	bne	s4,s2,80005c50 <inst_error>
8000576c:	00000000 	nop
80005770:	3c144444 	lui	s4,0x4444
80005774:	16820136 	bne	s4,v0,80005c50 <inst_error>
80005778:	00000000 	nop
8000577c:	24020009 	li	v0,9
80005780:	00008021 	move	s0,zero
80005784:	00009021 	move	s2,zero
80005788:	3c087fff 	lui	t0,0x7fff
8000578c:	3508ffff 	ori	t0,t0,0xffff
80005790:	3c097fff 	lui	t1,0x7fff
80005794:	3529ffff 	ori	t1,t1,0xffff
80005798:	3c0a8002 	lui	t2,0x8002
8000579c:	354afff0 	ori	t2,t2,0xfff0
800057a0:	ad480000 	sw	t0,0(t2)
800057a4:	10000004 	b	800057b8 <_fdata+0xeb0>
800057a8:	00000000 	nop
800057ac:	26522222 	addiu	s2,s2,8738
800057b0:	10000007 	b	800057d0 <_fdata+0xec8>
800057b4:	00000000 	nop
800057b8:	26101111 	addiu	s0,s0,4369
800057bc:	15280004 	bne	t1,t0,800057d0 <_fdata+0xec8>
800057c0:	6f76e210 	0x6f76e210
800057c4:	26100002 	addiu	s0,s0,2
800057c8:	26100002 	addiu	s0,s0,2
800057cc:	26100002 	addiu	s0,s0,2
800057d0:	02129021 	addu	s2,s0,s2
800057d4:	24141117 	li	s4,4375
800057d8:	1692011d 	bne	s4,s2,80005c50 <inst_error>
800057dc:	00000000 	nop
800057e0:	3c144444 	lui	s4,0x4444
800057e4:	1682011a 	bne	s4,v0,80005c50 <inst_error>
800057e8:	00000000 	nop
800057ec:	24020009 	li	v0,9
800057f0:	00008021 	move	s0,zero
800057f4:	00009021 	move	s2,zero
800057f8:	3c087fff 	lui	t0,0x7fff
800057fc:	3508ffff 	ori	t0,t0,0xffff
80005800:	3c097fff 	lui	t1,0x7fff
80005804:	3529ffff 	ori	t1,t1,0xffff
80005808:	3c0a8002 	lui	t2,0x8002
8000580c:	354afff0 	ori	t2,t2,0xfff0
80005810:	ad480000 	sw	t0,0(t2)
80005814:	10000004 	b	80005828 <_fdata+0xf20>
80005818:	00000000 	nop
8000581c:	26522222 	addiu	s2,s2,8738
80005820:	10000007 	b	80005840 <_fdata+0xf38>
80005824:	00000000 	nop
80005828:	26101111 	addiu	s0,s0,4369
8000582c:	1548fffb 	bne	t2,t0,8000581c <_fdata+0xf14>
80005830:	6f76e210 	0x6f76e210
80005834:	26100002 	addiu	s0,s0,2
80005838:	26100002 	addiu	s0,s0,2
8000583c:	26100002 	addiu	s0,s0,2
80005840:	02129021 	addu	s2,s0,s2
80005844:	24141117 	li	s4,4375
80005848:	16920101 	bne	s4,s2,80005c50 <inst_error>
8000584c:	00000000 	nop
80005850:	3c144444 	lui	s4,0x4444
80005854:	168200fe 	bne	s4,v0,80005c50 <inst_error>
80005858:	00000000 	nop
8000585c:	24020009 	li	v0,9
80005860:	00008021 	move	s0,zero
80005864:	00009021 	move	s2,zero
80005868:	3c087fff 	lui	t0,0x7fff
8000586c:	3508ffff 	ori	t0,t0,0xffff
80005870:	3c097fff 	lui	t1,0x7fff
80005874:	3529ffff 	ori	t1,t1,0xffff
80005878:	3c0a8002 	lui	t2,0x8002
8000587c:	354afff0 	ori	t2,t2,0xfff0
80005880:	ad480000 	sw	t0,0(t2)
80005884:	10000004 	b	80005898 <_fdata+0xf90>
80005888:	00000000 	nop
8000588c:	26522222 	addiu	s2,s2,8738
80005890:	10000007 	b	800058b0 <_fdata+0xfa8>
80005894:	00000000 	nop
80005898:	26101111 	addiu	s0,s0,4369
8000589c:	1528fffb 	bne	t1,t0,8000588c <_fdata+0xf84>
800058a0:	6f76e210 	0x6f76e210
800058a4:	26100002 	addiu	s0,s0,2
800058a8:	26100002 	addiu	s0,s0,2
800058ac:	26100002 	addiu	s0,s0,2
800058b0:	02129021 	addu	s2,s0,s2
800058b4:	24141117 	li	s4,4375
800058b8:	169200e5 	bne	s4,s2,80005c50 <inst_error>
800058bc:	00000000 	nop
800058c0:	3c144444 	lui	s4,0x4444
800058c4:	168200e2 	bne	s4,v0,80005c50 <inst_error>
800058c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:26
800058cc:	24020009 	li	v0,9
800058d0:	00008021 	move	s0,zero
800058d4:	00009021 	move	s2,zero
800058d8:	3c087fff 	lui	t0,0x7fff
800058dc:	3508ffff 	ori	t0,t0,0xffff
800058e0:	3c097fff 	lui	t1,0x7fff
800058e4:	3529ffff 	ori	t1,t1,0xffff
800058e8:	3c0a8002 	lui	t2,0x8002
800058ec:	354afff0 	ori	t2,t2,0xfff0
800058f0:	ad480000 	sw	t0,0(t2)
800058f4:	10000004 	b	80005908 <_fdata+0x1000>
800058f8:	00000000 	nop
800058fc:	26522222 	addiu	s2,s2,8738
80005900:	10000007 	b	80005920 <_fdata+0x1018>
80005904:	00000000 	nop
80005908:	26101111 	addiu	s0,s0,4369
8000590c:	15480004 	bne	t2,t0,80005920 <_fdata+0x1018>
80005910:	0000000c 	syscall
80005914:	26100002 	addiu	s0,s0,2
80005918:	26100002 	addiu	s0,s0,2
8000591c:	26100002 	addiu	s0,s0,2
80005920:	02129021 	addu	s2,s0,s2
80005924:	24141117 	li	s4,4375
80005928:	169200c9 	bne	s4,s2,80005c50 <inst_error>
8000592c:	00000000 	nop
80005930:	3c144444 	lui	s4,0x4444
80005934:	168200c6 	bne	s4,v0,80005c50 <inst_error>
80005938:	00000000 	nop
8000593c:	24020009 	li	v0,9
80005940:	00008021 	move	s0,zero
80005944:	00009021 	move	s2,zero
80005948:	3c087fff 	lui	t0,0x7fff
8000594c:	3508ffff 	ori	t0,t0,0xffff
80005950:	3c097fff 	lui	t1,0x7fff
80005954:	3529ffff 	ori	t1,t1,0xffff
80005958:	3c0a8002 	lui	t2,0x8002
8000595c:	354afff0 	ori	t2,t2,0xfff0
80005960:	ad480000 	sw	t0,0(t2)
80005964:	10000004 	b	80005978 <_fdata+0x1070>
80005968:	00000000 	nop
8000596c:	26522222 	addiu	s2,s2,8738
80005970:	10000007 	b	80005990 <_fdata+0x1088>
80005974:	00000000 	nop
80005978:	26101111 	addiu	s0,s0,4369
8000597c:	15280004 	bne	t1,t0,80005990 <_fdata+0x1088>
80005980:	0000000c 	syscall
80005984:	26100002 	addiu	s0,s0,2
80005988:	26100002 	addiu	s0,s0,2
8000598c:	26100002 	addiu	s0,s0,2
80005990:	02129021 	addu	s2,s0,s2
80005994:	24141117 	li	s4,4375
80005998:	169200ad 	bne	s4,s2,80005c50 <inst_error>
8000599c:	00000000 	nop
800059a0:	3c144444 	lui	s4,0x4444
800059a4:	168200aa 	bne	s4,v0,80005c50 <inst_error>
800059a8:	00000000 	nop
800059ac:	24020009 	li	v0,9
800059b0:	00008021 	move	s0,zero
800059b4:	00009021 	move	s2,zero
800059b8:	3c087fff 	lui	t0,0x7fff
800059bc:	3508ffff 	ori	t0,t0,0xffff
800059c0:	3c097fff 	lui	t1,0x7fff
800059c4:	3529ffff 	ori	t1,t1,0xffff
800059c8:	3c0a8002 	lui	t2,0x8002
800059cc:	354afff0 	ori	t2,t2,0xfff0
800059d0:	ad480000 	sw	t0,0(t2)
800059d4:	10000004 	b	800059e8 <_fdata+0x10e0>
800059d8:	00000000 	nop
800059dc:	26522222 	addiu	s2,s2,8738
800059e0:	10000007 	b	80005a00 <_fdata+0x10f8>
800059e4:	00000000 	nop
800059e8:	26101111 	addiu	s0,s0,4369
800059ec:	1548fffb 	bne	t2,t0,800059dc <_fdata+0x10d4>
800059f0:	0000000c 	syscall
800059f4:	26100002 	addiu	s0,s0,2
800059f8:	26100002 	addiu	s0,s0,2
800059fc:	26100002 	addiu	s0,s0,2
80005a00:	02129021 	addu	s2,s0,s2
80005a04:	24141117 	li	s4,4375
80005a08:	16920091 	bne	s4,s2,80005c50 <inst_error>
80005a0c:	00000000 	nop
80005a10:	3c144444 	lui	s4,0x4444
80005a14:	1682008e 	bne	s4,v0,80005c50 <inst_error>
80005a18:	00000000 	nop
80005a1c:	24020009 	li	v0,9
80005a20:	00008021 	move	s0,zero
80005a24:	00009021 	move	s2,zero
80005a28:	3c087fff 	lui	t0,0x7fff
80005a2c:	3508ffff 	ori	t0,t0,0xffff
80005a30:	3c097fff 	lui	t1,0x7fff
80005a34:	3529ffff 	ori	t1,t1,0xffff
80005a38:	3c0a8002 	lui	t2,0x8002
80005a3c:	354afff0 	ori	t2,t2,0xfff0
80005a40:	ad480000 	sw	t0,0(t2)
80005a44:	10000004 	b	80005a58 <_fdata+0x1150>
80005a48:	00000000 	nop
80005a4c:	26522222 	addiu	s2,s2,8738
80005a50:	10000007 	b	80005a70 <_fdata+0x1168>
80005a54:	00000000 	nop
80005a58:	26101111 	addiu	s0,s0,4369
80005a5c:	1528fffb 	bne	t1,t0,80005a4c <_fdata+0x1144>
80005a60:	0000000c 	syscall
80005a64:	26100002 	addiu	s0,s0,2
80005a68:	26100002 	addiu	s0,s0,2
80005a6c:	26100002 	addiu	s0,s0,2
80005a70:	02129021 	addu	s2,s0,s2
80005a74:	24141117 	li	s4,4375
80005a78:	16920075 	bne	s4,s2,80005c50 <inst_error>
80005a7c:	00000000 	nop
80005a80:	3c144444 	lui	s4,0x4444
80005a84:	16820072 	bne	s4,v0,80005c50 <inst_error>
80005a88:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:27
80005a8c:	24020009 	li	v0,9
80005a90:	00008021 	move	s0,zero
80005a94:	00009021 	move	s2,zero
80005a98:	3c087fff 	lui	t0,0x7fff
80005a9c:	3508ffff 	ori	t0,t0,0xffff
80005aa0:	3c097fff 	lui	t1,0x7fff
80005aa4:	3529ffff 	ori	t1,t1,0xffff
80005aa8:	3c0a8002 	lui	t2,0x8002
80005aac:	354afff0 	ori	t2,t2,0xfff0
80005ab0:	ad480000 	sw	t0,0(t2)
80005ab4:	10000004 	b	80005ac8 <_fdata+0x11c0>
80005ab8:	00000000 	nop
80005abc:	26522222 	addiu	s2,s2,8738
80005ac0:	10000007 	b	80005ae0 <_fdata+0x11d8>
80005ac4:	00000000 	nop
80005ac8:	26101111 	addiu	s0,s0,4369
80005acc:	15480004 	bne	t2,t0,80005ae0 <_fdata+0x11d8>
80005ad0:	0000000d 	break
80005ad4:	26100002 	addiu	s0,s0,2
80005ad8:	26100002 	addiu	s0,s0,2
80005adc:	26100002 	addiu	s0,s0,2
80005ae0:	02129021 	addu	s2,s0,s2
80005ae4:	24141117 	li	s4,4375
80005ae8:	16920059 	bne	s4,s2,80005c50 <inst_error>
80005aec:	00000000 	nop
80005af0:	3c144444 	lui	s4,0x4444
80005af4:	16820056 	bne	s4,v0,80005c50 <inst_error>
80005af8:	00000000 	nop
80005afc:	24020009 	li	v0,9
80005b00:	00008021 	move	s0,zero
80005b04:	00009021 	move	s2,zero
80005b08:	3c087fff 	lui	t0,0x7fff
80005b0c:	3508ffff 	ori	t0,t0,0xffff
80005b10:	3c097fff 	lui	t1,0x7fff
80005b14:	3529ffff 	ori	t1,t1,0xffff
80005b18:	3c0a8002 	lui	t2,0x8002
80005b1c:	354afff0 	ori	t2,t2,0xfff0
80005b20:	ad480000 	sw	t0,0(t2)
80005b24:	10000004 	b	80005b38 <_fdata+0x1230>
80005b28:	00000000 	nop
80005b2c:	26522222 	addiu	s2,s2,8738
80005b30:	10000007 	b	80005b50 <_fdata+0x1248>
80005b34:	00000000 	nop
80005b38:	26101111 	addiu	s0,s0,4369
80005b3c:	15280004 	bne	t1,t0,80005b50 <_fdata+0x1248>
80005b40:	0000000d 	break
80005b44:	26100002 	addiu	s0,s0,2
80005b48:	26100002 	addiu	s0,s0,2
80005b4c:	26100002 	addiu	s0,s0,2
80005b50:	02129021 	addu	s2,s0,s2
80005b54:	24141117 	li	s4,4375
80005b58:	1692003d 	bne	s4,s2,80005c50 <inst_error>
80005b5c:	00000000 	nop
80005b60:	3c144444 	lui	s4,0x4444
80005b64:	1682003a 	bne	s4,v0,80005c50 <inst_error>
80005b68:	00000000 	nop
80005b6c:	24020009 	li	v0,9
80005b70:	00008021 	move	s0,zero
80005b74:	00009021 	move	s2,zero
80005b78:	3c087fff 	lui	t0,0x7fff
80005b7c:	3508ffff 	ori	t0,t0,0xffff
80005b80:	3c097fff 	lui	t1,0x7fff
80005b84:	3529ffff 	ori	t1,t1,0xffff
80005b88:	3c0a8002 	lui	t2,0x8002
80005b8c:	354afff0 	ori	t2,t2,0xfff0
80005b90:	ad480000 	sw	t0,0(t2)
80005b94:	10000004 	b	80005ba8 <_fdata+0x12a0>
80005b98:	00000000 	nop
80005b9c:	26522222 	addiu	s2,s2,8738
80005ba0:	10000007 	b	80005bc0 <_fdata+0x12b8>
80005ba4:	00000000 	nop
80005ba8:	26101111 	addiu	s0,s0,4369
80005bac:	1548fffb 	bne	t2,t0,80005b9c <_fdata+0x1294>
80005bb0:	0000000d 	break
80005bb4:	26100002 	addiu	s0,s0,2
80005bb8:	26100002 	addiu	s0,s0,2
80005bbc:	26100002 	addiu	s0,s0,2
80005bc0:	02129021 	addu	s2,s0,s2
80005bc4:	24141117 	li	s4,4375
80005bc8:	16920021 	bne	s4,s2,80005c50 <inst_error>
80005bcc:	00000000 	nop
80005bd0:	3c144444 	lui	s4,0x4444
80005bd4:	1682001e 	bne	s4,v0,80005c50 <inst_error>
80005bd8:	00000000 	nop
80005bdc:	24020009 	li	v0,9
80005be0:	00008021 	move	s0,zero
80005be4:	00009021 	move	s2,zero
80005be8:	3c087fff 	lui	t0,0x7fff
80005bec:	3508ffff 	ori	t0,t0,0xffff
80005bf0:	3c097fff 	lui	t1,0x7fff
80005bf4:	3529ffff 	ori	t1,t1,0xffff
80005bf8:	3c0a8002 	lui	t2,0x8002
80005bfc:	354afff0 	ori	t2,t2,0xfff0
80005c00:	ad480000 	sw	t0,0(t2)
80005c04:	10000004 	b	80005c18 <_fdata+0x1310>
80005c08:	00000000 	nop
80005c0c:	26522222 	addiu	s2,s2,8738
80005c10:	10000007 	b	80005c30 <_fdata+0x1328>
80005c14:	00000000 	nop
80005c18:	26101111 	addiu	s0,s0,4369
80005c1c:	1528fffb 	bne	t1,t0,80005c0c <_fdata+0x1304>
80005c20:	0000000d 	break
80005c24:	26100002 	addiu	s0,s0,2
80005c28:	26100002 	addiu	s0,s0,2
80005c2c:	26100002 	addiu	s0,s0,2
80005c30:	02129021 	addu	s2,s0,s2
80005c34:	24141117 	li	s4,4375
80005c38:	16920005 	bne	s4,s2,80005c50 <inst_error>
80005c3c:	00000000 	nop
80005c40:	3c144444 	lui	s4,0x4444
80005c44:	16820002 	bne	s4,v0,80005c50 <inst_error>
80005c48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:33
80005c4c:	26730001 	addiu	s3,s3,1

80005c50 <inst_error>:
inst_error():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:36
80005c50:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:37
80005c54:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:38
80005c58:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n81_bne_ex_ds.S:39
80005c5c:	00000000 	nop

80005c60 <n91_jalr_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:14
80005c60:	3c045b00 	lui	a0,0x5b00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:17
80005c64:	001f6021 	addu	t4,zero,ra
80005c68:	24020009 	li	v0,9
80005c6c:	00008021 	move	s0,zero
80005c70:	00009021 	move	s2,zero
80005c74:	3c087fff 	lui	t0,0x7fff
80005c78:	3508ffff 	ori	t0,t0,0xffff
80005c7c:	3c097fff 	lui	t1,0x7fff
80005c80:	3529ffff 	ori	t1,t1,0xffff
80005c84:	3c0a8002 	lui	t2,0x8002
80005c88:	354afff0 	ori	t2,t2,0xfff0
80005c8c:	ad480000 	sw	t0,0(t2)
80005c90:	10000004 	b	80005ca4 <n91_jalr_ex_ds_test+0x44>
80005c94:	00000000 	nop
80005c98:	26522222 	addiu	s2,s2,8738
80005c9c:	10000009 	b	80005cc4 <n91_jalr_ex_ds_test+0x64>
80005ca0:	00000000 	nop
80005ca4:	26101111 	addiu	s0,s0,4369
80005ca8:	3c0d8000 	lui	t5,0x8000
80005cac:	25ad5cc4 	addiu	t5,t5,23748
80005cb0:	01a0f809 	jalr	t5
80005cb4:	21147fff 	addi	s4,t0,32767
80005cb8:	26100002 	addiu	s0,s0,2
80005cbc:	26100002 	addiu	s0,s0,2
80005cc0:	26100002 	addiu	s0,s0,2
80005cc4:	02129021 	addu	s2,s0,s2
80005cc8:	0180f821 	move	ra,t4
80005ccc:	24141117 	li	s4,4375
80005cd0:	1692029a 	bne	s4,s2,8000673c <inst_error>
80005cd4:	00000000 	nop
80005cd8:	3c144444 	lui	s4,0x4444
80005cdc:	16820297 	bne	s4,v0,8000673c <inst_error>
80005ce0:	00000000 	nop
80005ce4:	24020009 	li	v0,9
80005ce8:	00008021 	move	s0,zero
80005cec:	00009021 	move	s2,zero
80005cf0:	3c087fff 	lui	t0,0x7fff
80005cf4:	3508ffff 	ori	t0,t0,0xffff
80005cf8:	3c097fff 	lui	t1,0x7fff
80005cfc:	3529ffff 	ori	t1,t1,0xffff
80005d00:	3c0a8002 	lui	t2,0x8002
80005d04:	354afff0 	ori	t2,t2,0xfff0
80005d08:	ad480000 	sw	t0,0(t2)
80005d0c:	10000004 	b	80005d20 <n91_jalr_ex_ds_test+0xc0>
80005d10:	00000000 	nop
80005d14:	26522222 	addiu	s2,s2,8738
80005d18:	10000009 	b	80005d40 <n91_jalr_ex_ds_test+0xe0>
80005d1c:	00000000 	nop
80005d20:	26101111 	addiu	s0,s0,4369
80005d24:	3c0d8000 	lui	t5,0x8000
80005d28:	25ad5d14 	addiu	t5,t5,23828
80005d2c:	01a0f809 	jalr	t5
80005d30:	21147fff 	addi	s4,t0,32767
80005d34:	26100002 	addiu	s0,s0,2
80005d38:	26100002 	addiu	s0,s0,2
80005d3c:	26100002 	addiu	s0,s0,2
80005d40:	02129021 	addu	s2,s0,s2
80005d44:	0180f821 	move	ra,t4
80005d48:	24141117 	li	s4,4375
80005d4c:	1692027b 	bne	s4,s2,8000673c <inst_error>
80005d50:	00000000 	nop
80005d54:	3c144444 	lui	s4,0x4444
80005d58:	16820278 	bne	s4,v0,8000673c <inst_error>
80005d5c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:18
80005d60:	001f6021 	addu	t4,zero,ra
80005d64:	24020009 	li	v0,9
80005d68:	00008021 	move	s0,zero
80005d6c:	00009021 	move	s2,zero
80005d70:	3c087fff 	lui	t0,0x7fff
80005d74:	3508ffff 	ori	t0,t0,0xffff
80005d78:	3c097fff 	lui	t1,0x7fff
80005d7c:	3529ffff 	ori	t1,t1,0xffff
80005d80:	3c0a8002 	lui	t2,0x8002
80005d84:	354afff0 	ori	t2,t2,0xfff0
80005d88:	ad480000 	sw	t0,0(t2)
80005d8c:	10000004 	b	80005da0 <n91_jalr_ex_ds_test+0x140>
80005d90:	00000000 	nop
80005d94:	26522222 	addiu	s2,s2,8738
80005d98:	10000009 	b	80005dc0 <n91_jalr_ex_ds_test+0x160>
80005d9c:	00000000 	nop
80005da0:	26101111 	addiu	s0,s0,4369
80005da4:	3c0d8000 	lui	t5,0x8000
80005da8:	25ad5dc0 	addiu	t5,t5,24000
80005dac:	01a0f809 	jalr	t5
80005db0:	0109a020 	add	s4,t0,t1
80005db4:	26100002 	addiu	s0,s0,2
80005db8:	26100002 	addiu	s0,s0,2
80005dbc:	26100002 	addiu	s0,s0,2
80005dc0:	02129021 	addu	s2,s0,s2
80005dc4:	0180f821 	move	ra,t4
80005dc8:	24141117 	li	s4,4375
80005dcc:	1692025b 	bne	s4,s2,8000673c <inst_error>
80005dd0:	00000000 	nop
80005dd4:	3c144444 	lui	s4,0x4444
80005dd8:	16820258 	bne	s4,v0,8000673c <inst_error>
80005ddc:	00000000 	nop
80005de0:	24020009 	li	v0,9
80005de4:	00008021 	move	s0,zero
80005de8:	00009021 	move	s2,zero
80005dec:	3c087fff 	lui	t0,0x7fff
80005df0:	3508ffff 	ori	t0,t0,0xffff
80005df4:	3c097fff 	lui	t1,0x7fff
80005df8:	3529ffff 	ori	t1,t1,0xffff
80005dfc:	3c0a8002 	lui	t2,0x8002
80005e00:	354afff0 	ori	t2,t2,0xfff0
80005e04:	ad480000 	sw	t0,0(t2)
80005e08:	10000004 	b	80005e1c <n91_jalr_ex_ds_test+0x1bc>
80005e0c:	00000000 	nop
80005e10:	26522222 	addiu	s2,s2,8738
80005e14:	10000009 	b	80005e3c <n91_jalr_ex_ds_test+0x1dc>
80005e18:	00000000 	nop
80005e1c:	26101111 	addiu	s0,s0,4369
80005e20:	3c0d8000 	lui	t5,0x8000
80005e24:	25ad5e10 	addiu	t5,t5,24080
80005e28:	01a0f809 	jalr	t5
80005e2c:	0109a020 	add	s4,t0,t1
80005e30:	26100002 	addiu	s0,s0,2
80005e34:	26100002 	addiu	s0,s0,2
80005e38:	26100002 	addiu	s0,s0,2
80005e3c:	02129021 	addu	s2,s0,s2
80005e40:	0180f821 	move	ra,t4
80005e44:	24141117 	li	s4,4375
80005e48:	1692023c 	bne	s4,s2,8000673c <inst_error>
80005e4c:	00000000 	nop
80005e50:	3c144444 	lui	s4,0x4444
80005e54:	16820239 	bne	s4,v0,8000673c <inst_error>
80005e58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:19
80005e5c:	001f6021 	addu	t4,zero,ra
80005e60:	24020009 	li	v0,9
80005e64:	00008021 	move	s0,zero
80005e68:	00009021 	move	s2,zero
80005e6c:	3c087fff 	lui	t0,0x7fff
80005e70:	3508ffff 	ori	t0,t0,0xffff
80005e74:	3c097fff 	lui	t1,0x7fff
80005e78:	3529ffff 	ori	t1,t1,0xffff
80005e7c:	3c0a8002 	lui	t2,0x8002
80005e80:	354afff0 	ori	t2,t2,0xfff0
80005e84:	ad480000 	sw	t0,0(t2)
80005e88:	10000004 	b	80005e9c <n91_jalr_ex_ds_test+0x23c>
80005e8c:	00000000 	nop
80005e90:	26522222 	addiu	s2,s2,8738
80005e94:	10000009 	b	80005ebc <n91_jalr_ex_ds_test+0x25c>
80005e98:	00000000 	nop
80005e9c:	26101111 	addiu	s0,s0,4369
80005ea0:	3c0d8000 	lui	t5,0x8000
80005ea4:	25ad5ebc 	addiu	t5,t5,24252
80005ea8:	01a0f809 	jalr	t5
80005eac:	010aa022 	sub	s4,t0,t2
80005eb0:	26100002 	addiu	s0,s0,2
80005eb4:	26100002 	addiu	s0,s0,2
80005eb8:	26100002 	addiu	s0,s0,2
80005ebc:	02129021 	addu	s2,s0,s2
80005ec0:	0180f821 	move	ra,t4
80005ec4:	24141117 	li	s4,4375
80005ec8:	1692021c 	bne	s4,s2,8000673c <inst_error>
80005ecc:	00000000 	nop
80005ed0:	3c144444 	lui	s4,0x4444
80005ed4:	16820219 	bne	s4,v0,8000673c <inst_error>
80005ed8:	00000000 	nop
80005edc:	24020009 	li	v0,9
80005ee0:	00008021 	move	s0,zero
80005ee4:	00009021 	move	s2,zero
80005ee8:	3c087fff 	lui	t0,0x7fff
80005eec:	3508ffff 	ori	t0,t0,0xffff
80005ef0:	3c097fff 	lui	t1,0x7fff
80005ef4:	3529ffff 	ori	t1,t1,0xffff
80005ef8:	3c0a8002 	lui	t2,0x8002
80005efc:	354afff0 	ori	t2,t2,0xfff0
80005f00:	ad480000 	sw	t0,0(t2)
80005f04:	10000004 	b	80005f18 <n91_jalr_ex_ds_test+0x2b8>
80005f08:	00000000 	nop
80005f0c:	26522222 	addiu	s2,s2,8738
80005f10:	10000009 	b	80005f38 <n91_jalr_ex_ds_test+0x2d8>
80005f14:	00000000 	nop
80005f18:	26101111 	addiu	s0,s0,4369
80005f1c:	3c0d8000 	lui	t5,0x8000
80005f20:	25ad5f0c 	addiu	t5,t5,24332
80005f24:	01a0f809 	jalr	t5
80005f28:	010aa022 	sub	s4,t0,t2
80005f2c:	26100002 	addiu	s0,s0,2
80005f30:	26100002 	addiu	s0,s0,2
80005f34:	26100002 	addiu	s0,s0,2
80005f38:	02129021 	addu	s2,s0,s2
80005f3c:	0180f821 	move	ra,t4
80005f40:	24141117 	li	s4,4375
80005f44:	169201fd 	bne	s4,s2,8000673c <inst_error>
80005f48:	00000000 	nop
80005f4c:	3c144444 	lui	s4,0x4444
80005f50:	168201fa 	bne	s4,v0,8000673c <inst_error>
80005f54:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:20
80005f58:	001f6021 	addu	t4,zero,ra
80005f5c:	24020009 	li	v0,9
80005f60:	00008021 	move	s0,zero
80005f64:	00009021 	move	s2,zero
80005f68:	3c087fff 	lui	t0,0x7fff
80005f6c:	3508ffff 	ori	t0,t0,0xffff
80005f70:	3c097fff 	lui	t1,0x7fff
80005f74:	3529ffff 	ori	t1,t1,0xffff
80005f78:	3c0a8002 	lui	t2,0x8002
80005f7c:	354afff0 	ori	t2,t2,0xfff0
80005f80:	ad480000 	sw	t0,0(t2)
80005f84:	10000004 	b	80005f98 <n91_jalr_ex_ds_test+0x338>
80005f88:	00000000 	nop
80005f8c:	26522222 	addiu	s2,s2,8738
80005f90:	10000009 	b	80005fb8 <n91_jalr_ex_ds_test+0x358>
80005f94:	00000000 	nop
80005f98:	26101111 	addiu	s0,s0,4369
80005f9c:	3c0d8000 	lui	t5,0x8000
80005fa0:	25ad5fb8 	addiu	t5,t5,24504
80005fa4:	01a0f809 	jalr	t5
80005fa8:	85540003 	lh	s4,3(t2)
80005fac:	26100002 	addiu	s0,s0,2
80005fb0:	26100002 	addiu	s0,s0,2
80005fb4:	26100002 	addiu	s0,s0,2
80005fb8:	02129021 	addu	s2,s0,s2
80005fbc:	0180f821 	move	ra,t4
80005fc0:	24141117 	li	s4,4375
80005fc4:	169201dd 	bne	s4,s2,8000673c <inst_error>
80005fc8:	00000000 	nop
80005fcc:	3c144444 	lui	s4,0x4444
80005fd0:	168201da 	bne	s4,v0,8000673c <inst_error>
80005fd4:	00000000 	nop
80005fd8:	24020009 	li	v0,9
80005fdc:	00008021 	move	s0,zero
80005fe0:	00009021 	move	s2,zero
80005fe4:	3c087fff 	lui	t0,0x7fff
80005fe8:	3508ffff 	ori	t0,t0,0xffff
80005fec:	3c097fff 	lui	t1,0x7fff
80005ff0:	3529ffff 	ori	t1,t1,0xffff
80005ff4:	3c0a8002 	lui	t2,0x8002
80005ff8:	354afff0 	ori	t2,t2,0xfff0
80005ffc:	ad480000 	sw	t0,0(t2)
80006000:	10000004 	b	80006014 <n91_jalr_ex_ds_test+0x3b4>
80006004:	00000000 	nop
80006008:	26522222 	addiu	s2,s2,8738
8000600c:	10000009 	b	80006034 <n91_jalr_ex_ds_test+0x3d4>
80006010:	00000000 	nop
80006014:	26101111 	addiu	s0,s0,4369
80006018:	3c0d8000 	lui	t5,0x8000
8000601c:	25ad6008 	addiu	t5,t5,24584
80006020:	01a0f809 	jalr	t5
80006024:	85540003 	lh	s4,3(t2)
80006028:	26100002 	addiu	s0,s0,2
8000602c:	26100002 	addiu	s0,s0,2
80006030:	26100002 	addiu	s0,s0,2
80006034:	02129021 	addu	s2,s0,s2
80006038:	0180f821 	move	ra,t4
8000603c:	24141117 	li	s4,4375
80006040:	169201be 	bne	s4,s2,8000673c <inst_error>
80006044:	00000000 	nop
80006048:	3c144444 	lui	s4,0x4444
8000604c:	168201bb 	bne	s4,v0,8000673c <inst_error>
80006050:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:21
80006054:	001f6021 	addu	t4,zero,ra
80006058:	24020009 	li	v0,9
8000605c:	00008021 	move	s0,zero
80006060:	00009021 	move	s2,zero
80006064:	3c087fff 	lui	t0,0x7fff
80006068:	3508ffff 	ori	t0,t0,0xffff
8000606c:	3c097fff 	lui	t1,0x7fff
80006070:	3529ffff 	ori	t1,t1,0xffff
80006074:	3c0a8002 	lui	t2,0x8002
80006078:	354afff0 	ori	t2,t2,0xfff0
8000607c:	ad480000 	sw	t0,0(t2)
80006080:	10000004 	b	80006094 <n91_jalr_ex_ds_test+0x434>
80006084:	00000000 	nop
80006088:	26522222 	addiu	s2,s2,8738
8000608c:	10000009 	b	800060b4 <n91_jalr_ex_ds_test+0x454>
80006090:	00000000 	nop
80006094:	26101111 	addiu	s0,s0,4369
80006098:	3c0d8000 	lui	t5,0x8000
8000609c:	25ad60b4 	addiu	t5,t5,24756
800060a0:	01a0f809 	jalr	t5
800060a4:	95540003 	lhu	s4,3(t2)
800060a8:	26100002 	addiu	s0,s0,2
800060ac:	26100002 	addiu	s0,s0,2
800060b0:	26100002 	addiu	s0,s0,2
800060b4:	02129021 	addu	s2,s0,s2
800060b8:	0180f821 	move	ra,t4
800060bc:	24141117 	li	s4,4375
800060c0:	1692019e 	bne	s4,s2,8000673c <inst_error>
800060c4:	00000000 	nop
800060c8:	3c144444 	lui	s4,0x4444
800060cc:	1682019b 	bne	s4,v0,8000673c <inst_error>
800060d0:	00000000 	nop
800060d4:	24020009 	li	v0,9
800060d8:	00008021 	move	s0,zero
800060dc:	00009021 	move	s2,zero
800060e0:	3c087fff 	lui	t0,0x7fff
800060e4:	3508ffff 	ori	t0,t0,0xffff
800060e8:	3c097fff 	lui	t1,0x7fff
800060ec:	3529ffff 	ori	t1,t1,0xffff
800060f0:	3c0a8002 	lui	t2,0x8002
800060f4:	354afff0 	ori	t2,t2,0xfff0
800060f8:	ad480000 	sw	t0,0(t2)
800060fc:	10000004 	b	80006110 <n91_jalr_ex_ds_test+0x4b0>
80006100:	00000000 	nop
80006104:	26522222 	addiu	s2,s2,8738
80006108:	10000009 	b	80006130 <n91_jalr_ex_ds_test+0x4d0>
8000610c:	00000000 	nop
80006110:	26101111 	addiu	s0,s0,4369
80006114:	3c0d8000 	lui	t5,0x8000
80006118:	25ad6104 	addiu	t5,t5,24836
8000611c:	01a0f809 	jalr	t5
80006120:	95540003 	lhu	s4,3(t2)
80006124:	26100002 	addiu	s0,s0,2
80006128:	26100002 	addiu	s0,s0,2
8000612c:	26100002 	addiu	s0,s0,2
80006130:	02129021 	addu	s2,s0,s2
80006134:	0180f821 	move	ra,t4
80006138:	24141117 	li	s4,4375
8000613c:	1692017f 	bne	s4,s2,8000673c <inst_error>
80006140:	00000000 	nop
80006144:	3c144444 	lui	s4,0x4444
80006148:	1682017c 	bne	s4,v0,8000673c <inst_error>
8000614c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:22
80006150:	001f6021 	addu	t4,zero,ra
80006154:	24020009 	li	v0,9
80006158:	00008021 	move	s0,zero
8000615c:	00009021 	move	s2,zero
80006160:	3c087fff 	lui	t0,0x7fff
80006164:	3508ffff 	ori	t0,t0,0xffff
80006168:	3c097fff 	lui	t1,0x7fff
8000616c:	3529ffff 	ori	t1,t1,0xffff
80006170:	3c0a8002 	lui	t2,0x8002
80006174:	354afff0 	ori	t2,t2,0xfff0
80006178:	ad480000 	sw	t0,0(t2)
8000617c:	10000004 	b	80006190 <n91_jalr_ex_ds_test+0x530>
80006180:	00000000 	nop
80006184:	26522222 	addiu	s2,s2,8738
80006188:	10000009 	b	800061b0 <n91_jalr_ex_ds_test+0x550>
8000618c:	00000000 	nop
80006190:	26101111 	addiu	s0,s0,4369
80006194:	3c0d8000 	lui	t5,0x8000
80006198:	25ad61b0 	addiu	t5,t5,25008
8000619c:	01a0f809 	jalr	t5
800061a0:	8d540003 	lw	s4,3(t2)
800061a4:	26100002 	addiu	s0,s0,2
800061a8:	26100002 	addiu	s0,s0,2
800061ac:	26100002 	addiu	s0,s0,2
800061b0:	02129021 	addu	s2,s0,s2
800061b4:	0180f821 	move	ra,t4
800061b8:	24141117 	li	s4,4375
800061bc:	1692015f 	bne	s4,s2,8000673c <inst_error>
800061c0:	00000000 	nop
800061c4:	3c144444 	lui	s4,0x4444
800061c8:	1682015c 	bne	s4,v0,8000673c <inst_error>
800061cc:	00000000 	nop
800061d0:	24020009 	li	v0,9
800061d4:	00008021 	move	s0,zero
800061d8:	00009021 	move	s2,zero
800061dc:	3c087fff 	lui	t0,0x7fff
800061e0:	3508ffff 	ori	t0,t0,0xffff
800061e4:	3c097fff 	lui	t1,0x7fff
800061e8:	3529ffff 	ori	t1,t1,0xffff
800061ec:	3c0a8002 	lui	t2,0x8002
800061f0:	354afff0 	ori	t2,t2,0xfff0
800061f4:	ad480000 	sw	t0,0(t2)
800061f8:	10000004 	b	8000620c <n91_jalr_ex_ds_test+0x5ac>
800061fc:	00000000 	nop
80006200:	26522222 	addiu	s2,s2,8738
80006204:	10000009 	b	8000622c <n91_jalr_ex_ds_test+0x5cc>
80006208:	00000000 	nop
8000620c:	26101111 	addiu	s0,s0,4369
80006210:	3c0d8000 	lui	t5,0x8000
80006214:	25ad6200 	addiu	t5,t5,25088
80006218:	01a0f809 	jalr	t5
8000621c:	8d540003 	lw	s4,3(t2)
80006220:	26100002 	addiu	s0,s0,2
80006224:	26100002 	addiu	s0,s0,2
80006228:	26100002 	addiu	s0,s0,2
8000622c:	02129021 	addu	s2,s0,s2
80006230:	0180f821 	move	ra,t4
80006234:	24141117 	li	s4,4375
80006238:	16920140 	bne	s4,s2,8000673c <inst_error>
8000623c:	00000000 	nop
80006240:	3c144444 	lui	s4,0x4444
80006244:	1682013d 	bne	s4,v0,8000673c <inst_error>
80006248:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:23
8000624c:	001f6021 	addu	t4,zero,ra
80006250:	24020009 	li	v0,9
80006254:	00008021 	move	s0,zero
80006258:	00009021 	move	s2,zero
8000625c:	3c087fff 	lui	t0,0x7fff
80006260:	3508ffff 	ori	t0,t0,0xffff
80006264:	3c097fff 	lui	t1,0x7fff
80006268:	3529ffff 	ori	t1,t1,0xffff
8000626c:	3c0a8002 	lui	t2,0x8002
80006270:	354afff0 	ori	t2,t2,0xfff0
80006274:	ad480000 	sw	t0,0(t2)
80006278:	10000004 	b	8000628c <n91_jalr_ex_ds_test+0x62c>
8000627c:	00000000 	nop
80006280:	26522222 	addiu	s2,s2,8738
80006284:	10000009 	b	800062ac <n91_jalr_ex_ds_test+0x64c>
80006288:	00000000 	nop
8000628c:	26101111 	addiu	s0,s0,4369
80006290:	3c0d8000 	lui	t5,0x8000
80006294:	25ad62ac 	addiu	t5,t5,25260
80006298:	01a0f809 	jalr	t5
8000629c:	a5540003 	sh	s4,3(t2)
800062a0:	26100002 	addiu	s0,s0,2
800062a4:	26100002 	addiu	s0,s0,2
800062a8:	26100002 	addiu	s0,s0,2
800062ac:	02129021 	addu	s2,s0,s2
800062b0:	0180f821 	move	ra,t4
800062b4:	24141117 	li	s4,4375
800062b8:	16920120 	bne	s4,s2,8000673c <inst_error>
800062bc:	00000000 	nop
800062c0:	3c144444 	lui	s4,0x4444
800062c4:	1682011d 	bne	s4,v0,8000673c <inst_error>
800062c8:	00000000 	nop
800062cc:	24020009 	li	v0,9
800062d0:	00008021 	move	s0,zero
800062d4:	00009021 	move	s2,zero
800062d8:	3c087fff 	lui	t0,0x7fff
800062dc:	3508ffff 	ori	t0,t0,0xffff
800062e0:	3c097fff 	lui	t1,0x7fff
800062e4:	3529ffff 	ori	t1,t1,0xffff
800062e8:	3c0a8002 	lui	t2,0x8002
800062ec:	354afff0 	ori	t2,t2,0xfff0
800062f0:	ad480000 	sw	t0,0(t2)
800062f4:	10000004 	b	80006308 <n91_jalr_ex_ds_test+0x6a8>
800062f8:	00000000 	nop
800062fc:	26522222 	addiu	s2,s2,8738
80006300:	10000009 	b	80006328 <n91_jalr_ex_ds_test+0x6c8>
80006304:	00000000 	nop
80006308:	26101111 	addiu	s0,s0,4369
8000630c:	3c0d8000 	lui	t5,0x8000
80006310:	25ad62fc 	addiu	t5,t5,25340
80006314:	01a0f809 	jalr	t5
80006318:	a5540003 	sh	s4,3(t2)
8000631c:	26100002 	addiu	s0,s0,2
80006320:	26100002 	addiu	s0,s0,2
80006324:	26100002 	addiu	s0,s0,2
80006328:	02129021 	addu	s2,s0,s2
8000632c:	0180f821 	move	ra,t4
80006330:	24141117 	li	s4,4375
80006334:	16920101 	bne	s4,s2,8000673c <inst_error>
80006338:	00000000 	nop
8000633c:	3c144444 	lui	s4,0x4444
80006340:	168200fe 	bne	s4,v0,8000673c <inst_error>
80006344:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:24
80006348:	001f6021 	addu	t4,zero,ra
8000634c:	24020009 	li	v0,9
80006350:	00008021 	move	s0,zero
80006354:	00009021 	move	s2,zero
80006358:	3c087fff 	lui	t0,0x7fff
8000635c:	3508ffff 	ori	t0,t0,0xffff
80006360:	3c097fff 	lui	t1,0x7fff
80006364:	3529ffff 	ori	t1,t1,0xffff
80006368:	3c0a8002 	lui	t2,0x8002
8000636c:	354afff0 	ori	t2,t2,0xfff0
80006370:	ad480000 	sw	t0,0(t2)
80006374:	10000004 	b	80006388 <n91_jalr_ex_ds_test+0x728>
80006378:	00000000 	nop
8000637c:	26522222 	addiu	s2,s2,8738
80006380:	10000009 	b	800063a8 <n91_jalr_ex_ds_test+0x748>
80006384:	00000000 	nop
80006388:	26101111 	addiu	s0,s0,4369
8000638c:	3c0d8000 	lui	t5,0x8000
80006390:	25ad63a8 	addiu	t5,t5,25512
80006394:	01a0f809 	jalr	t5
80006398:	ad540003 	sw	s4,3(t2)
8000639c:	26100002 	addiu	s0,s0,2
800063a0:	26100002 	addiu	s0,s0,2
800063a4:	26100002 	addiu	s0,s0,2
800063a8:	02129021 	addu	s2,s0,s2
800063ac:	0180f821 	move	ra,t4
800063b0:	24141117 	li	s4,4375
800063b4:	169200e1 	bne	s4,s2,8000673c <inst_error>
800063b8:	00000000 	nop
800063bc:	3c144444 	lui	s4,0x4444
800063c0:	168200de 	bne	s4,v0,8000673c <inst_error>
800063c4:	00000000 	nop
800063c8:	24020009 	li	v0,9
800063cc:	00008021 	move	s0,zero
800063d0:	00009021 	move	s2,zero
800063d4:	3c087fff 	lui	t0,0x7fff
800063d8:	3508ffff 	ori	t0,t0,0xffff
800063dc:	3c097fff 	lui	t1,0x7fff
800063e0:	3529ffff 	ori	t1,t1,0xffff
800063e4:	3c0a8002 	lui	t2,0x8002
800063e8:	354afff0 	ori	t2,t2,0xfff0
800063ec:	ad480000 	sw	t0,0(t2)
800063f0:	10000004 	b	80006404 <n91_jalr_ex_ds_test+0x7a4>
800063f4:	00000000 	nop
800063f8:	26522222 	addiu	s2,s2,8738
800063fc:	10000009 	b	80006424 <n91_jalr_ex_ds_test+0x7c4>
80006400:	00000000 	nop
80006404:	26101111 	addiu	s0,s0,4369
80006408:	3c0d8000 	lui	t5,0x8000
8000640c:	25ad63f8 	addiu	t5,t5,25592
80006410:	01a0f809 	jalr	t5
80006414:	ad540003 	sw	s4,3(t2)
80006418:	26100002 	addiu	s0,s0,2
8000641c:	26100002 	addiu	s0,s0,2
80006420:	26100002 	addiu	s0,s0,2
80006424:	02129021 	addu	s2,s0,s2
80006428:	0180f821 	move	ra,t4
8000642c:	24141117 	li	s4,4375
80006430:	169200c2 	bne	s4,s2,8000673c <inst_error>
80006434:	00000000 	nop
80006438:	3c144444 	lui	s4,0x4444
8000643c:	168200bf 	bne	s4,v0,8000673c <inst_error>
80006440:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:25
80006444:	001f6021 	addu	t4,zero,ra
80006448:	24020009 	li	v0,9
8000644c:	00008021 	move	s0,zero
80006450:	00009021 	move	s2,zero
80006454:	3c087fff 	lui	t0,0x7fff
80006458:	3508ffff 	ori	t0,t0,0xffff
8000645c:	3c097fff 	lui	t1,0x7fff
80006460:	3529ffff 	ori	t1,t1,0xffff
80006464:	3c0a8002 	lui	t2,0x8002
80006468:	354afff0 	ori	t2,t2,0xfff0
8000646c:	ad480000 	sw	t0,0(t2)
80006470:	10000004 	b	80006484 <n91_jalr_ex_ds_test+0x824>
80006474:	00000000 	nop
80006478:	26522222 	addiu	s2,s2,8738
8000647c:	10000009 	b	800064a4 <n91_jalr_ex_ds_test+0x844>
80006480:	00000000 	nop
80006484:	26101111 	addiu	s0,s0,4369
80006488:	3c0d8000 	lui	t5,0x8000
8000648c:	25ad64a4 	addiu	t5,t5,25764
80006490:	01a0f809 	jalr	t5
80006494:	6f76e210 	0x6f76e210
80006498:	26100002 	addiu	s0,s0,2
8000649c:	26100002 	addiu	s0,s0,2
800064a0:	26100002 	addiu	s0,s0,2
800064a4:	02129021 	addu	s2,s0,s2
800064a8:	0180f821 	move	ra,t4
800064ac:	24141117 	li	s4,4375
800064b0:	169200a2 	bne	s4,s2,8000673c <inst_error>
800064b4:	00000000 	nop
800064b8:	3c144444 	lui	s4,0x4444
800064bc:	1682009f 	bne	s4,v0,8000673c <inst_error>
800064c0:	00000000 	nop
800064c4:	24020009 	li	v0,9
800064c8:	00008021 	move	s0,zero
800064cc:	00009021 	move	s2,zero
800064d0:	3c087fff 	lui	t0,0x7fff
800064d4:	3508ffff 	ori	t0,t0,0xffff
800064d8:	3c097fff 	lui	t1,0x7fff
800064dc:	3529ffff 	ori	t1,t1,0xffff
800064e0:	3c0a8002 	lui	t2,0x8002
800064e4:	354afff0 	ori	t2,t2,0xfff0
800064e8:	ad480000 	sw	t0,0(t2)
800064ec:	10000004 	b	80006500 <n91_jalr_ex_ds_test+0x8a0>
800064f0:	00000000 	nop
800064f4:	26522222 	addiu	s2,s2,8738
800064f8:	10000009 	b	80006520 <n91_jalr_ex_ds_test+0x8c0>
800064fc:	00000000 	nop
80006500:	26101111 	addiu	s0,s0,4369
80006504:	3c0d8000 	lui	t5,0x8000
80006508:	25ad64f4 	addiu	t5,t5,25844
8000650c:	01a0f809 	jalr	t5
80006510:	6f76e210 	0x6f76e210
80006514:	26100002 	addiu	s0,s0,2
80006518:	26100002 	addiu	s0,s0,2
8000651c:	26100002 	addiu	s0,s0,2
80006520:	02129021 	addu	s2,s0,s2
80006524:	0180f821 	move	ra,t4
80006528:	24141117 	li	s4,4375
8000652c:	16920083 	bne	s4,s2,8000673c <inst_error>
80006530:	00000000 	nop
80006534:	3c144444 	lui	s4,0x4444
80006538:	16820080 	bne	s4,v0,8000673c <inst_error>
8000653c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:26
80006540:	001f6021 	addu	t4,zero,ra
80006544:	24020009 	li	v0,9
80006548:	00008021 	move	s0,zero
8000654c:	00009021 	move	s2,zero
80006550:	3c087fff 	lui	t0,0x7fff
80006554:	3508ffff 	ori	t0,t0,0xffff
80006558:	3c097fff 	lui	t1,0x7fff
8000655c:	3529ffff 	ori	t1,t1,0xffff
80006560:	3c0a8002 	lui	t2,0x8002
80006564:	354afff0 	ori	t2,t2,0xfff0
80006568:	ad480000 	sw	t0,0(t2)
8000656c:	10000004 	b	80006580 <n91_jalr_ex_ds_test+0x920>
80006570:	00000000 	nop
80006574:	26522222 	addiu	s2,s2,8738
80006578:	10000009 	b	800065a0 <n91_jalr_ex_ds_test+0x940>
8000657c:	00000000 	nop
80006580:	26101111 	addiu	s0,s0,4369
80006584:	3c0d8000 	lui	t5,0x8000
80006588:	25ad65a0 	addiu	t5,t5,26016
8000658c:	01a0f809 	jalr	t5
80006590:	0000000c 	syscall
80006594:	26100002 	addiu	s0,s0,2
80006598:	26100002 	addiu	s0,s0,2
8000659c:	26100002 	addiu	s0,s0,2
800065a0:	02129021 	addu	s2,s0,s2
800065a4:	0180f821 	move	ra,t4
800065a8:	24141117 	li	s4,4375
800065ac:	16920063 	bne	s4,s2,8000673c <inst_error>
800065b0:	00000000 	nop
800065b4:	3c144444 	lui	s4,0x4444
800065b8:	16820060 	bne	s4,v0,8000673c <inst_error>
800065bc:	00000000 	nop
800065c0:	24020009 	li	v0,9
800065c4:	00008021 	move	s0,zero
800065c8:	00009021 	move	s2,zero
800065cc:	3c087fff 	lui	t0,0x7fff
800065d0:	3508ffff 	ori	t0,t0,0xffff
800065d4:	3c097fff 	lui	t1,0x7fff
800065d8:	3529ffff 	ori	t1,t1,0xffff
800065dc:	3c0a8002 	lui	t2,0x8002
800065e0:	354afff0 	ori	t2,t2,0xfff0
800065e4:	ad480000 	sw	t0,0(t2)
800065e8:	10000004 	b	800065fc <n91_jalr_ex_ds_test+0x99c>
800065ec:	00000000 	nop
800065f0:	26522222 	addiu	s2,s2,8738
800065f4:	10000009 	b	8000661c <n91_jalr_ex_ds_test+0x9bc>
800065f8:	00000000 	nop
800065fc:	26101111 	addiu	s0,s0,4369
80006600:	3c0d8000 	lui	t5,0x8000
80006604:	25ad65f0 	addiu	t5,t5,26096
80006608:	01a0f809 	jalr	t5
8000660c:	0000000c 	syscall
80006610:	26100002 	addiu	s0,s0,2
80006614:	26100002 	addiu	s0,s0,2
80006618:	26100002 	addiu	s0,s0,2
8000661c:	02129021 	addu	s2,s0,s2
80006620:	0180f821 	move	ra,t4
80006624:	24141117 	li	s4,4375
80006628:	16920044 	bne	s4,s2,8000673c <inst_error>
8000662c:	00000000 	nop
80006630:	3c144444 	lui	s4,0x4444
80006634:	16820041 	bne	s4,v0,8000673c <inst_error>
80006638:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:27
8000663c:	001f6021 	addu	t4,zero,ra
80006640:	24020009 	li	v0,9
80006644:	00008021 	move	s0,zero
80006648:	00009021 	move	s2,zero
8000664c:	3c087fff 	lui	t0,0x7fff
80006650:	3508ffff 	ori	t0,t0,0xffff
80006654:	3c097fff 	lui	t1,0x7fff
80006658:	3529ffff 	ori	t1,t1,0xffff
8000665c:	3c0a8002 	lui	t2,0x8002
80006660:	354afff0 	ori	t2,t2,0xfff0
80006664:	ad480000 	sw	t0,0(t2)
80006668:	10000004 	b	8000667c <n91_jalr_ex_ds_test+0xa1c>
8000666c:	00000000 	nop
80006670:	26522222 	addiu	s2,s2,8738
80006674:	10000009 	b	8000669c <n91_jalr_ex_ds_test+0xa3c>
80006678:	00000000 	nop
8000667c:	26101111 	addiu	s0,s0,4369
80006680:	3c0d8000 	lui	t5,0x8000
80006684:	25ad669c 	addiu	t5,t5,26268
80006688:	01a0f809 	jalr	t5
8000668c:	0000000d 	break
80006690:	26100002 	addiu	s0,s0,2
80006694:	26100002 	addiu	s0,s0,2
80006698:	26100002 	addiu	s0,s0,2
8000669c:	02129021 	addu	s2,s0,s2
800066a0:	0180f821 	move	ra,t4
800066a4:	24141117 	li	s4,4375
800066a8:	16920024 	bne	s4,s2,8000673c <inst_error>
800066ac:	00000000 	nop
800066b0:	3c144444 	lui	s4,0x4444
800066b4:	16820021 	bne	s4,v0,8000673c <inst_error>
800066b8:	00000000 	nop
800066bc:	24020009 	li	v0,9
800066c0:	00008021 	move	s0,zero
800066c4:	00009021 	move	s2,zero
800066c8:	3c087fff 	lui	t0,0x7fff
800066cc:	3508ffff 	ori	t0,t0,0xffff
800066d0:	3c097fff 	lui	t1,0x7fff
800066d4:	3529ffff 	ori	t1,t1,0xffff
800066d8:	3c0a8002 	lui	t2,0x8002
800066dc:	354afff0 	ori	t2,t2,0xfff0
800066e0:	ad480000 	sw	t0,0(t2)
800066e4:	10000004 	b	800066f8 <n91_jalr_ex_ds_test+0xa98>
800066e8:	00000000 	nop
800066ec:	26522222 	addiu	s2,s2,8738
800066f0:	10000009 	b	80006718 <n91_jalr_ex_ds_test+0xab8>
800066f4:	00000000 	nop
800066f8:	26101111 	addiu	s0,s0,4369
800066fc:	3c0d8000 	lui	t5,0x8000
80006700:	25ad66ec 	addiu	t5,t5,26348
80006704:	01a0f809 	jalr	t5
80006708:	0000000d 	break
8000670c:	26100002 	addiu	s0,s0,2
80006710:	26100002 	addiu	s0,s0,2
80006714:	26100002 	addiu	s0,s0,2
80006718:	02129021 	addu	s2,s0,s2
8000671c:	0180f821 	move	ra,t4
80006720:	24141117 	li	s4,4375
80006724:	16920005 	bne	s4,s2,8000673c <inst_error>
80006728:	00000000 	nop
8000672c:	3c144444 	lui	s4,0x4444
80006730:	16820002 	bne	s4,v0,8000673c <inst_error>
80006734:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:33
80006738:	26730001 	addiu	s3,s3,1

8000673c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:36
8000673c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:37
80006740:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:38
80006744:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n91_jalr_ex_ds.S:39
80006748:	00000000 	nop

8000674c <n69_bne_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:14
8000674c:	3c044500 	lui	a0,0x4500
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:15
80006750:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:17
80006754:	00008021 	move	s0,zero
80006758:	00009021 	move	s2,zero
8000675c:	3c081234 	lui	t0,0x1234
80006760:	35085678 	ori	t0,t0,0x5678
80006764:	3c091234 	lui	t1,0x1234
80006768:	35295678 	ori	t1,t1,0x5678
8000676c:	3c0a8765 	lui	t2,0x8765
80006770:	354a4321 	ori	t2,t2,0x4321
80006774:	10000017 	b	800067d4 <n69_bne_ds_test+0x88>
80006778:	00000000 	nop
8000677c:	26101111 	addiu	s0,s0,4369
80006780:	15280022 	bne	t1,t0,8000680c <n69_bne_ds_test+0xc0>
80006784:	26100001 	addiu	s0,s0,1
80006788:	26100001 	addiu	s0,s0,1
8000678c:	26100001 	addiu	s0,s0,1
80006790:	26100001 	addiu	s0,s0,1
80006794:	1000001d 	b	8000680c <n69_bne_ds_test+0xc0>
80006798:	00000000 	nop
8000679c:	26522222 	addiu	s2,s2,8738
800067a0:	152a001d 	bne	t1,t2,80006818 <n69_bne_ds_test+0xcc>
800067a4:	26100001 	addiu	s0,s0,1
800067a8:	26520001 	addiu	s2,s2,1
800067ac:	26520001 	addiu	s2,s2,1
800067b0:	26520001 	addiu	s2,s2,1
800067b4:	10000018 	b	80006818 <n69_bne_ds_test+0xcc>
800067b8:	00000000 	nop
800067bc:	00000021 	move	zero,zero
800067c0:	00000021 	move	zero,zero
800067c4:	00000021 	move	zero,zero
800067c8:	00000021 	move	zero,zero
800067cc:	00000021 	move	zero,zero
800067d0:	00000021 	move	zero,zero
800067d4:	1509ffe9 	bne	t0,t1,8000677c <n69_bne_ds_test+0x30>
800067d8:	01098021 	addu	s0,t0,t1
800067dc:	2610ffff 	addiu	s0,s0,-1
800067e0:	2610ffff 	addiu	s0,s0,-1
800067e4:	1000ffe5 	b	8000677c <n69_bne_ds_test+0x30>
800067e8:	00000000 	nop
800067ec:	150affeb 	bne	t0,t2,8000679c <n69_bne_ds_test+0x50>
800067f0:	020a8021 	addu	s0,s0,t2
800067f4:	2610ffff 	addiu	s0,s0,-1
800067f8:	2610ffff 	addiu	s0,s0,-1
800067fc:	1000ffe7 	b	8000679c <n69_bne_ds_test+0x50>
80006800:	00000000 	nop
80006804:	00000021 	move	zero,zero
80006808:	00000021 	move	zero,zero
8000680c:	012a9021 	addu	s2,t1,t2
80006810:	1000fff6 	b	800067ec <n69_bne_ds_test+0xa0>
80006814:	00000000 	nop
80006818:	02129021 	addu	s2,s0,s2
8000681c:	00000000 	nop
80006820:	3c144567 	lui	s4,0x4567
80006824:	3694bce0 	ori	s4,s4,0xbce0
80006828:	16920004 	bne	s4,s2,8000683c <inst_error>
8000682c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:19
80006830:	14400002 	bnez	v0,8000683c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:20
80006834:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:22
80006838:	26730001 	addiu	s3,s3,1

8000683c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:25
8000683c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:26
80006840:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:27
80006844:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n69_bne_ds.S:28
80006848:	00000000 	nop

8000684c <n78_jr_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:14
8000684c:	3c044e00 	lui	a0,0x4e00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:15
80006850:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:17
80006854:	00008021 	move	s0,zero
80006858:	00009021 	move	s2,zero
8000685c:	3c081234 	lui	t0,0x1234
80006860:	35085678 	ori	t0,t0,0x5678
80006864:	3c091234 	lui	t1,0x1234
80006868:	35295678 	ori	t1,t1,0x5678
8000686c:	3c0a8765 	lui	t2,0x8765
80006870:	354a4321 	ori	t2,t2,0x4321
80006874:	10000016 	b	800068d0 <n78_jr_ds_test+0x84>
80006878:	00000000 	nop
8000687c:	26101111 	addiu	s0,s0,4369
80006880:	3c0d8000 	lui	t5,0x8000
80006884:	25ad691c 	addiu	t5,t5,26908
80006888:	01a00008 	jr	t5
8000688c:	26100001 	addiu	s0,s0,1
80006890:	26100001 	addiu	s0,s0,1
80006894:	26100001 	addiu	s0,s0,1
80006898:	26100001 	addiu	s0,s0,1
8000689c:	1000001f 	b	8000691c <n78_jr_ds_test+0xd0>
800068a0:	00000000 	nop
800068a4:	00000021 	move	zero,zero
800068a8:	00000021 	move	zero,zero
800068ac:	00000021 	move	zero,zero
800068b0:	00000021 	move	zero,zero
800068b4:	00000021 	move	zero,zero
800068b8:	00000021 	move	zero,zero
800068bc:	00000021 	move	zero,zero
800068c0:	00000021 	move	zero,zero
800068c4:	00000021 	move	zero,zero
800068c8:	00000021 	move	zero,zero
800068cc:	00000021 	move	zero,zero
800068d0:	3c0d8000 	lui	t5,0x8000
800068d4:	25ad687c 	addiu	t5,t5,26748
800068d8:	01a00008 	jr	t5
800068dc:	01098021 	addu	s0,t0,t1
800068e0:	2610ffff 	addiu	s0,s0,-1
800068e4:	2610ffff 	addiu	s0,s0,-1
800068e8:	1000ffe4 	b	8000687c <n78_jr_ds_test+0x30>
800068ec:	00000000 	nop
800068f0:	00000021 	move	zero,zero
800068f4:	00000021 	move	zero,zero
800068f8:	00000021 	move	zero,zero
800068fc:	00000021 	move	zero,zero
80006900:	00000021 	move	zero,zero
80006904:	00000021 	move	zero,zero
80006908:	00000021 	move	zero,zero
8000690c:	00000021 	move	zero,zero
80006910:	00000021 	move	zero,zero
80006914:	00000021 	move	zero,zero
80006918:	00000021 	move	zero,zero
8000691c:	012a9021 	addu	s2,t1,t2
80006920:	02129021 	addu	s2,s0,s2
80006924:	00000000 	nop
80006928:	3c14be02 	lui	s4,0xbe02
8000692c:	3694579b 	ori	s4,s4,0x579b
80006930:	16920004 	bne	s4,s2,80006944 <inst_error>
80006934:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:19
80006938:	14400002 	bnez	v0,80006944 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:20
8000693c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:22
80006940:	26730001 	addiu	s3,s3,1

80006944 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:25
80006944:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:26
80006948:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:27
8000694c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n78_jr_ds.S:28
80006950:	00000000 	nop

80006954 <n73_bltz_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:14
80006954:	3c044900 	lui	a0,0x4900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:15
80006958:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:17
8000695c:	00008021 	move	s0,zero
80006960:	00009021 	move	s2,zero
80006964:	3c081234 	lui	t0,0x1234
80006968:	35085678 	ori	t0,t0,0x5678
8000696c:	3c091234 	lui	t1,0x1234
80006970:	35295678 	ori	t1,t1,0x5678
80006974:	3c0a8765 	lui	t2,0x8765
80006978:	354a4321 	ori	t2,t2,0x4321
8000697c:	10000016 	b	800069d8 <n73_bltz_ds_test+0x84>
80006980:	00000000 	nop
80006984:	26101111 	addiu	s0,s0,4369
80006988:	05000029 	bltz	t0,80006a30 <n73_bltz_ds_test+0xdc>
8000698c:	26100001 	addiu	s0,s0,1
80006990:	26100001 	addiu	s0,s0,1
80006994:	26100001 	addiu	s0,s0,1
80006998:	26100001 	addiu	s0,s0,1
8000699c:	10000024 	b	80006a30 <n73_bltz_ds_test+0xdc>
800069a0:	00000000 	nop
800069a4:	26522222 	addiu	s2,s2,8738
800069a8:	05400024 	bltz	t2,80006a3c <n73_bltz_ds_test+0xe8>
800069ac:	26100001 	addiu	s0,s0,1
800069b0:	26520001 	addiu	s2,s2,1
800069b4:	26520001 	addiu	s2,s2,1
800069b8:	26520001 	addiu	s2,s2,1
800069bc:	1000001f 	b	80006a3c <n73_bltz_ds_test+0xe8>
800069c0:	00000000 	nop
800069c4:	00000021 	move	zero,zero
800069c8:	00000021 	move	zero,zero
800069cc:	00000021 	move	zero,zero
800069d0:	00000021 	move	zero,zero
800069d4:	00000021 	move	zero,zero
800069d8:	0500ffea 	bltz	t0,80006984 <n73_bltz_ds_test+0x30>
800069dc:	01098021 	addu	s0,t0,t1
800069e0:	2610ffff 	addiu	s0,s0,-1
800069e4:	2610ffff 	addiu	s0,s0,-1
800069e8:	1000ffe6 	b	80006984 <n73_bltz_ds_test+0x30>
800069ec:	00000000 	nop
800069f0:	0540ffec 	bltz	t2,800069a4 <n73_bltz_ds_test+0x50>
800069f4:	020a8021 	addu	s0,s0,t2
800069f8:	2610ffff 	addiu	s0,s0,-1
800069fc:	2610ffff 	addiu	s0,s0,-1
80006a00:	1000ffe8 	b	800069a4 <n73_bltz_ds_test+0x50>
80006a04:	00000000 	nop
80006a08:	00000021 	move	zero,zero
80006a0c:	00000021 	move	zero,zero
80006a10:	00000021 	move	zero,zero
80006a14:	00000021 	move	zero,zero
80006a18:	00000021 	move	zero,zero
80006a1c:	00000021 	move	zero,zero
80006a20:	00000021 	move	zero,zero
80006a24:	00000021 	move	zero,zero
80006a28:	00000021 	move	zero,zero
80006a2c:	00000021 	move	zero,zero
80006a30:	012a9021 	addu	s2,t1,t2
80006a34:	1000ffee 	b	800069f0 <n73_bltz_ds_test+0x9c>
80006a38:	00000000 	nop
80006a3c:	02129021 	addu	s2,s0,s2
80006a40:	00000000 	nop
80006a44:	3c144567 	lui	s4,0x4567
80006a48:	3694bce0 	ori	s4,s4,0xbce0
80006a4c:	16920004 	bne	s4,s2,80006a60 <inst_error>
80006a50:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:19
80006a54:	14400002 	bnez	v0,80006a60 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:20
80006a58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:22
80006a5c:	26730001 	addiu	s3,s3,1

80006a60 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:25
80006a60:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:26
80006a64:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:27
80006a68:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n73_bltz_ds.S:28
80006a6c:	00000000 	nop

80006a70 <n85_bltz_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:14
80006a70:	3c045500 	lui	a0,0x5500
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:17
80006a74:	24020009 	li	v0,9
80006a78:	00008021 	move	s0,zero
80006a7c:	00009021 	move	s2,zero
80006a80:	3c087fff 	lui	t0,0x7fff
80006a84:	3508ffff 	ori	t0,t0,0xffff
80006a88:	3c097fff 	lui	t1,0x7fff
80006a8c:	3529ffff 	ori	t1,t1,0xffff
80006a90:	3c0a8002 	lui	t2,0x8002
80006a94:	354afff0 	ori	t2,t2,0xfff0
80006a98:	ad480000 	sw	t0,0(t2)
80006a9c:	10000004 	b	80006ab0 <n85_bltz_ex_ds_test+0x40>
80006aa0:	00000000 	nop
80006aa4:	26522222 	addiu	s2,s2,8738
80006aa8:	10000007 	b	80006ac8 <n85_bltz_ex_ds_test+0x58>
80006aac:	00000000 	nop
80006ab0:	26101111 	addiu	s0,s0,4369
80006ab4:	05400004 	bltz	t2,80006ac8 <n85_bltz_ex_ds_test+0x58>
80006ab8:	21147fff 	addi	s4,t0,32767
80006abc:	26100002 	addiu	s0,s0,2
80006ac0:	26100002 	addiu	s0,s0,2
80006ac4:	26100002 	addiu	s0,s0,2
80006ac8:	02129021 	addu	s2,s0,s2
80006acc:	24141117 	li	s4,4375
80006ad0:	169204b9 	bne	s4,s2,80007db8 <inst_error>
80006ad4:	00000000 	nop
80006ad8:	3c144444 	lui	s4,0x4444
80006adc:	168204b6 	bne	s4,v0,80007db8 <inst_error>
80006ae0:	00000000 	nop
80006ae4:	24020009 	li	v0,9
80006ae8:	00008021 	move	s0,zero
80006aec:	00009021 	move	s2,zero
80006af0:	3c087fff 	lui	t0,0x7fff
80006af4:	3508ffff 	ori	t0,t0,0xffff
80006af8:	3c097fff 	lui	t1,0x7fff
80006afc:	3529ffff 	ori	t1,t1,0xffff
80006b00:	3c0a8002 	lui	t2,0x8002
80006b04:	354afff0 	ori	t2,t2,0xfff0
80006b08:	ad480000 	sw	t0,0(t2)
80006b0c:	10000004 	b	80006b20 <n85_bltz_ex_ds_test+0xb0>
80006b10:	00000000 	nop
80006b14:	26522222 	addiu	s2,s2,8738
80006b18:	10000007 	b	80006b38 <n85_bltz_ex_ds_test+0xc8>
80006b1c:	00000000 	nop
80006b20:	26101111 	addiu	s0,s0,4369
80006b24:	05000004 	bltz	t0,80006b38 <n85_bltz_ex_ds_test+0xc8>
80006b28:	21147fff 	addi	s4,t0,32767
80006b2c:	26100002 	addiu	s0,s0,2
80006b30:	26100002 	addiu	s0,s0,2
80006b34:	26100002 	addiu	s0,s0,2
80006b38:	02129021 	addu	s2,s0,s2
80006b3c:	24141117 	li	s4,4375
80006b40:	1692049d 	bne	s4,s2,80007db8 <inst_error>
80006b44:	00000000 	nop
80006b48:	3c144444 	lui	s4,0x4444
80006b4c:	1682049a 	bne	s4,v0,80007db8 <inst_error>
80006b50:	00000000 	nop
80006b54:	24020009 	li	v0,9
80006b58:	00008021 	move	s0,zero
80006b5c:	00009021 	move	s2,zero
80006b60:	3c087fff 	lui	t0,0x7fff
80006b64:	3508ffff 	ori	t0,t0,0xffff
80006b68:	3c097fff 	lui	t1,0x7fff
80006b6c:	3529ffff 	ori	t1,t1,0xffff
80006b70:	3c0a8002 	lui	t2,0x8002
80006b74:	354afff0 	ori	t2,t2,0xfff0
80006b78:	ad480000 	sw	t0,0(t2)
80006b7c:	10000004 	b	80006b90 <n85_bltz_ex_ds_test+0x120>
80006b80:	00000000 	nop
80006b84:	26522222 	addiu	s2,s2,8738
80006b88:	10000007 	b	80006ba8 <n85_bltz_ex_ds_test+0x138>
80006b8c:	00000000 	nop
80006b90:	26101111 	addiu	s0,s0,4369
80006b94:	0540fffb 	bltz	t2,80006b84 <n85_bltz_ex_ds_test+0x114>
80006b98:	21147fff 	addi	s4,t0,32767
80006b9c:	26100002 	addiu	s0,s0,2
80006ba0:	26100002 	addiu	s0,s0,2
80006ba4:	26100002 	addiu	s0,s0,2
80006ba8:	02129021 	addu	s2,s0,s2
80006bac:	24141117 	li	s4,4375
80006bb0:	16920481 	bne	s4,s2,80007db8 <inst_error>
80006bb4:	00000000 	nop
80006bb8:	3c144444 	lui	s4,0x4444
80006bbc:	1682047e 	bne	s4,v0,80007db8 <inst_error>
80006bc0:	00000000 	nop
80006bc4:	24020009 	li	v0,9
80006bc8:	00008021 	move	s0,zero
80006bcc:	00009021 	move	s2,zero
80006bd0:	3c087fff 	lui	t0,0x7fff
80006bd4:	3508ffff 	ori	t0,t0,0xffff
80006bd8:	3c097fff 	lui	t1,0x7fff
80006bdc:	3529ffff 	ori	t1,t1,0xffff
80006be0:	3c0a8002 	lui	t2,0x8002
80006be4:	354afff0 	ori	t2,t2,0xfff0
80006be8:	ad480000 	sw	t0,0(t2)
80006bec:	10000004 	b	80006c00 <n85_bltz_ex_ds_test+0x190>
80006bf0:	00000000 	nop
80006bf4:	26522222 	addiu	s2,s2,8738
80006bf8:	10000007 	b	80006c18 <n85_bltz_ex_ds_test+0x1a8>
80006bfc:	00000000 	nop
80006c00:	26101111 	addiu	s0,s0,4369
80006c04:	0500fffb 	bltz	t0,80006bf4 <n85_bltz_ex_ds_test+0x184>
80006c08:	21147fff 	addi	s4,t0,32767
80006c0c:	26100002 	addiu	s0,s0,2
80006c10:	26100002 	addiu	s0,s0,2
80006c14:	26100002 	addiu	s0,s0,2
80006c18:	02129021 	addu	s2,s0,s2
80006c1c:	24141117 	li	s4,4375
80006c20:	16920465 	bne	s4,s2,80007db8 <inst_error>
80006c24:	00000000 	nop
80006c28:	3c144444 	lui	s4,0x4444
80006c2c:	16820462 	bne	s4,v0,80007db8 <inst_error>
80006c30:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:18
80006c34:	24020009 	li	v0,9
80006c38:	00008021 	move	s0,zero
80006c3c:	00009021 	move	s2,zero
80006c40:	3c087fff 	lui	t0,0x7fff
80006c44:	3508ffff 	ori	t0,t0,0xffff
80006c48:	3c097fff 	lui	t1,0x7fff
80006c4c:	3529ffff 	ori	t1,t1,0xffff
80006c50:	3c0a8002 	lui	t2,0x8002
80006c54:	354afff0 	ori	t2,t2,0xfff0
80006c58:	ad480000 	sw	t0,0(t2)
80006c5c:	10000004 	b	80006c70 <n85_bltz_ex_ds_test+0x200>
80006c60:	00000000 	nop
80006c64:	26522222 	addiu	s2,s2,8738
80006c68:	10000007 	b	80006c88 <n85_bltz_ex_ds_test+0x218>
80006c6c:	00000000 	nop
80006c70:	26101111 	addiu	s0,s0,4369
80006c74:	05400004 	bltz	t2,80006c88 <n85_bltz_ex_ds_test+0x218>
80006c78:	0109a020 	add	s4,t0,t1
80006c7c:	26100002 	addiu	s0,s0,2
80006c80:	26100002 	addiu	s0,s0,2
80006c84:	26100002 	addiu	s0,s0,2
80006c88:	02129021 	addu	s2,s0,s2
80006c8c:	24141117 	li	s4,4375
80006c90:	16920449 	bne	s4,s2,80007db8 <inst_error>
80006c94:	00000000 	nop
80006c98:	3c144444 	lui	s4,0x4444
80006c9c:	16820446 	bne	s4,v0,80007db8 <inst_error>
80006ca0:	00000000 	nop
80006ca4:	24020009 	li	v0,9
80006ca8:	00008021 	move	s0,zero
80006cac:	00009021 	move	s2,zero
80006cb0:	3c087fff 	lui	t0,0x7fff
80006cb4:	3508ffff 	ori	t0,t0,0xffff
80006cb8:	3c097fff 	lui	t1,0x7fff
80006cbc:	3529ffff 	ori	t1,t1,0xffff
80006cc0:	3c0a8002 	lui	t2,0x8002
80006cc4:	354afff0 	ori	t2,t2,0xfff0
80006cc8:	ad480000 	sw	t0,0(t2)
80006ccc:	10000004 	b	80006ce0 <n85_bltz_ex_ds_test+0x270>
80006cd0:	00000000 	nop
80006cd4:	26522222 	addiu	s2,s2,8738
80006cd8:	10000007 	b	80006cf8 <n85_bltz_ex_ds_test+0x288>
80006cdc:	00000000 	nop
80006ce0:	26101111 	addiu	s0,s0,4369
80006ce4:	05000004 	bltz	t0,80006cf8 <n85_bltz_ex_ds_test+0x288>
80006ce8:	0109a020 	add	s4,t0,t1
80006cec:	26100002 	addiu	s0,s0,2
80006cf0:	26100002 	addiu	s0,s0,2
80006cf4:	26100002 	addiu	s0,s0,2
80006cf8:	02129021 	addu	s2,s0,s2
80006cfc:	24141117 	li	s4,4375
80006d00:	1692042d 	bne	s4,s2,80007db8 <inst_error>
80006d04:	00000000 	nop
80006d08:	3c144444 	lui	s4,0x4444
80006d0c:	1682042a 	bne	s4,v0,80007db8 <inst_error>
80006d10:	00000000 	nop
80006d14:	24020009 	li	v0,9
80006d18:	00008021 	move	s0,zero
80006d1c:	00009021 	move	s2,zero
80006d20:	3c087fff 	lui	t0,0x7fff
80006d24:	3508ffff 	ori	t0,t0,0xffff
80006d28:	3c097fff 	lui	t1,0x7fff
80006d2c:	3529ffff 	ori	t1,t1,0xffff
80006d30:	3c0a8002 	lui	t2,0x8002
80006d34:	354afff0 	ori	t2,t2,0xfff0
80006d38:	ad480000 	sw	t0,0(t2)
80006d3c:	10000004 	b	80006d50 <n85_bltz_ex_ds_test+0x2e0>
80006d40:	00000000 	nop
80006d44:	26522222 	addiu	s2,s2,8738
80006d48:	10000007 	b	80006d68 <n85_bltz_ex_ds_test+0x2f8>
80006d4c:	00000000 	nop
80006d50:	26101111 	addiu	s0,s0,4369
80006d54:	0540fffb 	bltz	t2,80006d44 <n85_bltz_ex_ds_test+0x2d4>
80006d58:	0109a020 	add	s4,t0,t1
80006d5c:	26100002 	addiu	s0,s0,2
80006d60:	26100002 	addiu	s0,s0,2
80006d64:	26100002 	addiu	s0,s0,2
80006d68:	02129021 	addu	s2,s0,s2
80006d6c:	24141117 	li	s4,4375
80006d70:	16920411 	bne	s4,s2,80007db8 <inst_error>
80006d74:	00000000 	nop
80006d78:	3c144444 	lui	s4,0x4444
80006d7c:	1682040e 	bne	s4,v0,80007db8 <inst_error>
80006d80:	00000000 	nop
80006d84:	24020009 	li	v0,9
80006d88:	00008021 	move	s0,zero
80006d8c:	00009021 	move	s2,zero
80006d90:	3c087fff 	lui	t0,0x7fff
80006d94:	3508ffff 	ori	t0,t0,0xffff
80006d98:	3c097fff 	lui	t1,0x7fff
80006d9c:	3529ffff 	ori	t1,t1,0xffff
80006da0:	3c0a8002 	lui	t2,0x8002
80006da4:	354afff0 	ori	t2,t2,0xfff0
80006da8:	ad480000 	sw	t0,0(t2)
80006dac:	10000004 	b	80006dc0 <n85_bltz_ex_ds_test+0x350>
80006db0:	00000000 	nop
80006db4:	26522222 	addiu	s2,s2,8738
80006db8:	10000007 	b	80006dd8 <n85_bltz_ex_ds_test+0x368>
80006dbc:	00000000 	nop
80006dc0:	26101111 	addiu	s0,s0,4369
80006dc4:	0500fffb 	bltz	t0,80006db4 <n85_bltz_ex_ds_test+0x344>
80006dc8:	0109a020 	add	s4,t0,t1
80006dcc:	26100002 	addiu	s0,s0,2
80006dd0:	26100002 	addiu	s0,s0,2
80006dd4:	26100002 	addiu	s0,s0,2
80006dd8:	02129021 	addu	s2,s0,s2
80006ddc:	24141117 	li	s4,4375
80006de0:	169203f5 	bne	s4,s2,80007db8 <inst_error>
80006de4:	00000000 	nop
80006de8:	3c144444 	lui	s4,0x4444
80006dec:	168203f2 	bne	s4,v0,80007db8 <inst_error>
80006df0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:19
80006df4:	24020009 	li	v0,9
80006df8:	00008021 	move	s0,zero
80006dfc:	00009021 	move	s2,zero
80006e00:	3c087fff 	lui	t0,0x7fff
80006e04:	3508ffff 	ori	t0,t0,0xffff
80006e08:	3c097fff 	lui	t1,0x7fff
80006e0c:	3529ffff 	ori	t1,t1,0xffff
80006e10:	3c0a8002 	lui	t2,0x8002
80006e14:	354afff0 	ori	t2,t2,0xfff0
80006e18:	ad480000 	sw	t0,0(t2)
80006e1c:	10000004 	b	80006e30 <n85_bltz_ex_ds_test+0x3c0>
80006e20:	00000000 	nop
80006e24:	26522222 	addiu	s2,s2,8738
80006e28:	10000007 	b	80006e48 <n85_bltz_ex_ds_test+0x3d8>
80006e2c:	00000000 	nop
80006e30:	26101111 	addiu	s0,s0,4369
80006e34:	05400004 	bltz	t2,80006e48 <n85_bltz_ex_ds_test+0x3d8>
80006e38:	010aa022 	sub	s4,t0,t2
80006e3c:	26100002 	addiu	s0,s0,2
80006e40:	26100002 	addiu	s0,s0,2
80006e44:	26100002 	addiu	s0,s0,2
80006e48:	02129021 	addu	s2,s0,s2
80006e4c:	24141117 	li	s4,4375
80006e50:	169203d9 	bne	s4,s2,80007db8 <inst_error>
80006e54:	00000000 	nop
80006e58:	3c144444 	lui	s4,0x4444
80006e5c:	168203d6 	bne	s4,v0,80007db8 <inst_error>
80006e60:	00000000 	nop
80006e64:	24020009 	li	v0,9
80006e68:	00008021 	move	s0,zero
80006e6c:	00009021 	move	s2,zero
80006e70:	3c087fff 	lui	t0,0x7fff
80006e74:	3508ffff 	ori	t0,t0,0xffff
80006e78:	3c097fff 	lui	t1,0x7fff
80006e7c:	3529ffff 	ori	t1,t1,0xffff
80006e80:	3c0a8002 	lui	t2,0x8002
80006e84:	354afff0 	ori	t2,t2,0xfff0
80006e88:	ad480000 	sw	t0,0(t2)
80006e8c:	10000004 	b	80006ea0 <n85_bltz_ex_ds_test+0x430>
80006e90:	00000000 	nop
80006e94:	26522222 	addiu	s2,s2,8738
80006e98:	10000007 	b	80006eb8 <n85_bltz_ex_ds_test+0x448>
80006e9c:	00000000 	nop
80006ea0:	26101111 	addiu	s0,s0,4369
80006ea4:	05000004 	bltz	t0,80006eb8 <n85_bltz_ex_ds_test+0x448>
80006ea8:	010aa022 	sub	s4,t0,t2
80006eac:	26100002 	addiu	s0,s0,2
80006eb0:	26100002 	addiu	s0,s0,2
80006eb4:	26100002 	addiu	s0,s0,2
80006eb8:	02129021 	addu	s2,s0,s2
80006ebc:	24141117 	li	s4,4375
80006ec0:	169203bd 	bne	s4,s2,80007db8 <inst_error>
80006ec4:	00000000 	nop
80006ec8:	3c144444 	lui	s4,0x4444
80006ecc:	168203ba 	bne	s4,v0,80007db8 <inst_error>
80006ed0:	00000000 	nop
80006ed4:	24020009 	li	v0,9
80006ed8:	00008021 	move	s0,zero
80006edc:	00009021 	move	s2,zero
80006ee0:	3c087fff 	lui	t0,0x7fff
80006ee4:	3508ffff 	ori	t0,t0,0xffff
80006ee8:	3c097fff 	lui	t1,0x7fff
80006eec:	3529ffff 	ori	t1,t1,0xffff
80006ef0:	3c0a8002 	lui	t2,0x8002
80006ef4:	354afff0 	ori	t2,t2,0xfff0
80006ef8:	ad480000 	sw	t0,0(t2)
80006efc:	10000004 	b	80006f10 <n85_bltz_ex_ds_test+0x4a0>
80006f00:	00000000 	nop
80006f04:	26522222 	addiu	s2,s2,8738
80006f08:	10000007 	b	80006f28 <n85_bltz_ex_ds_test+0x4b8>
80006f0c:	00000000 	nop
80006f10:	26101111 	addiu	s0,s0,4369
80006f14:	0540fffb 	bltz	t2,80006f04 <n85_bltz_ex_ds_test+0x494>
80006f18:	010aa022 	sub	s4,t0,t2
80006f1c:	26100002 	addiu	s0,s0,2
80006f20:	26100002 	addiu	s0,s0,2
80006f24:	26100002 	addiu	s0,s0,2
80006f28:	02129021 	addu	s2,s0,s2
80006f2c:	24141117 	li	s4,4375
80006f30:	169203a1 	bne	s4,s2,80007db8 <inst_error>
80006f34:	00000000 	nop
80006f38:	3c144444 	lui	s4,0x4444
80006f3c:	1682039e 	bne	s4,v0,80007db8 <inst_error>
80006f40:	00000000 	nop
80006f44:	24020009 	li	v0,9
80006f48:	00008021 	move	s0,zero
80006f4c:	00009021 	move	s2,zero
80006f50:	3c087fff 	lui	t0,0x7fff
80006f54:	3508ffff 	ori	t0,t0,0xffff
80006f58:	3c097fff 	lui	t1,0x7fff
80006f5c:	3529ffff 	ori	t1,t1,0xffff
80006f60:	3c0a8002 	lui	t2,0x8002
80006f64:	354afff0 	ori	t2,t2,0xfff0
80006f68:	ad480000 	sw	t0,0(t2)
80006f6c:	10000004 	b	80006f80 <n85_bltz_ex_ds_test+0x510>
80006f70:	00000000 	nop
80006f74:	26522222 	addiu	s2,s2,8738
80006f78:	10000007 	b	80006f98 <n85_bltz_ex_ds_test+0x528>
80006f7c:	00000000 	nop
80006f80:	26101111 	addiu	s0,s0,4369
80006f84:	0500fffb 	bltz	t0,80006f74 <n85_bltz_ex_ds_test+0x504>
80006f88:	010aa022 	sub	s4,t0,t2
80006f8c:	26100002 	addiu	s0,s0,2
80006f90:	26100002 	addiu	s0,s0,2
80006f94:	26100002 	addiu	s0,s0,2
80006f98:	02129021 	addu	s2,s0,s2
80006f9c:	24141117 	li	s4,4375
80006fa0:	16920385 	bne	s4,s2,80007db8 <inst_error>
80006fa4:	00000000 	nop
80006fa8:	3c144444 	lui	s4,0x4444
80006fac:	16820382 	bne	s4,v0,80007db8 <inst_error>
80006fb0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:20
80006fb4:	24020009 	li	v0,9
80006fb8:	00008021 	move	s0,zero
80006fbc:	00009021 	move	s2,zero
80006fc0:	3c087fff 	lui	t0,0x7fff
80006fc4:	3508ffff 	ori	t0,t0,0xffff
80006fc8:	3c097fff 	lui	t1,0x7fff
80006fcc:	3529ffff 	ori	t1,t1,0xffff
80006fd0:	3c0a8002 	lui	t2,0x8002
80006fd4:	354afff0 	ori	t2,t2,0xfff0
80006fd8:	ad480000 	sw	t0,0(t2)
80006fdc:	10000004 	b	80006ff0 <n85_bltz_ex_ds_test+0x580>
80006fe0:	00000000 	nop
80006fe4:	26522222 	addiu	s2,s2,8738
80006fe8:	10000007 	b	80007008 <n85_bltz_ex_ds_test+0x598>
80006fec:	00000000 	nop
80006ff0:	26101111 	addiu	s0,s0,4369
80006ff4:	05400004 	bltz	t2,80007008 <n85_bltz_ex_ds_test+0x598>
80006ff8:	85540003 	lh	s4,3(t2)
80006ffc:	26100002 	addiu	s0,s0,2
80007000:	26100002 	addiu	s0,s0,2
80007004:	26100002 	addiu	s0,s0,2
80007008:	02129021 	addu	s2,s0,s2
8000700c:	24141117 	li	s4,4375
80007010:	16920369 	bne	s4,s2,80007db8 <inst_error>
80007014:	00000000 	nop
80007018:	3c144444 	lui	s4,0x4444
8000701c:	16820366 	bne	s4,v0,80007db8 <inst_error>
80007020:	00000000 	nop
80007024:	24020009 	li	v0,9
80007028:	00008021 	move	s0,zero
8000702c:	00009021 	move	s2,zero
80007030:	3c087fff 	lui	t0,0x7fff
80007034:	3508ffff 	ori	t0,t0,0xffff
80007038:	3c097fff 	lui	t1,0x7fff
8000703c:	3529ffff 	ori	t1,t1,0xffff
80007040:	3c0a8002 	lui	t2,0x8002
80007044:	354afff0 	ori	t2,t2,0xfff0
80007048:	ad480000 	sw	t0,0(t2)
8000704c:	10000004 	b	80007060 <n85_bltz_ex_ds_test+0x5f0>
80007050:	00000000 	nop
80007054:	26522222 	addiu	s2,s2,8738
80007058:	10000007 	b	80007078 <n85_bltz_ex_ds_test+0x608>
8000705c:	00000000 	nop
80007060:	26101111 	addiu	s0,s0,4369
80007064:	05000004 	bltz	t0,80007078 <n85_bltz_ex_ds_test+0x608>
80007068:	85540003 	lh	s4,3(t2)
8000706c:	26100002 	addiu	s0,s0,2
80007070:	26100002 	addiu	s0,s0,2
80007074:	26100002 	addiu	s0,s0,2
80007078:	02129021 	addu	s2,s0,s2
8000707c:	24141117 	li	s4,4375
80007080:	1692034d 	bne	s4,s2,80007db8 <inst_error>
80007084:	00000000 	nop
80007088:	3c144444 	lui	s4,0x4444
8000708c:	1682034a 	bne	s4,v0,80007db8 <inst_error>
80007090:	00000000 	nop
80007094:	24020009 	li	v0,9
80007098:	00008021 	move	s0,zero
8000709c:	00009021 	move	s2,zero
800070a0:	3c087fff 	lui	t0,0x7fff
800070a4:	3508ffff 	ori	t0,t0,0xffff
800070a8:	3c097fff 	lui	t1,0x7fff
800070ac:	3529ffff 	ori	t1,t1,0xffff
800070b0:	3c0a8002 	lui	t2,0x8002
800070b4:	354afff0 	ori	t2,t2,0xfff0
800070b8:	ad480000 	sw	t0,0(t2)
800070bc:	10000004 	b	800070d0 <n85_bltz_ex_ds_test+0x660>
800070c0:	00000000 	nop
800070c4:	26522222 	addiu	s2,s2,8738
800070c8:	10000007 	b	800070e8 <n85_bltz_ex_ds_test+0x678>
800070cc:	00000000 	nop
800070d0:	26101111 	addiu	s0,s0,4369
800070d4:	0540fffb 	bltz	t2,800070c4 <n85_bltz_ex_ds_test+0x654>
800070d8:	85540003 	lh	s4,3(t2)
800070dc:	26100002 	addiu	s0,s0,2
800070e0:	26100002 	addiu	s0,s0,2
800070e4:	26100002 	addiu	s0,s0,2
800070e8:	02129021 	addu	s2,s0,s2
800070ec:	24141117 	li	s4,4375
800070f0:	16920331 	bne	s4,s2,80007db8 <inst_error>
800070f4:	00000000 	nop
800070f8:	3c144444 	lui	s4,0x4444
800070fc:	1682032e 	bne	s4,v0,80007db8 <inst_error>
80007100:	00000000 	nop
80007104:	24020009 	li	v0,9
80007108:	00008021 	move	s0,zero
8000710c:	00009021 	move	s2,zero
80007110:	3c087fff 	lui	t0,0x7fff
80007114:	3508ffff 	ori	t0,t0,0xffff
80007118:	3c097fff 	lui	t1,0x7fff
8000711c:	3529ffff 	ori	t1,t1,0xffff
80007120:	3c0a8002 	lui	t2,0x8002
80007124:	354afff0 	ori	t2,t2,0xfff0
80007128:	ad480000 	sw	t0,0(t2)
8000712c:	10000004 	b	80007140 <n85_bltz_ex_ds_test+0x6d0>
80007130:	00000000 	nop
80007134:	26522222 	addiu	s2,s2,8738
80007138:	10000007 	b	80007158 <n85_bltz_ex_ds_test+0x6e8>
8000713c:	00000000 	nop
80007140:	26101111 	addiu	s0,s0,4369
80007144:	0500fffb 	bltz	t0,80007134 <n85_bltz_ex_ds_test+0x6c4>
80007148:	85540003 	lh	s4,3(t2)
8000714c:	26100002 	addiu	s0,s0,2
80007150:	26100002 	addiu	s0,s0,2
80007154:	26100002 	addiu	s0,s0,2
80007158:	02129021 	addu	s2,s0,s2
8000715c:	24141117 	li	s4,4375
80007160:	16920315 	bne	s4,s2,80007db8 <inst_error>
80007164:	00000000 	nop
80007168:	3c144444 	lui	s4,0x4444
8000716c:	16820312 	bne	s4,v0,80007db8 <inst_error>
80007170:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:21
80007174:	24020009 	li	v0,9
80007178:	00008021 	move	s0,zero
8000717c:	00009021 	move	s2,zero
80007180:	3c087fff 	lui	t0,0x7fff
80007184:	3508ffff 	ori	t0,t0,0xffff
80007188:	3c097fff 	lui	t1,0x7fff
8000718c:	3529ffff 	ori	t1,t1,0xffff
80007190:	3c0a8002 	lui	t2,0x8002
80007194:	354afff0 	ori	t2,t2,0xfff0
80007198:	ad480000 	sw	t0,0(t2)
8000719c:	10000004 	b	800071b0 <n85_bltz_ex_ds_test+0x740>
800071a0:	00000000 	nop
800071a4:	26522222 	addiu	s2,s2,8738
800071a8:	10000007 	b	800071c8 <n85_bltz_ex_ds_test+0x758>
800071ac:	00000000 	nop
800071b0:	26101111 	addiu	s0,s0,4369
800071b4:	05400004 	bltz	t2,800071c8 <n85_bltz_ex_ds_test+0x758>
800071b8:	95540003 	lhu	s4,3(t2)
800071bc:	26100002 	addiu	s0,s0,2
800071c0:	26100002 	addiu	s0,s0,2
800071c4:	26100002 	addiu	s0,s0,2
800071c8:	02129021 	addu	s2,s0,s2
800071cc:	24141117 	li	s4,4375
800071d0:	169202f9 	bne	s4,s2,80007db8 <inst_error>
800071d4:	00000000 	nop
800071d8:	3c144444 	lui	s4,0x4444
800071dc:	168202f6 	bne	s4,v0,80007db8 <inst_error>
800071e0:	00000000 	nop
800071e4:	24020009 	li	v0,9
800071e8:	00008021 	move	s0,zero
800071ec:	00009021 	move	s2,zero
800071f0:	3c087fff 	lui	t0,0x7fff
800071f4:	3508ffff 	ori	t0,t0,0xffff
800071f8:	3c097fff 	lui	t1,0x7fff
800071fc:	3529ffff 	ori	t1,t1,0xffff
80007200:	3c0a8002 	lui	t2,0x8002
80007204:	354afff0 	ori	t2,t2,0xfff0
80007208:	ad480000 	sw	t0,0(t2)
8000720c:	10000004 	b	80007220 <n85_bltz_ex_ds_test+0x7b0>
80007210:	00000000 	nop
80007214:	26522222 	addiu	s2,s2,8738
80007218:	10000007 	b	80007238 <n85_bltz_ex_ds_test+0x7c8>
8000721c:	00000000 	nop
80007220:	26101111 	addiu	s0,s0,4369
80007224:	05000004 	bltz	t0,80007238 <n85_bltz_ex_ds_test+0x7c8>
80007228:	95540003 	lhu	s4,3(t2)
8000722c:	26100002 	addiu	s0,s0,2
80007230:	26100002 	addiu	s0,s0,2
80007234:	26100002 	addiu	s0,s0,2
80007238:	02129021 	addu	s2,s0,s2
8000723c:	24141117 	li	s4,4375
80007240:	169202dd 	bne	s4,s2,80007db8 <inst_error>
80007244:	00000000 	nop
80007248:	3c144444 	lui	s4,0x4444
8000724c:	168202da 	bne	s4,v0,80007db8 <inst_error>
80007250:	00000000 	nop
80007254:	24020009 	li	v0,9
80007258:	00008021 	move	s0,zero
8000725c:	00009021 	move	s2,zero
80007260:	3c087fff 	lui	t0,0x7fff
80007264:	3508ffff 	ori	t0,t0,0xffff
80007268:	3c097fff 	lui	t1,0x7fff
8000726c:	3529ffff 	ori	t1,t1,0xffff
80007270:	3c0a8002 	lui	t2,0x8002
80007274:	354afff0 	ori	t2,t2,0xfff0
80007278:	ad480000 	sw	t0,0(t2)
8000727c:	10000004 	b	80007290 <n85_bltz_ex_ds_test+0x820>
80007280:	00000000 	nop
80007284:	26522222 	addiu	s2,s2,8738
80007288:	10000007 	b	800072a8 <n85_bltz_ex_ds_test+0x838>
8000728c:	00000000 	nop
80007290:	26101111 	addiu	s0,s0,4369
80007294:	0540fffb 	bltz	t2,80007284 <n85_bltz_ex_ds_test+0x814>
80007298:	95540003 	lhu	s4,3(t2)
8000729c:	26100002 	addiu	s0,s0,2
800072a0:	26100002 	addiu	s0,s0,2
800072a4:	26100002 	addiu	s0,s0,2
800072a8:	02129021 	addu	s2,s0,s2
800072ac:	24141117 	li	s4,4375
800072b0:	169202c1 	bne	s4,s2,80007db8 <inst_error>
800072b4:	00000000 	nop
800072b8:	3c144444 	lui	s4,0x4444
800072bc:	168202be 	bne	s4,v0,80007db8 <inst_error>
800072c0:	00000000 	nop
800072c4:	24020009 	li	v0,9
800072c8:	00008021 	move	s0,zero
800072cc:	00009021 	move	s2,zero
800072d0:	3c087fff 	lui	t0,0x7fff
800072d4:	3508ffff 	ori	t0,t0,0xffff
800072d8:	3c097fff 	lui	t1,0x7fff
800072dc:	3529ffff 	ori	t1,t1,0xffff
800072e0:	3c0a8002 	lui	t2,0x8002
800072e4:	354afff0 	ori	t2,t2,0xfff0
800072e8:	ad480000 	sw	t0,0(t2)
800072ec:	10000004 	b	80007300 <n85_bltz_ex_ds_test+0x890>
800072f0:	00000000 	nop
800072f4:	26522222 	addiu	s2,s2,8738
800072f8:	10000007 	b	80007318 <n85_bltz_ex_ds_test+0x8a8>
800072fc:	00000000 	nop
80007300:	26101111 	addiu	s0,s0,4369
80007304:	0500fffb 	bltz	t0,800072f4 <n85_bltz_ex_ds_test+0x884>
80007308:	95540003 	lhu	s4,3(t2)
8000730c:	26100002 	addiu	s0,s0,2
80007310:	26100002 	addiu	s0,s0,2
80007314:	26100002 	addiu	s0,s0,2
80007318:	02129021 	addu	s2,s0,s2
8000731c:	24141117 	li	s4,4375
80007320:	169202a5 	bne	s4,s2,80007db8 <inst_error>
80007324:	00000000 	nop
80007328:	3c144444 	lui	s4,0x4444
8000732c:	168202a2 	bne	s4,v0,80007db8 <inst_error>
80007330:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:22
80007334:	24020009 	li	v0,9
80007338:	00008021 	move	s0,zero
8000733c:	00009021 	move	s2,zero
80007340:	3c087fff 	lui	t0,0x7fff
80007344:	3508ffff 	ori	t0,t0,0xffff
80007348:	3c097fff 	lui	t1,0x7fff
8000734c:	3529ffff 	ori	t1,t1,0xffff
80007350:	3c0a8002 	lui	t2,0x8002
80007354:	354afff0 	ori	t2,t2,0xfff0
80007358:	ad480000 	sw	t0,0(t2)
8000735c:	10000004 	b	80007370 <n85_bltz_ex_ds_test+0x900>
80007360:	00000000 	nop
80007364:	26522222 	addiu	s2,s2,8738
80007368:	10000007 	b	80007388 <n85_bltz_ex_ds_test+0x918>
8000736c:	00000000 	nop
80007370:	26101111 	addiu	s0,s0,4369
80007374:	05400004 	bltz	t2,80007388 <n85_bltz_ex_ds_test+0x918>
80007378:	8d540003 	lw	s4,3(t2)
8000737c:	26100002 	addiu	s0,s0,2
80007380:	26100002 	addiu	s0,s0,2
80007384:	26100002 	addiu	s0,s0,2
80007388:	02129021 	addu	s2,s0,s2
8000738c:	24141117 	li	s4,4375
80007390:	16920289 	bne	s4,s2,80007db8 <inst_error>
80007394:	00000000 	nop
80007398:	3c144444 	lui	s4,0x4444
8000739c:	16820286 	bne	s4,v0,80007db8 <inst_error>
800073a0:	00000000 	nop
800073a4:	24020009 	li	v0,9
800073a8:	00008021 	move	s0,zero
800073ac:	00009021 	move	s2,zero
800073b0:	3c087fff 	lui	t0,0x7fff
800073b4:	3508ffff 	ori	t0,t0,0xffff
800073b8:	3c097fff 	lui	t1,0x7fff
800073bc:	3529ffff 	ori	t1,t1,0xffff
800073c0:	3c0a8002 	lui	t2,0x8002
800073c4:	354afff0 	ori	t2,t2,0xfff0
800073c8:	ad480000 	sw	t0,0(t2)
800073cc:	10000004 	b	800073e0 <n85_bltz_ex_ds_test+0x970>
800073d0:	00000000 	nop
800073d4:	26522222 	addiu	s2,s2,8738
800073d8:	10000007 	b	800073f8 <n85_bltz_ex_ds_test+0x988>
800073dc:	00000000 	nop
800073e0:	26101111 	addiu	s0,s0,4369
800073e4:	05000004 	bltz	t0,800073f8 <n85_bltz_ex_ds_test+0x988>
800073e8:	8d540003 	lw	s4,3(t2)
800073ec:	26100002 	addiu	s0,s0,2
800073f0:	26100002 	addiu	s0,s0,2
800073f4:	26100002 	addiu	s0,s0,2
800073f8:	02129021 	addu	s2,s0,s2
800073fc:	24141117 	li	s4,4375
80007400:	1692026d 	bne	s4,s2,80007db8 <inst_error>
80007404:	00000000 	nop
80007408:	3c144444 	lui	s4,0x4444
8000740c:	1682026a 	bne	s4,v0,80007db8 <inst_error>
80007410:	00000000 	nop
80007414:	24020009 	li	v0,9
80007418:	00008021 	move	s0,zero
8000741c:	00009021 	move	s2,zero
80007420:	3c087fff 	lui	t0,0x7fff
80007424:	3508ffff 	ori	t0,t0,0xffff
80007428:	3c097fff 	lui	t1,0x7fff
8000742c:	3529ffff 	ori	t1,t1,0xffff
80007430:	3c0a8002 	lui	t2,0x8002
80007434:	354afff0 	ori	t2,t2,0xfff0
80007438:	ad480000 	sw	t0,0(t2)
8000743c:	10000004 	b	80007450 <n85_bltz_ex_ds_test+0x9e0>
80007440:	00000000 	nop
80007444:	26522222 	addiu	s2,s2,8738
80007448:	10000007 	b	80007468 <n85_bltz_ex_ds_test+0x9f8>
8000744c:	00000000 	nop
80007450:	26101111 	addiu	s0,s0,4369
80007454:	0540fffb 	bltz	t2,80007444 <n85_bltz_ex_ds_test+0x9d4>
80007458:	8d540003 	lw	s4,3(t2)
8000745c:	26100002 	addiu	s0,s0,2
80007460:	26100002 	addiu	s0,s0,2
80007464:	26100002 	addiu	s0,s0,2
80007468:	02129021 	addu	s2,s0,s2
8000746c:	24141117 	li	s4,4375
80007470:	16920251 	bne	s4,s2,80007db8 <inst_error>
80007474:	00000000 	nop
80007478:	3c144444 	lui	s4,0x4444
8000747c:	1682024e 	bne	s4,v0,80007db8 <inst_error>
80007480:	00000000 	nop
80007484:	24020009 	li	v0,9
80007488:	00008021 	move	s0,zero
8000748c:	00009021 	move	s2,zero
80007490:	3c087fff 	lui	t0,0x7fff
80007494:	3508ffff 	ori	t0,t0,0xffff
80007498:	3c097fff 	lui	t1,0x7fff
8000749c:	3529ffff 	ori	t1,t1,0xffff
800074a0:	3c0a8002 	lui	t2,0x8002
800074a4:	354afff0 	ori	t2,t2,0xfff0
800074a8:	ad480000 	sw	t0,0(t2)
800074ac:	10000004 	b	800074c0 <n85_bltz_ex_ds_test+0xa50>
800074b0:	00000000 	nop
800074b4:	26522222 	addiu	s2,s2,8738
800074b8:	10000007 	b	800074d8 <n85_bltz_ex_ds_test+0xa68>
800074bc:	00000000 	nop
800074c0:	26101111 	addiu	s0,s0,4369
800074c4:	0500fffb 	bltz	t0,800074b4 <n85_bltz_ex_ds_test+0xa44>
800074c8:	8d540003 	lw	s4,3(t2)
800074cc:	26100002 	addiu	s0,s0,2
800074d0:	26100002 	addiu	s0,s0,2
800074d4:	26100002 	addiu	s0,s0,2
800074d8:	02129021 	addu	s2,s0,s2
800074dc:	24141117 	li	s4,4375
800074e0:	16920235 	bne	s4,s2,80007db8 <inst_error>
800074e4:	00000000 	nop
800074e8:	3c144444 	lui	s4,0x4444
800074ec:	16820232 	bne	s4,v0,80007db8 <inst_error>
800074f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:23
800074f4:	24020009 	li	v0,9
800074f8:	00008021 	move	s0,zero
800074fc:	00009021 	move	s2,zero
80007500:	3c087fff 	lui	t0,0x7fff
80007504:	3508ffff 	ori	t0,t0,0xffff
80007508:	3c097fff 	lui	t1,0x7fff
8000750c:	3529ffff 	ori	t1,t1,0xffff
80007510:	3c0a8002 	lui	t2,0x8002
80007514:	354afff0 	ori	t2,t2,0xfff0
80007518:	ad480000 	sw	t0,0(t2)
8000751c:	10000004 	b	80007530 <n85_bltz_ex_ds_test+0xac0>
80007520:	00000000 	nop
80007524:	26522222 	addiu	s2,s2,8738
80007528:	10000007 	b	80007548 <n85_bltz_ex_ds_test+0xad8>
8000752c:	00000000 	nop
80007530:	26101111 	addiu	s0,s0,4369
80007534:	05400004 	bltz	t2,80007548 <n85_bltz_ex_ds_test+0xad8>
80007538:	a5540003 	sh	s4,3(t2)
8000753c:	26100002 	addiu	s0,s0,2
80007540:	26100002 	addiu	s0,s0,2
80007544:	26100002 	addiu	s0,s0,2
80007548:	02129021 	addu	s2,s0,s2
8000754c:	24141117 	li	s4,4375
80007550:	16920219 	bne	s4,s2,80007db8 <inst_error>
80007554:	00000000 	nop
80007558:	3c144444 	lui	s4,0x4444
8000755c:	16820216 	bne	s4,v0,80007db8 <inst_error>
80007560:	00000000 	nop
80007564:	24020009 	li	v0,9
80007568:	00008021 	move	s0,zero
8000756c:	00009021 	move	s2,zero
80007570:	3c087fff 	lui	t0,0x7fff
80007574:	3508ffff 	ori	t0,t0,0xffff
80007578:	3c097fff 	lui	t1,0x7fff
8000757c:	3529ffff 	ori	t1,t1,0xffff
80007580:	3c0a8002 	lui	t2,0x8002
80007584:	354afff0 	ori	t2,t2,0xfff0
80007588:	ad480000 	sw	t0,0(t2)
8000758c:	10000004 	b	800075a0 <n85_bltz_ex_ds_test+0xb30>
80007590:	00000000 	nop
80007594:	26522222 	addiu	s2,s2,8738
80007598:	10000007 	b	800075b8 <n85_bltz_ex_ds_test+0xb48>
8000759c:	00000000 	nop
800075a0:	26101111 	addiu	s0,s0,4369
800075a4:	05000004 	bltz	t0,800075b8 <n85_bltz_ex_ds_test+0xb48>
800075a8:	a5540003 	sh	s4,3(t2)
800075ac:	26100002 	addiu	s0,s0,2
800075b0:	26100002 	addiu	s0,s0,2
800075b4:	26100002 	addiu	s0,s0,2
800075b8:	02129021 	addu	s2,s0,s2
800075bc:	24141117 	li	s4,4375
800075c0:	169201fd 	bne	s4,s2,80007db8 <inst_error>
800075c4:	00000000 	nop
800075c8:	3c144444 	lui	s4,0x4444
800075cc:	168201fa 	bne	s4,v0,80007db8 <inst_error>
800075d0:	00000000 	nop
800075d4:	24020009 	li	v0,9
800075d8:	00008021 	move	s0,zero
800075dc:	00009021 	move	s2,zero
800075e0:	3c087fff 	lui	t0,0x7fff
800075e4:	3508ffff 	ori	t0,t0,0xffff
800075e8:	3c097fff 	lui	t1,0x7fff
800075ec:	3529ffff 	ori	t1,t1,0xffff
800075f0:	3c0a8002 	lui	t2,0x8002
800075f4:	354afff0 	ori	t2,t2,0xfff0
800075f8:	ad480000 	sw	t0,0(t2)
800075fc:	10000004 	b	80007610 <n85_bltz_ex_ds_test+0xba0>
80007600:	00000000 	nop
80007604:	26522222 	addiu	s2,s2,8738
80007608:	10000007 	b	80007628 <n85_bltz_ex_ds_test+0xbb8>
8000760c:	00000000 	nop
80007610:	26101111 	addiu	s0,s0,4369
80007614:	0540fffb 	bltz	t2,80007604 <n85_bltz_ex_ds_test+0xb94>
80007618:	a5540003 	sh	s4,3(t2)
8000761c:	26100002 	addiu	s0,s0,2
80007620:	26100002 	addiu	s0,s0,2
80007624:	26100002 	addiu	s0,s0,2
80007628:	02129021 	addu	s2,s0,s2
8000762c:	24141117 	li	s4,4375
80007630:	169201e1 	bne	s4,s2,80007db8 <inst_error>
80007634:	00000000 	nop
80007638:	3c144444 	lui	s4,0x4444
8000763c:	168201de 	bne	s4,v0,80007db8 <inst_error>
80007640:	00000000 	nop
80007644:	24020009 	li	v0,9
80007648:	00008021 	move	s0,zero
8000764c:	00009021 	move	s2,zero
80007650:	3c087fff 	lui	t0,0x7fff
80007654:	3508ffff 	ori	t0,t0,0xffff
80007658:	3c097fff 	lui	t1,0x7fff
8000765c:	3529ffff 	ori	t1,t1,0xffff
80007660:	3c0a8002 	lui	t2,0x8002
80007664:	354afff0 	ori	t2,t2,0xfff0
80007668:	ad480000 	sw	t0,0(t2)
8000766c:	10000004 	b	80007680 <n85_bltz_ex_ds_test+0xc10>
80007670:	00000000 	nop
80007674:	26522222 	addiu	s2,s2,8738
80007678:	10000007 	b	80007698 <n85_bltz_ex_ds_test+0xc28>
8000767c:	00000000 	nop
80007680:	26101111 	addiu	s0,s0,4369
80007684:	0500fffb 	bltz	t0,80007674 <n85_bltz_ex_ds_test+0xc04>
80007688:	a5540003 	sh	s4,3(t2)
8000768c:	26100002 	addiu	s0,s0,2
80007690:	26100002 	addiu	s0,s0,2
80007694:	26100002 	addiu	s0,s0,2
80007698:	02129021 	addu	s2,s0,s2
8000769c:	24141117 	li	s4,4375
800076a0:	169201c5 	bne	s4,s2,80007db8 <inst_error>
800076a4:	00000000 	nop
800076a8:	3c144444 	lui	s4,0x4444
800076ac:	168201c2 	bne	s4,v0,80007db8 <inst_error>
800076b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:24
800076b4:	24020009 	li	v0,9
800076b8:	00008021 	move	s0,zero
800076bc:	00009021 	move	s2,zero
800076c0:	3c087fff 	lui	t0,0x7fff
800076c4:	3508ffff 	ori	t0,t0,0xffff
800076c8:	3c097fff 	lui	t1,0x7fff
800076cc:	3529ffff 	ori	t1,t1,0xffff
800076d0:	3c0a8002 	lui	t2,0x8002
800076d4:	354afff0 	ori	t2,t2,0xfff0
800076d8:	ad480000 	sw	t0,0(t2)
800076dc:	10000004 	b	800076f0 <n85_bltz_ex_ds_test+0xc80>
800076e0:	00000000 	nop
800076e4:	26522222 	addiu	s2,s2,8738
800076e8:	10000007 	b	80007708 <n85_bltz_ex_ds_test+0xc98>
800076ec:	00000000 	nop
800076f0:	26101111 	addiu	s0,s0,4369
800076f4:	05400004 	bltz	t2,80007708 <n85_bltz_ex_ds_test+0xc98>
800076f8:	ad540003 	sw	s4,3(t2)
800076fc:	26100002 	addiu	s0,s0,2
80007700:	26100002 	addiu	s0,s0,2
80007704:	26100002 	addiu	s0,s0,2
80007708:	02129021 	addu	s2,s0,s2
8000770c:	24141117 	li	s4,4375
80007710:	169201a9 	bne	s4,s2,80007db8 <inst_error>
80007714:	00000000 	nop
80007718:	3c144444 	lui	s4,0x4444
8000771c:	168201a6 	bne	s4,v0,80007db8 <inst_error>
80007720:	00000000 	nop
80007724:	24020009 	li	v0,9
80007728:	00008021 	move	s0,zero
8000772c:	00009021 	move	s2,zero
80007730:	3c087fff 	lui	t0,0x7fff
80007734:	3508ffff 	ori	t0,t0,0xffff
80007738:	3c097fff 	lui	t1,0x7fff
8000773c:	3529ffff 	ori	t1,t1,0xffff
80007740:	3c0a8002 	lui	t2,0x8002
80007744:	354afff0 	ori	t2,t2,0xfff0
80007748:	ad480000 	sw	t0,0(t2)
8000774c:	10000004 	b	80007760 <n85_bltz_ex_ds_test+0xcf0>
80007750:	00000000 	nop
80007754:	26522222 	addiu	s2,s2,8738
80007758:	10000007 	b	80007778 <n85_bltz_ex_ds_test+0xd08>
8000775c:	00000000 	nop
80007760:	26101111 	addiu	s0,s0,4369
80007764:	05000004 	bltz	t0,80007778 <n85_bltz_ex_ds_test+0xd08>
80007768:	ad540003 	sw	s4,3(t2)
8000776c:	26100002 	addiu	s0,s0,2
80007770:	26100002 	addiu	s0,s0,2
80007774:	26100002 	addiu	s0,s0,2
80007778:	02129021 	addu	s2,s0,s2
8000777c:	24141117 	li	s4,4375
80007780:	1692018d 	bne	s4,s2,80007db8 <inst_error>
80007784:	00000000 	nop
80007788:	3c144444 	lui	s4,0x4444
8000778c:	1682018a 	bne	s4,v0,80007db8 <inst_error>
80007790:	00000000 	nop
80007794:	24020009 	li	v0,9
80007798:	00008021 	move	s0,zero
8000779c:	00009021 	move	s2,zero
800077a0:	3c087fff 	lui	t0,0x7fff
800077a4:	3508ffff 	ori	t0,t0,0xffff
800077a8:	3c097fff 	lui	t1,0x7fff
800077ac:	3529ffff 	ori	t1,t1,0xffff
800077b0:	3c0a8002 	lui	t2,0x8002
800077b4:	354afff0 	ori	t2,t2,0xfff0
800077b8:	ad480000 	sw	t0,0(t2)
800077bc:	10000004 	b	800077d0 <n85_bltz_ex_ds_test+0xd60>
800077c0:	00000000 	nop
800077c4:	26522222 	addiu	s2,s2,8738
800077c8:	10000007 	b	800077e8 <n85_bltz_ex_ds_test+0xd78>
800077cc:	00000000 	nop
800077d0:	26101111 	addiu	s0,s0,4369
800077d4:	0540fffb 	bltz	t2,800077c4 <n85_bltz_ex_ds_test+0xd54>
800077d8:	ad540003 	sw	s4,3(t2)
800077dc:	26100002 	addiu	s0,s0,2
800077e0:	26100002 	addiu	s0,s0,2
800077e4:	26100002 	addiu	s0,s0,2
800077e8:	02129021 	addu	s2,s0,s2
800077ec:	24141117 	li	s4,4375
800077f0:	16920171 	bne	s4,s2,80007db8 <inst_error>
800077f4:	00000000 	nop
800077f8:	3c144444 	lui	s4,0x4444
800077fc:	1682016e 	bne	s4,v0,80007db8 <inst_error>
80007800:	00000000 	nop
80007804:	24020009 	li	v0,9
80007808:	00008021 	move	s0,zero
8000780c:	00009021 	move	s2,zero
80007810:	3c087fff 	lui	t0,0x7fff
80007814:	3508ffff 	ori	t0,t0,0xffff
80007818:	3c097fff 	lui	t1,0x7fff
8000781c:	3529ffff 	ori	t1,t1,0xffff
80007820:	3c0a8002 	lui	t2,0x8002
80007824:	354afff0 	ori	t2,t2,0xfff0
80007828:	ad480000 	sw	t0,0(t2)
8000782c:	10000004 	b	80007840 <n85_bltz_ex_ds_test+0xdd0>
80007830:	00000000 	nop
80007834:	26522222 	addiu	s2,s2,8738
80007838:	10000007 	b	80007858 <n85_bltz_ex_ds_test+0xde8>
8000783c:	00000000 	nop
80007840:	26101111 	addiu	s0,s0,4369
80007844:	0500fffb 	bltz	t0,80007834 <n85_bltz_ex_ds_test+0xdc4>
80007848:	ad540003 	sw	s4,3(t2)
8000784c:	26100002 	addiu	s0,s0,2
80007850:	26100002 	addiu	s0,s0,2
80007854:	26100002 	addiu	s0,s0,2
80007858:	02129021 	addu	s2,s0,s2
8000785c:	24141117 	li	s4,4375
80007860:	16920155 	bne	s4,s2,80007db8 <inst_error>
80007864:	00000000 	nop
80007868:	3c144444 	lui	s4,0x4444
8000786c:	16820152 	bne	s4,v0,80007db8 <inst_error>
80007870:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:25
80007874:	24020009 	li	v0,9
80007878:	00008021 	move	s0,zero
8000787c:	00009021 	move	s2,zero
80007880:	3c087fff 	lui	t0,0x7fff
80007884:	3508ffff 	ori	t0,t0,0xffff
80007888:	3c097fff 	lui	t1,0x7fff
8000788c:	3529ffff 	ori	t1,t1,0xffff
80007890:	3c0a8002 	lui	t2,0x8002
80007894:	354afff0 	ori	t2,t2,0xfff0
80007898:	ad480000 	sw	t0,0(t2)
8000789c:	10000004 	b	800078b0 <n85_bltz_ex_ds_test+0xe40>
800078a0:	00000000 	nop
800078a4:	26522222 	addiu	s2,s2,8738
800078a8:	10000007 	b	800078c8 <n85_bltz_ex_ds_test+0xe58>
800078ac:	00000000 	nop
800078b0:	26101111 	addiu	s0,s0,4369
800078b4:	05400004 	bltz	t2,800078c8 <n85_bltz_ex_ds_test+0xe58>
800078b8:	6f76e210 	0x6f76e210
800078bc:	26100002 	addiu	s0,s0,2
800078c0:	26100002 	addiu	s0,s0,2
800078c4:	26100002 	addiu	s0,s0,2
800078c8:	02129021 	addu	s2,s0,s2
800078cc:	24141117 	li	s4,4375
800078d0:	16920139 	bne	s4,s2,80007db8 <inst_error>
800078d4:	00000000 	nop
800078d8:	3c144444 	lui	s4,0x4444
800078dc:	16820136 	bne	s4,v0,80007db8 <inst_error>
800078e0:	00000000 	nop
800078e4:	24020009 	li	v0,9
800078e8:	00008021 	move	s0,zero
800078ec:	00009021 	move	s2,zero
800078f0:	3c087fff 	lui	t0,0x7fff
800078f4:	3508ffff 	ori	t0,t0,0xffff
800078f8:	3c097fff 	lui	t1,0x7fff
800078fc:	3529ffff 	ori	t1,t1,0xffff
80007900:	3c0a8002 	lui	t2,0x8002
80007904:	354afff0 	ori	t2,t2,0xfff0
80007908:	ad480000 	sw	t0,0(t2)
8000790c:	10000004 	b	80007920 <n85_bltz_ex_ds_test+0xeb0>
80007910:	00000000 	nop
80007914:	26522222 	addiu	s2,s2,8738
80007918:	10000007 	b	80007938 <n85_bltz_ex_ds_test+0xec8>
8000791c:	00000000 	nop
80007920:	26101111 	addiu	s0,s0,4369
80007924:	05000004 	bltz	t0,80007938 <n85_bltz_ex_ds_test+0xec8>
80007928:	6f76e210 	0x6f76e210
8000792c:	26100002 	addiu	s0,s0,2
80007930:	26100002 	addiu	s0,s0,2
80007934:	26100002 	addiu	s0,s0,2
80007938:	02129021 	addu	s2,s0,s2
8000793c:	24141117 	li	s4,4375
80007940:	1692011d 	bne	s4,s2,80007db8 <inst_error>
80007944:	00000000 	nop
80007948:	3c144444 	lui	s4,0x4444
8000794c:	1682011a 	bne	s4,v0,80007db8 <inst_error>
80007950:	00000000 	nop
80007954:	24020009 	li	v0,9
80007958:	00008021 	move	s0,zero
8000795c:	00009021 	move	s2,zero
80007960:	3c087fff 	lui	t0,0x7fff
80007964:	3508ffff 	ori	t0,t0,0xffff
80007968:	3c097fff 	lui	t1,0x7fff
8000796c:	3529ffff 	ori	t1,t1,0xffff
80007970:	3c0a8002 	lui	t2,0x8002
80007974:	354afff0 	ori	t2,t2,0xfff0
80007978:	ad480000 	sw	t0,0(t2)
8000797c:	10000004 	b	80007990 <n85_bltz_ex_ds_test+0xf20>
80007980:	00000000 	nop
80007984:	26522222 	addiu	s2,s2,8738
80007988:	10000007 	b	800079a8 <n85_bltz_ex_ds_test+0xf38>
8000798c:	00000000 	nop
80007990:	26101111 	addiu	s0,s0,4369
80007994:	0540fffb 	bltz	t2,80007984 <n85_bltz_ex_ds_test+0xf14>
80007998:	6f76e210 	0x6f76e210
8000799c:	26100002 	addiu	s0,s0,2
800079a0:	26100002 	addiu	s0,s0,2
800079a4:	26100002 	addiu	s0,s0,2
800079a8:	02129021 	addu	s2,s0,s2
800079ac:	24141117 	li	s4,4375
800079b0:	16920101 	bne	s4,s2,80007db8 <inst_error>
800079b4:	00000000 	nop
800079b8:	3c144444 	lui	s4,0x4444
800079bc:	168200fe 	bne	s4,v0,80007db8 <inst_error>
800079c0:	00000000 	nop
800079c4:	24020009 	li	v0,9
800079c8:	00008021 	move	s0,zero
800079cc:	00009021 	move	s2,zero
800079d0:	3c087fff 	lui	t0,0x7fff
800079d4:	3508ffff 	ori	t0,t0,0xffff
800079d8:	3c097fff 	lui	t1,0x7fff
800079dc:	3529ffff 	ori	t1,t1,0xffff
800079e0:	3c0a8002 	lui	t2,0x8002
800079e4:	354afff0 	ori	t2,t2,0xfff0
800079e8:	ad480000 	sw	t0,0(t2)
800079ec:	10000004 	b	80007a00 <n85_bltz_ex_ds_test+0xf90>
800079f0:	00000000 	nop
800079f4:	26522222 	addiu	s2,s2,8738
800079f8:	10000007 	b	80007a18 <n85_bltz_ex_ds_test+0xfa8>
800079fc:	00000000 	nop
80007a00:	26101111 	addiu	s0,s0,4369
80007a04:	0500fffb 	bltz	t0,800079f4 <n85_bltz_ex_ds_test+0xf84>
80007a08:	6f76e210 	0x6f76e210
80007a0c:	26100002 	addiu	s0,s0,2
80007a10:	26100002 	addiu	s0,s0,2
80007a14:	26100002 	addiu	s0,s0,2
80007a18:	02129021 	addu	s2,s0,s2
80007a1c:	24141117 	li	s4,4375
80007a20:	169200e5 	bne	s4,s2,80007db8 <inst_error>
80007a24:	00000000 	nop
80007a28:	3c144444 	lui	s4,0x4444
80007a2c:	168200e2 	bne	s4,v0,80007db8 <inst_error>
80007a30:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:26
80007a34:	24020009 	li	v0,9
80007a38:	00008021 	move	s0,zero
80007a3c:	00009021 	move	s2,zero
80007a40:	3c087fff 	lui	t0,0x7fff
80007a44:	3508ffff 	ori	t0,t0,0xffff
80007a48:	3c097fff 	lui	t1,0x7fff
80007a4c:	3529ffff 	ori	t1,t1,0xffff
80007a50:	3c0a8002 	lui	t2,0x8002
80007a54:	354afff0 	ori	t2,t2,0xfff0
80007a58:	ad480000 	sw	t0,0(t2)
80007a5c:	10000004 	b	80007a70 <n85_bltz_ex_ds_test+0x1000>
80007a60:	00000000 	nop
80007a64:	26522222 	addiu	s2,s2,8738
80007a68:	10000007 	b	80007a88 <n85_bltz_ex_ds_test+0x1018>
80007a6c:	00000000 	nop
80007a70:	26101111 	addiu	s0,s0,4369
80007a74:	05400004 	bltz	t2,80007a88 <n85_bltz_ex_ds_test+0x1018>
80007a78:	0000000c 	syscall
80007a7c:	26100002 	addiu	s0,s0,2
80007a80:	26100002 	addiu	s0,s0,2
80007a84:	26100002 	addiu	s0,s0,2
80007a88:	02129021 	addu	s2,s0,s2
80007a8c:	24141117 	li	s4,4375
80007a90:	169200c9 	bne	s4,s2,80007db8 <inst_error>
80007a94:	00000000 	nop
80007a98:	3c144444 	lui	s4,0x4444
80007a9c:	168200c6 	bne	s4,v0,80007db8 <inst_error>
80007aa0:	00000000 	nop
80007aa4:	24020009 	li	v0,9
80007aa8:	00008021 	move	s0,zero
80007aac:	00009021 	move	s2,zero
80007ab0:	3c087fff 	lui	t0,0x7fff
80007ab4:	3508ffff 	ori	t0,t0,0xffff
80007ab8:	3c097fff 	lui	t1,0x7fff
80007abc:	3529ffff 	ori	t1,t1,0xffff
80007ac0:	3c0a8002 	lui	t2,0x8002
80007ac4:	354afff0 	ori	t2,t2,0xfff0
80007ac8:	ad480000 	sw	t0,0(t2)
80007acc:	10000004 	b	80007ae0 <n85_bltz_ex_ds_test+0x1070>
80007ad0:	00000000 	nop
80007ad4:	26522222 	addiu	s2,s2,8738
80007ad8:	10000007 	b	80007af8 <n85_bltz_ex_ds_test+0x1088>
80007adc:	00000000 	nop
80007ae0:	26101111 	addiu	s0,s0,4369
80007ae4:	05000004 	bltz	t0,80007af8 <n85_bltz_ex_ds_test+0x1088>
80007ae8:	0000000c 	syscall
80007aec:	26100002 	addiu	s0,s0,2
80007af0:	26100002 	addiu	s0,s0,2
80007af4:	26100002 	addiu	s0,s0,2
80007af8:	02129021 	addu	s2,s0,s2
80007afc:	24141117 	li	s4,4375
80007b00:	169200ad 	bne	s4,s2,80007db8 <inst_error>
80007b04:	00000000 	nop
80007b08:	3c144444 	lui	s4,0x4444
80007b0c:	168200aa 	bne	s4,v0,80007db8 <inst_error>
80007b10:	00000000 	nop
80007b14:	24020009 	li	v0,9
80007b18:	00008021 	move	s0,zero
80007b1c:	00009021 	move	s2,zero
80007b20:	3c087fff 	lui	t0,0x7fff
80007b24:	3508ffff 	ori	t0,t0,0xffff
80007b28:	3c097fff 	lui	t1,0x7fff
80007b2c:	3529ffff 	ori	t1,t1,0xffff
80007b30:	3c0a8002 	lui	t2,0x8002
80007b34:	354afff0 	ori	t2,t2,0xfff0
80007b38:	ad480000 	sw	t0,0(t2)
80007b3c:	10000004 	b	80007b50 <n85_bltz_ex_ds_test+0x10e0>
80007b40:	00000000 	nop
80007b44:	26522222 	addiu	s2,s2,8738
80007b48:	10000007 	b	80007b68 <n85_bltz_ex_ds_test+0x10f8>
80007b4c:	00000000 	nop
80007b50:	26101111 	addiu	s0,s0,4369
80007b54:	0540fffb 	bltz	t2,80007b44 <n85_bltz_ex_ds_test+0x10d4>
80007b58:	0000000c 	syscall
80007b5c:	26100002 	addiu	s0,s0,2
80007b60:	26100002 	addiu	s0,s0,2
80007b64:	26100002 	addiu	s0,s0,2
80007b68:	02129021 	addu	s2,s0,s2
80007b6c:	24141117 	li	s4,4375
80007b70:	16920091 	bne	s4,s2,80007db8 <inst_error>
80007b74:	00000000 	nop
80007b78:	3c144444 	lui	s4,0x4444
80007b7c:	1682008e 	bne	s4,v0,80007db8 <inst_error>
80007b80:	00000000 	nop
80007b84:	24020009 	li	v0,9
80007b88:	00008021 	move	s0,zero
80007b8c:	00009021 	move	s2,zero
80007b90:	3c087fff 	lui	t0,0x7fff
80007b94:	3508ffff 	ori	t0,t0,0xffff
80007b98:	3c097fff 	lui	t1,0x7fff
80007b9c:	3529ffff 	ori	t1,t1,0xffff
80007ba0:	3c0a8002 	lui	t2,0x8002
80007ba4:	354afff0 	ori	t2,t2,0xfff0
80007ba8:	ad480000 	sw	t0,0(t2)
80007bac:	10000004 	b	80007bc0 <n85_bltz_ex_ds_test+0x1150>
80007bb0:	00000000 	nop
80007bb4:	26522222 	addiu	s2,s2,8738
80007bb8:	10000007 	b	80007bd8 <n85_bltz_ex_ds_test+0x1168>
80007bbc:	00000000 	nop
80007bc0:	26101111 	addiu	s0,s0,4369
80007bc4:	0500fffb 	bltz	t0,80007bb4 <n85_bltz_ex_ds_test+0x1144>
80007bc8:	0000000c 	syscall
80007bcc:	26100002 	addiu	s0,s0,2
80007bd0:	26100002 	addiu	s0,s0,2
80007bd4:	26100002 	addiu	s0,s0,2
80007bd8:	02129021 	addu	s2,s0,s2
80007bdc:	24141117 	li	s4,4375
80007be0:	16920075 	bne	s4,s2,80007db8 <inst_error>
80007be4:	00000000 	nop
80007be8:	3c144444 	lui	s4,0x4444
80007bec:	16820072 	bne	s4,v0,80007db8 <inst_error>
80007bf0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:27
80007bf4:	24020009 	li	v0,9
80007bf8:	00008021 	move	s0,zero
80007bfc:	00009021 	move	s2,zero
80007c00:	3c087fff 	lui	t0,0x7fff
80007c04:	3508ffff 	ori	t0,t0,0xffff
80007c08:	3c097fff 	lui	t1,0x7fff
80007c0c:	3529ffff 	ori	t1,t1,0xffff
80007c10:	3c0a8002 	lui	t2,0x8002
80007c14:	354afff0 	ori	t2,t2,0xfff0
80007c18:	ad480000 	sw	t0,0(t2)
80007c1c:	10000004 	b	80007c30 <n85_bltz_ex_ds_test+0x11c0>
80007c20:	00000000 	nop
80007c24:	26522222 	addiu	s2,s2,8738
80007c28:	10000007 	b	80007c48 <n85_bltz_ex_ds_test+0x11d8>
80007c2c:	00000000 	nop
80007c30:	26101111 	addiu	s0,s0,4369
80007c34:	05400004 	bltz	t2,80007c48 <n85_bltz_ex_ds_test+0x11d8>
80007c38:	0000000d 	break
80007c3c:	26100002 	addiu	s0,s0,2
80007c40:	26100002 	addiu	s0,s0,2
80007c44:	26100002 	addiu	s0,s0,2
80007c48:	02129021 	addu	s2,s0,s2
80007c4c:	24141117 	li	s4,4375
80007c50:	16920059 	bne	s4,s2,80007db8 <inst_error>
80007c54:	00000000 	nop
80007c58:	3c144444 	lui	s4,0x4444
80007c5c:	16820056 	bne	s4,v0,80007db8 <inst_error>
80007c60:	00000000 	nop
80007c64:	24020009 	li	v0,9
80007c68:	00008021 	move	s0,zero
80007c6c:	00009021 	move	s2,zero
80007c70:	3c087fff 	lui	t0,0x7fff
80007c74:	3508ffff 	ori	t0,t0,0xffff
80007c78:	3c097fff 	lui	t1,0x7fff
80007c7c:	3529ffff 	ori	t1,t1,0xffff
80007c80:	3c0a8002 	lui	t2,0x8002
80007c84:	354afff0 	ori	t2,t2,0xfff0
80007c88:	ad480000 	sw	t0,0(t2)
80007c8c:	10000004 	b	80007ca0 <n85_bltz_ex_ds_test+0x1230>
80007c90:	00000000 	nop
80007c94:	26522222 	addiu	s2,s2,8738
80007c98:	10000007 	b	80007cb8 <n85_bltz_ex_ds_test+0x1248>
80007c9c:	00000000 	nop
80007ca0:	26101111 	addiu	s0,s0,4369
80007ca4:	05000004 	bltz	t0,80007cb8 <n85_bltz_ex_ds_test+0x1248>
80007ca8:	0000000d 	break
80007cac:	26100002 	addiu	s0,s0,2
80007cb0:	26100002 	addiu	s0,s0,2
80007cb4:	26100002 	addiu	s0,s0,2
80007cb8:	02129021 	addu	s2,s0,s2
80007cbc:	24141117 	li	s4,4375
80007cc0:	1692003d 	bne	s4,s2,80007db8 <inst_error>
80007cc4:	00000000 	nop
80007cc8:	3c144444 	lui	s4,0x4444
80007ccc:	1682003a 	bne	s4,v0,80007db8 <inst_error>
80007cd0:	00000000 	nop
80007cd4:	24020009 	li	v0,9
80007cd8:	00008021 	move	s0,zero
80007cdc:	00009021 	move	s2,zero
80007ce0:	3c087fff 	lui	t0,0x7fff
80007ce4:	3508ffff 	ori	t0,t0,0xffff
80007ce8:	3c097fff 	lui	t1,0x7fff
80007cec:	3529ffff 	ori	t1,t1,0xffff
80007cf0:	3c0a8002 	lui	t2,0x8002
80007cf4:	354afff0 	ori	t2,t2,0xfff0
80007cf8:	ad480000 	sw	t0,0(t2)
80007cfc:	10000004 	b	80007d10 <n85_bltz_ex_ds_test+0x12a0>
80007d00:	00000000 	nop
80007d04:	26522222 	addiu	s2,s2,8738
80007d08:	10000007 	b	80007d28 <n85_bltz_ex_ds_test+0x12b8>
80007d0c:	00000000 	nop
80007d10:	26101111 	addiu	s0,s0,4369
80007d14:	0540fffb 	bltz	t2,80007d04 <n85_bltz_ex_ds_test+0x1294>
80007d18:	0000000d 	break
80007d1c:	26100002 	addiu	s0,s0,2
80007d20:	26100002 	addiu	s0,s0,2
80007d24:	26100002 	addiu	s0,s0,2
80007d28:	02129021 	addu	s2,s0,s2
80007d2c:	24141117 	li	s4,4375
80007d30:	16920021 	bne	s4,s2,80007db8 <inst_error>
80007d34:	00000000 	nop
80007d38:	3c144444 	lui	s4,0x4444
80007d3c:	1682001e 	bne	s4,v0,80007db8 <inst_error>
80007d40:	00000000 	nop
80007d44:	24020009 	li	v0,9
80007d48:	00008021 	move	s0,zero
80007d4c:	00009021 	move	s2,zero
80007d50:	3c087fff 	lui	t0,0x7fff
80007d54:	3508ffff 	ori	t0,t0,0xffff
80007d58:	3c097fff 	lui	t1,0x7fff
80007d5c:	3529ffff 	ori	t1,t1,0xffff
80007d60:	3c0a8002 	lui	t2,0x8002
80007d64:	354afff0 	ori	t2,t2,0xfff0
80007d68:	ad480000 	sw	t0,0(t2)
80007d6c:	10000004 	b	80007d80 <n85_bltz_ex_ds_test+0x1310>
80007d70:	00000000 	nop
80007d74:	26522222 	addiu	s2,s2,8738
80007d78:	10000007 	b	80007d98 <n85_bltz_ex_ds_test+0x1328>
80007d7c:	00000000 	nop
80007d80:	26101111 	addiu	s0,s0,4369
80007d84:	0500fffb 	bltz	t0,80007d74 <n85_bltz_ex_ds_test+0x1304>
80007d88:	0000000d 	break
80007d8c:	26100002 	addiu	s0,s0,2
80007d90:	26100002 	addiu	s0,s0,2
80007d94:	26100002 	addiu	s0,s0,2
80007d98:	02129021 	addu	s2,s0,s2
80007d9c:	24141117 	li	s4,4375
80007da0:	16920005 	bne	s4,s2,80007db8 <inst_error>
80007da4:	00000000 	nop
80007da8:	3c144444 	lui	s4,0x4444
80007dac:	16820002 	bne	s4,v0,80007db8 <inst_error>
80007db0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:33
80007db4:	26730001 	addiu	s3,s3,1

80007db8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:36
80007db8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:37
80007dbc:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:38
80007dc0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n85_bltz_ex_ds.S:39
80007dc4:	00000000 	nop

80007dc8 <n89_jal_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:14
80007dc8:	3c045900 	lui	a0,0x5900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:17
80007dcc:	001f6021 	addu	t4,zero,ra
80007dd0:	24020009 	li	v0,9
80007dd4:	00008021 	move	s0,zero
80007dd8:	00009021 	move	s2,zero
80007ddc:	3c087fff 	lui	t0,0x7fff
80007de0:	3508ffff 	ori	t0,t0,0xffff
80007de4:	3c097fff 	lui	t1,0x7fff
80007de8:	3529ffff 	ori	t1,t1,0xffff
80007dec:	3c0a8002 	lui	t2,0x8002
80007df0:	354afff0 	ori	t2,t2,0xfff0
80007df4:	ad480000 	sw	t0,0(t2)
80007df8:	10000004 	b	80007e0c <n89_jal_ex_ds_test+0x44>
80007dfc:	00000000 	nop
80007e00:	26522222 	addiu	s2,s2,8738
80007e04:	10000007 	b	80007e24 <n89_jal_ex_ds_test+0x5c>
80007e08:	00000000 	nop
80007e0c:	26101111 	addiu	s0,s0,4369
80007e10:	0c001f89 	jal	80007e24 <n89_jal_ex_ds_test+0x5c>
80007e14:	21147fff 	addi	s4,t0,32767
80007e18:	26100002 	addiu	s0,s0,2
80007e1c:	26100002 	addiu	s0,s0,2
80007e20:	26100002 	addiu	s0,s0,2
80007e24:	02129021 	addu	s2,s0,s2
80007e28:	0180f821 	move	ra,t4
80007e2c:	24141117 	li	s4,4375
80007e30:	16920270 	bne	s4,s2,800087f4 <inst_error>
80007e34:	00000000 	nop
80007e38:	3c144444 	lui	s4,0x4444
80007e3c:	1682026d 	bne	s4,v0,800087f4 <inst_error>
80007e40:	00000000 	nop
80007e44:	24020009 	li	v0,9
80007e48:	00008021 	move	s0,zero
80007e4c:	00009021 	move	s2,zero
80007e50:	3c087fff 	lui	t0,0x7fff
80007e54:	3508ffff 	ori	t0,t0,0xffff
80007e58:	3c097fff 	lui	t1,0x7fff
80007e5c:	3529ffff 	ori	t1,t1,0xffff
80007e60:	3c0a8002 	lui	t2,0x8002
80007e64:	354afff0 	ori	t2,t2,0xfff0
80007e68:	ad480000 	sw	t0,0(t2)
80007e6c:	10000004 	b	80007e80 <n89_jal_ex_ds_test+0xb8>
80007e70:	00000000 	nop
80007e74:	26522222 	addiu	s2,s2,8738
80007e78:	10000007 	b	80007e98 <n89_jal_ex_ds_test+0xd0>
80007e7c:	00000000 	nop
80007e80:	26101111 	addiu	s0,s0,4369
80007e84:	0c001f9d 	jal	80007e74 <n89_jal_ex_ds_test+0xac>
80007e88:	21147fff 	addi	s4,t0,32767
80007e8c:	26100002 	addiu	s0,s0,2
80007e90:	26100002 	addiu	s0,s0,2
80007e94:	26100002 	addiu	s0,s0,2
80007e98:	02129021 	addu	s2,s0,s2
80007e9c:	0180f821 	move	ra,t4
80007ea0:	24141117 	li	s4,4375
80007ea4:	16920253 	bne	s4,s2,800087f4 <inst_error>
80007ea8:	00000000 	nop
80007eac:	3c144444 	lui	s4,0x4444
80007eb0:	16820250 	bne	s4,v0,800087f4 <inst_error>
80007eb4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:18
80007eb8:	001f6021 	addu	t4,zero,ra
80007ebc:	24020009 	li	v0,9
80007ec0:	00008021 	move	s0,zero
80007ec4:	00009021 	move	s2,zero
80007ec8:	3c087fff 	lui	t0,0x7fff
80007ecc:	3508ffff 	ori	t0,t0,0xffff
80007ed0:	3c097fff 	lui	t1,0x7fff
80007ed4:	3529ffff 	ori	t1,t1,0xffff
80007ed8:	3c0a8002 	lui	t2,0x8002
80007edc:	354afff0 	ori	t2,t2,0xfff0
80007ee0:	ad480000 	sw	t0,0(t2)
80007ee4:	10000004 	b	80007ef8 <n89_jal_ex_ds_test+0x130>
80007ee8:	00000000 	nop
80007eec:	26522222 	addiu	s2,s2,8738
80007ef0:	10000007 	b	80007f10 <n89_jal_ex_ds_test+0x148>
80007ef4:	00000000 	nop
80007ef8:	26101111 	addiu	s0,s0,4369
80007efc:	0c001fc4 	jal	80007f10 <n89_jal_ex_ds_test+0x148>
80007f00:	0109a020 	add	s4,t0,t1
80007f04:	26100002 	addiu	s0,s0,2
80007f08:	26100002 	addiu	s0,s0,2
80007f0c:	26100002 	addiu	s0,s0,2
80007f10:	02129021 	addu	s2,s0,s2
80007f14:	0180f821 	move	ra,t4
80007f18:	24141117 	li	s4,4375
80007f1c:	16920235 	bne	s4,s2,800087f4 <inst_error>
80007f20:	00000000 	nop
80007f24:	3c144444 	lui	s4,0x4444
80007f28:	16820232 	bne	s4,v0,800087f4 <inst_error>
80007f2c:	00000000 	nop
80007f30:	24020009 	li	v0,9
80007f34:	00008021 	move	s0,zero
80007f38:	00009021 	move	s2,zero
80007f3c:	3c087fff 	lui	t0,0x7fff
80007f40:	3508ffff 	ori	t0,t0,0xffff
80007f44:	3c097fff 	lui	t1,0x7fff
80007f48:	3529ffff 	ori	t1,t1,0xffff
80007f4c:	3c0a8002 	lui	t2,0x8002
80007f50:	354afff0 	ori	t2,t2,0xfff0
80007f54:	ad480000 	sw	t0,0(t2)
80007f58:	10000004 	b	80007f6c <n89_jal_ex_ds_test+0x1a4>
80007f5c:	00000000 	nop
80007f60:	26522222 	addiu	s2,s2,8738
80007f64:	10000007 	b	80007f84 <n89_jal_ex_ds_test+0x1bc>
80007f68:	00000000 	nop
80007f6c:	26101111 	addiu	s0,s0,4369
80007f70:	0c001fd8 	jal	80007f60 <n89_jal_ex_ds_test+0x198>
80007f74:	0109a020 	add	s4,t0,t1
80007f78:	26100002 	addiu	s0,s0,2
80007f7c:	26100002 	addiu	s0,s0,2
80007f80:	26100002 	addiu	s0,s0,2
80007f84:	02129021 	addu	s2,s0,s2
80007f88:	0180f821 	move	ra,t4
80007f8c:	24141117 	li	s4,4375
80007f90:	16920218 	bne	s4,s2,800087f4 <inst_error>
80007f94:	00000000 	nop
80007f98:	3c144444 	lui	s4,0x4444
80007f9c:	16820215 	bne	s4,v0,800087f4 <inst_error>
80007fa0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:19
80007fa4:	001f6021 	addu	t4,zero,ra
80007fa8:	24020009 	li	v0,9
80007fac:	00008021 	move	s0,zero
80007fb0:	00009021 	move	s2,zero
80007fb4:	3c087fff 	lui	t0,0x7fff
80007fb8:	3508ffff 	ori	t0,t0,0xffff
80007fbc:	3c097fff 	lui	t1,0x7fff
80007fc0:	3529ffff 	ori	t1,t1,0xffff
80007fc4:	3c0a8002 	lui	t2,0x8002
80007fc8:	354afff0 	ori	t2,t2,0xfff0
80007fcc:	ad480000 	sw	t0,0(t2)
80007fd0:	10000004 	b	80007fe4 <n89_jal_ex_ds_test+0x21c>
80007fd4:	00000000 	nop
80007fd8:	26522222 	addiu	s2,s2,8738
80007fdc:	10000007 	b	80007ffc <n89_jal_ex_ds_test+0x234>
80007fe0:	00000000 	nop
80007fe4:	26101111 	addiu	s0,s0,4369
80007fe8:	0c001fff 	jal	80007ffc <n89_jal_ex_ds_test+0x234>
80007fec:	010aa022 	sub	s4,t0,t2
80007ff0:	26100002 	addiu	s0,s0,2
80007ff4:	26100002 	addiu	s0,s0,2
80007ff8:	26100002 	addiu	s0,s0,2
80007ffc:	02129021 	addu	s2,s0,s2
80008000:	0180f821 	move	ra,t4
80008004:	24141117 	li	s4,4375
80008008:	169201fa 	bne	s4,s2,800087f4 <inst_error>
8000800c:	00000000 	nop
80008010:	3c144444 	lui	s4,0x4444
80008014:	168201f7 	bne	s4,v0,800087f4 <inst_error>
80008018:	00000000 	nop
8000801c:	24020009 	li	v0,9
80008020:	00008021 	move	s0,zero
80008024:	00009021 	move	s2,zero
80008028:	3c087fff 	lui	t0,0x7fff
8000802c:	3508ffff 	ori	t0,t0,0xffff
80008030:	3c097fff 	lui	t1,0x7fff
80008034:	3529ffff 	ori	t1,t1,0xffff
80008038:	3c0a8002 	lui	t2,0x8002
8000803c:	354afff0 	ori	t2,t2,0xfff0
80008040:	ad480000 	sw	t0,0(t2)
80008044:	10000004 	b	80008058 <n89_jal_ex_ds_test+0x290>
80008048:	00000000 	nop
8000804c:	26522222 	addiu	s2,s2,8738
80008050:	10000007 	b	80008070 <n89_jal_ex_ds_test+0x2a8>
80008054:	00000000 	nop
80008058:	26101111 	addiu	s0,s0,4369
8000805c:	0c002013 	jal	8000804c <n89_jal_ex_ds_test+0x284>
80008060:	010aa022 	sub	s4,t0,t2
80008064:	26100002 	addiu	s0,s0,2
80008068:	26100002 	addiu	s0,s0,2
8000806c:	26100002 	addiu	s0,s0,2
80008070:	02129021 	addu	s2,s0,s2
80008074:	0180f821 	move	ra,t4
80008078:	24141117 	li	s4,4375
8000807c:	169201dd 	bne	s4,s2,800087f4 <inst_error>
80008080:	00000000 	nop
80008084:	3c144444 	lui	s4,0x4444
80008088:	168201da 	bne	s4,v0,800087f4 <inst_error>
8000808c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:20
80008090:	001f6021 	addu	t4,zero,ra
80008094:	24020009 	li	v0,9
80008098:	00008021 	move	s0,zero
8000809c:	00009021 	move	s2,zero
800080a0:	3c087fff 	lui	t0,0x7fff
800080a4:	3508ffff 	ori	t0,t0,0xffff
800080a8:	3c097fff 	lui	t1,0x7fff
800080ac:	3529ffff 	ori	t1,t1,0xffff
800080b0:	3c0a8002 	lui	t2,0x8002
800080b4:	354afff0 	ori	t2,t2,0xfff0
800080b8:	ad480000 	sw	t0,0(t2)
800080bc:	10000004 	b	800080d0 <n89_jal_ex_ds_test+0x308>
800080c0:	00000000 	nop
800080c4:	26522222 	addiu	s2,s2,8738
800080c8:	10000007 	b	800080e8 <n89_jal_ex_ds_test+0x320>
800080cc:	00000000 	nop
800080d0:	26101111 	addiu	s0,s0,4369
800080d4:	0c00203a 	jal	800080e8 <n89_jal_ex_ds_test+0x320>
800080d8:	85540003 	lh	s4,3(t2)
800080dc:	26100002 	addiu	s0,s0,2
800080e0:	26100002 	addiu	s0,s0,2
800080e4:	26100002 	addiu	s0,s0,2
800080e8:	02129021 	addu	s2,s0,s2
800080ec:	0180f821 	move	ra,t4
800080f0:	24141117 	li	s4,4375
800080f4:	169201bf 	bne	s4,s2,800087f4 <inst_error>
800080f8:	00000000 	nop
800080fc:	3c144444 	lui	s4,0x4444
80008100:	168201bc 	bne	s4,v0,800087f4 <inst_error>
80008104:	00000000 	nop
80008108:	24020009 	li	v0,9
8000810c:	00008021 	move	s0,zero
80008110:	00009021 	move	s2,zero
80008114:	3c087fff 	lui	t0,0x7fff
80008118:	3508ffff 	ori	t0,t0,0xffff
8000811c:	3c097fff 	lui	t1,0x7fff
80008120:	3529ffff 	ori	t1,t1,0xffff
80008124:	3c0a8002 	lui	t2,0x8002
80008128:	354afff0 	ori	t2,t2,0xfff0
8000812c:	ad480000 	sw	t0,0(t2)
80008130:	10000004 	b	80008144 <n89_jal_ex_ds_test+0x37c>
80008134:	00000000 	nop
80008138:	26522222 	addiu	s2,s2,8738
8000813c:	10000007 	b	8000815c <n89_jal_ex_ds_test+0x394>
80008140:	00000000 	nop
80008144:	26101111 	addiu	s0,s0,4369
80008148:	0c00204e 	jal	80008138 <n89_jal_ex_ds_test+0x370>
8000814c:	85540003 	lh	s4,3(t2)
80008150:	26100002 	addiu	s0,s0,2
80008154:	26100002 	addiu	s0,s0,2
80008158:	26100002 	addiu	s0,s0,2
8000815c:	02129021 	addu	s2,s0,s2
80008160:	0180f821 	move	ra,t4
80008164:	24141117 	li	s4,4375
80008168:	169201a2 	bne	s4,s2,800087f4 <inst_error>
8000816c:	00000000 	nop
80008170:	3c144444 	lui	s4,0x4444
80008174:	1682019f 	bne	s4,v0,800087f4 <inst_error>
80008178:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:21
8000817c:	001f6021 	addu	t4,zero,ra
80008180:	24020009 	li	v0,9
80008184:	00008021 	move	s0,zero
80008188:	00009021 	move	s2,zero
8000818c:	3c087fff 	lui	t0,0x7fff
80008190:	3508ffff 	ori	t0,t0,0xffff
80008194:	3c097fff 	lui	t1,0x7fff
80008198:	3529ffff 	ori	t1,t1,0xffff
8000819c:	3c0a8002 	lui	t2,0x8002
800081a0:	354afff0 	ori	t2,t2,0xfff0
800081a4:	ad480000 	sw	t0,0(t2)
800081a8:	10000004 	b	800081bc <n89_jal_ex_ds_test+0x3f4>
800081ac:	00000000 	nop
800081b0:	26522222 	addiu	s2,s2,8738
800081b4:	10000007 	b	800081d4 <n89_jal_ex_ds_test+0x40c>
800081b8:	00000000 	nop
800081bc:	26101111 	addiu	s0,s0,4369
800081c0:	0c002075 	jal	800081d4 <n89_jal_ex_ds_test+0x40c>
800081c4:	95540003 	lhu	s4,3(t2)
800081c8:	26100002 	addiu	s0,s0,2
800081cc:	26100002 	addiu	s0,s0,2
800081d0:	26100002 	addiu	s0,s0,2
800081d4:	02129021 	addu	s2,s0,s2
800081d8:	0180f821 	move	ra,t4
800081dc:	24141117 	li	s4,4375
800081e0:	16920184 	bne	s4,s2,800087f4 <inst_error>
800081e4:	00000000 	nop
800081e8:	3c144444 	lui	s4,0x4444
800081ec:	16820181 	bne	s4,v0,800087f4 <inst_error>
800081f0:	00000000 	nop
800081f4:	24020009 	li	v0,9
800081f8:	00008021 	move	s0,zero
800081fc:	00009021 	move	s2,zero
80008200:	3c087fff 	lui	t0,0x7fff
80008204:	3508ffff 	ori	t0,t0,0xffff
80008208:	3c097fff 	lui	t1,0x7fff
8000820c:	3529ffff 	ori	t1,t1,0xffff
80008210:	3c0a8002 	lui	t2,0x8002
80008214:	354afff0 	ori	t2,t2,0xfff0
80008218:	ad480000 	sw	t0,0(t2)
8000821c:	10000004 	b	80008230 <n89_jal_ex_ds_test+0x468>
80008220:	00000000 	nop
80008224:	26522222 	addiu	s2,s2,8738
80008228:	10000007 	b	80008248 <n89_jal_ex_ds_test+0x480>
8000822c:	00000000 	nop
80008230:	26101111 	addiu	s0,s0,4369
80008234:	0c002089 	jal	80008224 <n89_jal_ex_ds_test+0x45c>
80008238:	95540003 	lhu	s4,3(t2)
8000823c:	26100002 	addiu	s0,s0,2
80008240:	26100002 	addiu	s0,s0,2
80008244:	26100002 	addiu	s0,s0,2
80008248:	02129021 	addu	s2,s0,s2
8000824c:	0180f821 	move	ra,t4
80008250:	24141117 	li	s4,4375
80008254:	16920167 	bne	s4,s2,800087f4 <inst_error>
80008258:	00000000 	nop
8000825c:	3c144444 	lui	s4,0x4444
80008260:	16820164 	bne	s4,v0,800087f4 <inst_error>
80008264:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:22
80008268:	001f6021 	addu	t4,zero,ra
8000826c:	24020009 	li	v0,9
80008270:	00008021 	move	s0,zero
80008274:	00009021 	move	s2,zero
80008278:	3c087fff 	lui	t0,0x7fff
8000827c:	3508ffff 	ori	t0,t0,0xffff
80008280:	3c097fff 	lui	t1,0x7fff
80008284:	3529ffff 	ori	t1,t1,0xffff
80008288:	3c0a8002 	lui	t2,0x8002
8000828c:	354afff0 	ori	t2,t2,0xfff0
80008290:	ad480000 	sw	t0,0(t2)
80008294:	10000004 	b	800082a8 <n89_jal_ex_ds_test+0x4e0>
80008298:	00000000 	nop
8000829c:	26522222 	addiu	s2,s2,8738
800082a0:	10000007 	b	800082c0 <n89_jal_ex_ds_test+0x4f8>
800082a4:	00000000 	nop
800082a8:	26101111 	addiu	s0,s0,4369
800082ac:	0c0020b0 	jal	800082c0 <n89_jal_ex_ds_test+0x4f8>
800082b0:	8d540003 	lw	s4,3(t2)
800082b4:	26100002 	addiu	s0,s0,2
800082b8:	26100002 	addiu	s0,s0,2
800082bc:	26100002 	addiu	s0,s0,2
800082c0:	02129021 	addu	s2,s0,s2
800082c4:	0180f821 	move	ra,t4
800082c8:	24141117 	li	s4,4375
800082cc:	16920149 	bne	s4,s2,800087f4 <inst_error>
800082d0:	00000000 	nop
800082d4:	3c144444 	lui	s4,0x4444
800082d8:	16820146 	bne	s4,v0,800087f4 <inst_error>
800082dc:	00000000 	nop
800082e0:	24020009 	li	v0,9
800082e4:	00008021 	move	s0,zero
800082e8:	00009021 	move	s2,zero
800082ec:	3c087fff 	lui	t0,0x7fff
800082f0:	3508ffff 	ori	t0,t0,0xffff
800082f4:	3c097fff 	lui	t1,0x7fff
800082f8:	3529ffff 	ori	t1,t1,0xffff
800082fc:	3c0a8002 	lui	t2,0x8002
80008300:	354afff0 	ori	t2,t2,0xfff0
80008304:	ad480000 	sw	t0,0(t2)
80008308:	10000004 	b	8000831c <n89_jal_ex_ds_test+0x554>
8000830c:	00000000 	nop
80008310:	26522222 	addiu	s2,s2,8738
80008314:	10000007 	b	80008334 <n89_jal_ex_ds_test+0x56c>
80008318:	00000000 	nop
8000831c:	26101111 	addiu	s0,s0,4369
80008320:	0c0020c4 	jal	80008310 <n89_jal_ex_ds_test+0x548>
80008324:	8d540003 	lw	s4,3(t2)
80008328:	26100002 	addiu	s0,s0,2
8000832c:	26100002 	addiu	s0,s0,2
80008330:	26100002 	addiu	s0,s0,2
80008334:	02129021 	addu	s2,s0,s2
80008338:	0180f821 	move	ra,t4
8000833c:	24141117 	li	s4,4375
80008340:	1692012c 	bne	s4,s2,800087f4 <inst_error>
80008344:	00000000 	nop
80008348:	3c144444 	lui	s4,0x4444
8000834c:	16820129 	bne	s4,v0,800087f4 <inst_error>
80008350:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:23
80008354:	001f6021 	addu	t4,zero,ra
80008358:	24020009 	li	v0,9
8000835c:	00008021 	move	s0,zero
80008360:	00009021 	move	s2,zero
80008364:	3c087fff 	lui	t0,0x7fff
80008368:	3508ffff 	ori	t0,t0,0xffff
8000836c:	3c097fff 	lui	t1,0x7fff
80008370:	3529ffff 	ori	t1,t1,0xffff
80008374:	3c0a8002 	lui	t2,0x8002
80008378:	354afff0 	ori	t2,t2,0xfff0
8000837c:	ad480000 	sw	t0,0(t2)
80008380:	10000004 	b	80008394 <n89_jal_ex_ds_test+0x5cc>
80008384:	00000000 	nop
80008388:	26522222 	addiu	s2,s2,8738
8000838c:	10000007 	b	800083ac <n89_jal_ex_ds_test+0x5e4>
80008390:	00000000 	nop
80008394:	26101111 	addiu	s0,s0,4369
80008398:	0c0020eb 	jal	800083ac <n89_jal_ex_ds_test+0x5e4>
8000839c:	a5540003 	sh	s4,3(t2)
800083a0:	26100002 	addiu	s0,s0,2
800083a4:	26100002 	addiu	s0,s0,2
800083a8:	26100002 	addiu	s0,s0,2
800083ac:	02129021 	addu	s2,s0,s2
800083b0:	0180f821 	move	ra,t4
800083b4:	24141117 	li	s4,4375
800083b8:	1692010e 	bne	s4,s2,800087f4 <inst_error>
800083bc:	00000000 	nop
800083c0:	3c144444 	lui	s4,0x4444
800083c4:	1682010b 	bne	s4,v0,800087f4 <inst_error>
800083c8:	00000000 	nop
800083cc:	24020009 	li	v0,9
800083d0:	00008021 	move	s0,zero
800083d4:	00009021 	move	s2,zero
800083d8:	3c087fff 	lui	t0,0x7fff
800083dc:	3508ffff 	ori	t0,t0,0xffff
800083e0:	3c097fff 	lui	t1,0x7fff
800083e4:	3529ffff 	ori	t1,t1,0xffff
800083e8:	3c0a8002 	lui	t2,0x8002
800083ec:	354afff0 	ori	t2,t2,0xfff0
800083f0:	ad480000 	sw	t0,0(t2)
800083f4:	10000004 	b	80008408 <n89_jal_ex_ds_test+0x640>
800083f8:	00000000 	nop
800083fc:	26522222 	addiu	s2,s2,8738
80008400:	10000007 	b	80008420 <n89_jal_ex_ds_test+0x658>
80008404:	00000000 	nop
80008408:	26101111 	addiu	s0,s0,4369
8000840c:	0c0020ff 	jal	800083fc <n89_jal_ex_ds_test+0x634>
80008410:	a5540003 	sh	s4,3(t2)
80008414:	26100002 	addiu	s0,s0,2
80008418:	26100002 	addiu	s0,s0,2
8000841c:	26100002 	addiu	s0,s0,2
80008420:	02129021 	addu	s2,s0,s2
80008424:	0180f821 	move	ra,t4
80008428:	24141117 	li	s4,4375
8000842c:	169200f1 	bne	s4,s2,800087f4 <inst_error>
80008430:	00000000 	nop
80008434:	3c144444 	lui	s4,0x4444
80008438:	168200ee 	bne	s4,v0,800087f4 <inst_error>
8000843c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:24
80008440:	001f6021 	addu	t4,zero,ra
80008444:	24020009 	li	v0,9
80008448:	00008021 	move	s0,zero
8000844c:	00009021 	move	s2,zero
80008450:	3c087fff 	lui	t0,0x7fff
80008454:	3508ffff 	ori	t0,t0,0xffff
80008458:	3c097fff 	lui	t1,0x7fff
8000845c:	3529ffff 	ori	t1,t1,0xffff
80008460:	3c0a8002 	lui	t2,0x8002
80008464:	354afff0 	ori	t2,t2,0xfff0
80008468:	ad480000 	sw	t0,0(t2)
8000846c:	10000004 	b	80008480 <n89_jal_ex_ds_test+0x6b8>
80008470:	00000000 	nop
80008474:	26522222 	addiu	s2,s2,8738
80008478:	10000007 	b	80008498 <n89_jal_ex_ds_test+0x6d0>
8000847c:	00000000 	nop
80008480:	26101111 	addiu	s0,s0,4369
80008484:	0c002126 	jal	80008498 <n89_jal_ex_ds_test+0x6d0>
80008488:	ad540003 	sw	s4,3(t2)
8000848c:	26100002 	addiu	s0,s0,2
80008490:	26100002 	addiu	s0,s0,2
80008494:	26100002 	addiu	s0,s0,2
80008498:	02129021 	addu	s2,s0,s2
8000849c:	0180f821 	move	ra,t4
800084a0:	24141117 	li	s4,4375
800084a4:	169200d3 	bne	s4,s2,800087f4 <inst_error>
800084a8:	00000000 	nop
800084ac:	3c144444 	lui	s4,0x4444
800084b0:	168200d0 	bne	s4,v0,800087f4 <inst_error>
800084b4:	00000000 	nop
800084b8:	24020009 	li	v0,9
800084bc:	00008021 	move	s0,zero
800084c0:	00009021 	move	s2,zero
800084c4:	3c087fff 	lui	t0,0x7fff
800084c8:	3508ffff 	ori	t0,t0,0xffff
800084cc:	3c097fff 	lui	t1,0x7fff
800084d0:	3529ffff 	ori	t1,t1,0xffff
800084d4:	3c0a8002 	lui	t2,0x8002
800084d8:	354afff0 	ori	t2,t2,0xfff0
800084dc:	ad480000 	sw	t0,0(t2)
800084e0:	10000004 	b	800084f4 <n89_jal_ex_ds_test+0x72c>
800084e4:	00000000 	nop
800084e8:	26522222 	addiu	s2,s2,8738
800084ec:	10000007 	b	8000850c <n89_jal_ex_ds_test+0x744>
800084f0:	00000000 	nop
800084f4:	26101111 	addiu	s0,s0,4369
800084f8:	0c00213a 	jal	800084e8 <n89_jal_ex_ds_test+0x720>
800084fc:	ad540003 	sw	s4,3(t2)
80008500:	26100002 	addiu	s0,s0,2
80008504:	26100002 	addiu	s0,s0,2
80008508:	26100002 	addiu	s0,s0,2
8000850c:	02129021 	addu	s2,s0,s2
80008510:	0180f821 	move	ra,t4
80008514:	24141117 	li	s4,4375
80008518:	169200b6 	bne	s4,s2,800087f4 <inst_error>
8000851c:	00000000 	nop
80008520:	3c144444 	lui	s4,0x4444
80008524:	168200b3 	bne	s4,v0,800087f4 <inst_error>
80008528:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:25
8000852c:	001f6021 	addu	t4,zero,ra
80008530:	24020009 	li	v0,9
80008534:	00008021 	move	s0,zero
80008538:	00009021 	move	s2,zero
8000853c:	3c087fff 	lui	t0,0x7fff
80008540:	3508ffff 	ori	t0,t0,0xffff
80008544:	3c097fff 	lui	t1,0x7fff
80008548:	3529ffff 	ori	t1,t1,0xffff
8000854c:	3c0a8002 	lui	t2,0x8002
80008550:	354afff0 	ori	t2,t2,0xfff0
80008554:	ad480000 	sw	t0,0(t2)
80008558:	10000004 	b	8000856c <n89_jal_ex_ds_test+0x7a4>
8000855c:	00000000 	nop
80008560:	26522222 	addiu	s2,s2,8738
80008564:	10000007 	b	80008584 <n89_jal_ex_ds_test+0x7bc>
80008568:	00000000 	nop
8000856c:	26101111 	addiu	s0,s0,4369
80008570:	0c002161 	jal	80008584 <n89_jal_ex_ds_test+0x7bc>
80008574:	6f76e210 	0x6f76e210
80008578:	26100002 	addiu	s0,s0,2
8000857c:	26100002 	addiu	s0,s0,2
80008580:	26100002 	addiu	s0,s0,2
80008584:	02129021 	addu	s2,s0,s2
80008588:	0180f821 	move	ra,t4
8000858c:	24141117 	li	s4,4375
80008590:	16920098 	bne	s4,s2,800087f4 <inst_error>
80008594:	00000000 	nop
80008598:	3c144444 	lui	s4,0x4444
8000859c:	16820095 	bne	s4,v0,800087f4 <inst_error>
800085a0:	00000000 	nop
800085a4:	24020009 	li	v0,9
800085a8:	00008021 	move	s0,zero
800085ac:	00009021 	move	s2,zero
800085b0:	3c087fff 	lui	t0,0x7fff
800085b4:	3508ffff 	ori	t0,t0,0xffff
800085b8:	3c097fff 	lui	t1,0x7fff
800085bc:	3529ffff 	ori	t1,t1,0xffff
800085c0:	3c0a8002 	lui	t2,0x8002
800085c4:	354afff0 	ori	t2,t2,0xfff0
800085c8:	ad480000 	sw	t0,0(t2)
800085cc:	10000004 	b	800085e0 <n89_jal_ex_ds_test+0x818>
800085d0:	00000000 	nop
800085d4:	26522222 	addiu	s2,s2,8738
800085d8:	10000007 	b	800085f8 <n89_jal_ex_ds_test+0x830>
800085dc:	00000000 	nop
800085e0:	26101111 	addiu	s0,s0,4369
800085e4:	0c002175 	jal	800085d4 <n89_jal_ex_ds_test+0x80c>
800085e8:	6f76e210 	0x6f76e210
800085ec:	26100002 	addiu	s0,s0,2
800085f0:	26100002 	addiu	s0,s0,2
800085f4:	26100002 	addiu	s0,s0,2
800085f8:	02129021 	addu	s2,s0,s2
800085fc:	0180f821 	move	ra,t4
80008600:	24141117 	li	s4,4375
80008604:	1692007b 	bne	s4,s2,800087f4 <inst_error>
80008608:	00000000 	nop
8000860c:	3c144444 	lui	s4,0x4444
80008610:	16820078 	bne	s4,v0,800087f4 <inst_error>
80008614:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:26
80008618:	001f6021 	addu	t4,zero,ra
8000861c:	24020009 	li	v0,9
80008620:	00008021 	move	s0,zero
80008624:	00009021 	move	s2,zero
80008628:	3c087fff 	lui	t0,0x7fff
8000862c:	3508ffff 	ori	t0,t0,0xffff
80008630:	3c097fff 	lui	t1,0x7fff
80008634:	3529ffff 	ori	t1,t1,0xffff
80008638:	3c0a8002 	lui	t2,0x8002
8000863c:	354afff0 	ori	t2,t2,0xfff0
80008640:	ad480000 	sw	t0,0(t2)
80008644:	10000004 	b	80008658 <n89_jal_ex_ds_test+0x890>
80008648:	00000000 	nop
8000864c:	26522222 	addiu	s2,s2,8738
80008650:	10000007 	b	80008670 <n89_jal_ex_ds_test+0x8a8>
80008654:	00000000 	nop
80008658:	26101111 	addiu	s0,s0,4369
8000865c:	0c00219c 	jal	80008670 <n89_jal_ex_ds_test+0x8a8>
80008660:	0000000c 	syscall
80008664:	26100002 	addiu	s0,s0,2
80008668:	26100002 	addiu	s0,s0,2
8000866c:	26100002 	addiu	s0,s0,2
80008670:	02129021 	addu	s2,s0,s2
80008674:	0180f821 	move	ra,t4
80008678:	24141117 	li	s4,4375
8000867c:	1692005d 	bne	s4,s2,800087f4 <inst_error>
80008680:	00000000 	nop
80008684:	3c144444 	lui	s4,0x4444
80008688:	1682005a 	bne	s4,v0,800087f4 <inst_error>
8000868c:	00000000 	nop
80008690:	24020009 	li	v0,9
80008694:	00008021 	move	s0,zero
80008698:	00009021 	move	s2,zero
8000869c:	3c087fff 	lui	t0,0x7fff
800086a0:	3508ffff 	ori	t0,t0,0xffff
800086a4:	3c097fff 	lui	t1,0x7fff
800086a8:	3529ffff 	ori	t1,t1,0xffff
800086ac:	3c0a8002 	lui	t2,0x8002
800086b0:	354afff0 	ori	t2,t2,0xfff0
800086b4:	ad480000 	sw	t0,0(t2)
800086b8:	10000004 	b	800086cc <n89_jal_ex_ds_test+0x904>
800086bc:	00000000 	nop
800086c0:	26522222 	addiu	s2,s2,8738
800086c4:	10000007 	b	800086e4 <n89_jal_ex_ds_test+0x91c>
800086c8:	00000000 	nop
800086cc:	26101111 	addiu	s0,s0,4369
800086d0:	0c0021b0 	jal	800086c0 <n89_jal_ex_ds_test+0x8f8>
800086d4:	0000000c 	syscall
800086d8:	26100002 	addiu	s0,s0,2
800086dc:	26100002 	addiu	s0,s0,2
800086e0:	26100002 	addiu	s0,s0,2
800086e4:	02129021 	addu	s2,s0,s2
800086e8:	0180f821 	move	ra,t4
800086ec:	24141117 	li	s4,4375
800086f0:	16920040 	bne	s4,s2,800087f4 <inst_error>
800086f4:	00000000 	nop
800086f8:	3c144444 	lui	s4,0x4444
800086fc:	1682003d 	bne	s4,v0,800087f4 <inst_error>
80008700:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:27
80008704:	001f6021 	addu	t4,zero,ra
80008708:	24020009 	li	v0,9
8000870c:	00008021 	move	s0,zero
80008710:	00009021 	move	s2,zero
80008714:	3c087fff 	lui	t0,0x7fff
80008718:	3508ffff 	ori	t0,t0,0xffff
8000871c:	3c097fff 	lui	t1,0x7fff
80008720:	3529ffff 	ori	t1,t1,0xffff
80008724:	3c0a8002 	lui	t2,0x8002
80008728:	354afff0 	ori	t2,t2,0xfff0
8000872c:	ad480000 	sw	t0,0(t2)
80008730:	10000004 	b	80008744 <n89_jal_ex_ds_test+0x97c>
80008734:	00000000 	nop
80008738:	26522222 	addiu	s2,s2,8738
8000873c:	10000007 	b	8000875c <n89_jal_ex_ds_test+0x994>
80008740:	00000000 	nop
80008744:	26101111 	addiu	s0,s0,4369
80008748:	0c0021d7 	jal	8000875c <n89_jal_ex_ds_test+0x994>
8000874c:	0000000d 	break
80008750:	26100002 	addiu	s0,s0,2
80008754:	26100002 	addiu	s0,s0,2
80008758:	26100002 	addiu	s0,s0,2
8000875c:	02129021 	addu	s2,s0,s2
80008760:	0180f821 	move	ra,t4
80008764:	24141117 	li	s4,4375
80008768:	16920022 	bne	s4,s2,800087f4 <inst_error>
8000876c:	00000000 	nop
80008770:	3c144444 	lui	s4,0x4444
80008774:	1682001f 	bne	s4,v0,800087f4 <inst_error>
80008778:	00000000 	nop
8000877c:	24020009 	li	v0,9
80008780:	00008021 	move	s0,zero
80008784:	00009021 	move	s2,zero
80008788:	3c087fff 	lui	t0,0x7fff
8000878c:	3508ffff 	ori	t0,t0,0xffff
80008790:	3c097fff 	lui	t1,0x7fff
80008794:	3529ffff 	ori	t1,t1,0xffff
80008798:	3c0a8002 	lui	t2,0x8002
8000879c:	354afff0 	ori	t2,t2,0xfff0
800087a0:	ad480000 	sw	t0,0(t2)
800087a4:	10000004 	b	800087b8 <n89_jal_ex_ds_test+0x9f0>
800087a8:	00000000 	nop
800087ac:	26522222 	addiu	s2,s2,8738
800087b0:	10000007 	b	800087d0 <n89_jal_ex_ds_test+0xa08>
800087b4:	00000000 	nop
800087b8:	26101111 	addiu	s0,s0,4369
800087bc:	0c0021eb 	jal	800087ac <n89_jal_ex_ds_test+0x9e4>
800087c0:	0000000d 	break
800087c4:	26100002 	addiu	s0,s0,2
800087c8:	26100002 	addiu	s0,s0,2
800087cc:	26100002 	addiu	s0,s0,2
800087d0:	02129021 	addu	s2,s0,s2
800087d4:	0180f821 	move	ra,t4
800087d8:	24141117 	li	s4,4375
800087dc:	16920005 	bne	s4,s2,800087f4 <inst_error>
800087e0:	00000000 	nop
800087e4:	3c144444 	lui	s4,0x4444
800087e8:	16820002 	bne	s4,v0,800087f4 <inst_error>
800087ec:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:33
800087f0:	26730001 	addiu	s3,s3,1

800087f4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:36
800087f4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:37
800087f8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:38
800087fc:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n89_jal_ex_ds.S:39
80008800:	00000000 	nop

80008804 <n88_j_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:14
80008804:	3c045800 	lui	a0,0x5800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:17
80008808:	24020009 	li	v0,9
8000880c:	00008021 	move	s0,zero
80008810:	00009021 	move	s2,zero
80008814:	3c087fff 	lui	t0,0x7fff
80008818:	3508ffff 	ori	t0,t0,0xffff
8000881c:	3c097fff 	lui	t1,0x7fff
80008820:	3529ffff 	ori	t1,t1,0xffff
80008824:	3c0a8002 	lui	t2,0x8002
80008828:	354afff0 	ori	t2,t2,0xfff0
8000882c:	ad480000 	sw	t0,0(t2)
80008830:	10000004 	b	80008844 <n88_j_ex_ds_test+0x40>
80008834:	00000000 	nop
80008838:	26522222 	addiu	s2,s2,8738
8000883c:	10000007 	b	8000885c <n88_j_ex_ds_test+0x58>
80008840:	00000000 	nop
80008844:	26101111 	addiu	s0,s0,4369
80008848:	08002217 	j	8000885c <n88_j_ex_ds_test+0x58>
8000884c:	21147fff 	addi	s4,t0,32767
80008850:	26100002 	addiu	s0,s0,2
80008854:	26100002 	addiu	s0,s0,2
80008858:	26100002 	addiu	s0,s0,2
8000885c:	02129021 	addu	s2,s0,s2
80008860:	24141117 	li	s4,4375
80008864:	16920251 	bne	s4,s2,800091ac <inst_error>
80008868:	00000000 	nop
8000886c:	3c144444 	lui	s4,0x4444
80008870:	1682024e 	bne	s4,v0,800091ac <inst_error>
80008874:	00000000 	nop
80008878:	24020009 	li	v0,9
8000887c:	00008021 	move	s0,zero
80008880:	00009021 	move	s2,zero
80008884:	3c087fff 	lui	t0,0x7fff
80008888:	3508ffff 	ori	t0,t0,0xffff
8000888c:	3c097fff 	lui	t1,0x7fff
80008890:	3529ffff 	ori	t1,t1,0xffff
80008894:	3c0a8002 	lui	t2,0x8002
80008898:	354afff0 	ori	t2,t2,0xfff0
8000889c:	ad480000 	sw	t0,0(t2)
800088a0:	10000004 	b	800088b4 <n88_j_ex_ds_test+0xb0>
800088a4:	00000000 	nop
800088a8:	26522222 	addiu	s2,s2,8738
800088ac:	10000007 	b	800088cc <n88_j_ex_ds_test+0xc8>
800088b0:	00000000 	nop
800088b4:	26101111 	addiu	s0,s0,4369
800088b8:	0800222a 	j	800088a8 <n88_j_ex_ds_test+0xa4>
800088bc:	21147fff 	addi	s4,t0,32767
800088c0:	26100002 	addiu	s0,s0,2
800088c4:	26100002 	addiu	s0,s0,2
800088c8:	26100002 	addiu	s0,s0,2
800088cc:	02129021 	addu	s2,s0,s2
800088d0:	24141117 	li	s4,4375
800088d4:	16920235 	bne	s4,s2,800091ac <inst_error>
800088d8:	00000000 	nop
800088dc:	3c144444 	lui	s4,0x4444
800088e0:	16820232 	bne	s4,v0,800091ac <inst_error>
800088e4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:18
800088e8:	24020009 	li	v0,9
800088ec:	00008021 	move	s0,zero
800088f0:	00009021 	move	s2,zero
800088f4:	3c087fff 	lui	t0,0x7fff
800088f8:	3508ffff 	ori	t0,t0,0xffff
800088fc:	3c097fff 	lui	t1,0x7fff
80008900:	3529ffff 	ori	t1,t1,0xffff
80008904:	3c0a8002 	lui	t2,0x8002
80008908:	354afff0 	ori	t2,t2,0xfff0
8000890c:	ad480000 	sw	t0,0(t2)
80008910:	10000004 	b	80008924 <n88_j_ex_ds_test+0x120>
80008914:	00000000 	nop
80008918:	26522222 	addiu	s2,s2,8738
8000891c:	10000007 	b	8000893c <n88_j_ex_ds_test+0x138>
80008920:	00000000 	nop
80008924:	26101111 	addiu	s0,s0,4369
80008928:	0800224f 	j	8000893c <n88_j_ex_ds_test+0x138>
8000892c:	0109a020 	add	s4,t0,t1
80008930:	26100002 	addiu	s0,s0,2
80008934:	26100002 	addiu	s0,s0,2
80008938:	26100002 	addiu	s0,s0,2
8000893c:	02129021 	addu	s2,s0,s2
80008940:	24141117 	li	s4,4375
80008944:	16920219 	bne	s4,s2,800091ac <inst_error>
80008948:	00000000 	nop
8000894c:	3c144444 	lui	s4,0x4444
80008950:	16820216 	bne	s4,v0,800091ac <inst_error>
80008954:	00000000 	nop
80008958:	24020009 	li	v0,9
8000895c:	00008021 	move	s0,zero
80008960:	00009021 	move	s2,zero
80008964:	3c087fff 	lui	t0,0x7fff
80008968:	3508ffff 	ori	t0,t0,0xffff
8000896c:	3c097fff 	lui	t1,0x7fff
80008970:	3529ffff 	ori	t1,t1,0xffff
80008974:	3c0a8002 	lui	t2,0x8002
80008978:	354afff0 	ori	t2,t2,0xfff0
8000897c:	ad480000 	sw	t0,0(t2)
80008980:	10000004 	b	80008994 <n88_j_ex_ds_test+0x190>
80008984:	00000000 	nop
80008988:	26522222 	addiu	s2,s2,8738
8000898c:	10000007 	b	800089ac <n88_j_ex_ds_test+0x1a8>
80008990:	00000000 	nop
80008994:	26101111 	addiu	s0,s0,4369
80008998:	08002262 	j	80008988 <n88_j_ex_ds_test+0x184>
8000899c:	0109a020 	add	s4,t0,t1
800089a0:	26100002 	addiu	s0,s0,2
800089a4:	26100002 	addiu	s0,s0,2
800089a8:	26100002 	addiu	s0,s0,2
800089ac:	02129021 	addu	s2,s0,s2
800089b0:	24141117 	li	s4,4375
800089b4:	169201fd 	bne	s4,s2,800091ac <inst_error>
800089b8:	00000000 	nop
800089bc:	3c144444 	lui	s4,0x4444
800089c0:	168201fa 	bne	s4,v0,800091ac <inst_error>
800089c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:19
800089c8:	24020009 	li	v0,9
800089cc:	00008021 	move	s0,zero
800089d0:	00009021 	move	s2,zero
800089d4:	3c087fff 	lui	t0,0x7fff
800089d8:	3508ffff 	ori	t0,t0,0xffff
800089dc:	3c097fff 	lui	t1,0x7fff
800089e0:	3529ffff 	ori	t1,t1,0xffff
800089e4:	3c0a8002 	lui	t2,0x8002
800089e8:	354afff0 	ori	t2,t2,0xfff0
800089ec:	ad480000 	sw	t0,0(t2)
800089f0:	10000004 	b	80008a04 <n88_j_ex_ds_test+0x200>
800089f4:	00000000 	nop
800089f8:	26522222 	addiu	s2,s2,8738
800089fc:	10000007 	b	80008a1c <n88_j_ex_ds_test+0x218>
80008a00:	00000000 	nop
80008a04:	26101111 	addiu	s0,s0,4369
80008a08:	08002287 	j	80008a1c <n88_j_ex_ds_test+0x218>
80008a0c:	010aa022 	sub	s4,t0,t2
80008a10:	26100002 	addiu	s0,s0,2
80008a14:	26100002 	addiu	s0,s0,2
80008a18:	26100002 	addiu	s0,s0,2
80008a1c:	02129021 	addu	s2,s0,s2
80008a20:	24141117 	li	s4,4375
80008a24:	169201e1 	bne	s4,s2,800091ac <inst_error>
80008a28:	00000000 	nop
80008a2c:	3c144444 	lui	s4,0x4444
80008a30:	168201de 	bne	s4,v0,800091ac <inst_error>
80008a34:	00000000 	nop
80008a38:	24020009 	li	v0,9
80008a3c:	00008021 	move	s0,zero
80008a40:	00009021 	move	s2,zero
80008a44:	3c087fff 	lui	t0,0x7fff
80008a48:	3508ffff 	ori	t0,t0,0xffff
80008a4c:	3c097fff 	lui	t1,0x7fff
80008a50:	3529ffff 	ori	t1,t1,0xffff
80008a54:	3c0a8002 	lui	t2,0x8002
80008a58:	354afff0 	ori	t2,t2,0xfff0
80008a5c:	ad480000 	sw	t0,0(t2)
80008a60:	10000004 	b	80008a74 <n88_j_ex_ds_test+0x270>
80008a64:	00000000 	nop
80008a68:	26522222 	addiu	s2,s2,8738
80008a6c:	10000007 	b	80008a8c <n88_j_ex_ds_test+0x288>
80008a70:	00000000 	nop
80008a74:	26101111 	addiu	s0,s0,4369
80008a78:	0800229a 	j	80008a68 <n88_j_ex_ds_test+0x264>
80008a7c:	010aa022 	sub	s4,t0,t2
80008a80:	26100002 	addiu	s0,s0,2
80008a84:	26100002 	addiu	s0,s0,2
80008a88:	26100002 	addiu	s0,s0,2
80008a8c:	02129021 	addu	s2,s0,s2
80008a90:	24141117 	li	s4,4375
80008a94:	169201c5 	bne	s4,s2,800091ac <inst_error>
80008a98:	00000000 	nop
80008a9c:	3c144444 	lui	s4,0x4444
80008aa0:	168201c2 	bne	s4,v0,800091ac <inst_error>
80008aa4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:20
80008aa8:	24020009 	li	v0,9
80008aac:	00008021 	move	s0,zero
80008ab0:	00009021 	move	s2,zero
80008ab4:	3c087fff 	lui	t0,0x7fff
80008ab8:	3508ffff 	ori	t0,t0,0xffff
80008abc:	3c097fff 	lui	t1,0x7fff
80008ac0:	3529ffff 	ori	t1,t1,0xffff
80008ac4:	3c0a8002 	lui	t2,0x8002
80008ac8:	354afff0 	ori	t2,t2,0xfff0
80008acc:	ad480000 	sw	t0,0(t2)
80008ad0:	10000004 	b	80008ae4 <n88_j_ex_ds_test+0x2e0>
80008ad4:	00000000 	nop
80008ad8:	26522222 	addiu	s2,s2,8738
80008adc:	10000007 	b	80008afc <n88_j_ex_ds_test+0x2f8>
80008ae0:	00000000 	nop
80008ae4:	26101111 	addiu	s0,s0,4369
80008ae8:	080022bf 	j	80008afc <n88_j_ex_ds_test+0x2f8>
80008aec:	85540003 	lh	s4,3(t2)
80008af0:	26100002 	addiu	s0,s0,2
80008af4:	26100002 	addiu	s0,s0,2
80008af8:	26100002 	addiu	s0,s0,2
80008afc:	02129021 	addu	s2,s0,s2
80008b00:	24141117 	li	s4,4375
80008b04:	169201a9 	bne	s4,s2,800091ac <inst_error>
80008b08:	00000000 	nop
80008b0c:	3c144444 	lui	s4,0x4444
80008b10:	168201a6 	bne	s4,v0,800091ac <inst_error>
80008b14:	00000000 	nop
80008b18:	24020009 	li	v0,9
80008b1c:	00008021 	move	s0,zero
80008b20:	00009021 	move	s2,zero
80008b24:	3c087fff 	lui	t0,0x7fff
80008b28:	3508ffff 	ori	t0,t0,0xffff
80008b2c:	3c097fff 	lui	t1,0x7fff
80008b30:	3529ffff 	ori	t1,t1,0xffff
80008b34:	3c0a8002 	lui	t2,0x8002
80008b38:	354afff0 	ori	t2,t2,0xfff0
80008b3c:	ad480000 	sw	t0,0(t2)
80008b40:	10000004 	b	80008b54 <n88_j_ex_ds_test+0x350>
80008b44:	00000000 	nop
80008b48:	26522222 	addiu	s2,s2,8738
80008b4c:	10000007 	b	80008b6c <n88_j_ex_ds_test+0x368>
80008b50:	00000000 	nop
80008b54:	26101111 	addiu	s0,s0,4369
80008b58:	080022d2 	j	80008b48 <n88_j_ex_ds_test+0x344>
80008b5c:	85540003 	lh	s4,3(t2)
80008b60:	26100002 	addiu	s0,s0,2
80008b64:	26100002 	addiu	s0,s0,2
80008b68:	26100002 	addiu	s0,s0,2
80008b6c:	02129021 	addu	s2,s0,s2
80008b70:	24141117 	li	s4,4375
80008b74:	1692018d 	bne	s4,s2,800091ac <inst_error>
80008b78:	00000000 	nop
80008b7c:	3c144444 	lui	s4,0x4444
80008b80:	1682018a 	bne	s4,v0,800091ac <inst_error>
80008b84:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:21
80008b88:	24020009 	li	v0,9
80008b8c:	00008021 	move	s0,zero
80008b90:	00009021 	move	s2,zero
80008b94:	3c087fff 	lui	t0,0x7fff
80008b98:	3508ffff 	ori	t0,t0,0xffff
80008b9c:	3c097fff 	lui	t1,0x7fff
80008ba0:	3529ffff 	ori	t1,t1,0xffff
80008ba4:	3c0a8002 	lui	t2,0x8002
80008ba8:	354afff0 	ori	t2,t2,0xfff0
80008bac:	ad480000 	sw	t0,0(t2)
80008bb0:	10000004 	b	80008bc4 <n88_j_ex_ds_test+0x3c0>
80008bb4:	00000000 	nop
80008bb8:	26522222 	addiu	s2,s2,8738
80008bbc:	10000007 	b	80008bdc <n88_j_ex_ds_test+0x3d8>
80008bc0:	00000000 	nop
80008bc4:	26101111 	addiu	s0,s0,4369
80008bc8:	080022f7 	j	80008bdc <n88_j_ex_ds_test+0x3d8>
80008bcc:	95540003 	lhu	s4,3(t2)
80008bd0:	26100002 	addiu	s0,s0,2
80008bd4:	26100002 	addiu	s0,s0,2
80008bd8:	26100002 	addiu	s0,s0,2
80008bdc:	02129021 	addu	s2,s0,s2
80008be0:	24141117 	li	s4,4375
80008be4:	16920171 	bne	s4,s2,800091ac <inst_error>
80008be8:	00000000 	nop
80008bec:	3c144444 	lui	s4,0x4444
80008bf0:	1682016e 	bne	s4,v0,800091ac <inst_error>
80008bf4:	00000000 	nop
80008bf8:	24020009 	li	v0,9
80008bfc:	00008021 	move	s0,zero
80008c00:	00009021 	move	s2,zero
80008c04:	3c087fff 	lui	t0,0x7fff
80008c08:	3508ffff 	ori	t0,t0,0xffff
80008c0c:	3c097fff 	lui	t1,0x7fff
80008c10:	3529ffff 	ori	t1,t1,0xffff
80008c14:	3c0a8002 	lui	t2,0x8002
80008c18:	354afff0 	ori	t2,t2,0xfff0
80008c1c:	ad480000 	sw	t0,0(t2)
80008c20:	10000004 	b	80008c34 <n88_j_ex_ds_test+0x430>
80008c24:	00000000 	nop
80008c28:	26522222 	addiu	s2,s2,8738
80008c2c:	10000007 	b	80008c4c <n88_j_ex_ds_test+0x448>
80008c30:	00000000 	nop
80008c34:	26101111 	addiu	s0,s0,4369
80008c38:	0800230a 	j	80008c28 <n88_j_ex_ds_test+0x424>
80008c3c:	95540003 	lhu	s4,3(t2)
80008c40:	26100002 	addiu	s0,s0,2
80008c44:	26100002 	addiu	s0,s0,2
80008c48:	26100002 	addiu	s0,s0,2
80008c4c:	02129021 	addu	s2,s0,s2
80008c50:	24141117 	li	s4,4375
80008c54:	16920155 	bne	s4,s2,800091ac <inst_error>
80008c58:	00000000 	nop
80008c5c:	3c144444 	lui	s4,0x4444
80008c60:	16820152 	bne	s4,v0,800091ac <inst_error>
80008c64:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:22
80008c68:	24020009 	li	v0,9
80008c6c:	00008021 	move	s0,zero
80008c70:	00009021 	move	s2,zero
80008c74:	3c087fff 	lui	t0,0x7fff
80008c78:	3508ffff 	ori	t0,t0,0xffff
80008c7c:	3c097fff 	lui	t1,0x7fff
80008c80:	3529ffff 	ori	t1,t1,0xffff
80008c84:	3c0a8002 	lui	t2,0x8002
80008c88:	354afff0 	ori	t2,t2,0xfff0
80008c8c:	ad480000 	sw	t0,0(t2)
80008c90:	10000004 	b	80008ca4 <n88_j_ex_ds_test+0x4a0>
80008c94:	00000000 	nop
80008c98:	26522222 	addiu	s2,s2,8738
80008c9c:	10000007 	b	80008cbc <n88_j_ex_ds_test+0x4b8>
80008ca0:	00000000 	nop
80008ca4:	26101111 	addiu	s0,s0,4369
80008ca8:	0800232f 	j	80008cbc <n88_j_ex_ds_test+0x4b8>
80008cac:	8d540003 	lw	s4,3(t2)
80008cb0:	26100002 	addiu	s0,s0,2
80008cb4:	26100002 	addiu	s0,s0,2
80008cb8:	26100002 	addiu	s0,s0,2
80008cbc:	02129021 	addu	s2,s0,s2
80008cc0:	24141117 	li	s4,4375
80008cc4:	16920139 	bne	s4,s2,800091ac <inst_error>
80008cc8:	00000000 	nop
80008ccc:	3c144444 	lui	s4,0x4444
80008cd0:	16820136 	bne	s4,v0,800091ac <inst_error>
80008cd4:	00000000 	nop
80008cd8:	24020009 	li	v0,9
80008cdc:	00008021 	move	s0,zero
80008ce0:	00009021 	move	s2,zero
80008ce4:	3c087fff 	lui	t0,0x7fff
80008ce8:	3508ffff 	ori	t0,t0,0xffff
80008cec:	3c097fff 	lui	t1,0x7fff
80008cf0:	3529ffff 	ori	t1,t1,0xffff
80008cf4:	3c0a8002 	lui	t2,0x8002
80008cf8:	354afff0 	ori	t2,t2,0xfff0
80008cfc:	ad480000 	sw	t0,0(t2)
80008d00:	10000004 	b	80008d14 <n88_j_ex_ds_test+0x510>
80008d04:	00000000 	nop
80008d08:	26522222 	addiu	s2,s2,8738
80008d0c:	10000007 	b	80008d2c <n88_j_ex_ds_test+0x528>
80008d10:	00000000 	nop
80008d14:	26101111 	addiu	s0,s0,4369
80008d18:	08002342 	j	80008d08 <n88_j_ex_ds_test+0x504>
80008d1c:	8d540003 	lw	s4,3(t2)
80008d20:	26100002 	addiu	s0,s0,2
80008d24:	26100002 	addiu	s0,s0,2
80008d28:	26100002 	addiu	s0,s0,2
80008d2c:	02129021 	addu	s2,s0,s2
80008d30:	24141117 	li	s4,4375
80008d34:	1692011d 	bne	s4,s2,800091ac <inst_error>
80008d38:	00000000 	nop
80008d3c:	3c144444 	lui	s4,0x4444
80008d40:	1682011a 	bne	s4,v0,800091ac <inst_error>
80008d44:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:23
80008d48:	24020009 	li	v0,9
80008d4c:	00008021 	move	s0,zero
80008d50:	00009021 	move	s2,zero
80008d54:	3c087fff 	lui	t0,0x7fff
80008d58:	3508ffff 	ori	t0,t0,0xffff
80008d5c:	3c097fff 	lui	t1,0x7fff
80008d60:	3529ffff 	ori	t1,t1,0xffff
80008d64:	3c0a8002 	lui	t2,0x8002
80008d68:	354afff0 	ori	t2,t2,0xfff0
80008d6c:	ad480000 	sw	t0,0(t2)
80008d70:	10000004 	b	80008d84 <n88_j_ex_ds_test+0x580>
80008d74:	00000000 	nop
80008d78:	26522222 	addiu	s2,s2,8738
80008d7c:	10000007 	b	80008d9c <n88_j_ex_ds_test+0x598>
80008d80:	00000000 	nop
80008d84:	26101111 	addiu	s0,s0,4369
80008d88:	08002367 	j	80008d9c <n88_j_ex_ds_test+0x598>
80008d8c:	a5540003 	sh	s4,3(t2)
80008d90:	26100002 	addiu	s0,s0,2
80008d94:	26100002 	addiu	s0,s0,2
80008d98:	26100002 	addiu	s0,s0,2
80008d9c:	02129021 	addu	s2,s0,s2
80008da0:	24141117 	li	s4,4375
80008da4:	16920101 	bne	s4,s2,800091ac <inst_error>
80008da8:	00000000 	nop
80008dac:	3c144444 	lui	s4,0x4444
80008db0:	168200fe 	bne	s4,v0,800091ac <inst_error>
80008db4:	00000000 	nop
80008db8:	24020009 	li	v0,9
80008dbc:	00008021 	move	s0,zero
80008dc0:	00009021 	move	s2,zero
80008dc4:	3c087fff 	lui	t0,0x7fff
80008dc8:	3508ffff 	ori	t0,t0,0xffff
80008dcc:	3c097fff 	lui	t1,0x7fff
80008dd0:	3529ffff 	ori	t1,t1,0xffff
80008dd4:	3c0a8002 	lui	t2,0x8002
80008dd8:	354afff0 	ori	t2,t2,0xfff0
80008ddc:	ad480000 	sw	t0,0(t2)
80008de0:	10000004 	b	80008df4 <n88_j_ex_ds_test+0x5f0>
80008de4:	00000000 	nop
80008de8:	26522222 	addiu	s2,s2,8738
80008dec:	10000007 	b	80008e0c <n88_j_ex_ds_test+0x608>
80008df0:	00000000 	nop
80008df4:	26101111 	addiu	s0,s0,4369
80008df8:	0800237a 	j	80008de8 <n88_j_ex_ds_test+0x5e4>
80008dfc:	a5540003 	sh	s4,3(t2)
80008e00:	26100002 	addiu	s0,s0,2
80008e04:	26100002 	addiu	s0,s0,2
80008e08:	26100002 	addiu	s0,s0,2
80008e0c:	02129021 	addu	s2,s0,s2
80008e10:	24141117 	li	s4,4375
80008e14:	169200e5 	bne	s4,s2,800091ac <inst_error>
80008e18:	00000000 	nop
80008e1c:	3c144444 	lui	s4,0x4444
80008e20:	168200e2 	bne	s4,v0,800091ac <inst_error>
80008e24:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:24
80008e28:	24020009 	li	v0,9
80008e2c:	00008021 	move	s0,zero
80008e30:	00009021 	move	s2,zero
80008e34:	3c087fff 	lui	t0,0x7fff
80008e38:	3508ffff 	ori	t0,t0,0xffff
80008e3c:	3c097fff 	lui	t1,0x7fff
80008e40:	3529ffff 	ori	t1,t1,0xffff
80008e44:	3c0a8002 	lui	t2,0x8002
80008e48:	354afff0 	ori	t2,t2,0xfff0
80008e4c:	ad480000 	sw	t0,0(t2)
80008e50:	10000004 	b	80008e64 <n88_j_ex_ds_test+0x660>
80008e54:	00000000 	nop
80008e58:	26522222 	addiu	s2,s2,8738
80008e5c:	10000007 	b	80008e7c <n88_j_ex_ds_test+0x678>
80008e60:	00000000 	nop
80008e64:	26101111 	addiu	s0,s0,4369
80008e68:	0800239f 	j	80008e7c <n88_j_ex_ds_test+0x678>
80008e6c:	ad540003 	sw	s4,3(t2)
80008e70:	26100002 	addiu	s0,s0,2
80008e74:	26100002 	addiu	s0,s0,2
80008e78:	26100002 	addiu	s0,s0,2
80008e7c:	02129021 	addu	s2,s0,s2
80008e80:	24141117 	li	s4,4375
80008e84:	169200c9 	bne	s4,s2,800091ac <inst_error>
80008e88:	00000000 	nop
80008e8c:	3c144444 	lui	s4,0x4444
80008e90:	168200c6 	bne	s4,v0,800091ac <inst_error>
80008e94:	00000000 	nop
80008e98:	24020009 	li	v0,9
80008e9c:	00008021 	move	s0,zero
80008ea0:	00009021 	move	s2,zero
80008ea4:	3c087fff 	lui	t0,0x7fff
80008ea8:	3508ffff 	ori	t0,t0,0xffff
80008eac:	3c097fff 	lui	t1,0x7fff
80008eb0:	3529ffff 	ori	t1,t1,0xffff
80008eb4:	3c0a8002 	lui	t2,0x8002
80008eb8:	354afff0 	ori	t2,t2,0xfff0
80008ebc:	ad480000 	sw	t0,0(t2)
80008ec0:	10000004 	b	80008ed4 <n88_j_ex_ds_test+0x6d0>
80008ec4:	00000000 	nop
80008ec8:	26522222 	addiu	s2,s2,8738
80008ecc:	10000007 	b	80008eec <n88_j_ex_ds_test+0x6e8>
80008ed0:	00000000 	nop
80008ed4:	26101111 	addiu	s0,s0,4369
80008ed8:	080023b2 	j	80008ec8 <n88_j_ex_ds_test+0x6c4>
80008edc:	ad540003 	sw	s4,3(t2)
80008ee0:	26100002 	addiu	s0,s0,2
80008ee4:	26100002 	addiu	s0,s0,2
80008ee8:	26100002 	addiu	s0,s0,2
80008eec:	02129021 	addu	s2,s0,s2
80008ef0:	24141117 	li	s4,4375
80008ef4:	169200ad 	bne	s4,s2,800091ac <inst_error>
80008ef8:	00000000 	nop
80008efc:	3c144444 	lui	s4,0x4444
80008f00:	168200aa 	bne	s4,v0,800091ac <inst_error>
80008f04:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:25
80008f08:	24020009 	li	v0,9
80008f0c:	00008021 	move	s0,zero
80008f10:	00009021 	move	s2,zero
80008f14:	3c087fff 	lui	t0,0x7fff
80008f18:	3508ffff 	ori	t0,t0,0xffff
80008f1c:	3c097fff 	lui	t1,0x7fff
80008f20:	3529ffff 	ori	t1,t1,0xffff
80008f24:	3c0a8002 	lui	t2,0x8002
80008f28:	354afff0 	ori	t2,t2,0xfff0
80008f2c:	ad480000 	sw	t0,0(t2)
80008f30:	10000004 	b	80008f44 <n88_j_ex_ds_test+0x740>
80008f34:	00000000 	nop
80008f38:	26522222 	addiu	s2,s2,8738
80008f3c:	10000007 	b	80008f5c <n88_j_ex_ds_test+0x758>
80008f40:	00000000 	nop
80008f44:	26101111 	addiu	s0,s0,4369
80008f48:	080023d7 	j	80008f5c <n88_j_ex_ds_test+0x758>
80008f4c:	6f76e210 	0x6f76e210
80008f50:	26100002 	addiu	s0,s0,2
80008f54:	26100002 	addiu	s0,s0,2
80008f58:	26100002 	addiu	s0,s0,2
80008f5c:	02129021 	addu	s2,s0,s2
80008f60:	24141117 	li	s4,4375
80008f64:	16920091 	bne	s4,s2,800091ac <inst_error>
80008f68:	00000000 	nop
80008f6c:	3c144444 	lui	s4,0x4444
80008f70:	1682008e 	bne	s4,v0,800091ac <inst_error>
80008f74:	00000000 	nop
80008f78:	24020009 	li	v0,9
80008f7c:	00008021 	move	s0,zero
80008f80:	00009021 	move	s2,zero
80008f84:	3c087fff 	lui	t0,0x7fff
80008f88:	3508ffff 	ori	t0,t0,0xffff
80008f8c:	3c097fff 	lui	t1,0x7fff
80008f90:	3529ffff 	ori	t1,t1,0xffff
80008f94:	3c0a8002 	lui	t2,0x8002
80008f98:	354afff0 	ori	t2,t2,0xfff0
80008f9c:	ad480000 	sw	t0,0(t2)
80008fa0:	10000004 	b	80008fb4 <n88_j_ex_ds_test+0x7b0>
80008fa4:	00000000 	nop
80008fa8:	26522222 	addiu	s2,s2,8738
80008fac:	10000007 	b	80008fcc <n88_j_ex_ds_test+0x7c8>
80008fb0:	00000000 	nop
80008fb4:	26101111 	addiu	s0,s0,4369
80008fb8:	080023ea 	j	80008fa8 <n88_j_ex_ds_test+0x7a4>
80008fbc:	6f76e210 	0x6f76e210
80008fc0:	26100002 	addiu	s0,s0,2
80008fc4:	26100002 	addiu	s0,s0,2
80008fc8:	26100002 	addiu	s0,s0,2
80008fcc:	02129021 	addu	s2,s0,s2
80008fd0:	24141117 	li	s4,4375
80008fd4:	16920075 	bne	s4,s2,800091ac <inst_error>
80008fd8:	00000000 	nop
80008fdc:	3c144444 	lui	s4,0x4444
80008fe0:	16820072 	bne	s4,v0,800091ac <inst_error>
80008fe4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:26
80008fe8:	24020009 	li	v0,9
80008fec:	00008021 	move	s0,zero
80008ff0:	00009021 	move	s2,zero
80008ff4:	3c087fff 	lui	t0,0x7fff
80008ff8:	3508ffff 	ori	t0,t0,0xffff
80008ffc:	3c097fff 	lui	t1,0x7fff
80009000:	3529ffff 	ori	t1,t1,0xffff
80009004:	3c0a8002 	lui	t2,0x8002
80009008:	354afff0 	ori	t2,t2,0xfff0
8000900c:	ad480000 	sw	t0,0(t2)
80009010:	10000004 	b	80009024 <n88_j_ex_ds_test+0x820>
80009014:	00000000 	nop
80009018:	26522222 	addiu	s2,s2,8738
8000901c:	10000007 	b	8000903c <n88_j_ex_ds_test+0x838>
80009020:	00000000 	nop
80009024:	26101111 	addiu	s0,s0,4369
80009028:	0800240f 	j	8000903c <n88_j_ex_ds_test+0x838>
8000902c:	0000000c 	syscall
80009030:	26100002 	addiu	s0,s0,2
80009034:	26100002 	addiu	s0,s0,2
80009038:	26100002 	addiu	s0,s0,2
8000903c:	02129021 	addu	s2,s0,s2
80009040:	24141117 	li	s4,4375
80009044:	16920059 	bne	s4,s2,800091ac <inst_error>
80009048:	00000000 	nop
8000904c:	3c144444 	lui	s4,0x4444
80009050:	16820056 	bne	s4,v0,800091ac <inst_error>
80009054:	00000000 	nop
80009058:	24020009 	li	v0,9
8000905c:	00008021 	move	s0,zero
80009060:	00009021 	move	s2,zero
80009064:	3c087fff 	lui	t0,0x7fff
80009068:	3508ffff 	ori	t0,t0,0xffff
8000906c:	3c097fff 	lui	t1,0x7fff
80009070:	3529ffff 	ori	t1,t1,0xffff
80009074:	3c0a8002 	lui	t2,0x8002
80009078:	354afff0 	ori	t2,t2,0xfff0
8000907c:	ad480000 	sw	t0,0(t2)
80009080:	10000004 	b	80009094 <n88_j_ex_ds_test+0x890>
80009084:	00000000 	nop
80009088:	26522222 	addiu	s2,s2,8738
8000908c:	10000007 	b	800090ac <n88_j_ex_ds_test+0x8a8>
80009090:	00000000 	nop
80009094:	26101111 	addiu	s0,s0,4369
80009098:	08002422 	j	80009088 <n88_j_ex_ds_test+0x884>
8000909c:	0000000c 	syscall
800090a0:	26100002 	addiu	s0,s0,2
800090a4:	26100002 	addiu	s0,s0,2
800090a8:	26100002 	addiu	s0,s0,2
800090ac:	02129021 	addu	s2,s0,s2
800090b0:	24141117 	li	s4,4375
800090b4:	1692003d 	bne	s4,s2,800091ac <inst_error>
800090b8:	00000000 	nop
800090bc:	3c144444 	lui	s4,0x4444
800090c0:	1682003a 	bne	s4,v0,800091ac <inst_error>
800090c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:27
800090c8:	24020009 	li	v0,9
800090cc:	00008021 	move	s0,zero
800090d0:	00009021 	move	s2,zero
800090d4:	3c087fff 	lui	t0,0x7fff
800090d8:	3508ffff 	ori	t0,t0,0xffff
800090dc:	3c097fff 	lui	t1,0x7fff
800090e0:	3529ffff 	ori	t1,t1,0xffff
800090e4:	3c0a8002 	lui	t2,0x8002
800090e8:	354afff0 	ori	t2,t2,0xfff0
800090ec:	ad480000 	sw	t0,0(t2)
800090f0:	10000004 	b	80009104 <n88_j_ex_ds_test+0x900>
800090f4:	00000000 	nop
800090f8:	26522222 	addiu	s2,s2,8738
800090fc:	10000007 	b	8000911c <n88_j_ex_ds_test+0x918>
80009100:	00000000 	nop
80009104:	26101111 	addiu	s0,s0,4369
80009108:	08002447 	j	8000911c <n88_j_ex_ds_test+0x918>
8000910c:	0000000d 	break
80009110:	26100002 	addiu	s0,s0,2
80009114:	26100002 	addiu	s0,s0,2
80009118:	26100002 	addiu	s0,s0,2
8000911c:	02129021 	addu	s2,s0,s2
80009120:	24141117 	li	s4,4375
80009124:	16920021 	bne	s4,s2,800091ac <inst_error>
80009128:	00000000 	nop
8000912c:	3c144444 	lui	s4,0x4444
80009130:	1682001e 	bne	s4,v0,800091ac <inst_error>
80009134:	00000000 	nop
80009138:	24020009 	li	v0,9
8000913c:	00008021 	move	s0,zero
80009140:	00009021 	move	s2,zero
80009144:	3c087fff 	lui	t0,0x7fff
80009148:	3508ffff 	ori	t0,t0,0xffff
8000914c:	3c097fff 	lui	t1,0x7fff
80009150:	3529ffff 	ori	t1,t1,0xffff
80009154:	3c0a8002 	lui	t2,0x8002
80009158:	354afff0 	ori	t2,t2,0xfff0
8000915c:	ad480000 	sw	t0,0(t2)
80009160:	10000004 	b	80009174 <n88_j_ex_ds_test+0x970>
80009164:	00000000 	nop
80009168:	26522222 	addiu	s2,s2,8738
8000916c:	10000007 	b	8000918c <n88_j_ex_ds_test+0x988>
80009170:	00000000 	nop
80009174:	26101111 	addiu	s0,s0,4369
80009178:	0800245a 	j	80009168 <n88_j_ex_ds_test+0x964>
8000917c:	0000000d 	break
80009180:	26100002 	addiu	s0,s0,2
80009184:	26100002 	addiu	s0,s0,2
80009188:	26100002 	addiu	s0,s0,2
8000918c:	02129021 	addu	s2,s0,s2
80009190:	24141117 	li	s4,4375
80009194:	16920005 	bne	s4,s2,800091ac <inst_error>
80009198:	00000000 	nop
8000919c:	3c144444 	lui	s4,0x4444
800091a0:	16820002 	bne	s4,v0,800091ac <inst_error>
800091a4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:33
800091a8:	26730001 	addiu	s3,s3,1

800091ac <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:36
800091ac:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:37
800091b0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:38
800091b4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n88_j_ex_ds.S:39
800091b8:	00000000 	nop

800091bc <n71_bgtz_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:14
800091bc:	3c044700 	lui	a0,0x4700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:15
800091c0:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:17
800091c4:	00008021 	move	s0,zero
800091c8:	00009021 	move	s2,zero
800091cc:	3c081234 	lui	t0,0x1234
800091d0:	35085678 	ori	t0,t0,0x5678
800091d4:	3c091234 	lui	t1,0x1234
800091d8:	35295678 	ori	t1,t1,0x5678
800091dc:	3c0a8765 	lui	t2,0x8765
800091e0:	354a4321 	ori	t2,t2,0x4321
800091e4:	1000001e 	b	80009260 <n71_bgtz_ds_test+0xa4>
800091e8:	00000000 	nop
800091ec:	26101111 	addiu	s0,s0,4369
800091f0:	1d000036 	bgtz	t0,800092cc <n71_bgtz_ds_test+0x110>
800091f4:	26100001 	addiu	s0,s0,1
800091f8:	26100001 	addiu	s0,s0,1
800091fc:	26100001 	addiu	s0,s0,1
80009200:	26100001 	addiu	s0,s0,1
80009204:	10000031 	b	800092cc <n71_bgtz_ds_test+0x110>
80009208:	00000000 	nop
8000920c:	26522222 	addiu	s2,s2,8738
80009210:	1d400031 	bgtz	t2,800092d8 <n71_bgtz_ds_test+0x11c>
80009214:	26100001 	addiu	s0,s0,1
80009218:	26520001 	addiu	s2,s2,1
8000921c:	26520001 	addiu	s2,s2,1
80009220:	26520001 	addiu	s2,s2,1
80009224:	1000002c 	b	800092d8 <n71_bgtz_ds_test+0x11c>
80009228:	00000000 	nop
8000922c:	00000021 	move	zero,zero
80009230:	00000021 	move	zero,zero
80009234:	00000021 	move	zero,zero
80009238:	00000021 	move	zero,zero
8000923c:	00000021 	move	zero,zero
80009240:	00000021 	move	zero,zero
80009244:	00000021 	move	zero,zero
80009248:	00000021 	move	zero,zero
8000924c:	00000021 	move	zero,zero
80009250:	00000021 	move	zero,zero
80009254:	00000021 	move	zero,zero
80009258:	00000021 	move	zero,zero
8000925c:	00000021 	move	zero,zero
80009260:	1d00ffe2 	bgtz	t0,800091ec <n71_bgtz_ds_test+0x30>
80009264:	01098021 	addu	s0,t0,t1
80009268:	2610ffff 	addiu	s0,s0,-1
8000926c:	2610ffff 	addiu	s0,s0,-1
80009270:	1000ffde 	b	800091ec <n71_bgtz_ds_test+0x30>
80009274:	00000000 	nop
80009278:	1d40ffe4 	bgtz	t2,8000920c <n71_bgtz_ds_test+0x50>
8000927c:	020a8021 	addu	s0,s0,t2
80009280:	2610ffff 	addiu	s0,s0,-1
80009284:	2610ffff 	addiu	s0,s0,-1
80009288:	1000ffe0 	b	8000920c <n71_bgtz_ds_test+0x50>
8000928c:	00000000 	nop
80009290:	00000021 	move	zero,zero
80009294:	00000021 	move	zero,zero
80009298:	00000021 	move	zero,zero
8000929c:	00000021 	move	zero,zero
800092a0:	00000021 	move	zero,zero
800092a4:	00000021 	move	zero,zero
800092a8:	00000021 	move	zero,zero
800092ac:	00000021 	move	zero,zero
800092b0:	00000021 	move	zero,zero
800092b4:	00000021 	move	zero,zero
800092b8:	00000021 	move	zero,zero
800092bc:	00000021 	move	zero,zero
800092c0:	00000021 	move	zero,zero
800092c4:	00000021 	move	zero,zero
800092c8:	00000021 	move	zero,zero
800092cc:	012a9021 	addu	s2,t1,t2
800092d0:	1000ffe9 	b	80009278 <n71_bgtz_ds_test+0xbc>
800092d4:	00000000 	nop
800092d8:	02129021 	addu	s2,s0,s2
800092dc:	00000000 	nop
800092e0:	3c144567 	lui	s4,0x4567
800092e4:	3694bce0 	ori	s4,s4,0xbce0
800092e8:	16920004 	bne	s4,s2,800092fc <inst_error>
800092ec:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:19
800092f0:	14400002 	bnez	v0,800092fc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:20
800092f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:22
800092f8:	26730001 	addiu	s3,s3,1

800092fc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:25
800092fc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:26
80009300:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:27
80009304:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n71_bgtz_ds.S:28
80009308:	00000000 	nop

8000930c <n72_blez_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:14
8000930c:	3c044800 	lui	a0,0x4800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:15
80009310:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:17
80009314:	00008021 	move	s0,zero
80009318:	00009021 	move	s2,zero
8000931c:	3c081234 	lui	t0,0x1234
80009320:	35085678 	ori	t0,t0,0x5678
80009324:	3c091234 	lui	t1,0x1234
80009328:	35295678 	ori	t1,t1,0x5678
8000932c:	3c0a8765 	lui	t2,0x8765
80009330:	354a4321 	ori	t2,t2,0x4321
80009334:	1000001e 	b	800093b0 <n72_blez_ds_test+0xa4>
80009338:	00000000 	nop
8000933c:	26101111 	addiu	s0,s0,4369
80009340:	1900002e 	blez	t0,800093fc <n72_blez_ds_test+0xf0>
80009344:	26100001 	addiu	s0,s0,1
80009348:	26100001 	addiu	s0,s0,1
8000934c:	26100001 	addiu	s0,s0,1
80009350:	26100001 	addiu	s0,s0,1
80009354:	10000029 	b	800093fc <n72_blez_ds_test+0xf0>
80009358:	00000000 	nop
8000935c:	26522222 	addiu	s2,s2,8738
80009360:	19400029 	blez	t2,80009408 <n72_blez_ds_test+0xfc>
80009364:	26100001 	addiu	s0,s0,1
80009368:	26520001 	addiu	s2,s2,1
8000936c:	26520001 	addiu	s2,s2,1
80009370:	26520001 	addiu	s2,s2,1
80009374:	10000024 	b	80009408 <n72_blez_ds_test+0xfc>
80009378:	00000000 	nop
8000937c:	00000021 	move	zero,zero
80009380:	00000021 	move	zero,zero
80009384:	00000021 	move	zero,zero
80009388:	00000021 	move	zero,zero
8000938c:	00000021 	move	zero,zero
80009390:	00000021 	move	zero,zero
80009394:	00000021 	move	zero,zero
80009398:	00000021 	move	zero,zero
8000939c:	00000021 	move	zero,zero
800093a0:	00000021 	move	zero,zero
800093a4:	00000021 	move	zero,zero
800093a8:	00000021 	move	zero,zero
800093ac:	00000021 	move	zero,zero
800093b0:	1900ffe2 	blez	t0,8000933c <n72_blez_ds_test+0x30>
800093b4:	01098021 	addu	s0,t0,t1
800093b8:	2610ffff 	addiu	s0,s0,-1
800093bc:	2610ffff 	addiu	s0,s0,-1
800093c0:	1000ffde 	b	8000933c <n72_blez_ds_test+0x30>
800093c4:	00000000 	nop
800093c8:	1940ffe4 	blez	t2,8000935c <n72_blez_ds_test+0x50>
800093cc:	020a8021 	addu	s0,s0,t2
800093d0:	2610ffff 	addiu	s0,s0,-1
800093d4:	2610ffff 	addiu	s0,s0,-1
800093d8:	1000ffe0 	b	8000935c <n72_blez_ds_test+0x50>
800093dc:	00000000 	nop
800093e0:	00000021 	move	zero,zero
800093e4:	00000021 	move	zero,zero
800093e8:	00000021 	move	zero,zero
800093ec:	00000021 	move	zero,zero
800093f0:	00000021 	move	zero,zero
800093f4:	00000021 	move	zero,zero
800093f8:	00000021 	move	zero,zero
800093fc:	012a9021 	addu	s2,t1,t2
80009400:	1000fff1 	b	800093c8 <n72_blez_ds_test+0xbc>
80009404:	00000000 	nop
80009408:	02129021 	addu	s2,s0,s2
8000940c:	00000000 	nop
80009410:	3c144567 	lui	s4,0x4567
80009414:	3694bce0 	ori	s4,s4,0xbce0
80009418:	16920004 	bne	s4,s2,8000942c <inst_error>
8000941c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:19
80009420:	14400002 	bnez	v0,8000942c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:20
80009424:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:22
80009428:	26730001 	addiu	s3,s3,1

8000942c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:25
8000942c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:26
80009430:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:27
80009434:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n72_blez_ds.S:28
80009438:	00000000 	nop

8000943c <n84_blez_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:14
8000943c:	3c045400 	lui	a0,0x5400
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:17
80009440:	24020009 	li	v0,9
80009444:	00008021 	move	s0,zero
80009448:	00009021 	move	s2,zero
8000944c:	3c087fff 	lui	t0,0x7fff
80009450:	3508ffff 	ori	t0,t0,0xffff
80009454:	3c097fff 	lui	t1,0x7fff
80009458:	3529ffff 	ori	t1,t1,0xffff
8000945c:	3c0a8002 	lui	t2,0x8002
80009460:	354afff0 	ori	t2,t2,0xfff0
80009464:	ad480000 	sw	t0,0(t2)
80009468:	10000004 	b	8000947c <n84_blez_ex_ds_test+0x40>
8000946c:	00000000 	nop
80009470:	26522222 	addiu	s2,s2,8738
80009474:	10000007 	b	80009494 <n84_blez_ex_ds_test+0x58>
80009478:	00000000 	nop
8000947c:	26101111 	addiu	s0,s0,4369
80009480:	19400004 	blez	t2,80009494 <n84_blez_ex_ds_test+0x58>
80009484:	21147fff 	addi	s4,t0,32767
80009488:	26100002 	addiu	s0,s0,2
8000948c:	26100002 	addiu	s0,s0,2
80009490:	26100002 	addiu	s0,s0,2
80009494:	02129021 	addu	s2,s0,s2
80009498:	24141117 	li	s4,4375
8000949c:	169204b9 	bne	s4,s2,8000a784 <inst_error>
800094a0:	00000000 	nop
800094a4:	3c144444 	lui	s4,0x4444
800094a8:	168204b6 	bne	s4,v0,8000a784 <inst_error>
800094ac:	00000000 	nop
800094b0:	24020009 	li	v0,9
800094b4:	00008021 	move	s0,zero
800094b8:	00009021 	move	s2,zero
800094bc:	3c087fff 	lui	t0,0x7fff
800094c0:	3508ffff 	ori	t0,t0,0xffff
800094c4:	3c097fff 	lui	t1,0x7fff
800094c8:	3529ffff 	ori	t1,t1,0xffff
800094cc:	3c0a8002 	lui	t2,0x8002
800094d0:	354afff0 	ori	t2,t2,0xfff0
800094d4:	ad480000 	sw	t0,0(t2)
800094d8:	10000004 	b	800094ec <n84_blez_ex_ds_test+0xb0>
800094dc:	00000000 	nop
800094e0:	26522222 	addiu	s2,s2,8738
800094e4:	10000007 	b	80009504 <n84_blez_ex_ds_test+0xc8>
800094e8:	00000000 	nop
800094ec:	26101111 	addiu	s0,s0,4369
800094f0:	19000004 	blez	t0,80009504 <n84_blez_ex_ds_test+0xc8>
800094f4:	21147fff 	addi	s4,t0,32767
800094f8:	26100002 	addiu	s0,s0,2
800094fc:	26100002 	addiu	s0,s0,2
80009500:	26100002 	addiu	s0,s0,2
80009504:	02129021 	addu	s2,s0,s2
80009508:	24141117 	li	s4,4375
8000950c:	1692049d 	bne	s4,s2,8000a784 <inst_error>
80009510:	00000000 	nop
80009514:	3c144444 	lui	s4,0x4444
80009518:	1682049a 	bne	s4,v0,8000a784 <inst_error>
8000951c:	00000000 	nop
80009520:	24020009 	li	v0,9
80009524:	00008021 	move	s0,zero
80009528:	00009021 	move	s2,zero
8000952c:	3c087fff 	lui	t0,0x7fff
80009530:	3508ffff 	ori	t0,t0,0xffff
80009534:	3c097fff 	lui	t1,0x7fff
80009538:	3529ffff 	ori	t1,t1,0xffff
8000953c:	3c0a8002 	lui	t2,0x8002
80009540:	354afff0 	ori	t2,t2,0xfff0
80009544:	ad480000 	sw	t0,0(t2)
80009548:	10000004 	b	8000955c <n84_blez_ex_ds_test+0x120>
8000954c:	00000000 	nop
80009550:	26522222 	addiu	s2,s2,8738
80009554:	10000007 	b	80009574 <n84_blez_ex_ds_test+0x138>
80009558:	00000000 	nop
8000955c:	26101111 	addiu	s0,s0,4369
80009560:	1940fffb 	blez	t2,80009550 <n84_blez_ex_ds_test+0x114>
80009564:	21147fff 	addi	s4,t0,32767
80009568:	26100002 	addiu	s0,s0,2
8000956c:	26100002 	addiu	s0,s0,2
80009570:	26100002 	addiu	s0,s0,2
80009574:	02129021 	addu	s2,s0,s2
80009578:	24141117 	li	s4,4375
8000957c:	16920481 	bne	s4,s2,8000a784 <inst_error>
80009580:	00000000 	nop
80009584:	3c144444 	lui	s4,0x4444
80009588:	1682047e 	bne	s4,v0,8000a784 <inst_error>
8000958c:	00000000 	nop
80009590:	24020009 	li	v0,9
80009594:	00008021 	move	s0,zero
80009598:	00009021 	move	s2,zero
8000959c:	3c087fff 	lui	t0,0x7fff
800095a0:	3508ffff 	ori	t0,t0,0xffff
800095a4:	3c097fff 	lui	t1,0x7fff
800095a8:	3529ffff 	ori	t1,t1,0xffff
800095ac:	3c0a8002 	lui	t2,0x8002
800095b0:	354afff0 	ori	t2,t2,0xfff0
800095b4:	ad480000 	sw	t0,0(t2)
800095b8:	10000004 	b	800095cc <n84_blez_ex_ds_test+0x190>
800095bc:	00000000 	nop
800095c0:	26522222 	addiu	s2,s2,8738
800095c4:	10000007 	b	800095e4 <n84_blez_ex_ds_test+0x1a8>
800095c8:	00000000 	nop
800095cc:	26101111 	addiu	s0,s0,4369
800095d0:	1900fffb 	blez	t0,800095c0 <n84_blez_ex_ds_test+0x184>
800095d4:	21147fff 	addi	s4,t0,32767
800095d8:	26100002 	addiu	s0,s0,2
800095dc:	26100002 	addiu	s0,s0,2
800095e0:	26100002 	addiu	s0,s0,2
800095e4:	02129021 	addu	s2,s0,s2
800095e8:	24141117 	li	s4,4375
800095ec:	16920465 	bne	s4,s2,8000a784 <inst_error>
800095f0:	00000000 	nop
800095f4:	3c144444 	lui	s4,0x4444
800095f8:	16820462 	bne	s4,v0,8000a784 <inst_error>
800095fc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:18
80009600:	24020009 	li	v0,9
80009604:	00008021 	move	s0,zero
80009608:	00009021 	move	s2,zero
8000960c:	3c087fff 	lui	t0,0x7fff
80009610:	3508ffff 	ori	t0,t0,0xffff
80009614:	3c097fff 	lui	t1,0x7fff
80009618:	3529ffff 	ori	t1,t1,0xffff
8000961c:	3c0a8002 	lui	t2,0x8002
80009620:	354afff0 	ori	t2,t2,0xfff0
80009624:	ad480000 	sw	t0,0(t2)
80009628:	10000004 	b	8000963c <n84_blez_ex_ds_test+0x200>
8000962c:	00000000 	nop
80009630:	26522222 	addiu	s2,s2,8738
80009634:	10000007 	b	80009654 <n84_blez_ex_ds_test+0x218>
80009638:	00000000 	nop
8000963c:	26101111 	addiu	s0,s0,4369
80009640:	19400004 	blez	t2,80009654 <n84_blez_ex_ds_test+0x218>
80009644:	0109a020 	add	s4,t0,t1
80009648:	26100002 	addiu	s0,s0,2
8000964c:	26100002 	addiu	s0,s0,2
80009650:	26100002 	addiu	s0,s0,2
80009654:	02129021 	addu	s2,s0,s2
80009658:	24141117 	li	s4,4375
8000965c:	16920449 	bne	s4,s2,8000a784 <inst_error>
80009660:	00000000 	nop
80009664:	3c144444 	lui	s4,0x4444
80009668:	16820446 	bne	s4,v0,8000a784 <inst_error>
8000966c:	00000000 	nop
80009670:	24020009 	li	v0,9
80009674:	00008021 	move	s0,zero
80009678:	00009021 	move	s2,zero
8000967c:	3c087fff 	lui	t0,0x7fff
80009680:	3508ffff 	ori	t0,t0,0xffff
80009684:	3c097fff 	lui	t1,0x7fff
80009688:	3529ffff 	ori	t1,t1,0xffff
8000968c:	3c0a8002 	lui	t2,0x8002
80009690:	354afff0 	ori	t2,t2,0xfff0
80009694:	ad480000 	sw	t0,0(t2)
80009698:	10000004 	b	800096ac <n84_blez_ex_ds_test+0x270>
8000969c:	00000000 	nop
800096a0:	26522222 	addiu	s2,s2,8738
800096a4:	10000007 	b	800096c4 <n84_blez_ex_ds_test+0x288>
800096a8:	00000000 	nop
800096ac:	26101111 	addiu	s0,s0,4369
800096b0:	19000004 	blez	t0,800096c4 <n84_blez_ex_ds_test+0x288>
800096b4:	0109a020 	add	s4,t0,t1
800096b8:	26100002 	addiu	s0,s0,2
800096bc:	26100002 	addiu	s0,s0,2
800096c0:	26100002 	addiu	s0,s0,2
800096c4:	02129021 	addu	s2,s0,s2
800096c8:	24141117 	li	s4,4375
800096cc:	1692042d 	bne	s4,s2,8000a784 <inst_error>
800096d0:	00000000 	nop
800096d4:	3c144444 	lui	s4,0x4444
800096d8:	1682042a 	bne	s4,v0,8000a784 <inst_error>
800096dc:	00000000 	nop
800096e0:	24020009 	li	v0,9
800096e4:	00008021 	move	s0,zero
800096e8:	00009021 	move	s2,zero
800096ec:	3c087fff 	lui	t0,0x7fff
800096f0:	3508ffff 	ori	t0,t0,0xffff
800096f4:	3c097fff 	lui	t1,0x7fff
800096f8:	3529ffff 	ori	t1,t1,0xffff
800096fc:	3c0a8002 	lui	t2,0x8002
80009700:	354afff0 	ori	t2,t2,0xfff0
80009704:	ad480000 	sw	t0,0(t2)
80009708:	10000004 	b	8000971c <n84_blez_ex_ds_test+0x2e0>
8000970c:	00000000 	nop
80009710:	26522222 	addiu	s2,s2,8738
80009714:	10000007 	b	80009734 <n84_blez_ex_ds_test+0x2f8>
80009718:	00000000 	nop
8000971c:	26101111 	addiu	s0,s0,4369
80009720:	1940fffb 	blez	t2,80009710 <n84_blez_ex_ds_test+0x2d4>
80009724:	0109a020 	add	s4,t0,t1
80009728:	26100002 	addiu	s0,s0,2
8000972c:	26100002 	addiu	s0,s0,2
80009730:	26100002 	addiu	s0,s0,2
80009734:	02129021 	addu	s2,s0,s2
80009738:	24141117 	li	s4,4375
8000973c:	16920411 	bne	s4,s2,8000a784 <inst_error>
80009740:	00000000 	nop
80009744:	3c144444 	lui	s4,0x4444
80009748:	1682040e 	bne	s4,v0,8000a784 <inst_error>
8000974c:	00000000 	nop
80009750:	24020009 	li	v0,9
80009754:	00008021 	move	s0,zero
80009758:	00009021 	move	s2,zero
8000975c:	3c087fff 	lui	t0,0x7fff
80009760:	3508ffff 	ori	t0,t0,0xffff
80009764:	3c097fff 	lui	t1,0x7fff
80009768:	3529ffff 	ori	t1,t1,0xffff
8000976c:	3c0a8002 	lui	t2,0x8002
80009770:	354afff0 	ori	t2,t2,0xfff0
80009774:	ad480000 	sw	t0,0(t2)
80009778:	10000004 	b	8000978c <n84_blez_ex_ds_test+0x350>
8000977c:	00000000 	nop
80009780:	26522222 	addiu	s2,s2,8738
80009784:	10000007 	b	800097a4 <n84_blez_ex_ds_test+0x368>
80009788:	00000000 	nop
8000978c:	26101111 	addiu	s0,s0,4369
80009790:	1900fffb 	blez	t0,80009780 <n84_blez_ex_ds_test+0x344>
80009794:	0109a020 	add	s4,t0,t1
80009798:	26100002 	addiu	s0,s0,2
8000979c:	26100002 	addiu	s0,s0,2
800097a0:	26100002 	addiu	s0,s0,2
800097a4:	02129021 	addu	s2,s0,s2
800097a8:	24141117 	li	s4,4375
800097ac:	169203f5 	bne	s4,s2,8000a784 <inst_error>
800097b0:	00000000 	nop
800097b4:	3c144444 	lui	s4,0x4444
800097b8:	168203f2 	bne	s4,v0,8000a784 <inst_error>
800097bc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:19
800097c0:	24020009 	li	v0,9
800097c4:	00008021 	move	s0,zero
800097c8:	00009021 	move	s2,zero
800097cc:	3c087fff 	lui	t0,0x7fff
800097d0:	3508ffff 	ori	t0,t0,0xffff
800097d4:	3c097fff 	lui	t1,0x7fff
800097d8:	3529ffff 	ori	t1,t1,0xffff
800097dc:	3c0a8002 	lui	t2,0x8002
800097e0:	354afff0 	ori	t2,t2,0xfff0
800097e4:	ad480000 	sw	t0,0(t2)
800097e8:	10000004 	b	800097fc <n84_blez_ex_ds_test+0x3c0>
800097ec:	00000000 	nop
800097f0:	26522222 	addiu	s2,s2,8738
800097f4:	10000007 	b	80009814 <n84_blez_ex_ds_test+0x3d8>
800097f8:	00000000 	nop
800097fc:	26101111 	addiu	s0,s0,4369
80009800:	19400004 	blez	t2,80009814 <n84_blez_ex_ds_test+0x3d8>
80009804:	010aa022 	sub	s4,t0,t2
80009808:	26100002 	addiu	s0,s0,2
8000980c:	26100002 	addiu	s0,s0,2
80009810:	26100002 	addiu	s0,s0,2
80009814:	02129021 	addu	s2,s0,s2
80009818:	24141117 	li	s4,4375
8000981c:	169203d9 	bne	s4,s2,8000a784 <inst_error>
80009820:	00000000 	nop
80009824:	3c144444 	lui	s4,0x4444
80009828:	168203d6 	bne	s4,v0,8000a784 <inst_error>
8000982c:	00000000 	nop
80009830:	24020009 	li	v0,9
80009834:	00008021 	move	s0,zero
80009838:	00009021 	move	s2,zero
8000983c:	3c087fff 	lui	t0,0x7fff
80009840:	3508ffff 	ori	t0,t0,0xffff
80009844:	3c097fff 	lui	t1,0x7fff
80009848:	3529ffff 	ori	t1,t1,0xffff
8000984c:	3c0a8002 	lui	t2,0x8002
80009850:	354afff0 	ori	t2,t2,0xfff0
80009854:	ad480000 	sw	t0,0(t2)
80009858:	10000004 	b	8000986c <n84_blez_ex_ds_test+0x430>
8000985c:	00000000 	nop
80009860:	26522222 	addiu	s2,s2,8738
80009864:	10000007 	b	80009884 <n84_blez_ex_ds_test+0x448>
80009868:	00000000 	nop
8000986c:	26101111 	addiu	s0,s0,4369
80009870:	19000004 	blez	t0,80009884 <n84_blez_ex_ds_test+0x448>
80009874:	010aa022 	sub	s4,t0,t2
80009878:	26100002 	addiu	s0,s0,2
8000987c:	26100002 	addiu	s0,s0,2
80009880:	26100002 	addiu	s0,s0,2
80009884:	02129021 	addu	s2,s0,s2
80009888:	24141117 	li	s4,4375
8000988c:	169203bd 	bne	s4,s2,8000a784 <inst_error>
80009890:	00000000 	nop
80009894:	3c144444 	lui	s4,0x4444
80009898:	168203ba 	bne	s4,v0,8000a784 <inst_error>
8000989c:	00000000 	nop
800098a0:	24020009 	li	v0,9
800098a4:	00008021 	move	s0,zero
800098a8:	00009021 	move	s2,zero
800098ac:	3c087fff 	lui	t0,0x7fff
800098b0:	3508ffff 	ori	t0,t0,0xffff
800098b4:	3c097fff 	lui	t1,0x7fff
800098b8:	3529ffff 	ori	t1,t1,0xffff
800098bc:	3c0a8002 	lui	t2,0x8002
800098c0:	354afff0 	ori	t2,t2,0xfff0
800098c4:	ad480000 	sw	t0,0(t2)
800098c8:	10000004 	b	800098dc <n84_blez_ex_ds_test+0x4a0>
800098cc:	00000000 	nop
800098d0:	26522222 	addiu	s2,s2,8738
800098d4:	10000007 	b	800098f4 <n84_blez_ex_ds_test+0x4b8>
800098d8:	00000000 	nop
800098dc:	26101111 	addiu	s0,s0,4369
800098e0:	1940fffb 	blez	t2,800098d0 <n84_blez_ex_ds_test+0x494>
800098e4:	010aa022 	sub	s4,t0,t2
800098e8:	26100002 	addiu	s0,s0,2
800098ec:	26100002 	addiu	s0,s0,2
800098f0:	26100002 	addiu	s0,s0,2
800098f4:	02129021 	addu	s2,s0,s2
800098f8:	24141117 	li	s4,4375
800098fc:	169203a1 	bne	s4,s2,8000a784 <inst_error>
80009900:	00000000 	nop
80009904:	3c144444 	lui	s4,0x4444
80009908:	1682039e 	bne	s4,v0,8000a784 <inst_error>
8000990c:	00000000 	nop
80009910:	24020009 	li	v0,9
80009914:	00008021 	move	s0,zero
80009918:	00009021 	move	s2,zero
8000991c:	3c087fff 	lui	t0,0x7fff
80009920:	3508ffff 	ori	t0,t0,0xffff
80009924:	3c097fff 	lui	t1,0x7fff
80009928:	3529ffff 	ori	t1,t1,0xffff
8000992c:	3c0a8002 	lui	t2,0x8002
80009930:	354afff0 	ori	t2,t2,0xfff0
80009934:	ad480000 	sw	t0,0(t2)
80009938:	10000004 	b	8000994c <n84_blez_ex_ds_test+0x510>
8000993c:	00000000 	nop
80009940:	26522222 	addiu	s2,s2,8738
80009944:	10000007 	b	80009964 <n84_blez_ex_ds_test+0x528>
80009948:	00000000 	nop
8000994c:	26101111 	addiu	s0,s0,4369
80009950:	1900fffb 	blez	t0,80009940 <n84_blez_ex_ds_test+0x504>
80009954:	010aa022 	sub	s4,t0,t2
80009958:	26100002 	addiu	s0,s0,2
8000995c:	26100002 	addiu	s0,s0,2
80009960:	26100002 	addiu	s0,s0,2
80009964:	02129021 	addu	s2,s0,s2
80009968:	24141117 	li	s4,4375
8000996c:	16920385 	bne	s4,s2,8000a784 <inst_error>
80009970:	00000000 	nop
80009974:	3c144444 	lui	s4,0x4444
80009978:	16820382 	bne	s4,v0,8000a784 <inst_error>
8000997c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:20
80009980:	24020009 	li	v0,9
80009984:	00008021 	move	s0,zero
80009988:	00009021 	move	s2,zero
8000998c:	3c087fff 	lui	t0,0x7fff
80009990:	3508ffff 	ori	t0,t0,0xffff
80009994:	3c097fff 	lui	t1,0x7fff
80009998:	3529ffff 	ori	t1,t1,0xffff
8000999c:	3c0a8002 	lui	t2,0x8002
800099a0:	354afff0 	ori	t2,t2,0xfff0
800099a4:	ad480000 	sw	t0,0(t2)
800099a8:	10000004 	b	800099bc <n84_blez_ex_ds_test+0x580>
800099ac:	00000000 	nop
800099b0:	26522222 	addiu	s2,s2,8738
800099b4:	10000007 	b	800099d4 <n84_blez_ex_ds_test+0x598>
800099b8:	00000000 	nop
800099bc:	26101111 	addiu	s0,s0,4369
800099c0:	19400004 	blez	t2,800099d4 <n84_blez_ex_ds_test+0x598>
800099c4:	85540003 	lh	s4,3(t2)
800099c8:	26100002 	addiu	s0,s0,2
800099cc:	26100002 	addiu	s0,s0,2
800099d0:	26100002 	addiu	s0,s0,2
800099d4:	02129021 	addu	s2,s0,s2
800099d8:	24141117 	li	s4,4375
800099dc:	16920369 	bne	s4,s2,8000a784 <inst_error>
800099e0:	00000000 	nop
800099e4:	3c144444 	lui	s4,0x4444
800099e8:	16820366 	bne	s4,v0,8000a784 <inst_error>
800099ec:	00000000 	nop
800099f0:	24020009 	li	v0,9
800099f4:	00008021 	move	s0,zero
800099f8:	00009021 	move	s2,zero
800099fc:	3c087fff 	lui	t0,0x7fff
80009a00:	3508ffff 	ori	t0,t0,0xffff
80009a04:	3c097fff 	lui	t1,0x7fff
80009a08:	3529ffff 	ori	t1,t1,0xffff
80009a0c:	3c0a8002 	lui	t2,0x8002
80009a10:	354afff0 	ori	t2,t2,0xfff0
80009a14:	ad480000 	sw	t0,0(t2)
80009a18:	10000004 	b	80009a2c <n84_blez_ex_ds_test+0x5f0>
80009a1c:	00000000 	nop
80009a20:	26522222 	addiu	s2,s2,8738
80009a24:	10000007 	b	80009a44 <n84_blez_ex_ds_test+0x608>
80009a28:	00000000 	nop
80009a2c:	26101111 	addiu	s0,s0,4369
80009a30:	19000004 	blez	t0,80009a44 <n84_blez_ex_ds_test+0x608>
80009a34:	85540003 	lh	s4,3(t2)
80009a38:	26100002 	addiu	s0,s0,2
80009a3c:	26100002 	addiu	s0,s0,2
80009a40:	26100002 	addiu	s0,s0,2
80009a44:	02129021 	addu	s2,s0,s2
80009a48:	24141117 	li	s4,4375
80009a4c:	1692034d 	bne	s4,s2,8000a784 <inst_error>
80009a50:	00000000 	nop
80009a54:	3c144444 	lui	s4,0x4444
80009a58:	1682034a 	bne	s4,v0,8000a784 <inst_error>
80009a5c:	00000000 	nop
80009a60:	24020009 	li	v0,9
80009a64:	00008021 	move	s0,zero
80009a68:	00009021 	move	s2,zero
80009a6c:	3c087fff 	lui	t0,0x7fff
80009a70:	3508ffff 	ori	t0,t0,0xffff
80009a74:	3c097fff 	lui	t1,0x7fff
80009a78:	3529ffff 	ori	t1,t1,0xffff
80009a7c:	3c0a8002 	lui	t2,0x8002
80009a80:	354afff0 	ori	t2,t2,0xfff0
80009a84:	ad480000 	sw	t0,0(t2)
80009a88:	10000004 	b	80009a9c <n84_blez_ex_ds_test+0x660>
80009a8c:	00000000 	nop
80009a90:	26522222 	addiu	s2,s2,8738
80009a94:	10000007 	b	80009ab4 <n84_blez_ex_ds_test+0x678>
80009a98:	00000000 	nop
80009a9c:	26101111 	addiu	s0,s0,4369
80009aa0:	1940fffb 	blez	t2,80009a90 <n84_blez_ex_ds_test+0x654>
80009aa4:	85540003 	lh	s4,3(t2)
80009aa8:	26100002 	addiu	s0,s0,2
80009aac:	26100002 	addiu	s0,s0,2
80009ab0:	26100002 	addiu	s0,s0,2
80009ab4:	02129021 	addu	s2,s0,s2
80009ab8:	24141117 	li	s4,4375
80009abc:	16920331 	bne	s4,s2,8000a784 <inst_error>
80009ac0:	00000000 	nop
80009ac4:	3c144444 	lui	s4,0x4444
80009ac8:	1682032e 	bne	s4,v0,8000a784 <inst_error>
80009acc:	00000000 	nop
80009ad0:	24020009 	li	v0,9
80009ad4:	00008021 	move	s0,zero
80009ad8:	00009021 	move	s2,zero
80009adc:	3c087fff 	lui	t0,0x7fff
80009ae0:	3508ffff 	ori	t0,t0,0xffff
80009ae4:	3c097fff 	lui	t1,0x7fff
80009ae8:	3529ffff 	ori	t1,t1,0xffff
80009aec:	3c0a8002 	lui	t2,0x8002
80009af0:	354afff0 	ori	t2,t2,0xfff0
80009af4:	ad480000 	sw	t0,0(t2)
80009af8:	10000004 	b	80009b0c <n84_blez_ex_ds_test+0x6d0>
80009afc:	00000000 	nop
80009b00:	26522222 	addiu	s2,s2,8738
80009b04:	10000007 	b	80009b24 <n84_blez_ex_ds_test+0x6e8>
80009b08:	00000000 	nop
80009b0c:	26101111 	addiu	s0,s0,4369
80009b10:	1900fffb 	blez	t0,80009b00 <n84_blez_ex_ds_test+0x6c4>
80009b14:	85540003 	lh	s4,3(t2)
80009b18:	26100002 	addiu	s0,s0,2
80009b1c:	26100002 	addiu	s0,s0,2
80009b20:	26100002 	addiu	s0,s0,2
80009b24:	02129021 	addu	s2,s0,s2
80009b28:	24141117 	li	s4,4375
80009b2c:	16920315 	bne	s4,s2,8000a784 <inst_error>
80009b30:	00000000 	nop
80009b34:	3c144444 	lui	s4,0x4444
80009b38:	16820312 	bne	s4,v0,8000a784 <inst_error>
80009b3c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:21
80009b40:	24020009 	li	v0,9
80009b44:	00008021 	move	s0,zero
80009b48:	00009021 	move	s2,zero
80009b4c:	3c087fff 	lui	t0,0x7fff
80009b50:	3508ffff 	ori	t0,t0,0xffff
80009b54:	3c097fff 	lui	t1,0x7fff
80009b58:	3529ffff 	ori	t1,t1,0xffff
80009b5c:	3c0a8002 	lui	t2,0x8002
80009b60:	354afff0 	ori	t2,t2,0xfff0
80009b64:	ad480000 	sw	t0,0(t2)
80009b68:	10000004 	b	80009b7c <n84_blez_ex_ds_test+0x740>
80009b6c:	00000000 	nop
80009b70:	26522222 	addiu	s2,s2,8738
80009b74:	10000007 	b	80009b94 <n84_blez_ex_ds_test+0x758>
80009b78:	00000000 	nop
80009b7c:	26101111 	addiu	s0,s0,4369
80009b80:	19400004 	blez	t2,80009b94 <n84_blez_ex_ds_test+0x758>
80009b84:	95540003 	lhu	s4,3(t2)
80009b88:	26100002 	addiu	s0,s0,2
80009b8c:	26100002 	addiu	s0,s0,2
80009b90:	26100002 	addiu	s0,s0,2
80009b94:	02129021 	addu	s2,s0,s2
80009b98:	24141117 	li	s4,4375
80009b9c:	169202f9 	bne	s4,s2,8000a784 <inst_error>
80009ba0:	00000000 	nop
80009ba4:	3c144444 	lui	s4,0x4444
80009ba8:	168202f6 	bne	s4,v0,8000a784 <inst_error>
80009bac:	00000000 	nop
80009bb0:	24020009 	li	v0,9
80009bb4:	00008021 	move	s0,zero
80009bb8:	00009021 	move	s2,zero
80009bbc:	3c087fff 	lui	t0,0x7fff
80009bc0:	3508ffff 	ori	t0,t0,0xffff
80009bc4:	3c097fff 	lui	t1,0x7fff
80009bc8:	3529ffff 	ori	t1,t1,0xffff
80009bcc:	3c0a8002 	lui	t2,0x8002
80009bd0:	354afff0 	ori	t2,t2,0xfff0
80009bd4:	ad480000 	sw	t0,0(t2)
80009bd8:	10000004 	b	80009bec <n84_blez_ex_ds_test+0x7b0>
80009bdc:	00000000 	nop
80009be0:	26522222 	addiu	s2,s2,8738
80009be4:	10000007 	b	80009c04 <n84_blez_ex_ds_test+0x7c8>
80009be8:	00000000 	nop
80009bec:	26101111 	addiu	s0,s0,4369
80009bf0:	19000004 	blez	t0,80009c04 <n84_blez_ex_ds_test+0x7c8>
80009bf4:	95540003 	lhu	s4,3(t2)
80009bf8:	26100002 	addiu	s0,s0,2
80009bfc:	26100002 	addiu	s0,s0,2
80009c00:	26100002 	addiu	s0,s0,2
80009c04:	02129021 	addu	s2,s0,s2
80009c08:	24141117 	li	s4,4375
80009c0c:	169202dd 	bne	s4,s2,8000a784 <inst_error>
80009c10:	00000000 	nop
80009c14:	3c144444 	lui	s4,0x4444
80009c18:	168202da 	bne	s4,v0,8000a784 <inst_error>
80009c1c:	00000000 	nop
80009c20:	24020009 	li	v0,9
80009c24:	00008021 	move	s0,zero
80009c28:	00009021 	move	s2,zero
80009c2c:	3c087fff 	lui	t0,0x7fff
80009c30:	3508ffff 	ori	t0,t0,0xffff
80009c34:	3c097fff 	lui	t1,0x7fff
80009c38:	3529ffff 	ori	t1,t1,0xffff
80009c3c:	3c0a8002 	lui	t2,0x8002
80009c40:	354afff0 	ori	t2,t2,0xfff0
80009c44:	ad480000 	sw	t0,0(t2)
80009c48:	10000004 	b	80009c5c <n84_blez_ex_ds_test+0x820>
80009c4c:	00000000 	nop
80009c50:	26522222 	addiu	s2,s2,8738
80009c54:	10000007 	b	80009c74 <n84_blez_ex_ds_test+0x838>
80009c58:	00000000 	nop
80009c5c:	26101111 	addiu	s0,s0,4369
80009c60:	1940fffb 	blez	t2,80009c50 <n84_blez_ex_ds_test+0x814>
80009c64:	95540003 	lhu	s4,3(t2)
80009c68:	26100002 	addiu	s0,s0,2
80009c6c:	26100002 	addiu	s0,s0,2
80009c70:	26100002 	addiu	s0,s0,2
80009c74:	02129021 	addu	s2,s0,s2
80009c78:	24141117 	li	s4,4375
80009c7c:	169202c1 	bne	s4,s2,8000a784 <inst_error>
80009c80:	00000000 	nop
80009c84:	3c144444 	lui	s4,0x4444
80009c88:	168202be 	bne	s4,v0,8000a784 <inst_error>
80009c8c:	00000000 	nop
80009c90:	24020009 	li	v0,9
80009c94:	00008021 	move	s0,zero
80009c98:	00009021 	move	s2,zero
80009c9c:	3c087fff 	lui	t0,0x7fff
80009ca0:	3508ffff 	ori	t0,t0,0xffff
80009ca4:	3c097fff 	lui	t1,0x7fff
80009ca8:	3529ffff 	ori	t1,t1,0xffff
80009cac:	3c0a8002 	lui	t2,0x8002
80009cb0:	354afff0 	ori	t2,t2,0xfff0
80009cb4:	ad480000 	sw	t0,0(t2)
80009cb8:	10000004 	b	80009ccc <n84_blez_ex_ds_test+0x890>
80009cbc:	00000000 	nop
80009cc0:	26522222 	addiu	s2,s2,8738
80009cc4:	10000007 	b	80009ce4 <n84_blez_ex_ds_test+0x8a8>
80009cc8:	00000000 	nop
80009ccc:	26101111 	addiu	s0,s0,4369
80009cd0:	1900fffb 	blez	t0,80009cc0 <n84_blez_ex_ds_test+0x884>
80009cd4:	95540003 	lhu	s4,3(t2)
80009cd8:	26100002 	addiu	s0,s0,2
80009cdc:	26100002 	addiu	s0,s0,2
80009ce0:	26100002 	addiu	s0,s0,2
80009ce4:	02129021 	addu	s2,s0,s2
80009ce8:	24141117 	li	s4,4375
80009cec:	169202a5 	bne	s4,s2,8000a784 <inst_error>
80009cf0:	00000000 	nop
80009cf4:	3c144444 	lui	s4,0x4444
80009cf8:	168202a2 	bne	s4,v0,8000a784 <inst_error>
80009cfc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:22
80009d00:	24020009 	li	v0,9
80009d04:	00008021 	move	s0,zero
80009d08:	00009021 	move	s2,zero
80009d0c:	3c087fff 	lui	t0,0x7fff
80009d10:	3508ffff 	ori	t0,t0,0xffff
80009d14:	3c097fff 	lui	t1,0x7fff
80009d18:	3529ffff 	ori	t1,t1,0xffff
80009d1c:	3c0a8002 	lui	t2,0x8002
80009d20:	354afff0 	ori	t2,t2,0xfff0
80009d24:	ad480000 	sw	t0,0(t2)
80009d28:	10000004 	b	80009d3c <n84_blez_ex_ds_test+0x900>
80009d2c:	00000000 	nop
80009d30:	26522222 	addiu	s2,s2,8738
80009d34:	10000007 	b	80009d54 <n84_blez_ex_ds_test+0x918>
80009d38:	00000000 	nop
80009d3c:	26101111 	addiu	s0,s0,4369
80009d40:	19400004 	blez	t2,80009d54 <n84_blez_ex_ds_test+0x918>
80009d44:	8d540003 	lw	s4,3(t2)
80009d48:	26100002 	addiu	s0,s0,2
80009d4c:	26100002 	addiu	s0,s0,2
80009d50:	26100002 	addiu	s0,s0,2
80009d54:	02129021 	addu	s2,s0,s2
80009d58:	24141117 	li	s4,4375
80009d5c:	16920289 	bne	s4,s2,8000a784 <inst_error>
80009d60:	00000000 	nop
80009d64:	3c144444 	lui	s4,0x4444
80009d68:	16820286 	bne	s4,v0,8000a784 <inst_error>
80009d6c:	00000000 	nop
80009d70:	24020009 	li	v0,9
80009d74:	00008021 	move	s0,zero
80009d78:	00009021 	move	s2,zero
80009d7c:	3c087fff 	lui	t0,0x7fff
80009d80:	3508ffff 	ori	t0,t0,0xffff
80009d84:	3c097fff 	lui	t1,0x7fff
80009d88:	3529ffff 	ori	t1,t1,0xffff
80009d8c:	3c0a8002 	lui	t2,0x8002
80009d90:	354afff0 	ori	t2,t2,0xfff0
80009d94:	ad480000 	sw	t0,0(t2)
80009d98:	10000004 	b	80009dac <n84_blez_ex_ds_test+0x970>
80009d9c:	00000000 	nop
80009da0:	26522222 	addiu	s2,s2,8738
80009da4:	10000007 	b	80009dc4 <n84_blez_ex_ds_test+0x988>
80009da8:	00000000 	nop
80009dac:	26101111 	addiu	s0,s0,4369
80009db0:	19000004 	blez	t0,80009dc4 <n84_blez_ex_ds_test+0x988>
80009db4:	8d540003 	lw	s4,3(t2)
80009db8:	26100002 	addiu	s0,s0,2
80009dbc:	26100002 	addiu	s0,s0,2
80009dc0:	26100002 	addiu	s0,s0,2
80009dc4:	02129021 	addu	s2,s0,s2
80009dc8:	24141117 	li	s4,4375
80009dcc:	1692026d 	bne	s4,s2,8000a784 <inst_error>
80009dd0:	00000000 	nop
80009dd4:	3c144444 	lui	s4,0x4444
80009dd8:	1682026a 	bne	s4,v0,8000a784 <inst_error>
80009ddc:	00000000 	nop
80009de0:	24020009 	li	v0,9
80009de4:	00008021 	move	s0,zero
80009de8:	00009021 	move	s2,zero
80009dec:	3c087fff 	lui	t0,0x7fff
80009df0:	3508ffff 	ori	t0,t0,0xffff
80009df4:	3c097fff 	lui	t1,0x7fff
80009df8:	3529ffff 	ori	t1,t1,0xffff
80009dfc:	3c0a8002 	lui	t2,0x8002
80009e00:	354afff0 	ori	t2,t2,0xfff0
80009e04:	ad480000 	sw	t0,0(t2)
80009e08:	10000004 	b	80009e1c <n84_blez_ex_ds_test+0x9e0>
80009e0c:	00000000 	nop
80009e10:	26522222 	addiu	s2,s2,8738
80009e14:	10000007 	b	80009e34 <n84_blez_ex_ds_test+0x9f8>
80009e18:	00000000 	nop
80009e1c:	26101111 	addiu	s0,s0,4369
80009e20:	1940fffb 	blez	t2,80009e10 <n84_blez_ex_ds_test+0x9d4>
80009e24:	8d540003 	lw	s4,3(t2)
80009e28:	26100002 	addiu	s0,s0,2
80009e2c:	26100002 	addiu	s0,s0,2
80009e30:	26100002 	addiu	s0,s0,2
80009e34:	02129021 	addu	s2,s0,s2
80009e38:	24141117 	li	s4,4375
80009e3c:	16920251 	bne	s4,s2,8000a784 <inst_error>
80009e40:	00000000 	nop
80009e44:	3c144444 	lui	s4,0x4444
80009e48:	1682024e 	bne	s4,v0,8000a784 <inst_error>
80009e4c:	00000000 	nop
80009e50:	24020009 	li	v0,9
80009e54:	00008021 	move	s0,zero
80009e58:	00009021 	move	s2,zero
80009e5c:	3c087fff 	lui	t0,0x7fff
80009e60:	3508ffff 	ori	t0,t0,0xffff
80009e64:	3c097fff 	lui	t1,0x7fff
80009e68:	3529ffff 	ori	t1,t1,0xffff
80009e6c:	3c0a8002 	lui	t2,0x8002
80009e70:	354afff0 	ori	t2,t2,0xfff0
80009e74:	ad480000 	sw	t0,0(t2)
80009e78:	10000004 	b	80009e8c <n84_blez_ex_ds_test+0xa50>
80009e7c:	00000000 	nop
80009e80:	26522222 	addiu	s2,s2,8738
80009e84:	10000007 	b	80009ea4 <n84_blez_ex_ds_test+0xa68>
80009e88:	00000000 	nop
80009e8c:	26101111 	addiu	s0,s0,4369
80009e90:	1900fffb 	blez	t0,80009e80 <n84_blez_ex_ds_test+0xa44>
80009e94:	8d540003 	lw	s4,3(t2)
80009e98:	26100002 	addiu	s0,s0,2
80009e9c:	26100002 	addiu	s0,s0,2
80009ea0:	26100002 	addiu	s0,s0,2
80009ea4:	02129021 	addu	s2,s0,s2
80009ea8:	24141117 	li	s4,4375
80009eac:	16920235 	bne	s4,s2,8000a784 <inst_error>
80009eb0:	00000000 	nop
80009eb4:	3c144444 	lui	s4,0x4444
80009eb8:	16820232 	bne	s4,v0,8000a784 <inst_error>
80009ebc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:23
80009ec0:	24020009 	li	v0,9
80009ec4:	00008021 	move	s0,zero
80009ec8:	00009021 	move	s2,zero
80009ecc:	3c087fff 	lui	t0,0x7fff
80009ed0:	3508ffff 	ori	t0,t0,0xffff
80009ed4:	3c097fff 	lui	t1,0x7fff
80009ed8:	3529ffff 	ori	t1,t1,0xffff
80009edc:	3c0a8002 	lui	t2,0x8002
80009ee0:	354afff0 	ori	t2,t2,0xfff0
80009ee4:	ad480000 	sw	t0,0(t2)
80009ee8:	10000004 	b	80009efc <n84_blez_ex_ds_test+0xac0>
80009eec:	00000000 	nop
80009ef0:	26522222 	addiu	s2,s2,8738
80009ef4:	10000007 	b	80009f14 <n84_blez_ex_ds_test+0xad8>
80009ef8:	00000000 	nop
80009efc:	26101111 	addiu	s0,s0,4369
80009f00:	19400004 	blez	t2,80009f14 <n84_blez_ex_ds_test+0xad8>
80009f04:	a5540003 	sh	s4,3(t2)
80009f08:	26100002 	addiu	s0,s0,2
80009f0c:	26100002 	addiu	s0,s0,2
80009f10:	26100002 	addiu	s0,s0,2
80009f14:	02129021 	addu	s2,s0,s2
80009f18:	24141117 	li	s4,4375
80009f1c:	16920219 	bne	s4,s2,8000a784 <inst_error>
80009f20:	00000000 	nop
80009f24:	3c144444 	lui	s4,0x4444
80009f28:	16820216 	bne	s4,v0,8000a784 <inst_error>
80009f2c:	00000000 	nop
80009f30:	24020009 	li	v0,9
80009f34:	00008021 	move	s0,zero
80009f38:	00009021 	move	s2,zero
80009f3c:	3c087fff 	lui	t0,0x7fff
80009f40:	3508ffff 	ori	t0,t0,0xffff
80009f44:	3c097fff 	lui	t1,0x7fff
80009f48:	3529ffff 	ori	t1,t1,0xffff
80009f4c:	3c0a8002 	lui	t2,0x8002
80009f50:	354afff0 	ori	t2,t2,0xfff0
80009f54:	ad480000 	sw	t0,0(t2)
80009f58:	10000004 	b	80009f6c <n84_blez_ex_ds_test+0xb30>
80009f5c:	00000000 	nop
80009f60:	26522222 	addiu	s2,s2,8738
80009f64:	10000007 	b	80009f84 <n84_blez_ex_ds_test+0xb48>
80009f68:	00000000 	nop
80009f6c:	26101111 	addiu	s0,s0,4369
80009f70:	19000004 	blez	t0,80009f84 <n84_blez_ex_ds_test+0xb48>
80009f74:	a5540003 	sh	s4,3(t2)
80009f78:	26100002 	addiu	s0,s0,2
80009f7c:	26100002 	addiu	s0,s0,2
80009f80:	26100002 	addiu	s0,s0,2
80009f84:	02129021 	addu	s2,s0,s2
80009f88:	24141117 	li	s4,4375
80009f8c:	169201fd 	bne	s4,s2,8000a784 <inst_error>
80009f90:	00000000 	nop
80009f94:	3c144444 	lui	s4,0x4444
80009f98:	168201fa 	bne	s4,v0,8000a784 <inst_error>
80009f9c:	00000000 	nop
80009fa0:	24020009 	li	v0,9
80009fa4:	00008021 	move	s0,zero
80009fa8:	00009021 	move	s2,zero
80009fac:	3c087fff 	lui	t0,0x7fff
80009fb0:	3508ffff 	ori	t0,t0,0xffff
80009fb4:	3c097fff 	lui	t1,0x7fff
80009fb8:	3529ffff 	ori	t1,t1,0xffff
80009fbc:	3c0a8002 	lui	t2,0x8002
80009fc0:	354afff0 	ori	t2,t2,0xfff0
80009fc4:	ad480000 	sw	t0,0(t2)
80009fc8:	10000004 	b	80009fdc <n84_blez_ex_ds_test+0xba0>
80009fcc:	00000000 	nop
80009fd0:	26522222 	addiu	s2,s2,8738
80009fd4:	10000007 	b	80009ff4 <n84_blez_ex_ds_test+0xbb8>
80009fd8:	00000000 	nop
80009fdc:	26101111 	addiu	s0,s0,4369
80009fe0:	1940fffb 	blez	t2,80009fd0 <n84_blez_ex_ds_test+0xb94>
80009fe4:	a5540003 	sh	s4,3(t2)
80009fe8:	26100002 	addiu	s0,s0,2
80009fec:	26100002 	addiu	s0,s0,2
80009ff0:	26100002 	addiu	s0,s0,2
80009ff4:	02129021 	addu	s2,s0,s2
80009ff8:	24141117 	li	s4,4375
80009ffc:	169201e1 	bne	s4,s2,8000a784 <inst_error>
8000a000:	00000000 	nop
8000a004:	3c144444 	lui	s4,0x4444
8000a008:	168201de 	bne	s4,v0,8000a784 <inst_error>
8000a00c:	00000000 	nop
8000a010:	24020009 	li	v0,9
8000a014:	00008021 	move	s0,zero
8000a018:	00009021 	move	s2,zero
8000a01c:	3c087fff 	lui	t0,0x7fff
8000a020:	3508ffff 	ori	t0,t0,0xffff
8000a024:	3c097fff 	lui	t1,0x7fff
8000a028:	3529ffff 	ori	t1,t1,0xffff
8000a02c:	3c0a8002 	lui	t2,0x8002
8000a030:	354afff0 	ori	t2,t2,0xfff0
8000a034:	ad480000 	sw	t0,0(t2)
8000a038:	10000004 	b	8000a04c <n84_blez_ex_ds_test+0xc10>
8000a03c:	00000000 	nop
8000a040:	26522222 	addiu	s2,s2,8738
8000a044:	10000007 	b	8000a064 <n84_blez_ex_ds_test+0xc28>
8000a048:	00000000 	nop
8000a04c:	26101111 	addiu	s0,s0,4369
8000a050:	1900fffb 	blez	t0,8000a040 <n84_blez_ex_ds_test+0xc04>
8000a054:	a5540003 	sh	s4,3(t2)
8000a058:	26100002 	addiu	s0,s0,2
8000a05c:	26100002 	addiu	s0,s0,2
8000a060:	26100002 	addiu	s0,s0,2
8000a064:	02129021 	addu	s2,s0,s2
8000a068:	24141117 	li	s4,4375
8000a06c:	169201c5 	bne	s4,s2,8000a784 <inst_error>
8000a070:	00000000 	nop
8000a074:	3c144444 	lui	s4,0x4444
8000a078:	168201c2 	bne	s4,v0,8000a784 <inst_error>
8000a07c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:24
8000a080:	24020009 	li	v0,9
8000a084:	00008021 	move	s0,zero
8000a088:	00009021 	move	s2,zero
8000a08c:	3c087fff 	lui	t0,0x7fff
8000a090:	3508ffff 	ori	t0,t0,0xffff
8000a094:	3c097fff 	lui	t1,0x7fff
8000a098:	3529ffff 	ori	t1,t1,0xffff
8000a09c:	3c0a8002 	lui	t2,0x8002
8000a0a0:	354afff0 	ori	t2,t2,0xfff0
8000a0a4:	ad480000 	sw	t0,0(t2)
8000a0a8:	10000004 	b	8000a0bc <n84_blez_ex_ds_test+0xc80>
8000a0ac:	00000000 	nop
8000a0b0:	26522222 	addiu	s2,s2,8738
8000a0b4:	10000007 	b	8000a0d4 <n84_blez_ex_ds_test+0xc98>
8000a0b8:	00000000 	nop
8000a0bc:	26101111 	addiu	s0,s0,4369
8000a0c0:	19400004 	blez	t2,8000a0d4 <n84_blez_ex_ds_test+0xc98>
8000a0c4:	ad540003 	sw	s4,3(t2)
8000a0c8:	26100002 	addiu	s0,s0,2
8000a0cc:	26100002 	addiu	s0,s0,2
8000a0d0:	26100002 	addiu	s0,s0,2
8000a0d4:	02129021 	addu	s2,s0,s2
8000a0d8:	24141117 	li	s4,4375
8000a0dc:	169201a9 	bne	s4,s2,8000a784 <inst_error>
8000a0e0:	00000000 	nop
8000a0e4:	3c144444 	lui	s4,0x4444
8000a0e8:	168201a6 	bne	s4,v0,8000a784 <inst_error>
8000a0ec:	00000000 	nop
8000a0f0:	24020009 	li	v0,9
8000a0f4:	00008021 	move	s0,zero
8000a0f8:	00009021 	move	s2,zero
8000a0fc:	3c087fff 	lui	t0,0x7fff
8000a100:	3508ffff 	ori	t0,t0,0xffff
8000a104:	3c097fff 	lui	t1,0x7fff
8000a108:	3529ffff 	ori	t1,t1,0xffff
8000a10c:	3c0a8002 	lui	t2,0x8002
8000a110:	354afff0 	ori	t2,t2,0xfff0
8000a114:	ad480000 	sw	t0,0(t2)
8000a118:	10000004 	b	8000a12c <n84_blez_ex_ds_test+0xcf0>
8000a11c:	00000000 	nop
8000a120:	26522222 	addiu	s2,s2,8738
8000a124:	10000007 	b	8000a144 <n84_blez_ex_ds_test+0xd08>
8000a128:	00000000 	nop
8000a12c:	26101111 	addiu	s0,s0,4369
8000a130:	19000004 	blez	t0,8000a144 <n84_blez_ex_ds_test+0xd08>
8000a134:	ad540003 	sw	s4,3(t2)
8000a138:	26100002 	addiu	s0,s0,2
8000a13c:	26100002 	addiu	s0,s0,2
8000a140:	26100002 	addiu	s0,s0,2
8000a144:	02129021 	addu	s2,s0,s2
8000a148:	24141117 	li	s4,4375
8000a14c:	1692018d 	bne	s4,s2,8000a784 <inst_error>
8000a150:	00000000 	nop
8000a154:	3c144444 	lui	s4,0x4444
8000a158:	1682018a 	bne	s4,v0,8000a784 <inst_error>
8000a15c:	00000000 	nop
8000a160:	24020009 	li	v0,9
8000a164:	00008021 	move	s0,zero
8000a168:	00009021 	move	s2,zero
8000a16c:	3c087fff 	lui	t0,0x7fff
8000a170:	3508ffff 	ori	t0,t0,0xffff
8000a174:	3c097fff 	lui	t1,0x7fff
8000a178:	3529ffff 	ori	t1,t1,0xffff
8000a17c:	3c0a8002 	lui	t2,0x8002
8000a180:	354afff0 	ori	t2,t2,0xfff0
8000a184:	ad480000 	sw	t0,0(t2)
8000a188:	10000004 	b	8000a19c <n84_blez_ex_ds_test+0xd60>
8000a18c:	00000000 	nop
8000a190:	26522222 	addiu	s2,s2,8738
8000a194:	10000007 	b	8000a1b4 <n84_blez_ex_ds_test+0xd78>
8000a198:	00000000 	nop
8000a19c:	26101111 	addiu	s0,s0,4369
8000a1a0:	1940fffb 	blez	t2,8000a190 <n84_blez_ex_ds_test+0xd54>
8000a1a4:	ad540003 	sw	s4,3(t2)
8000a1a8:	26100002 	addiu	s0,s0,2
8000a1ac:	26100002 	addiu	s0,s0,2
8000a1b0:	26100002 	addiu	s0,s0,2
8000a1b4:	02129021 	addu	s2,s0,s2
8000a1b8:	24141117 	li	s4,4375
8000a1bc:	16920171 	bne	s4,s2,8000a784 <inst_error>
8000a1c0:	00000000 	nop
8000a1c4:	3c144444 	lui	s4,0x4444
8000a1c8:	1682016e 	bne	s4,v0,8000a784 <inst_error>
8000a1cc:	00000000 	nop
8000a1d0:	24020009 	li	v0,9
8000a1d4:	00008021 	move	s0,zero
8000a1d8:	00009021 	move	s2,zero
8000a1dc:	3c087fff 	lui	t0,0x7fff
8000a1e0:	3508ffff 	ori	t0,t0,0xffff
8000a1e4:	3c097fff 	lui	t1,0x7fff
8000a1e8:	3529ffff 	ori	t1,t1,0xffff
8000a1ec:	3c0a8002 	lui	t2,0x8002
8000a1f0:	354afff0 	ori	t2,t2,0xfff0
8000a1f4:	ad480000 	sw	t0,0(t2)
8000a1f8:	10000004 	b	8000a20c <n84_blez_ex_ds_test+0xdd0>
8000a1fc:	00000000 	nop
8000a200:	26522222 	addiu	s2,s2,8738
8000a204:	10000007 	b	8000a224 <n84_blez_ex_ds_test+0xde8>
8000a208:	00000000 	nop
8000a20c:	26101111 	addiu	s0,s0,4369
8000a210:	1900fffb 	blez	t0,8000a200 <n84_blez_ex_ds_test+0xdc4>
8000a214:	ad540003 	sw	s4,3(t2)
8000a218:	26100002 	addiu	s0,s0,2
8000a21c:	26100002 	addiu	s0,s0,2
8000a220:	26100002 	addiu	s0,s0,2
8000a224:	02129021 	addu	s2,s0,s2
8000a228:	24141117 	li	s4,4375
8000a22c:	16920155 	bne	s4,s2,8000a784 <inst_error>
8000a230:	00000000 	nop
8000a234:	3c144444 	lui	s4,0x4444
8000a238:	16820152 	bne	s4,v0,8000a784 <inst_error>
8000a23c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:25
8000a240:	24020009 	li	v0,9
8000a244:	00008021 	move	s0,zero
8000a248:	00009021 	move	s2,zero
8000a24c:	3c087fff 	lui	t0,0x7fff
8000a250:	3508ffff 	ori	t0,t0,0xffff
8000a254:	3c097fff 	lui	t1,0x7fff
8000a258:	3529ffff 	ori	t1,t1,0xffff
8000a25c:	3c0a8002 	lui	t2,0x8002
8000a260:	354afff0 	ori	t2,t2,0xfff0
8000a264:	ad480000 	sw	t0,0(t2)
8000a268:	10000004 	b	8000a27c <n84_blez_ex_ds_test+0xe40>
8000a26c:	00000000 	nop
8000a270:	26522222 	addiu	s2,s2,8738
8000a274:	10000007 	b	8000a294 <n84_blez_ex_ds_test+0xe58>
8000a278:	00000000 	nop
8000a27c:	26101111 	addiu	s0,s0,4369
8000a280:	19400004 	blez	t2,8000a294 <n84_blez_ex_ds_test+0xe58>
8000a284:	6f76e210 	0x6f76e210
8000a288:	26100002 	addiu	s0,s0,2
8000a28c:	26100002 	addiu	s0,s0,2
8000a290:	26100002 	addiu	s0,s0,2
8000a294:	02129021 	addu	s2,s0,s2
8000a298:	24141117 	li	s4,4375
8000a29c:	16920139 	bne	s4,s2,8000a784 <inst_error>
8000a2a0:	00000000 	nop
8000a2a4:	3c144444 	lui	s4,0x4444
8000a2a8:	16820136 	bne	s4,v0,8000a784 <inst_error>
8000a2ac:	00000000 	nop
8000a2b0:	24020009 	li	v0,9
8000a2b4:	00008021 	move	s0,zero
8000a2b8:	00009021 	move	s2,zero
8000a2bc:	3c087fff 	lui	t0,0x7fff
8000a2c0:	3508ffff 	ori	t0,t0,0xffff
8000a2c4:	3c097fff 	lui	t1,0x7fff
8000a2c8:	3529ffff 	ori	t1,t1,0xffff
8000a2cc:	3c0a8002 	lui	t2,0x8002
8000a2d0:	354afff0 	ori	t2,t2,0xfff0
8000a2d4:	ad480000 	sw	t0,0(t2)
8000a2d8:	10000004 	b	8000a2ec <n84_blez_ex_ds_test+0xeb0>
8000a2dc:	00000000 	nop
8000a2e0:	26522222 	addiu	s2,s2,8738
8000a2e4:	10000007 	b	8000a304 <n84_blez_ex_ds_test+0xec8>
8000a2e8:	00000000 	nop
8000a2ec:	26101111 	addiu	s0,s0,4369
8000a2f0:	19000004 	blez	t0,8000a304 <n84_blez_ex_ds_test+0xec8>
8000a2f4:	6f76e210 	0x6f76e210
8000a2f8:	26100002 	addiu	s0,s0,2
8000a2fc:	26100002 	addiu	s0,s0,2
8000a300:	26100002 	addiu	s0,s0,2
8000a304:	02129021 	addu	s2,s0,s2
8000a308:	24141117 	li	s4,4375
8000a30c:	1692011d 	bne	s4,s2,8000a784 <inst_error>
8000a310:	00000000 	nop
8000a314:	3c144444 	lui	s4,0x4444
8000a318:	1682011a 	bne	s4,v0,8000a784 <inst_error>
8000a31c:	00000000 	nop
8000a320:	24020009 	li	v0,9
8000a324:	00008021 	move	s0,zero
8000a328:	00009021 	move	s2,zero
8000a32c:	3c087fff 	lui	t0,0x7fff
8000a330:	3508ffff 	ori	t0,t0,0xffff
8000a334:	3c097fff 	lui	t1,0x7fff
8000a338:	3529ffff 	ori	t1,t1,0xffff
8000a33c:	3c0a8002 	lui	t2,0x8002
8000a340:	354afff0 	ori	t2,t2,0xfff0
8000a344:	ad480000 	sw	t0,0(t2)
8000a348:	10000004 	b	8000a35c <n84_blez_ex_ds_test+0xf20>
8000a34c:	00000000 	nop
8000a350:	26522222 	addiu	s2,s2,8738
8000a354:	10000007 	b	8000a374 <n84_blez_ex_ds_test+0xf38>
8000a358:	00000000 	nop
8000a35c:	26101111 	addiu	s0,s0,4369
8000a360:	1940fffb 	blez	t2,8000a350 <n84_blez_ex_ds_test+0xf14>
8000a364:	6f76e210 	0x6f76e210
8000a368:	26100002 	addiu	s0,s0,2
8000a36c:	26100002 	addiu	s0,s0,2
8000a370:	26100002 	addiu	s0,s0,2
8000a374:	02129021 	addu	s2,s0,s2
8000a378:	24141117 	li	s4,4375
8000a37c:	16920101 	bne	s4,s2,8000a784 <inst_error>
8000a380:	00000000 	nop
8000a384:	3c144444 	lui	s4,0x4444
8000a388:	168200fe 	bne	s4,v0,8000a784 <inst_error>
8000a38c:	00000000 	nop
8000a390:	24020009 	li	v0,9
8000a394:	00008021 	move	s0,zero
8000a398:	00009021 	move	s2,zero
8000a39c:	3c087fff 	lui	t0,0x7fff
8000a3a0:	3508ffff 	ori	t0,t0,0xffff
8000a3a4:	3c097fff 	lui	t1,0x7fff
8000a3a8:	3529ffff 	ori	t1,t1,0xffff
8000a3ac:	3c0a8002 	lui	t2,0x8002
8000a3b0:	354afff0 	ori	t2,t2,0xfff0
8000a3b4:	ad480000 	sw	t0,0(t2)
8000a3b8:	10000004 	b	8000a3cc <n84_blez_ex_ds_test+0xf90>
8000a3bc:	00000000 	nop
8000a3c0:	26522222 	addiu	s2,s2,8738
8000a3c4:	10000007 	b	8000a3e4 <n84_blez_ex_ds_test+0xfa8>
8000a3c8:	00000000 	nop
8000a3cc:	26101111 	addiu	s0,s0,4369
8000a3d0:	1900fffb 	blez	t0,8000a3c0 <n84_blez_ex_ds_test+0xf84>
8000a3d4:	6f76e210 	0x6f76e210
8000a3d8:	26100002 	addiu	s0,s0,2
8000a3dc:	26100002 	addiu	s0,s0,2
8000a3e0:	26100002 	addiu	s0,s0,2
8000a3e4:	02129021 	addu	s2,s0,s2
8000a3e8:	24141117 	li	s4,4375
8000a3ec:	169200e5 	bne	s4,s2,8000a784 <inst_error>
8000a3f0:	00000000 	nop
8000a3f4:	3c144444 	lui	s4,0x4444
8000a3f8:	168200e2 	bne	s4,v0,8000a784 <inst_error>
8000a3fc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:26
8000a400:	24020009 	li	v0,9
8000a404:	00008021 	move	s0,zero
8000a408:	00009021 	move	s2,zero
8000a40c:	3c087fff 	lui	t0,0x7fff
8000a410:	3508ffff 	ori	t0,t0,0xffff
8000a414:	3c097fff 	lui	t1,0x7fff
8000a418:	3529ffff 	ori	t1,t1,0xffff
8000a41c:	3c0a8002 	lui	t2,0x8002
8000a420:	354afff0 	ori	t2,t2,0xfff0
8000a424:	ad480000 	sw	t0,0(t2)
8000a428:	10000004 	b	8000a43c <n84_blez_ex_ds_test+0x1000>
8000a42c:	00000000 	nop
8000a430:	26522222 	addiu	s2,s2,8738
8000a434:	10000007 	b	8000a454 <n84_blez_ex_ds_test+0x1018>
8000a438:	00000000 	nop
8000a43c:	26101111 	addiu	s0,s0,4369
8000a440:	19400004 	blez	t2,8000a454 <n84_blez_ex_ds_test+0x1018>
8000a444:	0000000c 	syscall
8000a448:	26100002 	addiu	s0,s0,2
8000a44c:	26100002 	addiu	s0,s0,2
8000a450:	26100002 	addiu	s0,s0,2
8000a454:	02129021 	addu	s2,s0,s2
8000a458:	24141117 	li	s4,4375
8000a45c:	169200c9 	bne	s4,s2,8000a784 <inst_error>
8000a460:	00000000 	nop
8000a464:	3c144444 	lui	s4,0x4444
8000a468:	168200c6 	bne	s4,v0,8000a784 <inst_error>
8000a46c:	00000000 	nop
8000a470:	24020009 	li	v0,9
8000a474:	00008021 	move	s0,zero
8000a478:	00009021 	move	s2,zero
8000a47c:	3c087fff 	lui	t0,0x7fff
8000a480:	3508ffff 	ori	t0,t0,0xffff
8000a484:	3c097fff 	lui	t1,0x7fff
8000a488:	3529ffff 	ori	t1,t1,0xffff
8000a48c:	3c0a8002 	lui	t2,0x8002
8000a490:	354afff0 	ori	t2,t2,0xfff0
8000a494:	ad480000 	sw	t0,0(t2)
8000a498:	10000004 	b	8000a4ac <n84_blez_ex_ds_test+0x1070>
8000a49c:	00000000 	nop
8000a4a0:	26522222 	addiu	s2,s2,8738
8000a4a4:	10000007 	b	8000a4c4 <n84_blez_ex_ds_test+0x1088>
8000a4a8:	00000000 	nop
8000a4ac:	26101111 	addiu	s0,s0,4369
8000a4b0:	19000004 	blez	t0,8000a4c4 <n84_blez_ex_ds_test+0x1088>
8000a4b4:	0000000c 	syscall
8000a4b8:	26100002 	addiu	s0,s0,2
8000a4bc:	26100002 	addiu	s0,s0,2
8000a4c0:	26100002 	addiu	s0,s0,2
8000a4c4:	02129021 	addu	s2,s0,s2
8000a4c8:	24141117 	li	s4,4375
8000a4cc:	169200ad 	bne	s4,s2,8000a784 <inst_error>
8000a4d0:	00000000 	nop
8000a4d4:	3c144444 	lui	s4,0x4444
8000a4d8:	168200aa 	bne	s4,v0,8000a784 <inst_error>
8000a4dc:	00000000 	nop
8000a4e0:	24020009 	li	v0,9
8000a4e4:	00008021 	move	s0,zero
8000a4e8:	00009021 	move	s2,zero
8000a4ec:	3c087fff 	lui	t0,0x7fff
8000a4f0:	3508ffff 	ori	t0,t0,0xffff
8000a4f4:	3c097fff 	lui	t1,0x7fff
8000a4f8:	3529ffff 	ori	t1,t1,0xffff
8000a4fc:	3c0a8002 	lui	t2,0x8002
8000a500:	354afff0 	ori	t2,t2,0xfff0
8000a504:	ad480000 	sw	t0,0(t2)
8000a508:	10000004 	b	8000a51c <n84_blez_ex_ds_test+0x10e0>
8000a50c:	00000000 	nop
8000a510:	26522222 	addiu	s2,s2,8738
8000a514:	10000007 	b	8000a534 <n84_blez_ex_ds_test+0x10f8>
8000a518:	00000000 	nop
8000a51c:	26101111 	addiu	s0,s0,4369
8000a520:	1940fffb 	blez	t2,8000a510 <n84_blez_ex_ds_test+0x10d4>
8000a524:	0000000c 	syscall
8000a528:	26100002 	addiu	s0,s0,2
8000a52c:	26100002 	addiu	s0,s0,2
8000a530:	26100002 	addiu	s0,s0,2
8000a534:	02129021 	addu	s2,s0,s2
8000a538:	24141117 	li	s4,4375
8000a53c:	16920091 	bne	s4,s2,8000a784 <inst_error>
8000a540:	00000000 	nop
8000a544:	3c144444 	lui	s4,0x4444
8000a548:	1682008e 	bne	s4,v0,8000a784 <inst_error>
8000a54c:	00000000 	nop
8000a550:	24020009 	li	v0,9
8000a554:	00008021 	move	s0,zero
8000a558:	00009021 	move	s2,zero
8000a55c:	3c087fff 	lui	t0,0x7fff
8000a560:	3508ffff 	ori	t0,t0,0xffff
8000a564:	3c097fff 	lui	t1,0x7fff
8000a568:	3529ffff 	ori	t1,t1,0xffff
8000a56c:	3c0a8002 	lui	t2,0x8002
8000a570:	354afff0 	ori	t2,t2,0xfff0
8000a574:	ad480000 	sw	t0,0(t2)
8000a578:	10000004 	b	8000a58c <n84_blez_ex_ds_test+0x1150>
8000a57c:	00000000 	nop
8000a580:	26522222 	addiu	s2,s2,8738
8000a584:	10000007 	b	8000a5a4 <n84_blez_ex_ds_test+0x1168>
8000a588:	00000000 	nop
8000a58c:	26101111 	addiu	s0,s0,4369
8000a590:	1900fffb 	blez	t0,8000a580 <n84_blez_ex_ds_test+0x1144>
8000a594:	0000000c 	syscall
8000a598:	26100002 	addiu	s0,s0,2
8000a59c:	26100002 	addiu	s0,s0,2
8000a5a0:	26100002 	addiu	s0,s0,2
8000a5a4:	02129021 	addu	s2,s0,s2
8000a5a8:	24141117 	li	s4,4375
8000a5ac:	16920075 	bne	s4,s2,8000a784 <inst_error>
8000a5b0:	00000000 	nop
8000a5b4:	3c144444 	lui	s4,0x4444
8000a5b8:	16820072 	bne	s4,v0,8000a784 <inst_error>
8000a5bc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:27
8000a5c0:	24020009 	li	v0,9
8000a5c4:	00008021 	move	s0,zero
8000a5c8:	00009021 	move	s2,zero
8000a5cc:	3c087fff 	lui	t0,0x7fff
8000a5d0:	3508ffff 	ori	t0,t0,0xffff
8000a5d4:	3c097fff 	lui	t1,0x7fff
8000a5d8:	3529ffff 	ori	t1,t1,0xffff
8000a5dc:	3c0a8002 	lui	t2,0x8002
8000a5e0:	354afff0 	ori	t2,t2,0xfff0
8000a5e4:	ad480000 	sw	t0,0(t2)
8000a5e8:	10000004 	b	8000a5fc <n84_blez_ex_ds_test+0x11c0>
8000a5ec:	00000000 	nop
8000a5f0:	26522222 	addiu	s2,s2,8738
8000a5f4:	10000007 	b	8000a614 <n84_blez_ex_ds_test+0x11d8>
8000a5f8:	00000000 	nop
8000a5fc:	26101111 	addiu	s0,s0,4369
8000a600:	19400004 	blez	t2,8000a614 <n84_blez_ex_ds_test+0x11d8>
8000a604:	0000000d 	break
8000a608:	26100002 	addiu	s0,s0,2
8000a60c:	26100002 	addiu	s0,s0,2
8000a610:	26100002 	addiu	s0,s0,2
8000a614:	02129021 	addu	s2,s0,s2
8000a618:	24141117 	li	s4,4375
8000a61c:	16920059 	bne	s4,s2,8000a784 <inst_error>
8000a620:	00000000 	nop
8000a624:	3c144444 	lui	s4,0x4444
8000a628:	16820056 	bne	s4,v0,8000a784 <inst_error>
8000a62c:	00000000 	nop
8000a630:	24020009 	li	v0,9
8000a634:	00008021 	move	s0,zero
8000a638:	00009021 	move	s2,zero
8000a63c:	3c087fff 	lui	t0,0x7fff
8000a640:	3508ffff 	ori	t0,t0,0xffff
8000a644:	3c097fff 	lui	t1,0x7fff
8000a648:	3529ffff 	ori	t1,t1,0xffff
8000a64c:	3c0a8002 	lui	t2,0x8002
8000a650:	354afff0 	ori	t2,t2,0xfff0
8000a654:	ad480000 	sw	t0,0(t2)
8000a658:	10000004 	b	8000a66c <n84_blez_ex_ds_test+0x1230>
8000a65c:	00000000 	nop
8000a660:	26522222 	addiu	s2,s2,8738
8000a664:	10000007 	b	8000a684 <n84_blez_ex_ds_test+0x1248>
8000a668:	00000000 	nop
8000a66c:	26101111 	addiu	s0,s0,4369
8000a670:	19000004 	blez	t0,8000a684 <n84_blez_ex_ds_test+0x1248>
8000a674:	0000000d 	break
8000a678:	26100002 	addiu	s0,s0,2
8000a67c:	26100002 	addiu	s0,s0,2
8000a680:	26100002 	addiu	s0,s0,2
8000a684:	02129021 	addu	s2,s0,s2
8000a688:	24141117 	li	s4,4375
8000a68c:	1692003d 	bne	s4,s2,8000a784 <inst_error>
8000a690:	00000000 	nop
8000a694:	3c144444 	lui	s4,0x4444
8000a698:	1682003a 	bne	s4,v0,8000a784 <inst_error>
8000a69c:	00000000 	nop
8000a6a0:	24020009 	li	v0,9
8000a6a4:	00008021 	move	s0,zero
8000a6a8:	00009021 	move	s2,zero
8000a6ac:	3c087fff 	lui	t0,0x7fff
8000a6b0:	3508ffff 	ori	t0,t0,0xffff
8000a6b4:	3c097fff 	lui	t1,0x7fff
8000a6b8:	3529ffff 	ori	t1,t1,0xffff
8000a6bc:	3c0a8002 	lui	t2,0x8002
8000a6c0:	354afff0 	ori	t2,t2,0xfff0
8000a6c4:	ad480000 	sw	t0,0(t2)
8000a6c8:	10000004 	b	8000a6dc <n84_blez_ex_ds_test+0x12a0>
8000a6cc:	00000000 	nop
8000a6d0:	26522222 	addiu	s2,s2,8738
8000a6d4:	10000007 	b	8000a6f4 <n84_blez_ex_ds_test+0x12b8>
8000a6d8:	00000000 	nop
8000a6dc:	26101111 	addiu	s0,s0,4369
8000a6e0:	1940fffb 	blez	t2,8000a6d0 <n84_blez_ex_ds_test+0x1294>
8000a6e4:	0000000d 	break
8000a6e8:	26100002 	addiu	s0,s0,2
8000a6ec:	26100002 	addiu	s0,s0,2
8000a6f0:	26100002 	addiu	s0,s0,2
8000a6f4:	02129021 	addu	s2,s0,s2
8000a6f8:	24141117 	li	s4,4375
8000a6fc:	16920021 	bne	s4,s2,8000a784 <inst_error>
8000a700:	00000000 	nop
8000a704:	3c144444 	lui	s4,0x4444
8000a708:	1682001e 	bne	s4,v0,8000a784 <inst_error>
8000a70c:	00000000 	nop
8000a710:	24020009 	li	v0,9
8000a714:	00008021 	move	s0,zero
8000a718:	00009021 	move	s2,zero
8000a71c:	3c087fff 	lui	t0,0x7fff
8000a720:	3508ffff 	ori	t0,t0,0xffff
8000a724:	3c097fff 	lui	t1,0x7fff
8000a728:	3529ffff 	ori	t1,t1,0xffff
8000a72c:	3c0a8002 	lui	t2,0x8002
8000a730:	354afff0 	ori	t2,t2,0xfff0
8000a734:	ad480000 	sw	t0,0(t2)
8000a738:	10000004 	b	8000a74c <n84_blez_ex_ds_test+0x1310>
8000a73c:	00000000 	nop
8000a740:	26522222 	addiu	s2,s2,8738
8000a744:	10000007 	b	8000a764 <n84_blez_ex_ds_test+0x1328>
8000a748:	00000000 	nop
8000a74c:	26101111 	addiu	s0,s0,4369
8000a750:	1900fffb 	blez	t0,8000a740 <n84_blez_ex_ds_test+0x1304>
8000a754:	0000000d 	break
8000a758:	26100002 	addiu	s0,s0,2
8000a75c:	26100002 	addiu	s0,s0,2
8000a760:	26100002 	addiu	s0,s0,2
8000a764:	02129021 	addu	s2,s0,s2
8000a768:	24141117 	li	s4,4375
8000a76c:	16920005 	bne	s4,s2,8000a784 <inst_error>
8000a770:	00000000 	nop
8000a774:	3c144444 	lui	s4,0x4444
8000a778:	16820002 	bne	s4,v0,8000a784 <inst_error>
8000a77c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:33
8000a780:	26730001 	addiu	s3,s3,1

8000a784 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:36
8000a784:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:37
8000a788:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:38
8000a78c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n84_blez_ex_ds.S:39
8000a790:	00000000 	nop

8000a794 <n77_jal_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:14
8000a794:	3c044d00 	lui	a0,0x4d00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:15
8000a798:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:17
8000a79c:	001f6021 	addu	t4,zero,ra
8000a7a0:	00008021 	move	s0,zero
8000a7a4:	00009021 	move	s2,zero
8000a7a8:	3c081234 	lui	t0,0x1234
8000a7ac:	35085678 	ori	t0,t0,0x5678
8000a7b0:	3c091234 	lui	t1,0x1234
8000a7b4:	35295678 	ori	t1,t1,0x5678
8000a7b8:	3c0a8765 	lui	t2,0x8765
8000a7bc:	354a4321 	ori	t2,t2,0x4321
8000a7c0:	10000010 	b	8000a804 <n77_jal_ds_test+0x70>
8000a7c4:	00000000 	nop
8000a7c8:	26101111 	addiu	s0,s0,4369
8000a7cc:	0c002a16 	jal	8000a858 <n77_jal_ds_test+0xc4>
8000a7d0:	26100001 	addiu	s0,s0,1
8000a7d4:	26100001 	addiu	s0,s0,1
8000a7d8:	26100001 	addiu	s0,s0,1
8000a7dc:	26100001 	addiu	s0,s0,1
8000a7e0:	1000001d 	b	8000a858 <n77_jal_ds_test+0xc4>
8000a7e4:	00000000 	nop
8000a7e8:	00000021 	move	zero,zero
8000a7ec:	00000021 	move	zero,zero
8000a7f0:	00000021 	move	zero,zero
8000a7f4:	00000021 	move	zero,zero
8000a7f8:	00000021 	move	zero,zero
8000a7fc:	00000021 	move	zero,zero
8000a800:	00000021 	move	zero,zero
8000a804:	0c0029f2 	jal	8000a7c8 <n77_jal_ds_test+0x34>
8000a808:	01098021 	addu	s0,t0,t1
8000a80c:	2610ffff 	addiu	s0,s0,-1
8000a810:	2610ffff 	addiu	s0,s0,-1
8000a814:	1000ffec 	b	8000a7c8 <n77_jal_ds_test+0x34>
8000a818:	00000000 	nop
8000a81c:	00000021 	move	zero,zero
8000a820:	00000021 	move	zero,zero
8000a824:	00000021 	move	zero,zero
8000a828:	00000021 	move	zero,zero
8000a82c:	00000021 	move	zero,zero
8000a830:	00000021 	move	zero,zero
8000a834:	00000021 	move	zero,zero
8000a838:	00000021 	move	zero,zero
8000a83c:	00000021 	move	zero,zero
8000a840:	00000021 	move	zero,zero
8000a844:	00000021 	move	zero,zero
8000a848:	00000021 	move	zero,zero
8000a84c:	00000021 	move	zero,zero
8000a850:	00000021 	move	zero,zero
8000a854:	00000021 	move	zero,zero
8000a858:	012a9021 	addu	s2,t1,t2
8000a85c:	02129021 	addu	s2,s0,s2
8000a860:	00000000 	nop
8000a864:	0180f821 	move	ra,t4
8000a868:	3c14be02 	lui	s4,0xbe02
8000a86c:	3694579b 	ori	s4,s4,0x579b
8000a870:	16920004 	bne	s4,s2,8000a884 <inst_error>
8000a874:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:19
8000a878:	14400002 	bnez	v0,8000a884 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:20
8000a87c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:22
8000a880:	26730001 	addiu	s3,s3,1

8000a884 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:25
8000a884:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:26
8000a888:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:27
8000a88c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n77_jal_ds.S:28
8000a890:	00000000 	nop

8000a894 <n90_jr_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:14
8000a894:	3c045a00 	lui	a0,0x5a00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:17
8000a898:	24020009 	li	v0,9
8000a89c:	00008021 	move	s0,zero
8000a8a0:	00009021 	move	s2,zero
8000a8a4:	3c087fff 	lui	t0,0x7fff
8000a8a8:	3508ffff 	ori	t0,t0,0xffff
8000a8ac:	3c097fff 	lui	t1,0x7fff
8000a8b0:	3529ffff 	ori	t1,t1,0xffff
8000a8b4:	3c0a8002 	lui	t2,0x8002
8000a8b8:	354afff0 	ori	t2,t2,0xfff0
8000a8bc:	ad480000 	sw	t0,0(t2)
8000a8c0:	10000004 	b	8000a8d4 <n90_jr_ex_ds_test+0x40>
8000a8c4:	00000000 	nop
8000a8c8:	26522222 	addiu	s2,s2,8738
8000a8cc:	10000009 	b	8000a8f4 <n90_jr_ex_ds_test+0x60>
8000a8d0:	00000000 	nop
8000a8d4:	26101111 	addiu	s0,s0,4369
8000a8d8:	3c0d8001 	lui	t5,0x8001
8000a8dc:	25ada8f4 	addiu	t5,t5,-22284
8000a8e0:	01a00008 	jr	t5
8000a8e4:	21147fff 	addi	s4,t0,32767
8000a8e8:	26100002 	addiu	s0,s0,2
8000a8ec:	26100002 	addiu	s0,s0,2
8000a8f0:	26100002 	addiu	s0,s0,2
8000a8f4:	02129021 	addu	s2,s0,s2
8000a8f8:	24141117 	li	s4,4375
8000a8fc:	1692027b 	bne	s4,s2,8000b2ec <inst_error>
8000a900:	00000000 	nop
8000a904:	3c144444 	lui	s4,0x4444
8000a908:	16820278 	bne	s4,v0,8000b2ec <inst_error>
8000a90c:	00000000 	nop
8000a910:	24020009 	li	v0,9
8000a914:	00008021 	move	s0,zero
8000a918:	00009021 	move	s2,zero
8000a91c:	3c087fff 	lui	t0,0x7fff
8000a920:	3508ffff 	ori	t0,t0,0xffff
8000a924:	3c097fff 	lui	t1,0x7fff
8000a928:	3529ffff 	ori	t1,t1,0xffff
8000a92c:	3c0a8002 	lui	t2,0x8002
8000a930:	354afff0 	ori	t2,t2,0xfff0
8000a934:	ad480000 	sw	t0,0(t2)
8000a938:	10000004 	b	8000a94c <n90_jr_ex_ds_test+0xb8>
8000a93c:	00000000 	nop
8000a940:	26522222 	addiu	s2,s2,8738
8000a944:	10000009 	b	8000a96c <n90_jr_ex_ds_test+0xd8>
8000a948:	00000000 	nop
8000a94c:	26101111 	addiu	s0,s0,4369
8000a950:	3c0d8001 	lui	t5,0x8001
8000a954:	25ada940 	addiu	t5,t5,-22208
8000a958:	01a00008 	jr	t5
8000a95c:	21147fff 	addi	s4,t0,32767
8000a960:	26100002 	addiu	s0,s0,2
8000a964:	26100002 	addiu	s0,s0,2
8000a968:	26100002 	addiu	s0,s0,2
8000a96c:	02129021 	addu	s2,s0,s2
8000a970:	24141117 	li	s4,4375
8000a974:	1692025d 	bne	s4,s2,8000b2ec <inst_error>
8000a978:	00000000 	nop
8000a97c:	3c144444 	lui	s4,0x4444
8000a980:	1682025a 	bne	s4,v0,8000b2ec <inst_error>
8000a984:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:18
8000a988:	24020009 	li	v0,9
8000a98c:	00008021 	move	s0,zero
8000a990:	00009021 	move	s2,zero
8000a994:	3c087fff 	lui	t0,0x7fff
8000a998:	3508ffff 	ori	t0,t0,0xffff
8000a99c:	3c097fff 	lui	t1,0x7fff
8000a9a0:	3529ffff 	ori	t1,t1,0xffff
8000a9a4:	3c0a8002 	lui	t2,0x8002
8000a9a8:	354afff0 	ori	t2,t2,0xfff0
8000a9ac:	ad480000 	sw	t0,0(t2)
8000a9b0:	10000004 	b	8000a9c4 <n90_jr_ex_ds_test+0x130>
8000a9b4:	00000000 	nop
8000a9b8:	26522222 	addiu	s2,s2,8738
8000a9bc:	10000009 	b	8000a9e4 <n90_jr_ex_ds_test+0x150>
8000a9c0:	00000000 	nop
8000a9c4:	26101111 	addiu	s0,s0,4369
8000a9c8:	3c0d8001 	lui	t5,0x8001
8000a9cc:	25ada9e4 	addiu	t5,t5,-22044
8000a9d0:	01a00008 	jr	t5
8000a9d4:	0109a020 	add	s4,t0,t1
8000a9d8:	26100002 	addiu	s0,s0,2
8000a9dc:	26100002 	addiu	s0,s0,2
8000a9e0:	26100002 	addiu	s0,s0,2
8000a9e4:	02129021 	addu	s2,s0,s2
8000a9e8:	24141117 	li	s4,4375
8000a9ec:	1692023f 	bne	s4,s2,8000b2ec <inst_error>
8000a9f0:	00000000 	nop
8000a9f4:	3c144444 	lui	s4,0x4444
8000a9f8:	1682023c 	bne	s4,v0,8000b2ec <inst_error>
8000a9fc:	00000000 	nop
8000aa00:	24020009 	li	v0,9
8000aa04:	00008021 	move	s0,zero
8000aa08:	00009021 	move	s2,zero
8000aa0c:	3c087fff 	lui	t0,0x7fff
8000aa10:	3508ffff 	ori	t0,t0,0xffff
8000aa14:	3c097fff 	lui	t1,0x7fff
8000aa18:	3529ffff 	ori	t1,t1,0xffff
8000aa1c:	3c0a8002 	lui	t2,0x8002
8000aa20:	354afff0 	ori	t2,t2,0xfff0
8000aa24:	ad480000 	sw	t0,0(t2)
8000aa28:	10000004 	b	8000aa3c <n90_jr_ex_ds_test+0x1a8>
8000aa2c:	00000000 	nop
8000aa30:	26522222 	addiu	s2,s2,8738
8000aa34:	10000009 	b	8000aa5c <n90_jr_ex_ds_test+0x1c8>
8000aa38:	00000000 	nop
8000aa3c:	26101111 	addiu	s0,s0,4369
8000aa40:	3c0d8001 	lui	t5,0x8001
8000aa44:	25adaa30 	addiu	t5,t5,-21968
8000aa48:	01a00008 	jr	t5
8000aa4c:	0109a020 	add	s4,t0,t1
8000aa50:	26100002 	addiu	s0,s0,2
8000aa54:	26100002 	addiu	s0,s0,2
8000aa58:	26100002 	addiu	s0,s0,2
8000aa5c:	02129021 	addu	s2,s0,s2
8000aa60:	24141117 	li	s4,4375
8000aa64:	16920221 	bne	s4,s2,8000b2ec <inst_error>
8000aa68:	00000000 	nop
8000aa6c:	3c144444 	lui	s4,0x4444
8000aa70:	1682021e 	bne	s4,v0,8000b2ec <inst_error>
8000aa74:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:19
8000aa78:	24020009 	li	v0,9
8000aa7c:	00008021 	move	s0,zero
8000aa80:	00009021 	move	s2,zero
8000aa84:	3c087fff 	lui	t0,0x7fff
8000aa88:	3508ffff 	ori	t0,t0,0xffff
8000aa8c:	3c097fff 	lui	t1,0x7fff
8000aa90:	3529ffff 	ori	t1,t1,0xffff
8000aa94:	3c0a8002 	lui	t2,0x8002
8000aa98:	354afff0 	ori	t2,t2,0xfff0
8000aa9c:	ad480000 	sw	t0,0(t2)
8000aaa0:	10000004 	b	8000aab4 <n90_jr_ex_ds_test+0x220>
8000aaa4:	00000000 	nop
8000aaa8:	26522222 	addiu	s2,s2,8738
8000aaac:	10000009 	b	8000aad4 <n90_jr_ex_ds_test+0x240>
8000aab0:	00000000 	nop
8000aab4:	26101111 	addiu	s0,s0,4369
8000aab8:	3c0d8001 	lui	t5,0x8001
8000aabc:	25adaad4 	addiu	t5,t5,-21804
8000aac0:	01a00008 	jr	t5
8000aac4:	010aa022 	sub	s4,t0,t2
8000aac8:	26100002 	addiu	s0,s0,2
8000aacc:	26100002 	addiu	s0,s0,2
8000aad0:	26100002 	addiu	s0,s0,2
8000aad4:	02129021 	addu	s2,s0,s2
8000aad8:	24141117 	li	s4,4375
8000aadc:	16920203 	bne	s4,s2,8000b2ec <inst_error>
8000aae0:	00000000 	nop
8000aae4:	3c144444 	lui	s4,0x4444
8000aae8:	16820200 	bne	s4,v0,8000b2ec <inst_error>
8000aaec:	00000000 	nop
8000aaf0:	24020009 	li	v0,9
8000aaf4:	00008021 	move	s0,zero
8000aaf8:	00009021 	move	s2,zero
8000aafc:	3c087fff 	lui	t0,0x7fff
8000ab00:	3508ffff 	ori	t0,t0,0xffff
8000ab04:	3c097fff 	lui	t1,0x7fff
8000ab08:	3529ffff 	ori	t1,t1,0xffff
8000ab0c:	3c0a8002 	lui	t2,0x8002
8000ab10:	354afff0 	ori	t2,t2,0xfff0
8000ab14:	ad480000 	sw	t0,0(t2)
8000ab18:	10000004 	b	8000ab2c <n90_jr_ex_ds_test+0x298>
8000ab1c:	00000000 	nop
8000ab20:	26522222 	addiu	s2,s2,8738
8000ab24:	10000009 	b	8000ab4c <n90_jr_ex_ds_test+0x2b8>
8000ab28:	00000000 	nop
8000ab2c:	26101111 	addiu	s0,s0,4369
8000ab30:	3c0d8001 	lui	t5,0x8001
8000ab34:	25adab20 	addiu	t5,t5,-21728
8000ab38:	01a00008 	jr	t5
8000ab3c:	010aa022 	sub	s4,t0,t2
8000ab40:	26100002 	addiu	s0,s0,2
8000ab44:	26100002 	addiu	s0,s0,2
8000ab48:	26100002 	addiu	s0,s0,2
8000ab4c:	02129021 	addu	s2,s0,s2
8000ab50:	24141117 	li	s4,4375
8000ab54:	169201e5 	bne	s4,s2,8000b2ec <inst_error>
8000ab58:	00000000 	nop
8000ab5c:	3c144444 	lui	s4,0x4444
8000ab60:	168201e2 	bne	s4,v0,8000b2ec <inst_error>
8000ab64:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:20
8000ab68:	24020009 	li	v0,9
8000ab6c:	00008021 	move	s0,zero
8000ab70:	00009021 	move	s2,zero
8000ab74:	3c087fff 	lui	t0,0x7fff
8000ab78:	3508ffff 	ori	t0,t0,0xffff
8000ab7c:	3c097fff 	lui	t1,0x7fff
8000ab80:	3529ffff 	ori	t1,t1,0xffff
8000ab84:	3c0a8002 	lui	t2,0x8002
8000ab88:	354afff0 	ori	t2,t2,0xfff0
8000ab8c:	ad480000 	sw	t0,0(t2)
8000ab90:	10000004 	b	8000aba4 <n90_jr_ex_ds_test+0x310>
8000ab94:	00000000 	nop
8000ab98:	26522222 	addiu	s2,s2,8738
8000ab9c:	10000009 	b	8000abc4 <n90_jr_ex_ds_test+0x330>
8000aba0:	00000000 	nop
8000aba4:	26101111 	addiu	s0,s0,4369
8000aba8:	3c0d8001 	lui	t5,0x8001
8000abac:	25adabc4 	addiu	t5,t5,-21564
8000abb0:	01a00008 	jr	t5
8000abb4:	85540003 	lh	s4,3(t2)
8000abb8:	26100002 	addiu	s0,s0,2
8000abbc:	26100002 	addiu	s0,s0,2
8000abc0:	26100002 	addiu	s0,s0,2
8000abc4:	02129021 	addu	s2,s0,s2
8000abc8:	24141117 	li	s4,4375
8000abcc:	169201c7 	bne	s4,s2,8000b2ec <inst_error>
8000abd0:	00000000 	nop
8000abd4:	3c144444 	lui	s4,0x4444
8000abd8:	168201c4 	bne	s4,v0,8000b2ec <inst_error>
8000abdc:	00000000 	nop
8000abe0:	24020009 	li	v0,9
8000abe4:	00008021 	move	s0,zero
8000abe8:	00009021 	move	s2,zero
8000abec:	3c087fff 	lui	t0,0x7fff
8000abf0:	3508ffff 	ori	t0,t0,0xffff
8000abf4:	3c097fff 	lui	t1,0x7fff
8000abf8:	3529ffff 	ori	t1,t1,0xffff
8000abfc:	3c0a8002 	lui	t2,0x8002
8000ac00:	354afff0 	ori	t2,t2,0xfff0
8000ac04:	ad480000 	sw	t0,0(t2)
8000ac08:	10000004 	b	8000ac1c <n90_jr_ex_ds_test+0x388>
8000ac0c:	00000000 	nop
8000ac10:	26522222 	addiu	s2,s2,8738
8000ac14:	10000009 	b	8000ac3c <n90_jr_ex_ds_test+0x3a8>
8000ac18:	00000000 	nop
8000ac1c:	26101111 	addiu	s0,s0,4369
8000ac20:	3c0d8001 	lui	t5,0x8001
8000ac24:	25adac10 	addiu	t5,t5,-21488
8000ac28:	01a00008 	jr	t5
8000ac2c:	85540003 	lh	s4,3(t2)
8000ac30:	26100002 	addiu	s0,s0,2
8000ac34:	26100002 	addiu	s0,s0,2
8000ac38:	26100002 	addiu	s0,s0,2
8000ac3c:	02129021 	addu	s2,s0,s2
8000ac40:	24141117 	li	s4,4375
8000ac44:	169201a9 	bne	s4,s2,8000b2ec <inst_error>
8000ac48:	00000000 	nop
8000ac4c:	3c144444 	lui	s4,0x4444
8000ac50:	168201a6 	bne	s4,v0,8000b2ec <inst_error>
8000ac54:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:21
8000ac58:	24020009 	li	v0,9
8000ac5c:	00008021 	move	s0,zero
8000ac60:	00009021 	move	s2,zero
8000ac64:	3c087fff 	lui	t0,0x7fff
8000ac68:	3508ffff 	ori	t0,t0,0xffff
8000ac6c:	3c097fff 	lui	t1,0x7fff
8000ac70:	3529ffff 	ori	t1,t1,0xffff
8000ac74:	3c0a8002 	lui	t2,0x8002
8000ac78:	354afff0 	ori	t2,t2,0xfff0
8000ac7c:	ad480000 	sw	t0,0(t2)
8000ac80:	10000004 	b	8000ac94 <n90_jr_ex_ds_test+0x400>
8000ac84:	00000000 	nop
8000ac88:	26522222 	addiu	s2,s2,8738
8000ac8c:	10000009 	b	8000acb4 <n90_jr_ex_ds_test+0x420>
8000ac90:	00000000 	nop
8000ac94:	26101111 	addiu	s0,s0,4369
8000ac98:	3c0d8001 	lui	t5,0x8001
8000ac9c:	25adacb4 	addiu	t5,t5,-21324
8000aca0:	01a00008 	jr	t5
8000aca4:	95540003 	lhu	s4,3(t2)
8000aca8:	26100002 	addiu	s0,s0,2
8000acac:	26100002 	addiu	s0,s0,2
8000acb0:	26100002 	addiu	s0,s0,2
8000acb4:	02129021 	addu	s2,s0,s2
8000acb8:	24141117 	li	s4,4375
8000acbc:	1692018b 	bne	s4,s2,8000b2ec <inst_error>
8000acc0:	00000000 	nop
8000acc4:	3c144444 	lui	s4,0x4444
8000acc8:	16820188 	bne	s4,v0,8000b2ec <inst_error>
8000accc:	00000000 	nop
8000acd0:	24020009 	li	v0,9
8000acd4:	00008021 	move	s0,zero
8000acd8:	00009021 	move	s2,zero
8000acdc:	3c087fff 	lui	t0,0x7fff
8000ace0:	3508ffff 	ori	t0,t0,0xffff
8000ace4:	3c097fff 	lui	t1,0x7fff
8000ace8:	3529ffff 	ori	t1,t1,0xffff
8000acec:	3c0a8002 	lui	t2,0x8002
8000acf0:	354afff0 	ori	t2,t2,0xfff0
8000acf4:	ad480000 	sw	t0,0(t2)
8000acf8:	10000004 	b	8000ad0c <n90_jr_ex_ds_test+0x478>
8000acfc:	00000000 	nop
8000ad00:	26522222 	addiu	s2,s2,8738
8000ad04:	10000009 	b	8000ad2c <n90_jr_ex_ds_test+0x498>
8000ad08:	00000000 	nop
8000ad0c:	26101111 	addiu	s0,s0,4369
8000ad10:	3c0d8001 	lui	t5,0x8001
8000ad14:	25adad00 	addiu	t5,t5,-21248
8000ad18:	01a00008 	jr	t5
8000ad1c:	95540003 	lhu	s4,3(t2)
8000ad20:	26100002 	addiu	s0,s0,2
8000ad24:	26100002 	addiu	s0,s0,2
8000ad28:	26100002 	addiu	s0,s0,2
8000ad2c:	02129021 	addu	s2,s0,s2
8000ad30:	24141117 	li	s4,4375
8000ad34:	1692016d 	bne	s4,s2,8000b2ec <inst_error>
8000ad38:	00000000 	nop
8000ad3c:	3c144444 	lui	s4,0x4444
8000ad40:	1682016a 	bne	s4,v0,8000b2ec <inst_error>
8000ad44:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:22
8000ad48:	24020009 	li	v0,9
8000ad4c:	00008021 	move	s0,zero
8000ad50:	00009021 	move	s2,zero
8000ad54:	3c087fff 	lui	t0,0x7fff
8000ad58:	3508ffff 	ori	t0,t0,0xffff
8000ad5c:	3c097fff 	lui	t1,0x7fff
8000ad60:	3529ffff 	ori	t1,t1,0xffff
8000ad64:	3c0a8002 	lui	t2,0x8002
8000ad68:	354afff0 	ori	t2,t2,0xfff0
8000ad6c:	ad480000 	sw	t0,0(t2)
8000ad70:	10000004 	b	8000ad84 <n90_jr_ex_ds_test+0x4f0>
8000ad74:	00000000 	nop
8000ad78:	26522222 	addiu	s2,s2,8738
8000ad7c:	10000009 	b	8000ada4 <n90_jr_ex_ds_test+0x510>
8000ad80:	00000000 	nop
8000ad84:	26101111 	addiu	s0,s0,4369
8000ad88:	3c0d8001 	lui	t5,0x8001
8000ad8c:	25adada4 	addiu	t5,t5,-21084
8000ad90:	01a00008 	jr	t5
8000ad94:	8d540003 	lw	s4,3(t2)
8000ad98:	26100002 	addiu	s0,s0,2
8000ad9c:	26100002 	addiu	s0,s0,2
8000ada0:	26100002 	addiu	s0,s0,2
8000ada4:	02129021 	addu	s2,s0,s2
8000ada8:	24141117 	li	s4,4375
8000adac:	1692014f 	bne	s4,s2,8000b2ec <inst_error>
8000adb0:	00000000 	nop
8000adb4:	3c144444 	lui	s4,0x4444
8000adb8:	1682014c 	bne	s4,v0,8000b2ec <inst_error>
8000adbc:	00000000 	nop
8000adc0:	24020009 	li	v0,9
8000adc4:	00008021 	move	s0,zero
8000adc8:	00009021 	move	s2,zero
8000adcc:	3c087fff 	lui	t0,0x7fff
8000add0:	3508ffff 	ori	t0,t0,0xffff
8000add4:	3c097fff 	lui	t1,0x7fff
8000add8:	3529ffff 	ori	t1,t1,0xffff
8000addc:	3c0a8002 	lui	t2,0x8002
8000ade0:	354afff0 	ori	t2,t2,0xfff0
8000ade4:	ad480000 	sw	t0,0(t2)
8000ade8:	10000004 	b	8000adfc <n90_jr_ex_ds_test+0x568>
8000adec:	00000000 	nop
8000adf0:	26522222 	addiu	s2,s2,8738
8000adf4:	10000009 	b	8000ae1c <n90_jr_ex_ds_test+0x588>
8000adf8:	00000000 	nop
8000adfc:	26101111 	addiu	s0,s0,4369
8000ae00:	3c0d8001 	lui	t5,0x8001
8000ae04:	25adadf0 	addiu	t5,t5,-21008
8000ae08:	01a00008 	jr	t5
8000ae0c:	8d540003 	lw	s4,3(t2)
8000ae10:	26100002 	addiu	s0,s0,2
8000ae14:	26100002 	addiu	s0,s0,2
8000ae18:	26100002 	addiu	s0,s0,2
8000ae1c:	02129021 	addu	s2,s0,s2
8000ae20:	24141117 	li	s4,4375
8000ae24:	16920131 	bne	s4,s2,8000b2ec <inst_error>
8000ae28:	00000000 	nop
8000ae2c:	3c144444 	lui	s4,0x4444
8000ae30:	1682012e 	bne	s4,v0,8000b2ec <inst_error>
8000ae34:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:23
8000ae38:	24020009 	li	v0,9
8000ae3c:	00008021 	move	s0,zero
8000ae40:	00009021 	move	s2,zero
8000ae44:	3c087fff 	lui	t0,0x7fff
8000ae48:	3508ffff 	ori	t0,t0,0xffff
8000ae4c:	3c097fff 	lui	t1,0x7fff
8000ae50:	3529ffff 	ori	t1,t1,0xffff
8000ae54:	3c0a8002 	lui	t2,0x8002
8000ae58:	354afff0 	ori	t2,t2,0xfff0
8000ae5c:	ad480000 	sw	t0,0(t2)
8000ae60:	10000004 	b	8000ae74 <n90_jr_ex_ds_test+0x5e0>
8000ae64:	00000000 	nop
8000ae68:	26522222 	addiu	s2,s2,8738
8000ae6c:	10000009 	b	8000ae94 <n90_jr_ex_ds_test+0x600>
8000ae70:	00000000 	nop
8000ae74:	26101111 	addiu	s0,s0,4369
8000ae78:	3c0d8001 	lui	t5,0x8001
8000ae7c:	25adae94 	addiu	t5,t5,-20844
8000ae80:	01a00008 	jr	t5
8000ae84:	a5540003 	sh	s4,3(t2)
8000ae88:	26100002 	addiu	s0,s0,2
8000ae8c:	26100002 	addiu	s0,s0,2
8000ae90:	26100002 	addiu	s0,s0,2
8000ae94:	02129021 	addu	s2,s0,s2
8000ae98:	24141117 	li	s4,4375
8000ae9c:	16920113 	bne	s4,s2,8000b2ec <inst_error>
8000aea0:	00000000 	nop
8000aea4:	3c144444 	lui	s4,0x4444
8000aea8:	16820110 	bne	s4,v0,8000b2ec <inst_error>
8000aeac:	00000000 	nop
8000aeb0:	24020009 	li	v0,9
8000aeb4:	00008021 	move	s0,zero
8000aeb8:	00009021 	move	s2,zero
8000aebc:	3c087fff 	lui	t0,0x7fff
8000aec0:	3508ffff 	ori	t0,t0,0xffff
8000aec4:	3c097fff 	lui	t1,0x7fff
8000aec8:	3529ffff 	ori	t1,t1,0xffff
8000aecc:	3c0a8002 	lui	t2,0x8002
8000aed0:	354afff0 	ori	t2,t2,0xfff0
8000aed4:	ad480000 	sw	t0,0(t2)
8000aed8:	10000004 	b	8000aeec <n90_jr_ex_ds_test+0x658>
8000aedc:	00000000 	nop
8000aee0:	26522222 	addiu	s2,s2,8738
8000aee4:	10000009 	b	8000af0c <n90_jr_ex_ds_test+0x678>
8000aee8:	00000000 	nop
8000aeec:	26101111 	addiu	s0,s0,4369
8000aef0:	3c0d8001 	lui	t5,0x8001
8000aef4:	25adaee0 	addiu	t5,t5,-20768
8000aef8:	01a00008 	jr	t5
8000aefc:	a5540003 	sh	s4,3(t2)
8000af00:	26100002 	addiu	s0,s0,2
8000af04:	26100002 	addiu	s0,s0,2
8000af08:	26100002 	addiu	s0,s0,2
8000af0c:	02129021 	addu	s2,s0,s2
8000af10:	24141117 	li	s4,4375
8000af14:	169200f5 	bne	s4,s2,8000b2ec <inst_error>
8000af18:	00000000 	nop
8000af1c:	3c144444 	lui	s4,0x4444
8000af20:	168200f2 	bne	s4,v0,8000b2ec <inst_error>
8000af24:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:24
8000af28:	24020009 	li	v0,9
8000af2c:	00008021 	move	s0,zero
8000af30:	00009021 	move	s2,zero
8000af34:	3c087fff 	lui	t0,0x7fff
8000af38:	3508ffff 	ori	t0,t0,0xffff
8000af3c:	3c097fff 	lui	t1,0x7fff
8000af40:	3529ffff 	ori	t1,t1,0xffff
8000af44:	3c0a8002 	lui	t2,0x8002
8000af48:	354afff0 	ori	t2,t2,0xfff0
8000af4c:	ad480000 	sw	t0,0(t2)
8000af50:	10000004 	b	8000af64 <n90_jr_ex_ds_test+0x6d0>
8000af54:	00000000 	nop
8000af58:	26522222 	addiu	s2,s2,8738
8000af5c:	10000009 	b	8000af84 <n90_jr_ex_ds_test+0x6f0>
8000af60:	00000000 	nop
8000af64:	26101111 	addiu	s0,s0,4369
8000af68:	3c0d8001 	lui	t5,0x8001
8000af6c:	25adaf84 	addiu	t5,t5,-20604
8000af70:	01a00008 	jr	t5
8000af74:	ad540003 	sw	s4,3(t2)
8000af78:	26100002 	addiu	s0,s0,2
8000af7c:	26100002 	addiu	s0,s0,2
8000af80:	26100002 	addiu	s0,s0,2
8000af84:	02129021 	addu	s2,s0,s2
8000af88:	24141117 	li	s4,4375
8000af8c:	169200d7 	bne	s4,s2,8000b2ec <inst_error>
8000af90:	00000000 	nop
8000af94:	3c144444 	lui	s4,0x4444
8000af98:	168200d4 	bne	s4,v0,8000b2ec <inst_error>
8000af9c:	00000000 	nop
8000afa0:	24020009 	li	v0,9
8000afa4:	00008021 	move	s0,zero
8000afa8:	00009021 	move	s2,zero
8000afac:	3c087fff 	lui	t0,0x7fff
8000afb0:	3508ffff 	ori	t0,t0,0xffff
8000afb4:	3c097fff 	lui	t1,0x7fff
8000afb8:	3529ffff 	ori	t1,t1,0xffff
8000afbc:	3c0a8002 	lui	t2,0x8002
8000afc0:	354afff0 	ori	t2,t2,0xfff0
8000afc4:	ad480000 	sw	t0,0(t2)
8000afc8:	10000004 	b	8000afdc <n90_jr_ex_ds_test+0x748>
8000afcc:	00000000 	nop
8000afd0:	26522222 	addiu	s2,s2,8738
8000afd4:	10000009 	b	8000affc <n90_jr_ex_ds_test+0x768>
8000afd8:	00000000 	nop
8000afdc:	26101111 	addiu	s0,s0,4369
8000afe0:	3c0d8001 	lui	t5,0x8001
8000afe4:	25adafd0 	addiu	t5,t5,-20528
8000afe8:	01a00008 	jr	t5
8000afec:	ad540003 	sw	s4,3(t2)
8000aff0:	26100002 	addiu	s0,s0,2
8000aff4:	26100002 	addiu	s0,s0,2
8000aff8:	26100002 	addiu	s0,s0,2
8000affc:	02129021 	addu	s2,s0,s2
8000b000:	24141117 	li	s4,4375
8000b004:	169200b9 	bne	s4,s2,8000b2ec <inst_error>
8000b008:	00000000 	nop
8000b00c:	3c144444 	lui	s4,0x4444
8000b010:	168200b6 	bne	s4,v0,8000b2ec <inst_error>
8000b014:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:25
8000b018:	24020009 	li	v0,9
8000b01c:	00008021 	move	s0,zero
8000b020:	00009021 	move	s2,zero
8000b024:	3c087fff 	lui	t0,0x7fff
8000b028:	3508ffff 	ori	t0,t0,0xffff
8000b02c:	3c097fff 	lui	t1,0x7fff
8000b030:	3529ffff 	ori	t1,t1,0xffff
8000b034:	3c0a8002 	lui	t2,0x8002
8000b038:	354afff0 	ori	t2,t2,0xfff0
8000b03c:	ad480000 	sw	t0,0(t2)
8000b040:	10000004 	b	8000b054 <n90_jr_ex_ds_test+0x7c0>
8000b044:	00000000 	nop
8000b048:	26522222 	addiu	s2,s2,8738
8000b04c:	10000009 	b	8000b074 <n90_jr_ex_ds_test+0x7e0>
8000b050:	00000000 	nop
8000b054:	26101111 	addiu	s0,s0,4369
8000b058:	3c0d8001 	lui	t5,0x8001
8000b05c:	25adb074 	addiu	t5,t5,-20364
8000b060:	01a00008 	jr	t5
8000b064:	6f76e210 	0x6f76e210
8000b068:	26100002 	addiu	s0,s0,2
8000b06c:	26100002 	addiu	s0,s0,2
8000b070:	26100002 	addiu	s0,s0,2
8000b074:	02129021 	addu	s2,s0,s2
8000b078:	24141117 	li	s4,4375
8000b07c:	1692009b 	bne	s4,s2,8000b2ec <inst_error>
8000b080:	00000000 	nop
8000b084:	3c144444 	lui	s4,0x4444
8000b088:	16820098 	bne	s4,v0,8000b2ec <inst_error>
8000b08c:	00000000 	nop
8000b090:	24020009 	li	v0,9
8000b094:	00008021 	move	s0,zero
8000b098:	00009021 	move	s2,zero
8000b09c:	3c087fff 	lui	t0,0x7fff
8000b0a0:	3508ffff 	ori	t0,t0,0xffff
8000b0a4:	3c097fff 	lui	t1,0x7fff
8000b0a8:	3529ffff 	ori	t1,t1,0xffff
8000b0ac:	3c0a8002 	lui	t2,0x8002
8000b0b0:	354afff0 	ori	t2,t2,0xfff0
8000b0b4:	ad480000 	sw	t0,0(t2)
8000b0b8:	10000004 	b	8000b0cc <n90_jr_ex_ds_test+0x838>
8000b0bc:	00000000 	nop
8000b0c0:	26522222 	addiu	s2,s2,8738
8000b0c4:	10000009 	b	8000b0ec <n90_jr_ex_ds_test+0x858>
8000b0c8:	00000000 	nop
8000b0cc:	26101111 	addiu	s0,s0,4369
8000b0d0:	3c0d8001 	lui	t5,0x8001
8000b0d4:	25adb0c0 	addiu	t5,t5,-20288
8000b0d8:	01a00008 	jr	t5
8000b0dc:	6f76e210 	0x6f76e210
8000b0e0:	26100002 	addiu	s0,s0,2
8000b0e4:	26100002 	addiu	s0,s0,2
8000b0e8:	26100002 	addiu	s0,s0,2
8000b0ec:	02129021 	addu	s2,s0,s2
8000b0f0:	24141117 	li	s4,4375
8000b0f4:	1692007d 	bne	s4,s2,8000b2ec <inst_error>
8000b0f8:	00000000 	nop
8000b0fc:	3c144444 	lui	s4,0x4444
8000b100:	1682007a 	bne	s4,v0,8000b2ec <inst_error>
8000b104:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:26
8000b108:	24020009 	li	v0,9
8000b10c:	00008021 	move	s0,zero
8000b110:	00009021 	move	s2,zero
8000b114:	3c087fff 	lui	t0,0x7fff
8000b118:	3508ffff 	ori	t0,t0,0xffff
8000b11c:	3c097fff 	lui	t1,0x7fff
8000b120:	3529ffff 	ori	t1,t1,0xffff
8000b124:	3c0a8002 	lui	t2,0x8002
8000b128:	354afff0 	ori	t2,t2,0xfff0
8000b12c:	ad480000 	sw	t0,0(t2)
8000b130:	10000004 	b	8000b144 <n90_jr_ex_ds_test+0x8b0>
8000b134:	00000000 	nop
8000b138:	26522222 	addiu	s2,s2,8738
8000b13c:	10000009 	b	8000b164 <n90_jr_ex_ds_test+0x8d0>
8000b140:	00000000 	nop
8000b144:	26101111 	addiu	s0,s0,4369
8000b148:	3c0d8001 	lui	t5,0x8001
8000b14c:	25adb164 	addiu	t5,t5,-20124
8000b150:	01a00008 	jr	t5
8000b154:	0000000c 	syscall
8000b158:	26100002 	addiu	s0,s0,2
8000b15c:	26100002 	addiu	s0,s0,2
8000b160:	26100002 	addiu	s0,s0,2
8000b164:	02129021 	addu	s2,s0,s2
8000b168:	24141117 	li	s4,4375
8000b16c:	1692005f 	bne	s4,s2,8000b2ec <inst_error>
8000b170:	00000000 	nop
8000b174:	3c144444 	lui	s4,0x4444
8000b178:	1682005c 	bne	s4,v0,8000b2ec <inst_error>
8000b17c:	00000000 	nop
8000b180:	24020009 	li	v0,9
8000b184:	00008021 	move	s0,zero
8000b188:	00009021 	move	s2,zero
8000b18c:	3c087fff 	lui	t0,0x7fff
8000b190:	3508ffff 	ori	t0,t0,0xffff
8000b194:	3c097fff 	lui	t1,0x7fff
8000b198:	3529ffff 	ori	t1,t1,0xffff
8000b19c:	3c0a8002 	lui	t2,0x8002
8000b1a0:	354afff0 	ori	t2,t2,0xfff0
8000b1a4:	ad480000 	sw	t0,0(t2)
8000b1a8:	10000004 	b	8000b1bc <n90_jr_ex_ds_test+0x928>
8000b1ac:	00000000 	nop
8000b1b0:	26522222 	addiu	s2,s2,8738
8000b1b4:	10000009 	b	8000b1dc <n90_jr_ex_ds_test+0x948>
8000b1b8:	00000000 	nop
8000b1bc:	26101111 	addiu	s0,s0,4369
8000b1c0:	3c0d8001 	lui	t5,0x8001
8000b1c4:	25adb1b0 	addiu	t5,t5,-20048
8000b1c8:	01a00008 	jr	t5
8000b1cc:	0000000c 	syscall
8000b1d0:	26100002 	addiu	s0,s0,2
8000b1d4:	26100002 	addiu	s0,s0,2
8000b1d8:	26100002 	addiu	s0,s0,2
8000b1dc:	02129021 	addu	s2,s0,s2
8000b1e0:	24141117 	li	s4,4375
8000b1e4:	16920041 	bne	s4,s2,8000b2ec <inst_error>
8000b1e8:	00000000 	nop
8000b1ec:	3c144444 	lui	s4,0x4444
8000b1f0:	1682003e 	bne	s4,v0,8000b2ec <inst_error>
8000b1f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:27
8000b1f8:	24020009 	li	v0,9
8000b1fc:	00008021 	move	s0,zero
8000b200:	00009021 	move	s2,zero
8000b204:	3c087fff 	lui	t0,0x7fff
8000b208:	3508ffff 	ori	t0,t0,0xffff
8000b20c:	3c097fff 	lui	t1,0x7fff
8000b210:	3529ffff 	ori	t1,t1,0xffff
8000b214:	3c0a8002 	lui	t2,0x8002
8000b218:	354afff0 	ori	t2,t2,0xfff0
8000b21c:	ad480000 	sw	t0,0(t2)
8000b220:	10000004 	b	8000b234 <n90_jr_ex_ds_test+0x9a0>
8000b224:	00000000 	nop
8000b228:	26522222 	addiu	s2,s2,8738
8000b22c:	10000009 	b	8000b254 <n90_jr_ex_ds_test+0x9c0>
8000b230:	00000000 	nop
8000b234:	26101111 	addiu	s0,s0,4369
8000b238:	3c0d8001 	lui	t5,0x8001
8000b23c:	25adb254 	addiu	t5,t5,-19884
8000b240:	01a00008 	jr	t5
8000b244:	0000000d 	break
8000b248:	26100002 	addiu	s0,s0,2
8000b24c:	26100002 	addiu	s0,s0,2
8000b250:	26100002 	addiu	s0,s0,2
8000b254:	02129021 	addu	s2,s0,s2
8000b258:	24141117 	li	s4,4375
8000b25c:	16920023 	bne	s4,s2,8000b2ec <inst_error>
8000b260:	00000000 	nop
8000b264:	3c144444 	lui	s4,0x4444
8000b268:	16820020 	bne	s4,v0,8000b2ec <inst_error>
8000b26c:	00000000 	nop
8000b270:	24020009 	li	v0,9
8000b274:	00008021 	move	s0,zero
8000b278:	00009021 	move	s2,zero
8000b27c:	3c087fff 	lui	t0,0x7fff
8000b280:	3508ffff 	ori	t0,t0,0xffff
8000b284:	3c097fff 	lui	t1,0x7fff
8000b288:	3529ffff 	ori	t1,t1,0xffff
8000b28c:	3c0a8002 	lui	t2,0x8002
8000b290:	354afff0 	ori	t2,t2,0xfff0
8000b294:	ad480000 	sw	t0,0(t2)
8000b298:	10000004 	b	8000b2ac <n90_jr_ex_ds_test+0xa18>
8000b29c:	00000000 	nop
8000b2a0:	26522222 	addiu	s2,s2,8738
8000b2a4:	10000009 	b	8000b2cc <n90_jr_ex_ds_test+0xa38>
8000b2a8:	00000000 	nop
8000b2ac:	26101111 	addiu	s0,s0,4369
8000b2b0:	3c0d8001 	lui	t5,0x8001
8000b2b4:	25adb2a0 	addiu	t5,t5,-19808
8000b2b8:	01a00008 	jr	t5
8000b2bc:	0000000d 	break
8000b2c0:	26100002 	addiu	s0,s0,2
8000b2c4:	26100002 	addiu	s0,s0,2
8000b2c8:	26100002 	addiu	s0,s0,2
8000b2cc:	02129021 	addu	s2,s0,s2
8000b2d0:	24141117 	li	s4,4375
8000b2d4:	16920005 	bne	s4,s2,8000b2ec <inst_error>
8000b2d8:	00000000 	nop
8000b2dc:	3c144444 	lui	s4,0x4444
8000b2e0:	16820002 	bne	s4,v0,8000b2ec <inst_error>
8000b2e4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:33
8000b2e8:	26730001 	addiu	s3,s3,1

8000b2ec <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:36
8000b2ec:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:37
8000b2f0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:38
8000b2f4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n90_jr_ex_ds.S:39
8000b2f8:	00000000 	nop

8000b2fc <n82_bgez_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:14
8000b2fc:	3c045200 	lui	a0,0x5200
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:17
8000b300:	24020009 	li	v0,9
8000b304:	00008021 	move	s0,zero
8000b308:	00009021 	move	s2,zero
8000b30c:	3c087fff 	lui	t0,0x7fff
8000b310:	3508ffff 	ori	t0,t0,0xffff
8000b314:	3c097fff 	lui	t1,0x7fff
8000b318:	3529ffff 	ori	t1,t1,0xffff
8000b31c:	3c0a8002 	lui	t2,0x8002
8000b320:	354afff0 	ori	t2,t2,0xfff0
8000b324:	ad480000 	sw	t0,0(t2)
8000b328:	10000004 	b	8000b33c <n82_bgez_ex_ds_test+0x40>
8000b32c:	00000000 	nop
8000b330:	26522222 	addiu	s2,s2,8738
8000b334:	10000007 	b	8000b354 <n82_bgez_ex_ds_test+0x58>
8000b338:	00000000 	nop
8000b33c:	26101111 	addiu	s0,s0,4369
8000b340:	05010004 	bgez	t0,8000b354 <n82_bgez_ex_ds_test+0x58>
8000b344:	21147fff 	addi	s4,t0,32767
8000b348:	26100002 	addiu	s0,s0,2
8000b34c:	26100002 	addiu	s0,s0,2
8000b350:	26100002 	addiu	s0,s0,2
8000b354:	02129021 	addu	s2,s0,s2
8000b358:	24141117 	li	s4,4375
8000b35c:	169204b9 	bne	s4,s2,8000c644 <inst_error>
8000b360:	00000000 	nop
8000b364:	3c144444 	lui	s4,0x4444
8000b368:	168204b6 	bne	s4,v0,8000c644 <inst_error>
8000b36c:	00000000 	nop
8000b370:	24020009 	li	v0,9
8000b374:	00008021 	move	s0,zero
8000b378:	00009021 	move	s2,zero
8000b37c:	3c087fff 	lui	t0,0x7fff
8000b380:	3508ffff 	ori	t0,t0,0xffff
8000b384:	3c097fff 	lui	t1,0x7fff
8000b388:	3529ffff 	ori	t1,t1,0xffff
8000b38c:	3c0a8002 	lui	t2,0x8002
8000b390:	354afff0 	ori	t2,t2,0xfff0
8000b394:	ad480000 	sw	t0,0(t2)
8000b398:	10000004 	b	8000b3ac <n82_bgez_ex_ds_test+0xb0>
8000b39c:	00000000 	nop
8000b3a0:	26522222 	addiu	s2,s2,8738
8000b3a4:	10000007 	b	8000b3c4 <n82_bgez_ex_ds_test+0xc8>
8000b3a8:	00000000 	nop
8000b3ac:	26101111 	addiu	s0,s0,4369
8000b3b0:	05410004 	bgez	t2,8000b3c4 <n82_bgez_ex_ds_test+0xc8>
8000b3b4:	21147fff 	addi	s4,t0,32767
8000b3b8:	26100002 	addiu	s0,s0,2
8000b3bc:	26100002 	addiu	s0,s0,2
8000b3c0:	26100002 	addiu	s0,s0,2
8000b3c4:	02129021 	addu	s2,s0,s2
8000b3c8:	24141117 	li	s4,4375
8000b3cc:	1692049d 	bne	s4,s2,8000c644 <inst_error>
8000b3d0:	00000000 	nop
8000b3d4:	3c144444 	lui	s4,0x4444
8000b3d8:	1682049a 	bne	s4,v0,8000c644 <inst_error>
8000b3dc:	00000000 	nop
8000b3e0:	24020009 	li	v0,9
8000b3e4:	00008021 	move	s0,zero
8000b3e8:	00009021 	move	s2,zero
8000b3ec:	3c087fff 	lui	t0,0x7fff
8000b3f0:	3508ffff 	ori	t0,t0,0xffff
8000b3f4:	3c097fff 	lui	t1,0x7fff
8000b3f8:	3529ffff 	ori	t1,t1,0xffff
8000b3fc:	3c0a8002 	lui	t2,0x8002
8000b400:	354afff0 	ori	t2,t2,0xfff0
8000b404:	ad480000 	sw	t0,0(t2)
8000b408:	10000004 	b	8000b41c <n82_bgez_ex_ds_test+0x120>
8000b40c:	00000000 	nop
8000b410:	26522222 	addiu	s2,s2,8738
8000b414:	10000007 	b	8000b434 <n82_bgez_ex_ds_test+0x138>
8000b418:	00000000 	nop
8000b41c:	26101111 	addiu	s0,s0,4369
8000b420:	0501fffb 	bgez	t0,8000b410 <n82_bgez_ex_ds_test+0x114>
8000b424:	21147fff 	addi	s4,t0,32767
8000b428:	26100002 	addiu	s0,s0,2
8000b42c:	26100002 	addiu	s0,s0,2
8000b430:	26100002 	addiu	s0,s0,2
8000b434:	02129021 	addu	s2,s0,s2
8000b438:	24141117 	li	s4,4375
8000b43c:	16920481 	bne	s4,s2,8000c644 <inst_error>
8000b440:	00000000 	nop
8000b444:	3c144444 	lui	s4,0x4444
8000b448:	1682047e 	bne	s4,v0,8000c644 <inst_error>
8000b44c:	00000000 	nop
8000b450:	24020009 	li	v0,9
8000b454:	00008021 	move	s0,zero
8000b458:	00009021 	move	s2,zero
8000b45c:	3c087fff 	lui	t0,0x7fff
8000b460:	3508ffff 	ori	t0,t0,0xffff
8000b464:	3c097fff 	lui	t1,0x7fff
8000b468:	3529ffff 	ori	t1,t1,0xffff
8000b46c:	3c0a8002 	lui	t2,0x8002
8000b470:	354afff0 	ori	t2,t2,0xfff0
8000b474:	ad480000 	sw	t0,0(t2)
8000b478:	10000004 	b	8000b48c <n82_bgez_ex_ds_test+0x190>
8000b47c:	00000000 	nop
8000b480:	26522222 	addiu	s2,s2,8738
8000b484:	10000007 	b	8000b4a4 <n82_bgez_ex_ds_test+0x1a8>
8000b488:	00000000 	nop
8000b48c:	26101111 	addiu	s0,s0,4369
8000b490:	0541fffb 	bgez	t2,8000b480 <n82_bgez_ex_ds_test+0x184>
8000b494:	21147fff 	addi	s4,t0,32767
8000b498:	26100002 	addiu	s0,s0,2
8000b49c:	26100002 	addiu	s0,s0,2
8000b4a0:	26100002 	addiu	s0,s0,2
8000b4a4:	02129021 	addu	s2,s0,s2
8000b4a8:	24141117 	li	s4,4375
8000b4ac:	16920465 	bne	s4,s2,8000c644 <inst_error>
8000b4b0:	00000000 	nop
8000b4b4:	3c144444 	lui	s4,0x4444
8000b4b8:	16820462 	bne	s4,v0,8000c644 <inst_error>
8000b4bc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:18
8000b4c0:	24020009 	li	v0,9
8000b4c4:	00008021 	move	s0,zero
8000b4c8:	00009021 	move	s2,zero
8000b4cc:	3c087fff 	lui	t0,0x7fff
8000b4d0:	3508ffff 	ori	t0,t0,0xffff
8000b4d4:	3c097fff 	lui	t1,0x7fff
8000b4d8:	3529ffff 	ori	t1,t1,0xffff
8000b4dc:	3c0a8002 	lui	t2,0x8002
8000b4e0:	354afff0 	ori	t2,t2,0xfff0
8000b4e4:	ad480000 	sw	t0,0(t2)
8000b4e8:	10000004 	b	8000b4fc <n82_bgez_ex_ds_test+0x200>
8000b4ec:	00000000 	nop
8000b4f0:	26522222 	addiu	s2,s2,8738
8000b4f4:	10000007 	b	8000b514 <n82_bgez_ex_ds_test+0x218>
8000b4f8:	00000000 	nop
8000b4fc:	26101111 	addiu	s0,s0,4369
8000b500:	05010004 	bgez	t0,8000b514 <n82_bgez_ex_ds_test+0x218>
8000b504:	0109a020 	add	s4,t0,t1
8000b508:	26100002 	addiu	s0,s0,2
8000b50c:	26100002 	addiu	s0,s0,2
8000b510:	26100002 	addiu	s0,s0,2
8000b514:	02129021 	addu	s2,s0,s2
8000b518:	24141117 	li	s4,4375
8000b51c:	16920449 	bne	s4,s2,8000c644 <inst_error>
8000b520:	00000000 	nop
8000b524:	3c144444 	lui	s4,0x4444
8000b528:	16820446 	bne	s4,v0,8000c644 <inst_error>
8000b52c:	00000000 	nop
8000b530:	24020009 	li	v0,9
8000b534:	00008021 	move	s0,zero
8000b538:	00009021 	move	s2,zero
8000b53c:	3c087fff 	lui	t0,0x7fff
8000b540:	3508ffff 	ori	t0,t0,0xffff
8000b544:	3c097fff 	lui	t1,0x7fff
8000b548:	3529ffff 	ori	t1,t1,0xffff
8000b54c:	3c0a8002 	lui	t2,0x8002
8000b550:	354afff0 	ori	t2,t2,0xfff0
8000b554:	ad480000 	sw	t0,0(t2)
8000b558:	10000004 	b	8000b56c <n82_bgez_ex_ds_test+0x270>
8000b55c:	00000000 	nop
8000b560:	26522222 	addiu	s2,s2,8738
8000b564:	10000007 	b	8000b584 <n82_bgez_ex_ds_test+0x288>
8000b568:	00000000 	nop
8000b56c:	26101111 	addiu	s0,s0,4369
8000b570:	05410004 	bgez	t2,8000b584 <n82_bgez_ex_ds_test+0x288>
8000b574:	0109a020 	add	s4,t0,t1
8000b578:	26100002 	addiu	s0,s0,2
8000b57c:	26100002 	addiu	s0,s0,2
8000b580:	26100002 	addiu	s0,s0,2
8000b584:	02129021 	addu	s2,s0,s2
8000b588:	24141117 	li	s4,4375
8000b58c:	1692042d 	bne	s4,s2,8000c644 <inst_error>
8000b590:	00000000 	nop
8000b594:	3c144444 	lui	s4,0x4444
8000b598:	1682042a 	bne	s4,v0,8000c644 <inst_error>
8000b59c:	00000000 	nop
8000b5a0:	24020009 	li	v0,9
8000b5a4:	00008021 	move	s0,zero
8000b5a8:	00009021 	move	s2,zero
8000b5ac:	3c087fff 	lui	t0,0x7fff
8000b5b0:	3508ffff 	ori	t0,t0,0xffff
8000b5b4:	3c097fff 	lui	t1,0x7fff
8000b5b8:	3529ffff 	ori	t1,t1,0xffff
8000b5bc:	3c0a8002 	lui	t2,0x8002
8000b5c0:	354afff0 	ori	t2,t2,0xfff0
8000b5c4:	ad480000 	sw	t0,0(t2)
8000b5c8:	10000004 	b	8000b5dc <n82_bgez_ex_ds_test+0x2e0>
8000b5cc:	00000000 	nop
8000b5d0:	26522222 	addiu	s2,s2,8738
8000b5d4:	10000007 	b	8000b5f4 <n82_bgez_ex_ds_test+0x2f8>
8000b5d8:	00000000 	nop
8000b5dc:	26101111 	addiu	s0,s0,4369
8000b5e0:	0501fffb 	bgez	t0,8000b5d0 <n82_bgez_ex_ds_test+0x2d4>
8000b5e4:	0109a020 	add	s4,t0,t1
8000b5e8:	26100002 	addiu	s0,s0,2
8000b5ec:	26100002 	addiu	s0,s0,2
8000b5f0:	26100002 	addiu	s0,s0,2
8000b5f4:	02129021 	addu	s2,s0,s2
8000b5f8:	24141117 	li	s4,4375
8000b5fc:	16920411 	bne	s4,s2,8000c644 <inst_error>
8000b600:	00000000 	nop
8000b604:	3c144444 	lui	s4,0x4444
8000b608:	1682040e 	bne	s4,v0,8000c644 <inst_error>
8000b60c:	00000000 	nop
8000b610:	24020009 	li	v0,9
8000b614:	00008021 	move	s0,zero
8000b618:	00009021 	move	s2,zero
8000b61c:	3c087fff 	lui	t0,0x7fff
8000b620:	3508ffff 	ori	t0,t0,0xffff
8000b624:	3c097fff 	lui	t1,0x7fff
8000b628:	3529ffff 	ori	t1,t1,0xffff
8000b62c:	3c0a8002 	lui	t2,0x8002
8000b630:	354afff0 	ori	t2,t2,0xfff0
8000b634:	ad480000 	sw	t0,0(t2)
8000b638:	10000004 	b	8000b64c <n82_bgez_ex_ds_test+0x350>
8000b63c:	00000000 	nop
8000b640:	26522222 	addiu	s2,s2,8738
8000b644:	10000007 	b	8000b664 <n82_bgez_ex_ds_test+0x368>
8000b648:	00000000 	nop
8000b64c:	26101111 	addiu	s0,s0,4369
8000b650:	0541fffb 	bgez	t2,8000b640 <n82_bgez_ex_ds_test+0x344>
8000b654:	0109a020 	add	s4,t0,t1
8000b658:	26100002 	addiu	s0,s0,2
8000b65c:	26100002 	addiu	s0,s0,2
8000b660:	26100002 	addiu	s0,s0,2
8000b664:	02129021 	addu	s2,s0,s2
8000b668:	24141117 	li	s4,4375
8000b66c:	169203f5 	bne	s4,s2,8000c644 <inst_error>
8000b670:	00000000 	nop
8000b674:	3c144444 	lui	s4,0x4444
8000b678:	168203f2 	bne	s4,v0,8000c644 <inst_error>
8000b67c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:19
8000b680:	24020009 	li	v0,9
8000b684:	00008021 	move	s0,zero
8000b688:	00009021 	move	s2,zero
8000b68c:	3c087fff 	lui	t0,0x7fff
8000b690:	3508ffff 	ori	t0,t0,0xffff
8000b694:	3c097fff 	lui	t1,0x7fff
8000b698:	3529ffff 	ori	t1,t1,0xffff
8000b69c:	3c0a8002 	lui	t2,0x8002
8000b6a0:	354afff0 	ori	t2,t2,0xfff0
8000b6a4:	ad480000 	sw	t0,0(t2)
8000b6a8:	10000004 	b	8000b6bc <n82_bgez_ex_ds_test+0x3c0>
8000b6ac:	00000000 	nop
8000b6b0:	26522222 	addiu	s2,s2,8738
8000b6b4:	10000007 	b	8000b6d4 <n82_bgez_ex_ds_test+0x3d8>
8000b6b8:	00000000 	nop
8000b6bc:	26101111 	addiu	s0,s0,4369
8000b6c0:	05010004 	bgez	t0,8000b6d4 <n82_bgez_ex_ds_test+0x3d8>
8000b6c4:	010aa022 	sub	s4,t0,t2
8000b6c8:	26100002 	addiu	s0,s0,2
8000b6cc:	26100002 	addiu	s0,s0,2
8000b6d0:	26100002 	addiu	s0,s0,2
8000b6d4:	02129021 	addu	s2,s0,s2
8000b6d8:	24141117 	li	s4,4375
8000b6dc:	169203d9 	bne	s4,s2,8000c644 <inst_error>
8000b6e0:	00000000 	nop
8000b6e4:	3c144444 	lui	s4,0x4444
8000b6e8:	168203d6 	bne	s4,v0,8000c644 <inst_error>
8000b6ec:	00000000 	nop
8000b6f0:	24020009 	li	v0,9
8000b6f4:	00008021 	move	s0,zero
8000b6f8:	00009021 	move	s2,zero
8000b6fc:	3c087fff 	lui	t0,0x7fff
8000b700:	3508ffff 	ori	t0,t0,0xffff
8000b704:	3c097fff 	lui	t1,0x7fff
8000b708:	3529ffff 	ori	t1,t1,0xffff
8000b70c:	3c0a8002 	lui	t2,0x8002
8000b710:	354afff0 	ori	t2,t2,0xfff0
8000b714:	ad480000 	sw	t0,0(t2)
8000b718:	10000004 	b	8000b72c <n82_bgez_ex_ds_test+0x430>
8000b71c:	00000000 	nop
8000b720:	26522222 	addiu	s2,s2,8738
8000b724:	10000007 	b	8000b744 <n82_bgez_ex_ds_test+0x448>
8000b728:	00000000 	nop
8000b72c:	26101111 	addiu	s0,s0,4369
8000b730:	05410004 	bgez	t2,8000b744 <n82_bgez_ex_ds_test+0x448>
8000b734:	010aa022 	sub	s4,t0,t2
8000b738:	26100002 	addiu	s0,s0,2
8000b73c:	26100002 	addiu	s0,s0,2
8000b740:	26100002 	addiu	s0,s0,2
8000b744:	02129021 	addu	s2,s0,s2
8000b748:	24141117 	li	s4,4375
8000b74c:	169203bd 	bne	s4,s2,8000c644 <inst_error>
8000b750:	00000000 	nop
8000b754:	3c144444 	lui	s4,0x4444
8000b758:	168203ba 	bne	s4,v0,8000c644 <inst_error>
8000b75c:	00000000 	nop
8000b760:	24020009 	li	v0,9
8000b764:	00008021 	move	s0,zero
8000b768:	00009021 	move	s2,zero
8000b76c:	3c087fff 	lui	t0,0x7fff
8000b770:	3508ffff 	ori	t0,t0,0xffff
8000b774:	3c097fff 	lui	t1,0x7fff
8000b778:	3529ffff 	ori	t1,t1,0xffff
8000b77c:	3c0a8002 	lui	t2,0x8002
8000b780:	354afff0 	ori	t2,t2,0xfff0
8000b784:	ad480000 	sw	t0,0(t2)
8000b788:	10000004 	b	8000b79c <n82_bgez_ex_ds_test+0x4a0>
8000b78c:	00000000 	nop
8000b790:	26522222 	addiu	s2,s2,8738
8000b794:	10000007 	b	8000b7b4 <n82_bgez_ex_ds_test+0x4b8>
8000b798:	00000000 	nop
8000b79c:	26101111 	addiu	s0,s0,4369
8000b7a0:	0501fffb 	bgez	t0,8000b790 <n82_bgez_ex_ds_test+0x494>
8000b7a4:	010aa022 	sub	s4,t0,t2
8000b7a8:	26100002 	addiu	s0,s0,2
8000b7ac:	26100002 	addiu	s0,s0,2
8000b7b0:	26100002 	addiu	s0,s0,2
8000b7b4:	02129021 	addu	s2,s0,s2
8000b7b8:	24141117 	li	s4,4375
8000b7bc:	169203a1 	bne	s4,s2,8000c644 <inst_error>
8000b7c0:	00000000 	nop
8000b7c4:	3c144444 	lui	s4,0x4444
8000b7c8:	1682039e 	bne	s4,v0,8000c644 <inst_error>
8000b7cc:	00000000 	nop
8000b7d0:	24020009 	li	v0,9
8000b7d4:	00008021 	move	s0,zero
8000b7d8:	00009021 	move	s2,zero
8000b7dc:	3c087fff 	lui	t0,0x7fff
8000b7e0:	3508ffff 	ori	t0,t0,0xffff
8000b7e4:	3c097fff 	lui	t1,0x7fff
8000b7e8:	3529ffff 	ori	t1,t1,0xffff
8000b7ec:	3c0a8002 	lui	t2,0x8002
8000b7f0:	354afff0 	ori	t2,t2,0xfff0
8000b7f4:	ad480000 	sw	t0,0(t2)
8000b7f8:	10000004 	b	8000b80c <n82_bgez_ex_ds_test+0x510>
8000b7fc:	00000000 	nop
8000b800:	26522222 	addiu	s2,s2,8738
8000b804:	10000007 	b	8000b824 <n82_bgez_ex_ds_test+0x528>
8000b808:	00000000 	nop
8000b80c:	26101111 	addiu	s0,s0,4369
8000b810:	0541fffb 	bgez	t2,8000b800 <n82_bgez_ex_ds_test+0x504>
8000b814:	010aa022 	sub	s4,t0,t2
8000b818:	26100002 	addiu	s0,s0,2
8000b81c:	26100002 	addiu	s0,s0,2
8000b820:	26100002 	addiu	s0,s0,2
8000b824:	02129021 	addu	s2,s0,s2
8000b828:	24141117 	li	s4,4375
8000b82c:	16920385 	bne	s4,s2,8000c644 <inst_error>
8000b830:	00000000 	nop
8000b834:	3c144444 	lui	s4,0x4444
8000b838:	16820382 	bne	s4,v0,8000c644 <inst_error>
8000b83c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:20
8000b840:	24020009 	li	v0,9
8000b844:	00008021 	move	s0,zero
8000b848:	00009021 	move	s2,zero
8000b84c:	3c087fff 	lui	t0,0x7fff
8000b850:	3508ffff 	ori	t0,t0,0xffff
8000b854:	3c097fff 	lui	t1,0x7fff
8000b858:	3529ffff 	ori	t1,t1,0xffff
8000b85c:	3c0a8002 	lui	t2,0x8002
8000b860:	354afff0 	ori	t2,t2,0xfff0
8000b864:	ad480000 	sw	t0,0(t2)
8000b868:	10000004 	b	8000b87c <n82_bgez_ex_ds_test+0x580>
8000b86c:	00000000 	nop
8000b870:	26522222 	addiu	s2,s2,8738
8000b874:	10000007 	b	8000b894 <n82_bgez_ex_ds_test+0x598>
8000b878:	00000000 	nop
8000b87c:	26101111 	addiu	s0,s0,4369
8000b880:	05010004 	bgez	t0,8000b894 <n82_bgez_ex_ds_test+0x598>
8000b884:	85540003 	lh	s4,3(t2)
8000b888:	26100002 	addiu	s0,s0,2
8000b88c:	26100002 	addiu	s0,s0,2
8000b890:	26100002 	addiu	s0,s0,2
8000b894:	02129021 	addu	s2,s0,s2
8000b898:	24141117 	li	s4,4375
8000b89c:	16920369 	bne	s4,s2,8000c644 <inst_error>
8000b8a0:	00000000 	nop
8000b8a4:	3c144444 	lui	s4,0x4444
8000b8a8:	16820366 	bne	s4,v0,8000c644 <inst_error>
8000b8ac:	00000000 	nop
8000b8b0:	24020009 	li	v0,9
8000b8b4:	00008021 	move	s0,zero
8000b8b8:	00009021 	move	s2,zero
8000b8bc:	3c087fff 	lui	t0,0x7fff
8000b8c0:	3508ffff 	ori	t0,t0,0xffff
8000b8c4:	3c097fff 	lui	t1,0x7fff
8000b8c8:	3529ffff 	ori	t1,t1,0xffff
8000b8cc:	3c0a8002 	lui	t2,0x8002
8000b8d0:	354afff0 	ori	t2,t2,0xfff0
8000b8d4:	ad480000 	sw	t0,0(t2)
8000b8d8:	10000004 	b	8000b8ec <n82_bgez_ex_ds_test+0x5f0>
8000b8dc:	00000000 	nop
8000b8e0:	26522222 	addiu	s2,s2,8738
8000b8e4:	10000007 	b	8000b904 <n82_bgez_ex_ds_test+0x608>
8000b8e8:	00000000 	nop
8000b8ec:	26101111 	addiu	s0,s0,4369
8000b8f0:	05410004 	bgez	t2,8000b904 <n82_bgez_ex_ds_test+0x608>
8000b8f4:	85540003 	lh	s4,3(t2)
8000b8f8:	26100002 	addiu	s0,s0,2
8000b8fc:	26100002 	addiu	s0,s0,2
8000b900:	26100002 	addiu	s0,s0,2
8000b904:	02129021 	addu	s2,s0,s2
8000b908:	24141117 	li	s4,4375
8000b90c:	1692034d 	bne	s4,s2,8000c644 <inst_error>
8000b910:	00000000 	nop
8000b914:	3c144444 	lui	s4,0x4444
8000b918:	1682034a 	bne	s4,v0,8000c644 <inst_error>
8000b91c:	00000000 	nop
8000b920:	24020009 	li	v0,9
8000b924:	00008021 	move	s0,zero
8000b928:	00009021 	move	s2,zero
8000b92c:	3c087fff 	lui	t0,0x7fff
8000b930:	3508ffff 	ori	t0,t0,0xffff
8000b934:	3c097fff 	lui	t1,0x7fff
8000b938:	3529ffff 	ori	t1,t1,0xffff
8000b93c:	3c0a8002 	lui	t2,0x8002
8000b940:	354afff0 	ori	t2,t2,0xfff0
8000b944:	ad480000 	sw	t0,0(t2)
8000b948:	10000004 	b	8000b95c <n82_bgez_ex_ds_test+0x660>
8000b94c:	00000000 	nop
8000b950:	26522222 	addiu	s2,s2,8738
8000b954:	10000007 	b	8000b974 <n82_bgez_ex_ds_test+0x678>
8000b958:	00000000 	nop
8000b95c:	26101111 	addiu	s0,s0,4369
8000b960:	0501fffb 	bgez	t0,8000b950 <n82_bgez_ex_ds_test+0x654>
8000b964:	85540003 	lh	s4,3(t2)
8000b968:	26100002 	addiu	s0,s0,2
8000b96c:	26100002 	addiu	s0,s0,2
8000b970:	26100002 	addiu	s0,s0,2
8000b974:	02129021 	addu	s2,s0,s2
8000b978:	24141117 	li	s4,4375
8000b97c:	16920331 	bne	s4,s2,8000c644 <inst_error>
8000b980:	00000000 	nop
8000b984:	3c144444 	lui	s4,0x4444
8000b988:	1682032e 	bne	s4,v0,8000c644 <inst_error>
8000b98c:	00000000 	nop
8000b990:	24020009 	li	v0,9
8000b994:	00008021 	move	s0,zero
8000b998:	00009021 	move	s2,zero
8000b99c:	3c087fff 	lui	t0,0x7fff
8000b9a0:	3508ffff 	ori	t0,t0,0xffff
8000b9a4:	3c097fff 	lui	t1,0x7fff
8000b9a8:	3529ffff 	ori	t1,t1,0xffff
8000b9ac:	3c0a8002 	lui	t2,0x8002
8000b9b0:	354afff0 	ori	t2,t2,0xfff0
8000b9b4:	ad480000 	sw	t0,0(t2)
8000b9b8:	10000004 	b	8000b9cc <n82_bgez_ex_ds_test+0x6d0>
8000b9bc:	00000000 	nop
8000b9c0:	26522222 	addiu	s2,s2,8738
8000b9c4:	10000007 	b	8000b9e4 <n82_bgez_ex_ds_test+0x6e8>
8000b9c8:	00000000 	nop
8000b9cc:	26101111 	addiu	s0,s0,4369
8000b9d0:	0541fffb 	bgez	t2,8000b9c0 <n82_bgez_ex_ds_test+0x6c4>
8000b9d4:	85540003 	lh	s4,3(t2)
8000b9d8:	26100002 	addiu	s0,s0,2
8000b9dc:	26100002 	addiu	s0,s0,2
8000b9e0:	26100002 	addiu	s0,s0,2
8000b9e4:	02129021 	addu	s2,s0,s2
8000b9e8:	24141117 	li	s4,4375
8000b9ec:	16920315 	bne	s4,s2,8000c644 <inst_error>
8000b9f0:	00000000 	nop
8000b9f4:	3c144444 	lui	s4,0x4444
8000b9f8:	16820312 	bne	s4,v0,8000c644 <inst_error>
8000b9fc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:21
8000ba00:	24020009 	li	v0,9
8000ba04:	00008021 	move	s0,zero
8000ba08:	00009021 	move	s2,zero
8000ba0c:	3c087fff 	lui	t0,0x7fff
8000ba10:	3508ffff 	ori	t0,t0,0xffff
8000ba14:	3c097fff 	lui	t1,0x7fff
8000ba18:	3529ffff 	ori	t1,t1,0xffff
8000ba1c:	3c0a8002 	lui	t2,0x8002
8000ba20:	354afff0 	ori	t2,t2,0xfff0
8000ba24:	ad480000 	sw	t0,0(t2)
8000ba28:	10000004 	b	8000ba3c <n82_bgez_ex_ds_test+0x740>
8000ba2c:	00000000 	nop
8000ba30:	26522222 	addiu	s2,s2,8738
8000ba34:	10000007 	b	8000ba54 <n82_bgez_ex_ds_test+0x758>
8000ba38:	00000000 	nop
8000ba3c:	26101111 	addiu	s0,s0,4369
8000ba40:	05010004 	bgez	t0,8000ba54 <n82_bgez_ex_ds_test+0x758>
8000ba44:	95540003 	lhu	s4,3(t2)
8000ba48:	26100002 	addiu	s0,s0,2
8000ba4c:	26100002 	addiu	s0,s0,2
8000ba50:	26100002 	addiu	s0,s0,2
8000ba54:	02129021 	addu	s2,s0,s2
8000ba58:	24141117 	li	s4,4375
8000ba5c:	169202f9 	bne	s4,s2,8000c644 <inst_error>
8000ba60:	00000000 	nop
8000ba64:	3c144444 	lui	s4,0x4444
8000ba68:	168202f6 	bne	s4,v0,8000c644 <inst_error>
8000ba6c:	00000000 	nop
8000ba70:	24020009 	li	v0,9
8000ba74:	00008021 	move	s0,zero
8000ba78:	00009021 	move	s2,zero
8000ba7c:	3c087fff 	lui	t0,0x7fff
8000ba80:	3508ffff 	ori	t0,t0,0xffff
8000ba84:	3c097fff 	lui	t1,0x7fff
8000ba88:	3529ffff 	ori	t1,t1,0xffff
8000ba8c:	3c0a8002 	lui	t2,0x8002
8000ba90:	354afff0 	ori	t2,t2,0xfff0
8000ba94:	ad480000 	sw	t0,0(t2)
8000ba98:	10000004 	b	8000baac <n82_bgez_ex_ds_test+0x7b0>
8000ba9c:	00000000 	nop
8000baa0:	26522222 	addiu	s2,s2,8738
8000baa4:	10000007 	b	8000bac4 <n82_bgez_ex_ds_test+0x7c8>
8000baa8:	00000000 	nop
8000baac:	26101111 	addiu	s0,s0,4369
8000bab0:	05410004 	bgez	t2,8000bac4 <n82_bgez_ex_ds_test+0x7c8>
8000bab4:	95540003 	lhu	s4,3(t2)
8000bab8:	26100002 	addiu	s0,s0,2
8000babc:	26100002 	addiu	s0,s0,2
8000bac0:	26100002 	addiu	s0,s0,2
8000bac4:	02129021 	addu	s2,s0,s2
8000bac8:	24141117 	li	s4,4375
8000bacc:	169202dd 	bne	s4,s2,8000c644 <inst_error>
8000bad0:	00000000 	nop
8000bad4:	3c144444 	lui	s4,0x4444
8000bad8:	168202da 	bne	s4,v0,8000c644 <inst_error>
8000badc:	00000000 	nop
8000bae0:	24020009 	li	v0,9
8000bae4:	00008021 	move	s0,zero
8000bae8:	00009021 	move	s2,zero
8000baec:	3c087fff 	lui	t0,0x7fff
8000baf0:	3508ffff 	ori	t0,t0,0xffff
8000baf4:	3c097fff 	lui	t1,0x7fff
8000baf8:	3529ffff 	ori	t1,t1,0xffff
8000bafc:	3c0a8002 	lui	t2,0x8002
8000bb00:	354afff0 	ori	t2,t2,0xfff0
8000bb04:	ad480000 	sw	t0,0(t2)
8000bb08:	10000004 	b	8000bb1c <n82_bgez_ex_ds_test+0x820>
8000bb0c:	00000000 	nop
8000bb10:	26522222 	addiu	s2,s2,8738
8000bb14:	10000007 	b	8000bb34 <n82_bgez_ex_ds_test+0x838>
8000bb18:	00000000 	nop
8000bb1c:	26101111 	addiu	s0,s0,4369
8000bb20:	0501fffb 	bgez	t0,8000bb10 <n82_bgez_ex_ds_test+0x814>
8000bb24:	95540003 	lhu	s4,3(t2)
8000bb28:	26100002 	addiu	s0,s0,2
8000bb2c:	26100002 	addiu	s0,s0,2
8000bb30:	26100002 	addiu	s0,s0,2
8000bb34:	02129021 	addu	s2,s0,s2
8000bb38:	24141117 	li	s4,4375
8000bb3c:	169202c1 	bne	s4,s2,8000c644 <inst_error>
8000bb40:	00000000 	nop
8000bb44:	3c144444 	lui	s4,0x4444
8000bb48:	168202be 	bne	s4,v0,8000c644 <inst_error>
8000bb4c:	00000000 	nop
8000bb50:	24020009 	li	v0,9
8000bb54:	00008021 	move	s0,zero
8000bb58:	00009021 	move	s2,zero
8000bb5c:	3c087fff 	lui	t0,0x7fff
8000bb60:	3508ffff 	ori	t0,t0,0xffff
8000bb64:	3c097fff 	lui	t1,0x7fff
8000bb68:	3529ffff 	ori	t1,t1,0xffff
8000bb6c:	3c0a8002 	lui	t2,0x8002
8000bb70:	354afff0 	ori	t2,t2,0xfff0
8000bb74:	ad480000 	sw	t0,0(t2)
8000bb78:	10000004 	b	8000bb8c <n82_bgez_ex_ds_test+0x890>
8000bb7c:	00000000 	nop
8000bb80:	26522222 	addiu	s2,s2,8738
8000bb84:	10000007 	b	8000bba4 <n82_bgez_ex_ds_test+0x8a8>
8000bb88:	00000000 	nop
8000bb8c:	26101111 	addiu	s0,s0,4369
8000bb90:	0541fffb 	bgez	t2,8000bb80 <n82_bgez_ex_ds_test+0x884>
8000bb94:	95540003 	lhu	s4,3(t2)
8000bb98:	26100002 	addiu	s0,s0,2
8000bb9c:	26100002 	addiu	s0,s0,2
8000bba0:	26100002 	addiu	s0,s0,2
8000bba4:	02129021 	addu	s2,s0,s2
8000bba8:	24141117 	li	s4,4375
8000bbac:	169202a5 	bne	s4,s2,8000c644 <inst_error>
8000bbb0:	00000000 	nop
8000bbb4:	3c144444 	lui	s4,0x4444
8000bbb8:	168202a2 	bne	s4,v0,8000c644 <inst_error>
8000bbbc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:22
8000bbc0:	24020009 	li	v0,9
8000bbc4:	00008021 	move	s0,zero
8000bbc8:	00009021 	move	s2,zero
8000bbcc:	3c087fff 	lui	t0,0x7fff
8000bbd0:	3508ffff 	ori	t0,t0,0xffff
8000bbd4:	3c097fff 	lui	t1,0x7fff
8000bbd8:	3529ffff 	ori	t1,t1,0xffff
8000bbdc:	3c0a8002 	lui	t2,0x8002
8000bbe0:	354afff0 	ori	t2,t2,0xfff0
8000bbe4:	ad480000 	sw	t0,0(t2)
8000bbe8:	10000004 	b	8000bbfc <n82_bgez_ex_ds_test+0x900>
8000bbec:	00000000 	nop
8000bbf0:	26522222 	addiu	s2,s2,8738
8000bbf4:	10000007 	b	8000bc14 <n82_bgez_ex_ds_test+0x918>
8000bbf8:	00000000 	nop
8000bbfc:	26101111 	addiu	s0,s0,4369
8000bc00:	05010004 	bgez	t0,8000bc14 <n82_bgez_ex_ds_test+0x918>
8000bc04:	8d540003 	lw	s4,3(t2)
8000bc08:	26100002 	addiu	s0,s0,2
8000bc0c:	26100002 	addiu	s0,s0,2
8000bc10:	26100002 	addiu	s0,s0,2
8000bc14:	02129021 	addu	s2,s0,s2
8000bc18:	24141117 	li	s4,4375
8000bc1c:	16920289 	bne	s4,s2,8000c644 <inst_error>
8000bc20:	00000000 	nop
8000bc24:	3c144444 	lui	s4,0x4444
8000bc28:	16820286 	bne	s4,v0,8000c644 <inst_error>
8000bc2c:	00000000 	nop
8000bc30:	24020009 	li	v0,9
8000bc34:	00008021 	move	s0,zero
8000bc38:	00009021 	move	s2,zero
8000bc3c:	3c087fff 	lui	t0,0x7fff
8000bc40:	3508ffff 	ori	t0,t0,0xffff
8000bc44:	3c097fff 	lui	t1,0x7fff
8000bc48:	3529ffff 	ori	t1,t1,0xffff
8000bc4c:	3c0a8002 	lui	t2,0x8002
8000bc50:	354afff0 	ori	t2,t2,0xfff0
8000bc54:	ad480000 	sw	t0,0(t2)
8000bc58:	10000004 	b	8000bc6c <n82_bgez_ex_ds_test+0x970>
8000bc5c:	00000000 	nop
8000bc60:	26522222 	addiu	s2,s2,8738
8000bc64:	10000007 	b	8000bc84 <n82_bgez_ex_ds_test+0x988>
8000bc68:	00000000 	nop
8000bc6c:	26101111 	addiu	s0,s0,4369
8000bc70:	05410004 	bgez	t2,8000bc84 <n82_bgez_ex_ds_test+0x988>
8000bc74:	8d540003 	lw	s4,3(t2)
8000bc78:	26100002 	addiu	s0,s0,2
8000bc7c:	26100002 	addiu	s0,s0,2
8000bc80:	26100002 	addiu	s0,s0,2
8000bc84:	02129021 	addu	s2,s0,s2
8000bc88:	24141117 	li	s4,4375
8000bc8c:	1692026d 	bne	s4,s2,8000c644 <inst_error>
8000bc90:	00000000 	nop
8000bc94:	3c144444 	lui	s4,0x4444
8000bc98:	1682026a 	bne	s4,v0,8000c644 <inst_error>
8000bc9c:	00000000 	nop
8000bca0:	24020009 	li	v0,9
8000bca4:	00008021 	move	s0,zero
8000bca8:	00009021 	move	s2,zero
8000bcac:	3c087fff 	lui	t0,0x7fff
8000bcb0:	3508ffff 	ori	t0,t0,0xffff
8000bcb4:	3c097fff 	lui	t1,0x7fff
8000bcb8:	3529ffff 	ori	t1,t1,0xffff
8000bcbc:	3c0a8002 	lui	t2,0x8002
8000bcc0:	354afff0 	ori	t2,t2,0xfff0
8000bcc4:	ad480000 	sw	t0,0(t2)
8000bcc8:	10000004 	b	8000bcdc <n82_bgez_ex_ds_test+0x9e0>
8000bccc:	00000000 	nop
8000bcd0:	26522222 	addiu	s2,s2,8738
8000bcd4:	10000007 	b	8000bcf4 <n82_bgez_ex_ds_test+0x9f8>
8000bcd8:	00000000 	nop
8000bcdc:	26101111 	addiu	s0,s0,4369
8000bce0:	0501fffb 	bgez	t0,8000bcd0 <n82_bgez_ex_ds_test+0x9d4>
8000bce4:	8d540003 	lw	s4,3(t2)
8000bce8:	26100002 	addiu	s0,s0,2
8000bcec:	26100002 	addiu	s0,s0,2
8000bcf0:	26100002 	addiu	s0,s0,2
8000bcf4:	02129021 	addu	s2,s0,s2
8000bcf8:	24141117 	li	s4,4375
8000bcfc:	16920251 	bne	s4,s2,8000c644 <inst_error>
8000bd00:	00000000 	nop
8000bd04:	3c144444 	lui	s4,0x4444
8000bd08:	1682024e 	bne	s4,v0,8000c644 <inst_error>
8000bd0c:	00000000 	nop
8000bd10:	24020009 	li	v0,9
8000bd14:	00008021 	move	s0,zero
8000bd18:	00009021 	move	s2,zero
8000bd1c:	3c087fff 	lui	t0,0x7fff
8000bd20:	3508ffff 	ori	t0,t0,0xffff
8000bd24:	3c097fff 	lui	t1,0x7fff
8000bd28:	3529ffff 	ori	t1,t1,0xffff
8000bd2c:	3c0a8002 	lui	t2,0x8002
8000bd30:	354afff0 	ori	t2,t2,0xfff0
8000bd34:	ad480000 	sw	t0,0(t2)
8000bd38:	10000004 	b	8000bd4c <n82_bgez_ex_ds_test+0xa50>
8000bd3c:	00000000 	nop
8000bd40:	26522222 	addiu	s2,s2,8738
8000bd44:	10000007 	b	8000bd64 <n82_bgez_ex_ds_test+0xa68>
8000bd48:	00000000 	nop
8000bd4c:	26101111 	addiu	s0,s0,4369
8000bd50:	0541fffb 	bgez	t2,8000bd40 <n82_bgez_ex_ds_test+0xa44>
8000bd54:	8d540003 	lw	s4,3(t2)
8000bd58:	26100002 	addiu	s0,s0,2
8000bd5c:	26100002 	addiu	s0,s0,2
8000bd60:	26100002 	addiu	s0,s0,2
8000bd64:	02129021 	addu	s2,s0,s2
8000bd68:	24141117 	li	s4,4375
8000bd6c:	16920235 	bne	s4,s2,8000c644 <inst_error>
8000bd70:	00000000 	nop
8000bd74:	3c144444 	lui	s4,0x4444
8000bd78:	16820232 	bne	s4,v0,8000c644 <inst_error>
8000bd7c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:23
8000bd80:	24020009 	li	v0,9
8000bd84:	00008021 	move	s0,zero
8000bd88:	00009021 	move	s2,zero
8000bd8c:	3c087fff 	lui	t0,0x7fff
8000bd90:	3508ffff 	ori	t0,t0,0xffff
8000bd94:	3c097fff 	lui	t1,0x7fff
8000bd98:	3529ffff 	ori	t1,t1,0xffff
8000bd9c:	3c0a8002 	lui	t2,0x8002
8000bda0:	354afff0 	ori	t2,t2,0xfff0
8000bda4:	ad480000 	sw	t0,0(t2)
8000bda8:	10000004 	b	8000bdbc <n82_bgez_ex_ds_test+0xac0>
8000bdac:	00000000 	nop
8000bdb0:	26522222 	addiu	s2,s2,8738
8000bdb4:	10000007 	b	8000bdd4 <n82_bgez_ex_ds_test+0xad8>
8000bdb8:	00000000 	nop
8000bdbc:	26101111 	addiu	s0,s0,4369
8000bdc0:	05010004 	bgez	t0,8000bdd4 <n82_bgez_ex_ds_test+0xad8>
8000bdc4:	a5540003 	sh	s4,3(t2)
8000bdc8:	26100002 	addiu	s0,s0,2
8000bdcc:	26100002 	addiu	s0,s0,2
8000bdd0:	26100002 	addiu	s0,s0,2
8000bdd4:	02129021 	addu	s2,s0,s2
8000bdd8:	24141117 	li	s4,4375
8000bddc:	16920219 	bne	s4,s2,8000c644 <inst_error>
8000bde0:	00000000 	nop
8000bde4:	3c144444 	lui	s4,0x4444
8000bde8:	16820216 	bne	s4,v0,8000c644 <inst_error>
8000bdec:	00000000 	nop
8000bdf0:	24020009 	li	v0,9
8000bdf4:	00008021 	move	s0,zero
8000bdf8:	00009021 	move	s2,zero
8000bdfc:	3c087fff 	lui	t0,0x7fff
8000be00:	3508ffff 	ori	t0,t0,0xffff
8000be04:	3c097fff 	lui	t1,0x7fff
8000be08:	3529ffff 	ori	t1,t1,0xffff
8000be0c:	3c0a8002 	lui	t2,0x8002
8000be10:	354afff0 	ori	t2,t2,0xfff0
8000be14:	ad480000 	sw	t0,0(t2)
8000be18:	10000004 	b	8000be2c <n82_bgez_ex_ds_test+0xb30>
8000be1c:	00000000 	nop
8000be20:	26522222 	addiu	s2,s2,8738
8000be24:	10000007 	b	8000be44 <n82_bgez_ex_ds_test+0xb48>
8000be28:	00000000 	nop
8000be2c:	26101111 	addiu	s0,s0,4369
8000be30:	05410004 	bgez	t2,8000be44 <n82_bgez_ex_ds_test+0xb48>
8000be34:	a5540003 	sh	s4,3(t2)
8000be38:	26100002 	addiu	s0,s0,2
8000be3c:	26100002 	addiu	s0,s0,2
8000be40:	26100002 	addiu	s0,s0,2
8000be44:	02129021 	addu	s2,s0,s2
8000be48:	24141117 	li	s4,4375
8000be4c:	169201fd 	bne	s4,s2,8000c644 <inst_error>
8000be50:	00000000 	nop
8000be54:	3c144444 	lui	s4,0x4444
8000be58:	168201fa 	bne	s4,v0,8000c644 <inst_error>
8000be5c:	00000000 	nop
8000be60:	24020009 	li	v0,9
8000be64:	00008021 	move	s0,zero
8000be68:	00009021 	move	s2,zero
8000be6c:	3c087fff 	lui	t0,0x7fff
8000be70:	3508ffff 	ori	t0,t0,0xffff
8000be74:	3c097fff 	lui	t1,0x7fff
8000be78:	3529ffff 	ori	t1,t1,0xffff
8000be7c:	3c0a8002 	lui	t2,0x8002
8000be80:	354afff0 	ori	t2,t2,0xfff0
8000be84:	ad480000 	sw	t0,0(t2)
8000be88:	10000004 	b	8000be9c <n82_bgez_ex_ds_test+0xba0>
8000be8c:	00000000 	nop
8000be90:	26522222 	addiu	s2,s2,8738
8000be94:	10000007 	b	8000beb4 <n82_bgez_ex_ds_test+0xbb8>
8000be98:	00000000 	nop
8000be9c:	26101111 	addiu	s0,s0,4369
8000bea0:	0501fffb 	bgez	t0,8000be90 <n82_bgez_ex_ds_test+0xb94>
8000bea4:	a5540003 	sh	s4,3(t2)
8000bea8:	26100002 	addiu	s0,s0,2
8000beac:	26100002 	addiu	s0,s0,2
8000beb0:	26100002 	addiu	s0,s0,2
8000beb4:	02129021 	addu	s2,s0,s2
8000beb8:	24141117 	li	s4,4375
8000bebc:	169201e1 	bne	s4,s2,8000c644 <inst_error>
8000bec0:	00000000 	nop
8000bec4:	3c144444 	lui	s4,0x4444
8000bec8:	168201de 	bne	s4,v0,8000c644 <inst_error>
8000becc:	00000000 	nop
8000bed0:	24020009 	li	v0,9
8000bed4:	00008021 	move	s0,zero
8000bed8:	00009021 	move	s2,zero
8000bedc:	3c087fff 	lui	t0,0x7fff
8000bee0:	3508ffff 	ori	t0,t0,0xffff
8000bee4:	3c097fff 	lui	t1,0x7fff
8000bee8:	3529ffff 	ori	t1,t1,0xffff
8000beec:	3c0a8002 	lui	t2,0x8002
8000bef0:	354afff0 	ori	t2,t2,0xfff0
8000bef4:	ad480000 	sw	t0,0(t2)
8000bef8:	10000004 	b	8000bf0c <n82_bgez_ex_ds_test+0xc10>
8000befc:	00000000 	nop
8000bf00:	26522222 	addiu	s2,s2,8738
8000bf04:	10000007 	b	8000bf24 <n82_bgez_ex_ds_test+0xc28>
8000bf08:	00000000 	nop
8000bf0c:	26101111 	addiu	s0,s0,4369
8000bf10:	0541fffb 	bgez	t2,8000bf00 <n82_bgez_ex_ds_test+0xc04>
8000bf14:	a5540003 	sh	s4,3(t2)
8000bf18:	26100002 	addiu	s0,s0,2
8000bf1c:	26100002 	addiu	s0,s0,2
8000bf20:	26100002 	addiu	s0,s0,2
8000bf24:	02129021 	addu	s2,s0,s2
8000bf28:	24141117 	li	s4,4375
8000bf2c:	169201c5 	bne	s4,s2,8000c644 <inst_error>
8000bf30:	00000000 	nop
8000bf34:	3c144444 	lui	s4,0x4444
8000bf38:	168201c2 	bne	s4,v0,8000c644 <inst_error>
8000bf3c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:24
8000bf40:	24020009 	li	v0,9
8000bf44:	00008021 	move	s0,zero
8000bf48:	00009021 	move	s2,zero
8000bf4c:	3c087fff 	lui	t0,0x7fff
8000bf50:	3508ffff 	ori	t0,t0,0xffff
8000bf54:	3c097fff 	lui	t1,0x7fff
8000bf58:	3529ffff 	ori	t1,t1,0xffff
8000bf5c:	3c0a8002 	lui	t2,0x8002
8000bf60:	354afff0 	ori	t2,t2,0xfff0
8000bf64:	ad480000 	sw	t0,0(t2)
8000bf68:	10000004 	b	8000bf7c <n82_bgez_ex_ds_test+0xc80>
8000bf6c:	00000000 	nop
8000bf70:	26522222 	addiu	s2,s2,8738
8000bf74:	10000007 	b	8000bf94 <n82_bgez_ex_ds_test+0xc98>
8000bf78:	00000000 	nop
8000bf7c:	26101111 	addiu	s0,s0,4369
8000bf80:	05010004 	bgez	t0,8000bf94 <n82_bgez_ex_ds_test+0xc98>
8000bf84:	ad540003 	sw	s4,3(t2)
8000bf88:	26100002 	addiu	s0,s0,2
8000bf8c:	26100002 	addiu	s0,s0,2
8000bf90:	26100002 	addiu	s0,s0,2
8000bf94:	02129021 	addu	s2,s0,s2
8000bf98:	24141117 	li	s4,4375
8000bf9c:	169201a9 	bne	s4,s2,8000c644 <inst_error>
8000bfa0:	00000000 	nop
8000bfa4:	3c144444 	lui	s4,0x4444
8000bfa8:	168201a6 	bne	s4,v0,8000c644 <inst_error>
8000bfac:	00000000 	nop
8000bfb0:	24020009 	li	v0,9
8000bfb4:	00008021 	move	s0,zero
8000bfb8:	00009021 	move	s2,zero
8000bfbc:	3c087fff 	lui	t0,0x7fff
8000bfc0:	3508ffff 	ori	t0,t0,0xffff
8000bfc4:	3c097fff 	lui	t1,0x7fff
8000bfc8:	3529ffff 	ori	t1,t1,0xffff
8000bfcc:	3c0a8002 	lui	t2,0x8002
8000bfd0:	354afff0 	ori	t2,t2,0xfff0
8000bfd4:	ad480000 	sw	t0,0(t2)
8000bfd8:	10000004 	b	8000bfec <n82_bgez_ex_ds_test+0xcf0>
8000bfdc:	00000000 	nop
8000bfe0:	26522222 	addiu	s2,s2,8738
8000bfe4:	10000007 	b	8000c004 <n82_bgez_ex_ds_test+0xd08>
8000bfe8:	00000000 	nop
8000bfec:	26101111 	addiu	s0,s0,4369
8000bff0:	05410004 	bgez	t2,8000c004 <n82_bgez_ex_ds_test+0xd08>
8000bff4:	ad540003 	sw	s4,3(t2)
8000bff8:	26100002 	addiu	s0,s0,2
8000bffc:	26100002 	addiu	s0,s0,2
8000c000:	26100002 	addiu	s0,s0,2
8000c004:	02129021 	addu	s2,s0,s2
8000c008:	24141117 	li	s4,4375
8000c00c:	1692018d 	bne	s4,s2,8000c644 <inst_error>
8000c010:	00000000 	nop
8000c014:	3c144444 	lui	s4,0x4444
8000c018:	1682018a 	bne	s4,v0,8000c644 <inst_error>
8000c01c:	00000000 	nop
8000c020:	24020009 	li	v0,9
8000c024:	00008021 	move	s0,zero
8000c028:	00009021 	move	s2,zero
8000c02c:	3c087fff 	lui	t0,0x7fff
8000c030:	3508ffff 	ori	t0,t0,0xffff
8000c034:	3c097fff 	lui	t1,0x7fff
8000c038:	3529ffff 	ori	t1,t1,0xffff
8000c03c:	3c0a8002 	lui	t2,0x8002
8000c040:	354afff0 	ori	t2,t2,0xfff0
8000c044:	ad480000 	sw	t0,0(t2)
8000c048:	10000004 	b	8000c05c <n82_bgez_ex_ds_test+0xd60>
8000c04c:	00000000 	nop
8000c050:	26522222 	addiu	s2,s2,8738
8000c054:	10000007 	b	8000c074 <n82_bgez_ex_ds_test+0xd78>
8000c058:	00000000 	nop
8000c05c:	26101111 	addiu	s0,s0,4369
8000c060:	0501fffb 	bgez	t0,8000c050 <n82_bgez_ex_ds_test+0xd54>
8000c064:	ad540003 	sw	s4,3(t2)
8000c068:	26100002 	addiu	s0,s0,2
8000c06c:	26100002 	addiu	s0,s0,2
8000c070:	26100002 	addiu	s0,s0,2
8000c074:	02129021 	addu	s2,s0,s2
8000c078:	24141117 	li	s4,4375
8000c07c:	16920171 	bne	s4,s2,8000c644 <inst_error>
8000c080:	00000000 	nop
8000c084:	3c144444 	lui	s4,0x4444
8000c088:	1682016e 	bne	s4,v0,8000c644 <inst_error>
8000c08c:	00000000 	nop
8000c090:	24020009 	li	v0,9
8000c094:	00008021 	move	s0,zero
8000c098:	00009021 	move	s2,zero
8000c09c:	3c087fff 	lui	t0,0x7fff
8000c0a0:	3508ffff 	ori	t0,t0,0xffff
8000c0a4:	3c097fff 	lui	t1,0x7fff
8000c0a8:	3529ffff 	ori	t1,t1,0xffff
8000c0ac:	3c0a8002 	lui	t2,0x8002
8000c0b0:	354afff0 	ori	t2,t2,0xfff0
8000c0b4:	ad480000 	sw	t0,0(t2)
8000c0b8:	10000004 	b	8000c0cc <n82_bgez_ex_ds_test+0xdd0>
8000c0bc:	00000000 	nop
8000c0c0:	26522222 	addiu	s2,s2,8738
8000c0c4:	10000007 	b	8000c0e4 <n82_bgez_ex_ds_test+0xde8>
8000c0c8:	00000000 	nop
8000c0cc:	26101111 	addiu	s0,s0,4369
8000c0d0:	0541fffb 	bgez	t2,8000c0c0 <n82_bgez_ex_ds_test+0xdc4>
8000c0d4:	ad540003 	sw	s4,3(t2)
8000c0d8:	26100002 	addiu	s0,s0,2
8000c0dc:	26100002 	addiu	s0,s0,2
8000c0e0:	26100002 	addiu	s0,s0,2
8000c0e4:	02129021 	addu	s2,s0,s2
8000c0e8:	24141117 	li	s4,4375
8000c0ec:	16920155 	bne	s4,s2,8000c644 <inst_error>
8000c0f0:	00000000 	nop
8000c0f4:	3c144444 	lui	s4,0x4444
8000c0f8:	16820152 	bne	s4,v0,8000c644 <inst_error>
8000c0fc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:25
8000c100:	24020009 	li	v0,9
8000c104:	00008021 	move	s0,zero
8000c108:	00009021 	move	s2,zero
8000c10c:	3c087fff 	lui	t0,0x7fff
8000c110:	3508ffff 	ori	t0,t0,0xffff
8000c114:	3c097fff 	lui	t1,0x7fff
8000c118:	3529ffff 	ori	t1,t1,0xffff
8000c11c:	3c0a8002 	lui	t2,0x8002
8000c120:	354afff0 	ori	t2,t2,0xfff0
8000c124:	ad480000 	sw	t0,0(t2)
8000c128:	10000004 	b	8000c13c <n82_bgez_ex_ds_test+0xe40>
8000c12c:	00000000 	nop
8000c130:	26522222 	addiu	s2,s2,8738
8000c134:	10000007 	b	8000c154 <n82_bgez_ex_ds_test+0xe58>
8000c138:	00000000 	nop
8000c13c:	26101111 	addiu	s0,s0,4369
8000c140:	05010004 	bgez	t0,8000c154 <n82_bgez_ex_ds_test+0xe58>
8000c144:	6f76e210 	0x6f76e210
8000c148:	26100002 	addiu	s0,s0,2
8000c14c:	26100002 	addiu	s0,s0,2
8000c150:	26100002 	addiu	s0,s0,2
8000c154:	02129021 	addu	s2,s0,s2
8000c158:	24141117 	li	s4,4375
8000c15c:	16920139 	bne	s4,s2,8000c644 <inst_error>
8000c160:	00000000 	nop
8000c164:	3c144444 	lui	s4,0x4444
8000c168:	16820136 	bne	s4,v0,8000c644 <inst_error>
8000c16c:	00000000 	nop
8000c170:	24020009 	li	v0,9
8000c174:	00008021 	move	s0,zero
8000c178:	00009021 	move	s2,zero
8000c17c:	3c087fff 	lui	t0,0x7fff
8000c180:	3508ffff 	ori	t0,t0,0xffff
8000c184:	3c097fff 	lui	t1,0x7fff
8000c188:	3529ffff 	ori	t1,t1,0xffff
8000c18c:	3c0a8002 	lui	t2,0x8002
8000c190:	354afff0 	ori	t2,t2,0xfff0
8000c194:	ad480000 	sw	t0,0(t2)
8000c198:	10000004 	b	8000c1ac <n82_bgez_ex_ds_test+0xeb0>
8000c19c:	00000000 	nop
8000c1a0:	26522222 	addiu	s2,s2,8738
8000c1a4:	10000007 	b	8000c1c4 <n82_bgez_ex_ds_test+0xec8>
8000c1a8:	00000000 	nop
8000c1ac:	26101111 	addiu	s0,s0,4369
8000c1b0:	05410004 	bgez	t2,8000c1c4 <n82_bgez_ex_ds_test+0xec8>
8000c1b4:	6f76e210 	0x6f76e210
8000c1b8:	26100002 	addiu	s0,s0,2
8000c1bc:	26100002 	addiu	s0,s0,2
8000c1c0:	26100002 	addiu	s0,s0,2
8000c1c4:	02129021 	addu	s2,s0,s2
8000c1c8:	24141117 	li	s4,4375
8000c1cc:	1692011d 	bne	s4,s2,8000c644 <inst_error>
8000c1d0:	00000000 	nop
8000c1d4:	3c144444 	lui	s4,0x4444
8000c1d8:	1682011a 	bne	s4,v0,8000c644 <inst_error>
8000c1dc:	00000000 	nop
8000c1e0:	24020009 	li	v0,9
8000c1e4:	00008021 	move	s0,zero
8000c1e8:	00009021 	move	s2,zero
8000c1ec:	3c087fff 	lui	t0,0x7fff
8000c1f0:	3508ffff 	ori	t0,t0,0xffff
8000c1f4:	3c097fff 	lui	t1,0x7fff
8000c1f8:	3529ffff 	ori	t1,t1,0xffff
8000c1fc:	3c0a8002 	lui	t2,0x8002
8000c200:	354afff0 	ori	t2,t2,0xfff0
8000c204:	ad480000 	sw	t0,0(t2)
8000c208:	10000004 	b	8000c21c <n82_bgez_ex_ds_test+0xf20>
8000c20c:	00000000 	nop
8000c210:	26522222 	addiu	s2,s2,8738
8000c214:	10000007 	b	8000c234 <n82_bgez_ex_ds_test+0xf38>
8000c218:	00000000 	nop
8000c21c:	26101111 	addiu	s0,s0,4369
8000c220:	0501fffb 	bgez	t0,8000c210 <n82_bgez_ex_ds_test+0xf14>
8000c224:	6f76e210 	0x6f76e210
8000c228:	26100002 	addiu	s0,s0,2
8000c22c:	26100002 	addiu	s0,s0,2
8000c230:	26100002 	addiu	s0,s0,2
8000c234:	02129021 	addu	s2,s0,s2
8000c238:	24141117 	li	s4,4375
8000c23c:	16920101 	bne	s4,s2,8000c644 <inst_error>
8000c240:	00000000 	nop
8000c244:	3c144444 	lui	s4,0x4444
8000c248:	168200fe 	bne	s4,v0,8000c644 <inst_error>
8000c24c:	00000000 	nop
8000c250:	24020009 	li	v0,9
8000c254:	00008021 	move	s0,zero
8000c258:	00009021 	move	s2,zero
8000c25c:	3c087fff 	lui	t0,0x7fff
8000c260:	3508ffff 	ori	t0,t0,0xffff
8000c264:	3c097fff 	lui	t1,0x7fff
8000c268:	3529ffff 	ori	t1,t1,0xffff
8000c26c:	3c0a8002 	lui	t2,0x8002
8000c270:	354afff0 	ori	t2,t2,0xfff0
8000c274:	ad480000 	sw	t0,0(t2)
8000c278:	10000004 	b	8000c28c <n82_bgez_ex_ds_test+0xf90>
8000c27c:	00000000 	nop
8000c280:	26522222 	addiu	s2,s2,8738
8000c284:	10000007 	b	8000c2a4 <n82_bgez_ex_ds_test+0xfa8>
8000c288:	00000000 	nop
8000c28c:	26101111 	addiu	s0,s0,4369
8000c290:	0541fffb 	bgez	t2,8000c280 <n82_bgez_ex_ds_test+0xf84>
8000c294:	6f76e210 	0x6f76e210
8000c298:	26100002 	addiu	s0,s0,2
8000c29c:	26100002 	addiu	s0,s0,2
8000c2a0:	26100002 	addiu	s0,s0,2
8000c2a4:	02129021 	addu	s2,s0,s2
8000c2a8:	24141117 	li	s4,4375
8000c2ac:	169200e5 	bne	s4,s2,8000c644 <inst_error>
8000c2b0:	00000000 	nop
8000c2b4:	3c144444 	lui	s4,0x4444
8000c2b8:	168200e2 	bne	s4,v0,8000c644 <inst_error>
8000c2bc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:26
8000c2c0:	24020009 	li	v0,9
8000c2c4:	00008021 	move	s0,zero
8000c2c8:	00009021 	move	s2,zero
8000c2cc:	3c087fff 	lui	t0,0x7fff
8000c2d0:	3508ffff 	ori	t0,t0,0xffff
8000c2d4:	3c097fff 	lui	t1,0x7fff
8000c2d8:	3529ffff 	ori	t1,t1,0xffff
8000c2dc:	3c0a8002 	lui	t2,0x8002
8000c2e0:	354afff0 	ori	t2,t2,0xfff0
8000c2e4:	ad480000 	sw	t0,0(t2)
8000c2e8:	10000004 	b	8000c2fc <n82_bgez_ex_ds_test+0x1000>
8000c2ec:	00000000 	nop
8000c2f0:	26522222 	addiu	s2,s2,8738
8000c2f4:	10000007 	b	8000c314 <n82_bgez_ex_ds_test+0x1018>
8000c2f8:	00000000 	nop
8000c2fc:	26101111 	addiu	s0,s0,4369
8000c300:	05010004 	bgez	t0,8000c314 <n82_bgez_ex_ds_test+0x1018>
8000c304:	0000000c 	syscall
8000c308:	26100002 	addiu	s0,s0,2
8000c30c:	26100002 	addiu	s0,s0,2
8000c310:	26100002 	addiu	s0,s0,2
8000c314:	02129021 	addu	s2,s0,s2
8000c318:	24141117 	li	s4,4375
8000c31c:	169200c9 	bne	s4,s2,8000c644 <inst_error>
8000c320:	00000000 	nop
8000c324:	3c144444 	lui	s4,0x4444
8000c328:	168200c6 	bne	s4,v0,8000c644 <inst_error>
8000c32c:	00000000 	nop
8000c330:	24020009 	li	v0,9
8000c334:	00008021 	move	s0,zero
8000c338:	00009021 	move	s2,zero
8000c33c:	3c087fff 	lui	t0,0x7fff
8000c340:	3508ffff 	ori	t0,t0,0xffff
8000c344:	3c097fff 	lui	t1,0x7fff
8000c348:	3529ffff 	ori	t1,t1,0xffff
8000c34c:	3c0a8002 	lui	t2,0x8002
8000c350:	354afff0 	ori	t2,t2,0xfff0
8000c354:	ad480000 	sw	t0,0(t2)
8000c358:	10000004 	b	8000c36c <n82_bgez_ex_ds_test+0x1070>
8000c35c:	00000000 	nop
8000c360:	26522222 	addiu	s2,s2,8738
8000c364:	10000007 	b	8000c384 <n82_bgez_ex_ds_test+0x1088>
8000c368:	00000000 	nop
8000c36c:	26101111 	addiu	s0,s0,4369
8000c370:	05410004 	bgez	t2,8000c384 <n82_bgez_ex_ds_test+0x1088>
8000c374:	0000000c 	syscall
8000c378:	26100002 	addiu	s0,s0,2
8000c37c:	26100002 	addiu	s0,s0,2
8000c380:	26100002 	addiu	s0,s0,2
8000c384:	02129021 	addu	s2,s0,s2
8000c388:	24141117 	li	s4,4375
8000c38c:	169200ad 	bne	s4,s2,8000c644 <inst_error>
8000c390:	00000000 	nop
8000c394:	3c144444 	lui	s4,0x4444
8000c398:	168200aa 	bne	s4,v0,8000c644 <inst_error>
8000c39c:	00000000 	nop
8000c3a0:	24020009 	li	v0,9
8000c3a4:	00008021 	move	s0,zero
8000c3a8:	00009021 	move	s2,zero
8000c3ac:	3c087fff 	lui	t0,0x7fff
8000c3b0:	3508ffff 	ori	t0,t0,0xffff
8000c3b4:	3c097fff 	lui	t1,0x7fff
8000c3b8:	3529ffff 	ori	t1,t1,0xffff
8000c3bc:	3c0a8002 	lui	t2,0x8002
8000c3c0:	354afff0 	ori	t2,t2,0xfff0
8000c3c4:	ad480000 	sw	t0,0(t2)
8000c3c8:	10000004 	b	8000c3dc <n82_bgez_ex_ds_test+0x10e0>
8000c3cc:	00000000 	nop
8000c3d0:	26522222 	addiu	s2,s2,8738
8000c3d4:	10000007 	b	8000c3f4 <n82_bgez_ex_ds_test+0x10f8>
8000c3d8:	00000000 	nop
8000c3dc:	26101111 	addiu	s0,s0,4369
8000c3e0:	0501fffb 	bgez	t0,8000c3d0 <n82_bgez_ex_ds_test+0x10d4>
8000c3e4:	0000000c 	syscall
8000c3e8:	26100002 	addiu	s0,s0,2
8000c3ec:	26100002 	addiu	s0,s0,2
8000c3f0:	26100002 	addiu	s0,s0,2
8000c3f4:	02129021 	addu	s2,s0,s2
8000c3f8:	24141117 	li	s4,4375
8000c3fc:	16920091 	bne	s4,s2,8000c644 <inst_error>
8000c400:	00000000 	nop
8000c404:	3c144444 	lui	s4,0x4444
8000c408:	1682008e 	bne	s4,v0,8000c644 <inst_error>
8000c40c:	00000000 	nop
8000c410:	24020009 	li	v0,9
8000c414:	00008021 	move	s0,zero
8000c418:	00009021 	move	s2,zero
8000c41c:	3c087fff 	lui	t0,0x7fff
8000c420:	3508ffff 	ori	t0,t0,0xffff
8000c424:	3c097fff 	lui	t1,0x7fff
8000c428:	3529ffff 	ori	t1,t1,0xffff
8000c42c:	3c0a8002 	lui	t2,0x8002
8000c430:	354afff0 	ori	t2,t2,0xfff0
8000c434:	ad480000 	sw	t0,0(t2)
8000c438:	10000004 	b	8000c44c <n82_bgez_ex_ds_test+0x1150>
8000c43c:	00000000 	nop
8000c440:	26522222 	addiu	s2,s2,8738
8000c444:	10000007 	b	8000c464 <n82_bgez_ex_ds_test+0x1168>
8000c448:	00000000 	nop
8000c44c:	26101111 	addiu	s0,s0,4369
8000c450:	0541fffb 	bgez	t2,8000c440 <n82_bgez_ex_ds_test+0x1144>
8000c454:	0000000c 	syscall
8000c458:	26100002 	addiu	s0,s0,2
8000c45c:	26100002 	addiu	s0,s0,2
8000c460:	26100002 	addiu	s0,s0,2
8000c464:	02129021 	addu	s2,s0,s2
8000c468:	24141117 	li	s4,4375
8000c46c:	16920075 	bne	s4,s2,8000c644 <inst_error>
8000c470:	00000000 	nop
8000c474:	3c144444 	lui	s4,0x4444
8000c478:	16820072 	bne	s4,v0,8000c644 <inst_error>
8000c47c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:27
8000c480:	24020009 	li	v0,9
8000c484:	00008021 	move	s0,zero
8000c488:	00009021 	move	s2,zero
8000c48c:	3c087fff 	lui	t0,0x7fff
8000c490:	3508ffff 	ori	t0,t0,0xffff
8000c494:	3c097fff 	lui	t1,0x7fff
8000c498:	3529ffff 	ori	t1,t1,0xffff
8000c49c:	3c0a8002 	lui	t2,0x8002
8000c4a0:	354afff0 	ori	t2,t2,0xfff0
8000c4a4:	ad480000 	sw	t0,0(t2)
8000c4a8:	10000004 	b	8000c4bc <n82_bgez_ex_ds_test+0x11c0>
8000c4ac:	00000000 	nop
8000c4b0:	26522222 	addiu	s2,s2,8738
8000c4b4:	10000007 	b	8000c4d4 <n82_bgez_ex_ds_test+0x11d8>
8000c4b8:	00000000 	nop
8000c4bc:	26101111 	addiu	s0,s0,4369
8000c4c0:	05010004 	bgez	t0,8000c4d4 <n82_bgez_ex_ds_test+0x11d8>
8000c4c4:	0000000d 	break
8000c4c8:	26100002 	addiu	s0,s0,2
8000c4cc:	26100002 	addiu	s0,s0,2
8000c4d0:	26100002 	addiu	s0,s0,2
8000c4d4:	02129021 	addu	s2,s0,s2
8000c4d8:	24141117 	li	s4,4375
8000c4dc:	16920059 	bne	s4,s2,8000c644 <inst_error>
8000c4e0:	00000000 	nop
8000c4e4:	3c144444 	lui	s4,0x4444
8000c4e8:	16820056 	bne	s4,v0,8000c644 <inst_error>
8000c4ec:	00000000 	nop
8000c4f0:	24020009 	li	v0,9
8000c4f4:	00008021 	move	s0,zero
8000c4f8:	00009021 	move	s2,zero
8000c4fc:	3c087fff 	lui	t0,0x7fff
8000c500:	3508ffff 	ori	t0,t0,0xffff
8000c504:	3c097fff 	lui	t1,0x7fff
8000c508:	3529ffff 	ori	t1,t1,0xffff
8000c50c:	3c0a8002 	lui	t2,0x8002
8000c510:	354afff0 	ori	t2,t2,0xfff0
8000c514:	ad480000 	sw	t0,0(t2)
8000c518:	10000004 	b	8000c52c <n82_bgez_ex_ds_test+0x1230>
8000c51c:	00000000 	nop
8000c520:	26522222 	addiu	s2,s2,8738
8000c524:	10000007 	b	8000c544 <n82_bgez_ex_ds_test+0x1248>
8000c528:	00000000 	nop
8000c52c:	26101111 	addiu	s0,s0,4369
8000c530:	05410004 	bgez	t2,8000c544 <n82_bgez_ex_ds_test+0x1248>
8000c534:	0000000d 	break
8000c538:	26100002 	addiu	s0,s0,2
8000c53c:	26100002 	addiu	s0,s0,2
8000c540:	26100002 	addiu	s0,s0,2
8000c544:	02129021 	addu	s2,s0,s2
8000c548:	24141117 	li	s4,4375
8000c54c:	1692003d 	bne	s4,s2,8000c644 <inst_error>
8000c550:	00000000 	nop
8000c554:	3c144444 	lui	s4,0x4444
8000c558:	1682003a 	bne	s4,v0,8000c644 <inst_error>
8000c55c:	00000000 	nop
8000c560:	24020009 	li	v0,9
8000c564:	00008021 	move	s0,zero
8000c568:	00009021 	move	s2,zero
8000c56c:	3c087fff 	lui	t0,0x7fff
8000c570:	3508ffff 	ori	t0,t0,0xffff
8000c574:	3c097fff 	lui	t1,0x7fff
8000c578:	3529ffff 	ori	t1,t1,0xffff
8000c57c:	3c0a8002 	lui	t2,0x8002
8000c580:	354afff0 	ori	t2,t2,0xfff0
8000c584:	ad480000 	sw	t0,0(t2)
8000c588:	10000004 	b	8000c59c <n82_bgez_ex_ds_test+0x12a0>
8000c58c:	00000000 	nop
8000c590:	26522222 	addiu	s2,s2,8738
8000c594:	10000007 	b	8000c5b4 <n82_bgez_ex_ds_test+0x12b8>
8000c598:	00000000 	nop
8000c59c:	26101111 	addiu	s0,s0,4369
8000c5a0:	0501fffb 	bgez	t0,8000c590 <n82_bgez_ex_ds_test+0x1294>
8000c5a4:	0000000d 	break
8000c5a8:	26100002 	addiu	s0,s0,2
8000c5ac:	26100002 	addiu	s0,s0,2
8000c5b0:	26100002 	addiu	s0,s0,2
8000c5b4:	02129021 	addu	s2,s0,s2
8000c5b8:	24141117 	li	s4,4375
8000c5bc:	16920021 	bne	s4,s2,8000c644 <inst_error>
8000c5c0:	00000000 	nop
8000c5c4:	3c144444 	lui	s4,0x4444
8000c5c8:	1682001e 	bne	s4,v0,8000c644 <inst_error>
8000c5cc:	00000000 	nop
8000c5d0:	24020009 	li	v0,9
8000c5d4:	00008021 	move	s0,zero
8000c5d8:	00009021 	move	s2,zero
8000c5dc:	3c087fff 	lui	t0,0x7fff
8000c5e0:	3508ffff 	ori	t0,t0,0xffff
8000c5e4:	3c097fff 	lui	t1,0x7fff
8000c5e8:	3529ffff 	ori	t1,t1,0xffff
8000c5ec:	3c0a8002 	lui	t2,0x8002
8000c5f0:	354afff0 	ori	t2,t2,0xfff0
8000c5f4:	ad480000 	sw	t0,0(t2)
8000c5f8:	10000004 	b	8000c60c <n82_bgez_ex_ds_test+0x1310>
8000c5fc:	00000000 	nop
8000c600:	26522222 	addiu	s2,s2,8738
8000c604:	10000007 	b	8000c624 <n82_bgez_ex_ds_test+0x1328>
8000c608:	00000000 	nop
8000c60c:	26101111 	addiu	s0,s0,4369
8000c610:	0541fffb 	bgez	t2,8000c600 <n82_bgez_ex_ds_test+0x1304>
8000c614:	0000000d 	break
8000c618:	26100002 	addiu	s0,s0,2
8000c61c:	26100002 	addiu	s0,s0,2
8000c620:	26100002 	addiu	s0,s0,2
8000c624:	02129021 	addu	s2,s0,s2
8000c628:	24141117 	li	s4,4375
8000c62c:	16920005 	bne	s4,s2,8000c644 <inst_error>
8000c630:	00000000 	nop
8000c634:	3c144444 	lui	s4,0x4444
8000c638:	16820002 	bne	s4,v0,8000c644 <inst_error>
8000c63c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:33
8000c640:	26730001 	addiu	s3,s3,1

8000c644 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:36
8000c644:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:37
8000c648:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:38
8000c64c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n82_bgez_ex_ds.S:39
8000c650:	00000000 	nop

8000c654 <n87_bgezal_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:14
8000c654:	3c045700 	lui	a0,0x5700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:17
8000c658:	001f6021 	addu	t4,zero,ra
8000c65c:	24020009 	li	v0,9
8000c660:	00008021 	move	s0,zero
8000c664:	00009021 	move	s2,zero
8000c668:	3c087fff 	lui	t0,0x7fff
8000c66c:	3508ffff 	ori	t0,t0,0xffff
8000c670:	3c097fff 	lui	t1,0x7fff
8000c674:	3529ffff 	ori	t1,t1,0xffff
8000c678:	3c0a8002 	lui	t2,0x8002
8000c67c:	354afff0 	ori	t2,t2,0xfff0
8000c680:	ad480000 	sw	t0,0(t2)
8000c684:	10000004 	b	8000c698 <n87_bgezal_ex_ds_test+0x44>
8000c688:	00000000 	nop
8000c68c:	26522222 	addiu	s2,s2,8738
8000c690:	10000007 	b	8000c6b0 <n87_bgezal_ex_ds_test+0x5c>
8000c694:	00000000 	nop
8000c698:	26101111 	addiu	s0,s0,4369
8000c69c:	05110004 	bgezal	t0,8000c6b0 <n87_bgezal_ex_ds_test+0x5c>
8000c6a0:	21147fff 	addi	s4,t0,32767
8000c6a4:	26100002 	addiu	s0,s0,2
8000c6a8:	26100002 	addiu	s0,s0,2
8000c6ac:	26100002 	addiu	s0,s0,2
8000c6b0:	02129021 	addu	s2,s0,s2
8000c6b4:	0180f821 	move	ra,t4
8000c6b8:	24141117 	li	s4,4375
8000c6bc:	169204ee 	bne	s4,s2,8000da78 <inst_error>
8000c6c0:	00000000 	nop
8000c6c4:	3c144444 	lui	s4,0x4444
8000c6c8:	168204eb 	bne	s4,v0,8000da78 <inst_error>
8000c6cc:	00000000 	nop
8000c6d0:	24020009 	li	v0,9
8000c6d4:	00008021 	move	s0,zero
8000c6d8:	00009021 	move	s2,zero
8000c6dc:	3c087fff 	lui	t0,0x7fff
8000c6e0:	3508ffff 	ori	t0,t0,0xffff
8000c6e4:	3c097fff 	lui	t1,0x7fff
8000c6e8:	3529ffff 	ori	t1,t1,0xffff
8000c6ec:	3c0a8002 	lui	t2,0x8002
8000c6f0:	354afff0 	ori	t2,t2,0xfff0
8000c6f4:	ad480000 	sw	t0,0(t2)
8000c6f8:	10000004 	b	8000c70c <n87_bgezal_ex_ds_test+0xb8>
8000c6fc:	00000000 	nop
8000c700:	26522222 	addiu	s2,s2,8738
8000c704:	10000007 	b	8000c724 <n87_bgezal_ex_ds_test+0xd0>
8000c708:	00000000 	nop
8000c70c:	26101111 	addiu	s0,s0,4369
8000c710:	05510004 	bgezal	t2,8000c724 <n87_bgezal_ex_ds_test+0xd0>
8000c714:	21147fff 	addi	s4,t0,32767
8000c718:	26100002 	addiu	s0,s0,2
8000c71c:	26100002 	addiu	s0,s0,2
8000c720:	26100002 	addiu	s0,s0,2
8000c724:	02129021 	addu	s2,s0,s2
8000c728:	0180f821 	move	ra,t4
8000c72c:	24141117 	li	s4,4375
8000c730:	169204d1 	bne	s4,s2,8000da78 <inst_error>
8000c734:	00000000 	nop
8000c738:	3c144444 	lui	s4,0x4444
8000c73c:	168204ce 	bne	s4,v0,8000da78 <inst_error>
8000c740:	00000000 	nop
8000c744:	24020009 	li	v0,9
8000c748:	00008021 	move	s0,zero
8000c74c:	00009021 	move	s2,zero
8000c750:	3c087fff 	lui	t0,0x7fff
8000c754:	3508ffff 	ori	t0,t0,0xffff
8000c758:	3c097fff 	lui	t1,0x7fff
8000c75c:	3529ffff 	ori	t1,t1,0xffff
8000c760:	3c0a8002 	lui	t2,0x8002
8000c764:	354afff0 	ori	t2,t2,0xfff0
8000c768:	ad480000 	sw	t0,0(t2)
8000c76c:	10000004 	b	8000c780 <n87_bgezal_ex_ds_test+0x12c>
8000c770:	00000000 	nop
8000c774:	26522222 	addiu	s2,s2,8738
8000c778:	10000007 	b	8000c798 <n87_bgezal_ex_ds_test+0x144>
8000c77c:	00000000 	nop
8000c780:	26101111 	addiu	s0,s0,4369
8000c784:	0511fffb 	bgezal	t0,8000c774 <n87_bgezal_ex_ds_test+0x120>
8000c788:	21147fff 	addi	s4,t0,32767
8000c78c:	26100002 	addiu	s0,s0,2
8000c790:	26100002 	addiu	s0,s0,2
8000c794:	26100002 	addiu	s0,s0,2
8000c798:	02129021 	addu	s2,s0,s2
8000c79c:	0180f821 	move	ra,t4
8000c7a0:	24141117 	li	s4,4375
8000c7a4:	169204b4 	bne	s4,s2,8000da78 <inst_error>
8000c7a8:	00000000 	nop
8000c7ac:	3c144444 	lui	s4,0x4444
8000c7b0:	168204b1 	bne	s4,v0,8000da78 <inst_error>
8000c7b4:	00000000 	nop
8000c7b8:	24020009 	li	v0,9
8000c7bc:	00008021 	move	s0,zero
8000c7c0:	00009021 	move	s2,zero
8000c7c4:	3c087fff 	lui	t0,0x7fff
8000c7c8:	3508ffff 	ori	t0,t0,0xffff
8000c7cc:	3c097fff 	lui	t1,0x7fff
8000c7d0:	3529ffff 	ori	t1,t1,0xffff
8000c7d4:	3c0a8002 	lui	t2,0x8002
8000c7d8:	354afff0 	ori	t2,t2,0xfff0
8000c7dc:	ad480000 	sw	t0,0(t2)
8000c7e0:	10000004 	b	8000c7f4 <n87_bgezal_ex_ds_test+0x1a0>
8000c7e4:	00000000 	nop
8000c7e8:	26522222 	addiu	s2,s2,8738
8000c7ec:	10000007 	b	8000c80c <n87_bgezal_ex_ds_test+0x1b8>
8000c7f0:	00000000 	nop
8000c7f4:	26101111 	addiu	s0,s0,4369
8000c7f8:	0551fffb 	bgezal	t2,8000c7e8 <n87_bgezal_ex_ds_test+0x194>
8000c7fc:	21147fff 	addi	s4,t0,32767
8000c800:	26100002 	addiu	s0,s0,2
8000c804:	26100002 	addiu	s0,s0,2
8000c808:	26100002 	addiu	s0,s0,2
8000c80c:	02129021 	addu	s2,s0,s2
8000c810:	0180f821 	move	ra,t4
8000c814:	24141117 	li	s4,4375
8000c818:	16920497 	bne	s4,s2,8000da78 <inst_error>
8000c81c:	00000000 	nop
8000c820:	3c144444 	lui	s4,0x4444
8000c824:	16820494 	bne	s4,v0,8000da78 <inst_error>
8000c828:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:18
8000c82c:	001f6021 	addu	t4,zero,ra
8000c830:	24020009 	li	v0,9
8000c834:	00008021 	move	s0,zero
8000c838:	00009021 	move	s2,zero
8000c83c:	3c087fff 	lui	t0,0x7fff
8000c840:	3508ffff 	ori	t0,t0,0xffff
8000c844:	3c097fff 	lui	t1,0x7fff
8000c848:	3529ffff 	ori	t1,t1,0xffff
8000c84c:	3c0a8002 	lui	t2,0x8002
8000c850:	354afff0 	ori	t2,t2,0xfff0
8000c854:	ad480000 	sw	t0,0(t2)
8000c858:	10000004 	b	8000c86c <n87_bgezal_ex_ds_test+0x218>
8000c85c:	00000000 	nop
8000c860:	26522222 	addiu	s2,s2,8738
8000c864:	10000007 	b	8000c884 <n87_bgezal_ex_ds_test+0x230>
8000c868:	00000000 	nop
8000c86c:	26101111 	addiu	s0,s0,4369
8000c870:	05110004 	bgezal	t0,8000c884 <n87_bgezal_ex_ds_test+0x230>
8000c874:	0109a020 	add	s4,t0,t1
8000c878:	26100002 	addiu	s0,s0,2
8000c87c:	26100002 	addiu	s0,s0,2
8000c880:	26100002 	addiu	s0,s0,2
8000c884:	02129021 	addu	s2,s0,s2
8000c888:	0180f821 	move	ra,t4
8000c88c:	24141117 	li	s4,4375
8000c890:	16920479 	bne	s4,s2,8000da78 <inst_error>
8000c894:	00000000 	nop
8000c898:	3c144444 	lui	s4,0x4444
8000c89c:	16820476 	bne	s4,v0,8000da78 <inst_error>
8000c8a0:	00000000 	nop
8000c8a4:	24020009 	li	v0,9
8000c8a8:	00008021 	move	s0,zero
8000c8ac:	00009021 	move	s2,zero
8000c8b0:	3c087fff 	lui	t0,0x7fff
8000c8b4:	3508ffff 	ori	t0,t0,0xffff
8000c8b8:	3c097fff 	lui	t1,0x7fff
8000c8bc:	3529ffff 	ori	t1,t1,0xffff
8000c8c0:	3c0a8002 	lui	t2,0x8002
8000c8c4:	354afff0 	ori	t2,t2,0xfff0
8000c8c8:	ad480000 	sw	t0,0(t2)
8000c8cc:	10000004 	b	8000c8e0 <n87_bgezal_ex_ds_test+0x28c>
8000c8d0:	00000000 	nop
8000c8d4:	26522222 	addiu	s2,s2,8738
8000c8d8:	10000007 	b	8000c8f8 <n87_bgezal_ex_ds_test+0x2a4>
8000c8dc:	00000000 	nop
8000c8e0:	26101111 	addiu	s0,s0,4369
8000c8e4:	05510004 	bgezal	t2,8000c8f8 <n87_bgezal_ex_ds_test+0x2a4>
8000c8e8:	0109a020 	add	s4,t0,t1
8000c8ec:	26100002 	addiu	s0,s0,2
8000c8f0:	26100002 	addiu	s0,s0,2
8000c8f4:	26100002 	addiu	s0,s0,2
8000c8f8:	02129021 	addu	s2,s0,s2
8000c8fc:	0180f821 	move	ra,t4
8000c900:	24141117 	li	s4,4375
8000c904:	1692045c 	bne	s4,s2,8000da78 <inst_error>
8000c908:	00000000 	nop
8000c90c:	3c144444 	lui	s4,0x4444
8000c910:	16820459 	bne	s4,v0,8000da78 <inst_error>
8000c914:	00000000 	nop
8000c918:	24020009 	li	v0,9
8000c91c:	00008021 	move	s0,zero
8000c920:	00009021 	move	s2,zero
8000c924:	3c087fff 	lui	t0,0x7fff
8000c928:	3508ffff 	ori	t0,t0,0xffff
8000c92c:	3c097fff 	lui	t1,0x7fff
8000c930:	3529ffff 	ori	t1,t1,0xffff
8000c934:	3c0a8002 	lui	t2,0x8002
8000c938:	354afff0 	ori	t2,t2,0xfff0
8000c93c:	ad480000 	sw	t0,0(t2)
8000c940:	10000004 	b	8000c954 <n87_bgezal_ex_ds_test+0x300>
8000c944:	00000000 	nop
8000c948:	26522222 	addiu	s2,s2,8738
8000c94c:	10000007 	b	8000c96c <n87_bgezal_ex_ds_test+0x318>
8000c950:	00000000 	nop
8000c954:	26101111 	addiu	s0,s0,4369
8000c958:	0511fffb 	bgezal	t0,8000c948 <n87_bgezal_ex_ds_test+0x2f4>
8000c95c:	0109a020 	add	s4,t0,t1
8000c960:	26100002 	addiu	s0,s0,2
8000c964:	26100002 	addiu	s0,s0,2
8000c968:	26100002 	addiu	s0,s0,2
8000c96c:	02129021 	addu	s2,s0,s2
8000c970:	0180f821 	move	ra,t4
8000c974:	24141117 	li	s4,4375
8000c978:	1692043f 	bne	s4,s2,8000da78 <inst_error>
8000c97c:	00000000 	nop
8000c980:	3c144444 	lui	s4,0x4444
8000c984:	1682043c 	bne	s4,v0,8000da78 <inst_error>
8000c988:	00000000 	nop
8000c98c:	24020009 	li	v0,9
8000c990:	00008021 	move	s0,zero
8000c994:	00009021 	move	s2,zero
8000c998:	3c087fff 	lui	t0,0x7fff
8000c99c:	3508ffff 	ori	t0,t0,0xffff
8000c9a0:	3c097fff 	lui	t1,0x7fff
8000c9a4:	3529ffff 	ori	t1,t1,0xffff
8000c9a8:	3c0a8002 	lui	t2,0x8002
8000c9ac:	354afff0 	ori	t2,t2,0xfff0
8000c9b0:	ad480000 	sw	t0,0(t2)
8000c9b4:	10000004 	b	8000c9c8 <n87_bgezal_ex_ds_test+0x374>
8000c9b8:	00000000 	nop
8000c9bc:	26522222 	addiu	s2,s2,8738
8000c9c0:	10000007 	b	8000c9e0 <n87_bgezal_ex_ds_test+0x38c>
8000c9c4:	00000000 	nop
8000c9c8:	26101111 	addiu	s0,s0,4369
8000c9cc:	0551fffb 	bgezal	t2,8000c9bc <n87_bgezal_ex_ds_test+0x368>
8000c9d0:	0109a020 	add	s4,t0,t1
8000c9d4:	26100002 	addiu	s0,s0,2
8000c9d8:	26100002 	addiu	s0,s0,2
8000c9dc:	26100002 	addiu	s0,s0,2
8000c9e0:	02129021 	addu	s2,s0,s2
8000c9e4:	0180f821 	move	ra,t4
8000c9e8:	24141117 	li	s4,4375
8000c9ec:	16920422 	bne	s4,s2,8000da78 <inst_error>
8000c9f0:	00000000 	nop
8000c9f4:	3c144444 	lui	s4,0x4444
8000c9f8:	1682041f 	bne	s4,v0,8000da78 <inst_error>
8000c9fc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:19
8000ca00:	001f6021 	addu	t4,zero,ra
8000ca04:	24020009 	li	v0,9
8000ca08:	00008021 	move	s0,zero
8000ca0c:	00009021 	move	s2,zero
8000ca10:	3c087fff 	lui	t0,0x7fff
8000ca14:	3508ffff 	ori	t0,t0,0xffff
8000ca18:	3c097fff 	lui	t1,0x7fff
8000ca1c:	3529ffff 	ori	t1,t1,0xffff
8000ca20:	3c0a8002 	lui	t2,0x8002
8000ca24:	354afff0 	ori	t2,t2,0xfff0
8000ca28:	ad480000 	sw	t0,0(t2)
8000ca2c:	10000004 	b	8000ca40 <n87_bgezal_ex_ds_test+0x3ec>
8000ca30:	00000000 	nop
8000ca34:	26522222 	addiu	s2,s2,8738
8000ca38:	10000007 	b	8000ca58 <n87_bgezal_ex_ds_test+0x404>
8000ca3c:	00000000 	nop
8000ca40:	26101111 	addiu	s0,s0,4369
8000ca44:	05110004 	bgezal	t0,8000ca58 <n87_bgezal_ex_ds_test+0x404>
8000ca48:	010aa022 	sub	s4,t0,t2
8000ca4c:	26100002 	addiu	s0,s0,2
8000ca50:	26100002 	addiu	s0,s0,2
8000ca54:	26100002 	addiu	s0,s0,2
8000ca58:	02129021 	addu	s2,s0,s2
8000ca5c:	0180f821 	move	ra,t4
8000ca60:	24141117 	li	s4,4375
8000ca64:	16920404 	bne	s4,s2,8000da78 <inst_error>
8000ca68:	00000000 	nop
8000ca6c:	3c144444 	lui	s4,0x4444
8000ca70:	16820401 	bne	s4,v0,8000da78 <inst_error>
8000ca74:	00000000 	nop
8000ca78:	24020009 	li	v0,9
8000ca7c:	00008021 	move	s0,zero
8000ca80:	00009021 	move	s2,zero
8000ca84:	3c087fff 	lui	t0,0x7fff
8000ca88:	3508ffff 	ori	t0,t0,0xffff
8000ca8c:	3c097fff 	lui	t1,0x7fff
8000ca90:	3529ffff 	ori	t1,t1,0xffff
8000ca94:	3c0a8002 	lui	t2,0x8002
8000ca98:	354afff0 	ori	t2,t2,0xfff0
8000ca9c:	ad480000 	sw	t0,0(t2)
8000caa0:	10000004 	b	8000cab4 <n87_bgezal_ex_ds_test+0x460>
8000caa4:	00000000 	nop
8000caa8:	26522222 	addiu	s2,s2,8738
8000caac:	10000007 	b	8000cacc <n87_bgezal_ex_ds_test+0x478>
8000cab0:	00000000 	nop
8000cab4:	26101111 	addiu	s0,s0,4369
8000cab8:	05510004 	bgezal	t2,8000cacc <n87_bgezal_ex_ds_test+0x478>
8000cabc:	010aa022 	sub	s4,t0,t2
8000cac0:	26100002 	addiu	s0,s0,2
8000cac4:	26100002 	addiu	s0,s0,2
8000cac8:	26100002 	addiu	s0,s0,2
8000cacc:	02129021 	addu	s2,s0,s2
8000cad0:	0180f821 	move	ra,t4
8000cad4:	24141117 	li	s4,4375
8000cad8:	169203e7 	bne	s4,s2,8000da78 <inst_error>
8000cadc:	00000000 	nop
8000cae0:	3c144444 	lui	s4,0x4444
8000cae4:	168203e4 	bne	s4,v0,8000da78 <inst_error>
8000cae8:	00000000 	nop
8000caec:	24020009 	li	v0,9
8000caf0:	00008021 	move	s0,zero
8000caf4:	00009021 	move	s2,zero
8000caf8:	3c087fff 	lui	t0,0x7fff
8000cafc:	3508ffff 	ori	t0,t0,0xffff
8000cb00:	3c097fff 	lui	t1,0x7fff
8000cb04:	3529ffff 	ori	t1,t1,0xffff
8000cb08:	3c0a8002 	lui	t2,0x8002
8000cb0c:	354afff0 	ori	t2,t2,0xfff0
8000cb10:	ad480000 	sw	t0,0(t2)
8000cb14:	10000004 	b	8000cb28 <n87_bgezal_ex_ds_test+0x4d4>
8000cb18:	00000000 	nop
8000cb1c:	26522222 	addiu	s2,s2,8738
8000cb20:	10000007 	b	8000cb40 <n87_bgezal_ex_ds_test+0x4ec>
8000cb24:	00000000 	nop
8000cb28:	26101111 	addiu	s0,s0,4369
8000cb2c:	0511fffb 	bgezal	t0,8000cb1c <n87_bgezal_ex_ds_test+0x4c8>
8000cb30:	010aa022 	sub	s4,t0,t2
8000cb34:	26100002 	addiu	s0,s0,2
8000cb38:	26100002 	addiu	s0,s0,2
8000cb3c:	26100002 	addiu	s0,s0,2
8000cb40:	02129021 	addu	s2,s0,s2
8000cb44:	0180f821 	move	ra,t4
8000cb48:	24141117 	li	s4,4375
8000cb4c:	169203ca 	bne	s4,s2,8000da78 <inst_error>
8000cb50:	00000000 	nop
8000cb54:	3c144444 	lui	s4,0x4444
8000cb58:	168203c7 	bne	s4,v0,8000da78 <inst_error>
8000cb5c:	00000000 	nop
8000cb60:	24020009 	li	v0,9
8000cb64:	00008021 	move	s0,zero
8000cb68:	00009021 	move	s2,zero
8000cb6c:	3c087fff 	lui	t0,0x7fff
8000cb70:	3508ffff 	ori	t0,t0,0xffff
8000cb74:	3c097fff 	lui	t1,0x7fff
8000cb78:	3529ffff 	ori	t1,t1,0xffff
8000cb7c:	3c0a8002 	lui	t2,0x8002
8000cb80:	354afff0 	ori	t2,t2,0xfff0
8000cb84:	ad480000 	sw	t0,0(t2)
8000cb88:	10000004 	b	8000cb9c <n87_bgezal_ex_ds_test+0x548>
8000cb8c:	00000000 	nop
8000cb90:	26522222 	addiu	s2,s2,8738
8000cb94:	10000007 	b	8000cbb4 <n87_bgezal_ex_ds_test+0x560>
8000cb98:	00000000 	nop
8000cb9c:	26101111 	addiu	s0,s0,4369
8000cba0:	0551fffb 	bgezal	t2,8000cb90 <n87_bgezal_ex_ds_test+0x53c>
8000cba4:	010aa022 	sub	s4,t0,t2
8000cba8:	26100002 	addiu	s0,s0,2
8000cbac:	26100002 	addiu	s0,s0,2
8000cbb0:	26100002 	addiu	s0,s0,2
8000cbb4:	02129021 	addu	s2,s0,s2
8000cbb8:	0180f821 	move	ra,t4
8000cbbc:	24141117 	li	s4,4375
8000cbc0:	169203ad 	bne	s4,s2,8000da78 <inst_error>
8000cbc4:	00000000 	nop
8000cbc8:	3c144444 	lui	s4,0x4444
8000cbcc:	168203aa 	bne	s4,v0,8000da78 <inst_error>
8000cbd0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:20
8000cbd4:	001f6021 	addu	t4,zero,ra
8000cbd8:	24020009 	li	v0,9
8000cbdc:	00008021 	move	s0,zero
8000cbe0:	00009021 	move	s2,zero
8000cbe4:	3c087fff 	lui	t0,0x7fff
8000cbe8:	3508ffff 	ori	t0,t0,0xffff
8000cbec:	3c097fff 	lui	t1,0x7fff
8000cbf0:	3529ffff 	ori	t1,t1,0xffff
8000cbf4:	3c0a8002 	lui	t2,0x8002
8000cbf8:	354afff0 	ori	t2,t2,0xfff0
8000cbfc:	ad480000 	sw	t0,0(t2)
8000cc00:	10000004 	b	8000cc14 <n87_bgezal_ex_ds_test+0x5c0>
8000cc04:	00000000 	nop
8000cc08:	26522222 	addiu	s2,s2,8738
8000cc0c:	10000007 	b	8000cc2c <n87_bgezal_ex_ds_test+0x5d8>
8000cc10:	00000000 	nop
8000cc14:	26101111 	addiu	s0,s0,4369
8000cc18:	05110004 	bgezal	t0,8000cc2c <n87_bgezal_ex_ds_test+0x5d8>
8000cc1c:	85540003 	lh	s4,3(t2)
8000cc20:	26100002 	addiu	s0,s0,2
8000cc24:	26100002 	addiu	s0,s0,2
8000cc28:	26100002 	addiu	s0,s0,2
8000cc2c:	02129021 	addu	s2,s0,s2
8000cc30:	0180f821 	move	ra,t4
8000cc34:	24141117 	li	s4,4375
8000cc38:	1692038f 	bne	s4,s2,8000da78 <inst_error>
8000cc3c:	00000000 	nop
8000cc40:	3c144444 	lui	s4,0x4444
8000cc44:	1682038c 	bne	s4,v0,8000da78 <inst_error>
8000cc48:	00000000 	nop
8000cc4c:	24020009 	li	v0,9
8000cc50:	00008021 	move	s0,zero
8000cc54:	00009021 	move	s2,zero
8000cc58:	3c087fff 	lui	t0,0x7fff
8000cc5c:	3508ffff 	ori	t0,t0,0xffff
8000cc60:	3c097fff 	lui	t1,0x7fff
8000cc64:	3529ffff 	ori	t1,t1,0xffff
8000cc68:	3c0a8002 	lui	t2,0x8002
8000cc6c:	354afff0 	ori	t2,t2,0xfff0
8000cc70:	ad480000 	sw	t0,0(t2)
8000cc74:	10000004 	b	8000cc88 <n87_bgezal_ex_ds_test+0x634>
8000cc78:	00000000 	nop
8000cc7c:	26522222 	addiu	s2,s2,8738
8000cc80:	10000007 	b	8000cca0 <n87_bgezal_ex_ds_test+0x64c>
8000cc84:	00000000 	nop
8000cc88:	26101111 	addiu	s0,s0,4369
8000cc8c:	05510004 	bgezal	t2,8000cca0 <n87_bgezal_ex_ds_test+0x64c>
8000cc90:	85540003 	lh	s4,3(t2)
8000cc94:	26100002 	addiu	s0,s0,2
8000cc98:	26100002 	addiu	s0,s0,2
8000cc9c:	26100002 	addiu	s0,s0,2
8000cca0:	02129021 	addu	s2,s0,s2
8000cca4:	0180f821 	move	ra,t4
8000cca8:	24141117 	li	s4,4375
8000ccac:	16920372 	bne	s4,s2,8000da78 <inst_error>
8000ccb0:	00000000 	nop
8000ccb4:	3c144444 	lui	s4,0x4444
8000ccb8:	1682036f 	bne	s4,v0,8000da78 <inst_error>
8000ccbc:	00000000 	nop
8000ccc0:	24020009 	li	v0,9
8000ccc4:	00008021 	move	s0,zero
8000ccc8:	00009021 	move	s2,zero
8000cccc:	3c087fff 	lui	t0,0x7fff
8000ccd0:	3508ffff 	ori	t0,t0,0xffff
8000ccd4:	3c097fff 	lui	t1,0x7fff
8000ccd8:	3529ffff 	ori	t1,t1,0xffff
8000ccdc:	3c0a8002 	lui	t2,0x8002
8000cce0:	354afff0 	ori	t2,t2,0xfff0
8000cce4:	ad480000 	sw	t0,0(t2)
8000cce8:	10000004 	b	8000ccfc <n87_bgezal_ex_ds_test+0x6a8>
8000ccec:	00000000 	nop
8000ccf0:	26522222 	addiu	s2,s2,8738
8000ccf4:	10000007 	b	8000cd14 <n87_bgezal_ex_ds_test+0x6c0>
8000ccf8:	00000000 	nop
8000ccfc:	26101111 	addiu	s0,s0,4369
8000cd00:	0511fffb 	bgezal	t0,8000ccf0 <n87_bgezal_ex_ds_test+0x69c>
8000cd04:	85540003 	lh	s4,3(t2)
8000cd08:	26100002 	addiu	s0,s0,2
8000cd0c:	26100002 	addiu	s0,s0,2
8000cd10:	26100002 	addiu	s0,s0,2
8000cd14:	02129021 	addu	s2,s0,s2
8000cd18:	0180f821 	move	ra,t4
8000cd1c:	24141117 	li	s4,4375
8000cd20:	16920355 	bne	s4,s2,8000da78 <inst_error>
8000cd24:	00000000 	nop
8000cd28:	3c144444 	lui	s4,0x4444
8000cd2c:	16820352 	bne	s4,v0,8000da78 <inst_error>
8000cd30:	00000000 	nop
8000cd34:	24020009 	li	v0,9
8000cd38:	00008021 	move	s0,zero
8000cd3c:	00009021 	move	s2,zero
8000cd40:	3c087fff 	lui	t0,0x7fff
8000cd44:	3508ffff 	ori	t0,t0,0xffff
8000cd48:	3c097fff 	lui	t1,0x7fff
8000cd4c:	3529ffff 	ori	t1,t1,0xffff
8000cd50:	3c0a8002 	lui	t2,0x8002
8000cd54:	354afff0 	ori	t2,t2,0xfff0
8000cd58:	ad480000 	sw	t0,0(t2)
8000cd5c:	10000004 	b	8000cd70 <n87_bgezal_ex_ds_test+0x71c>
8000cd60:	00000000 	nop
8000cd64:	26522222 	addiu	s2,s2,8738
8000cd68:	10000007 	b	8000cd88 <n87_bgezal_ex_ds_test+0x734>
8000cd6c:	00000000 	nop
8000cd70:	26101111 	addiu	s0,s0,4369
8000cd74:	0551fffb 	bgezal	t2,8000cd64 <n87_bgezal_ex_ds_test+0x710>
8000cd78:	85540003 	lh	s4,3(t2)
8000cd7c:	26100002 	addiu	s0,s0,2
8000cd80:	26100002 	addiu	s0,s0,2
8000cd84:	26100002 	addiu	s0,s0,2
8000cd88:	02129021 	addu	s2,s0,s2
8000cd8c:	0180f821 	move	ra,t4
8000cd90:	24141117 	li	s4,4375
8000cd94:	16920338 	bne	s4,s2,8000da78 <inst_error>
8000cd98:	00000000 	nop
8000cd9c:	3c144444 	lui	s4,0x4444
8000cda0:	16820335 	bne	s4,v0,8000da78 <inst_error>
8000cda4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:21
8000cda8:	001f6021 	addu	t4,zero,ra
8000cdac:	24020009 	li	v0,9
8000cdb0:	00008021 	move	s0,zero
8000cdb4:	00009021 	move	s2,zero
8000cdb8:	3c087fff 	lui	t0,0x7fff
8000cdbc:	3508ffff 	ori	t0,t0,0xffff
8000cdc0:	3c097fff 	lui	t1,0x7fff
8000cdc4:	3529ffff 	ori	t1,t1,0xffff
8000cdc8:	3c0a8002 	lui	t2,0x8002
8000cdcc:	354afff0 	ori	t2,t2,0xfff0
8000cdd0:	ad480000 	sw	t0,0(t2)
8000cdd4:	10000004 	b	8000cde8 <n87_bgezal_ex_ds_test+0x794>
8000cdd8:	00000000 	nop
8000cddc:	26522222 	addiu	s2,s2,8738
8000cde0:	10000007 	b	8000ce00 <n87_bgezal_ex_ds_test+0x7ac>
8000cde4:	00000000 	nop
8000cde8:	26101111 	addiu	s0,s0,4369
8000cdec:	05110004 	bgezal	t0,8000ce00 <n87_bgezal_ex_ds_test+0x7ac>
8000cdf0:	95540003 	lhu	s4,3(t2)
8000cdf4:	26100002 	addiu	s0,s0,2
8000cdf8:	26100002 	addiu	s0,s0,2
8000cdfc:	26100002 	addiu	s0,s0,2
8000ce00:	02129021 	addu	s2,s0,s2
8000ce04:	0180f821 	move	ra,t4
8000ce08:	24141117 	li	s4,4375
8000ce0c:	1692031a 	bne	s4,s2,8000da78 <inst_error>
8000ce10:	00000000 	nop
8000ce14:	3c144444 	lui	s4,0x4444
8000ce18:	16820317 	bne	s4,v0,8000da78 <inst_error>
8000ce1c:	00000000 	nop
8000ce20:	24020009 	li	v0,9
8000ce24:	00008021 	move	s0,zero
8000ce28:	00009021 	move	s2,zero
8000ce2c:	3c087fff 	lui	t0,0x7fff
8000ce30:	3508ffff 	ori	t0,t0,0xffff
8000ce34:	3c097fff 	lui	t1,0x7fff
8000ce38:	3529ffff 	ori	t1,t1,0xffff
8000ce3c:	3c0a8002 	lui	t2,0x8002
8000ce40:	354afff0 	ori	t2,t2,0xfff0
8000ce44:	ad480000 	sw	t0,0(t2)
8000ce48:	10000004 	b	8000ce5c <n87_bgezal_ex_ds_test+0x808>
8000ce4c:	00000000 	nop
8000ce50:	26522222 	addiu	s2,s2,8738
8000ce54:	10000007 	b	8000ce74 <n87_bgezal_ex_ds_test+0x820>
8000ce58:	00000000 	nop
8000ce5c:	26101111 	addiu	s0,s0,4369
8000ce60:	05510004 	bgezal	t2,8000ce74 <n87_bgezal_ex_ds_test+0x820>
8000ce64:	95540003 	lhu	s4,3(t2)
8000ce68:	26100002 	addiu	s0,s0,2
8000ce6c:	26100002 	addiu	s0,s0,2
8000ce70:	26100002 	addiu	s0,s0,2
8000ce74:	02129021 	addu	s2,s0,s2
8000ce78:	0180f821 	move	ra,t4
8000ce7c:	24141117 	li	s4,4375
8000ce80:	169202fd 	bne	s4,s2,8000da78 <inst_error>
8000ce84:	00000000 	nop
8000ce88:	3c144444 	lui	s4,0x4444
8000ce8c:	168202fa 	bne	s4,v0,8000da78 <inst_error>
8000ce90:	00000000 	nop
8000ce94:	24020009 	li	v0,9
8000ce98:	00008021 	move	s0,zero
8000ce9c:	00009021 	move	s2,zero
8000cea0:	3c087fff 	lui	t0,0x7fff
8000cea4:	3508ffff 	ori	t0,t0,0xffff
8000cea8:	3c097fff 	lui	t1,0x7fff
8000ceac:	3529ffff 	ori	t1,t1,0xffff
8000ceb0:	3c0a8002 	lui	t2,0x8002
8000ceb4:	354afff0 	ori	t2,t2,0xfff0
8000ceb8:	ad480000 	sw	t0,0(t2)
8000cebc:	10000004 	b	8000ced0 <n87_bgezal_ex_ds_test+0x87c>
8000cec0:	00000000 	nop
8000cec4:	26522222 	addiu	s2,s2,8738
8000cec8:	10000007 	b	8000cee8 <n87_bgezal_ex_ds_test+0x894>
8000cecc:	00000000 	nop
8000ced0:	26101111 	addiu	s0,s0,4369
8000ced4:	0511fffb 	bgezal	t0,8000cec4 <n87_bgezal_ex_ds_test+0x870>
8000ced8:	95540003 	lhu	s4,3(t2)
8000cedc:	26100002 	addiu	s0,s0,2
8000cee0:	26100002 	addiu	s0,s0,2
8000cee4:	26100002 	addiu	s0,s0,2
8000cee8:	02129021 	addu	s2,s0,s2
8000ceec:	0180f821 	move	ra,t4
8000cef0:	24141117 	li	s4,4375
8000cef4:	169202e0 	bne	s4,s2,8000da78 <inst_error>
8000cef8:	00000000 	nop
8000cefc:	3c144444 	lui	s4,0x4444
8000cf00:	168202dd 	bne	s4,v0,8000da78 <inst_error>
8000cf04:	00000000 	nop
8000cf08:	24020009 	li	v0,9
8000cf0c:	00008021 	move	s0,zero
8000cf10:	00009021 	move	s2,zero
8000cf14:	3c087fff 	lui	t0,0x7fff
8000cf18:	3508ffff 	ori	t0,t0,0xffff
8000cf1c:	3c097fff 	lui	t1,0x7fff
8000cf20:	3529ffff 	ori	t1,t1,0xffff
8000cf24:	3c0a8002 	lui	t2,0x8002
8000cf28:	354afff0 	ori	t2,t2,0xfff0
8000cf2c:	ad480000 	sw	t0,0(t2)
8000cf30:	10000004 	b	8000cf44 <n87_bgezal_ex_ds_test+0x8f0>
8000cf34:	00000000 	nop
8000cf38:	26522222 	addiu	s2,s2,8738
8000cf3c:	10000007 	b	8000cf5c <n87_bgezal_ex_ds_test+0x908>
8000cf40:	00000000 	nop
8000cf44:	26101111 	addiu	s0,s0,4369
8000cf48:	0551fffb 	bgezal	t2,8000cf38 <n87_bgezal_ex_ds_test+0x8e4>
8000cf4c:	95540003 	lhu	s4,3(t2)
8000cf50:	26100002 	addiu	s0,s0,2
8000cf54:	26100002 	addiu	s0,s0,2
8000cf58:	26100002 	addiu	s0,s0,2
8000cf5c:	02129021 	addu	s2,s0,s2
8000cf60:	0180f821 	move	ra,t4
8000cf64:	24141117 	li	s4,4375
8000cf68:	169202c3 	bne	s4,s2,8000da78 <inst_error>
8000cf6c:	00000000 	nop
8000cf70:	3c144444 	lui	s4,0x4444
8000cf74:	168202c0 	bne	s4,v0,8000da78 <inst_error>
8000cf78:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:22
8000cf7c:	001f6021 	addu	t4,zero,ra
8000cf80:	24020009 	li	v0,9
8000cf84:	00008021 	move	s0,zero
8000cf88:	00009021 	move	s2,zero
8000cf8c:	3c087fff 	lui	t0,0x7fff
8000cf90:	3508ffff 	ori	t0,t0,0xffff
8000cf94:	3c097fff 	lui	t1,0x7fff
8000cf98:	3529ffff 	ori	t1,t1,0xffff
8000cf9c:	3c0a8002 	lui	t2,0x8002
8000cfa0:	354afff0 	ori	t2,t2,0xfff0
8000cfa4:	ad480000 	sw	t0,0(t2)
8000cfa8:	10000004 	b	8000cfbc <n87_bgezal_ex_ds_test+0x968>
8000cfac:	00000000 	nop
8000cfb0:	26522222 	addiu	s2,s2,8738
8000cfb4:	10000007 	b	8000cfd4 <n87_bgezal_ex_ds_test+0x980>
8000cfb8:	00000000 	nop
8000cfbc:	26101111 	addiu	s0,s0,4369
8000cfc0:	05110004 	bgezal	t0,8000cfd4 <n87_bgezal_ex_ds_test+0x980>
8000cfc4:	8d540003 	lw	s4,3(t2)
8000cfc8:	26100002 	addiu	s0,s0,2
8000cfcc:	26100002 	addiu	s0,s0,2
8000cfd0:	26100002 	addiu	s0,s0,2
8000cfd4:	02129021 	addu	s2,s0,s2
8000cfd8:	0180f821 	move	ra,t4
8000cfdc:	24141117 	li	s4,4375
8000cfe0:	169202a5 	bne	s4,s2,8000da78 <inst_error>
8000cfe4:	00000000 	nop
8000cfe8:	3c144444 	lui	s4,0x4444
8000cfec:	168202a2 	bne	s4,v0,8000da78 <inst_error>
8000cff0:	00000000 	nop
8000cff4:	24020009 	li	v0,9
8000cff8:	00008021 	move	s0,zero
8000cffc:	00009021 	move	s2,zero
8000d000:	3c087fff 	lui	t0,0x7fff
8000d004:	3508ffff 	ori	t0,t0,0xffff
8000d008:	3c097fff 	lui	t1,0x7fff
8000d00c:	3529ffff 	ori	t1,t1,0xffff
8000d010:	3c0a8002 	lui	t2,0x8002
8000d014:	354afff0 	ori	t2,t2,0xfff0
8000d018:	ad480000 	sw	t0,0(t2)
8000d01c:	10000004 	b	8000d030 <n87_bgezal_ex_ds_test+0x9dc>
8000d020:	00000000 	nop
8000d024:	26522222 	addiu	s2,s2,8738
8000d028:	10000007 	b	8000d048 <n87_bgezal_ex_ds_test+0x9f4>
8000d02c:	00000000 	nop
8000d030:	26101111 	addiu	s0,s0,4369
8000d034:	05510004 	bgezal	t2,8000d048 <n87_bgezal_ex_ds_test+0x9f4>
8000d038:	8d540003 	lw	s4,3(t2)
8000d03c:	26100002 	addiu	s0,s0,2
8000d040:	26100002 	addiu	s0,s0,2
8000d044:	26100002 	addiu	s0,s0,2
8000d048:	02129021 	addu	s2,s0,s2
8000d04c:	0180f821 	move	ra,t4
8000d050:	24141117 	li	s4,4375
8000d054:	16920288 	bne	s4,s2,8000da78 <inst_error>
8000d058:	00000000 	nop
8000d05c:	3c144444 	lui	s4,0x4444
8000d060:	16820285 	bne	s4,v0,8000da78 <inst_error>
8000d064:	00000000 	nop
8000d068:	24020009 	li	v0,9
8000d06c:	00008021 	move	s0,zero
8000d070:	00009021 	move	s2,zero
8000d074:	3c087fff 	lui	t0,0x7fff
8000d078:	3508ffff 	ori	t0,t0,0xffff
8000d07c:	3c097fff 	lui	t1,0x7fff
8000d080:	3529ffff 	ori	t1,t1,0xffff
8000d084:	3c0a8002 	lui	t2,0x8002
8000d088:	354afff0 	ori	t2,t2,0xfff0
8000d08c:	ad480000 	sw	t0,0(t2)
8000d090:	10000004 	b	8000d0a4 <n87_bgezal_ex_ds_test+0xa50>
8000d094:	00000000 	nop
8000d098:	26522222 	addiu	s2,s2,8738
8000d09c:	10000007 	b	8000d0bc <n87_bgezal_ex_ds_test+0xa68>
8000d0a0:	00000000 	nop
8000d0a4:	26101111 	addiu	s0,s0,4369
8000d0a8:	0511fffb 	bgezal	t0,8000d098 <n87_bgezal_ex_ds_test+0xa44>
8000d0ac:	8d540003 	lw	s4,3(t2)
8000d0b0:	26100002 	addiu	s0,s0,2
8000d0b4:	26100002 	addiu	s0,s0,2
8000d0b8:	26100002 	addiu	s0,s0,2
8000d0bc:	02129021 	addu	s2,s0,s2
8000d0c0:	0180f821 	move	ra,t4
8000d0c4:	24141117 	li	s4,4375
8000d0c8:	1692026b 	bne	s4,s2,8000da78 <inst_error>
8000d0cc:	00000000 	nop
8000d0d0:	3c144444 	lui	s4,0x4444
8000d0d4:	16820268 	bne	s4,v0,8000da78 <inst_error>
8000d0d8:	00000000 	nop
8000d0dc:	24020009 	li	v0,9
8000d0e0:	00008021 	move	s0,zero
8000d0e4:	00009021 	move	s2,zero
8000d0e8:	3c087fff 	lui	t0,0x7fff
8000d0ec:	3508ffff 	ori	t0,t0,0xffff
8000d0f0:	3c097fff 	lui	t1,0x7fff
8000d0f4:	3529ffff 	ori	t1,t1,0xffff
8000d0f8:	3c0a8002 	lui	t2,0x8002
8000d0fc:	354afff0 	ori	t2,t2,0xfff0
8000d100:	ad480000 	sw	t0,0(t2)
8000d104:	10000004 	b	8000d118 <n87_bgezal_ex_ds_test+0xac4>
8000d108:	00000000 	nop
8000d10c:	26522222 	addiu	s2,s2,8738
8000d110:	10000007 	b	8000d130 <n87_bgezal_ex_ds_test+0xadc>
8000d114:	00000000 	nop
8000d118:	26101111 	addiu	s0,s0,4369
8000d11c:	0551fffb 	bgezal	t2,8000d10c <n87_bgezal_ex_ds_test+0xab8>
8000d120:	8d540003 	lw	s4,3(t2)
8000d124:	26100002 	addiu	s0,s0,2
8000d128:	26100002 	addiu	s0,s0,2
8000d12c:	26100002 	addiu	s0,s0,2
8000d130:	02129021 	addu	s2,s0,s2
8000d134:	0180f821 	move	ra,t4
8000d138:	24141117 	li	s4,4375
8000d13c:	1692024e 	bne	s4,s2,8000da78 <inst_error>
8000d140:	00000000 	nop
8000d144:	3c144444 	lui	s4,0x4444
8000d148:	1682024b 	bne	s4,v0,8000da78 <inst_error>
8000d14c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:23
8000d150:	001f6021 	addu	t4,zero,ra
8000d154:	24020009 	li	v0,9
8000d158:	00008021 	move	s0,zero
8000d15c:	00009021 	move	s2,zero
8000d160:	3c087fff 	lui	t0,0x7fff
8000d164:	3508ffff 	ori	t0,t0,0xffff
8000d168:	3c097fff 	lui	t1,0x7fff
8000d16c:	3529ffff 	ori	t1,t1,0xffff
8000d170:	3c0a8002 	lui	t2,0x8002
8000d174:	354afff0 	ori	t2,t2,0xfff0
8000d178:	ad480000 	sw	t0,0(t2)
8000d17c:	10000004 	b	8000d190 <n87_bgezal_ex_ds_test+0xb3c>
8000d180:	00000000 	nop
8000d184:	26522222 	addiu	s2,s2,8738
8000d188:	10000007 	b	8000d1a8 <n87_bgezal_ex_ds_test+0xb54>
8000d18c:	00000000 	nop
8000d190:	26101111 	addiu	s0,s0,4369
8000d194:	05110004 	bgezal	t0,8000d1a8 <n87_bgezal_ex_ds_test+0xb54>
8000d198:	a5540003 	sh	s4,3(t2)
8000d19c:	26100002 	addiu	s0,s0,2
8000d1a0:	26100002 	addiu	s0,s0,2
8000d1a4:	26100002 	addiu	s0,s0,2
8000d1a8:	02129021 	addu	s2,s0,s2
8000d1ac:	0180f821 	move	ra,t4
8000d1b0:	24141117 	li	s4,4375
8000d1b4:	16920230 	bne	s4,s2,8000da78 <inst_error>
8000d1b8:	00000000 	nop
8000d1bc:	3c144444 	lui	s4,0x4444
8000d1c0:	1682022d 	bne	s4,v0,8000da78 <inst_error>
8000d1c4:	00000000 	nop
8000d1c8:	24020009 	li	v0,9
8000d1cc:	00008021 	move	s0,zero
8000d1d0:	00009021 	move	s2,zero
8000d1d4:	3c087fff 	lui	t0,0x7fff
8000d1d8:	3508ffff 	ori	t0,t0,0xffff
8000d1dc:	3c097fff 	lui	t1,0x7fff
8000d1e0:	3529ffff 	ori	t1,t1,0xffff
8000d1e4:	3c0a8002 	lui	t2,0x8002
8000d1e8:	354afff0 	ori	t2,t2,0xfff0
8000d1ec:	ad480000 	sw	t0,0(t2)
8000d1f0:	10000004 	b	8000d204 <n87_bgezal_ex_ds_test+0xbb0>
8000d1f4:	00000000 	nop
8000d1f8:	26522222 	addiu	s2,s2,8738
8000d1fc:	10000007 	b	8000d21c <n87_bgezal_ex_ds_test+0xbc8>
8000d200:	00000000 	nop
8000d204:	26101111 	addiu	s0,s0,4369
8000d208:	05510004 	bgezal	t2,8000d21c <n87_bgezal_ex_ds_test+0xbc8>
8000d20c:	a5540003 	sh	s4,3(t2)
8000d210:	26100002 	addiu	s0,s0,2
8000d214:	26100002 	addiu	s0,s0,2
8000d218:	26100002 	addiu	s0,s0,2
8000d21c:	02129021 	addu	s2,s0,s2
8000d220:	0180f821 	move	ra,t4
8000d224:	24141117 	li	s4,4375
8000d228:	16920213 	bne	s4,s2,8000da78 <inst_error>
8000d22c:	00000000 	nop
8000d230:	3c144444 	lui	s4,0x4444
8000d234:	16820210 	bne	s4,v0,8000da78 <inst_error>
8000d238:	00000000 	nop
8000d23c:	24020009 	li	v0,9
8000d240:	00008021 	move	s0,zero
8000d244:	00009021 	move	s2,zero
8000d248:	3c087fff 	lui	t0,0x7fff
8000d24c:	3508ffff 	ori	t0,t0,0xffff
8000d250:	3c097fff 	lui	t1,0x7fff
8000d254:	3529ffff 	ori	t1,t1,0xffff
8000d258:	3c0a8002 	lui	t2,0x8002
8000d25c:	354afff0 	ori	t2,t2,0xfff0
8000d260:	ad480000 	sw	t0,0(t2)
8000d264:	10000004 	b	8000d278 <n87_bgezal_ex_ds_test+0xc24>
8000d268:	00000000 	nop
8000d26c:	26522222 	addiu	s2,s2,8738
8000d270:	10000007 	b	8000d290 <n87_bgezal_ex_ds_test+0xc3c>
8000d274:	00000000 	nop
8000d278:	26101111 	addiu	s0,s0,4369
8000d27c:	0511fffb 	bgezal	t0,8000d26c <n87_bgezal_ex_ds_test+0xc18>
8000d280:	a5540003 	sh	s4,3(t2)
8000d284:	26100002 	addiu	s0,s0,2
8000d288:	26100002 	addiu	s0,s0,2
8000d28c:	26100002 	addiu	s0,s0,2
8000d290:	02129021 	addu	s2,s0,s2
8000d294:	0180f821 	move	ra,t4
8000d298:	24141117 	li	s4,4375
8000d29c:	169201f6 	bne	s4,s2,8000da78 <inst_error>
8000d2a0:	00000000 	nop
8000d2a4:	3c144444 	lui	s4,0x4444
8000d2a8:	168201f3 	bne	s4,v0,8000da78 <inst_error>
8000d2ac:	00000000 	nop
8000d2b0:	24020009 	li	v0,9
8000d2b4:	00008021 	move	s0,zero
8000d2b8:	00009021 	move	s2,zero
8000d2bc:	3c087fff 	lui	t0,0x7fff
8000d2c0:	3508ffff 	ori	t0,t0,0xffff
8000d2c4:	3c097fff 	lui	t1,0x7fff
8000d2c8:	3529ffff 	ori	t1,t1,0xffff
8000d2cc:	3c0a8002 	lui	t2,0x8002
8000d2d0:	354afff0 	ori	t2,t2,0xfff0
8000d2d4:	ad480000 	sw	t0,0(t2)
8000d2d8:	10000004 	b	8000d2ec <n87_bgezal_ex_ds_test+0xc98>
8000d2dc:	00000000 	nop
8000d2e0:	26522222 	addiu	s2,s2,8738
8000d2e4:	10000007 	b	8000d304 <n87_bgezal_ex_ds_test+0xcb0>
8000d2e8:	00000000 	nop
8000d2ec:	26101111 	addiu	s0,s0,4369
8000d2f0:	0551fffb 	bgezal	t2,8000d2e0 <n87_bgezal_ex_ds_test+0xc8c>
8000d2f4:	a5540003 	sh	s4,3(t2)
8000d2f8:	26100002 	addiu	s0,s0,2
8000d2fc:	26100002 	addiu	s0,s0,2
8000d300:	26100002 	addiu	s0,s0,2
8000d304:	02129021 	addu	s2,s0,s2
8000d308:	0180f821 	move	ra,t4
8000d30c:	24141117 	li	s4,4375
8000d310:	169201d9 	bne	s4,s2,8000da78 <inst_error>
8000d314:	00000000 	nop
8000d318:	3c144444 	lui	s4,0x4444
8000d31c:	168201d6 	bne	s4,v0,8000da78 <inst_error>
8000d320:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:24
8000d324:	001f6021 	addu	t4,zero,ra
8000d328:	24020009 	li	v0,9
8000d32c:	00008021 	move	s0,zero
8000d330:	00009021 	move	s2,zero
8000d334:	3c087fff 	lui	t0,0x7fff
8000d338:	3508ffff 	ori	t0,t0,0xffff
8000d33c:	3c097fff 	lui	t1,0x7fff
8000d340:	3529ffff 	ori	t1,t1,0xffff
8000d344:	3c0a8002 	lui	t2,0x8002
8000d348:	354afff0 	ori	t2,t2,0xfff0
8000d34c:	ad480000 	sw	t0,0(t2)
8000d350:	10000004 	b	8000d364 <n87_bgezal_ex_ds_test+0xd10>
8000d354:	00000000 	nop
8000d358:	26522222 	addiu	s2,s2,8738
8000d35c:	10000007 	b	8000d37c <n87_bgezal_ex_ds_test+0xd28>
8000d360:	00000000 	nop
8000d364:	26101111 	addiu	s0,s0,4369
8000d368:	05110004 	bgezal	t0,8000d37c <n87_bgezal_ex_ds_test+0xd28>
8000d36c:	ad540003 	sw	s4,3(t2)
8000d370:	26100002 	addiu	s0,s0,2
8000d374:	26100002 	addiu	s0,s0,2
8000d378:	26100002 	addiu	s0,s0,2
8000d37c:	02129021 	addu	s2,s0,s2
8000d380:	0180f821 	move	ra,t4
8000d384:	24141117 	li	s4,4375
8000d388:	169201bb 	bne	s4,s2,8000da78 <inst_error>
8000d38c:	00000000 	nop
8000d390:	3c144444 	lui	s4,0x4444
8000d394:	168201b8 	bne	s4,v0,8000da78 <inst_error>
8000d398:	00000000 	nop
8000d39c:	24020009 	li	v0,9
8000d3a0:	00008021 	move	s0,zero
8000d3a4:	00009021 	move	s2,zero
8000d3a8:	3c087fff 	lui	t0,0x7fff
8000d3ac:	3508ffff 	ori	t0,t0,0xffff
8000d3b0:	3c097fff 	lui	t1,0x7fff
8000d3b4:	3529ffff 	ori	t1,t1,0xffff
8000d3b8:	3c0a8002 	lui	t2,0x8002
8000d3bc:	354afff0 	ori	t2,t2,0xfff0
8000d3c0:	ad480000 	sw	t0,0(t2)
8000d3c4:	10000004 	b	8000d3d8 <n87_bgezal_ex_ds_test+0xd84>
8000d3c8:	00000000 	nop
8000d3cc:	26522222 	addiu	s2,s2,8738
8000d3d0:	10000007 	b	8000d3f0 <n87_bgezal_ex_ds_test+0xd9c>
8000d3d4:	00000000 	nop
8000d3d8:	26101111 	addiu	s0,s0,4369
8000d3dc:	05510004 	bgezal	t2,8000d3f0 <n87_bgezal_ex_ds_test+0xd9c>
8000d3e0:	ad540003 	sw	s4,3(t2)
8000d3e4:	26100002 	addiu	s0,s0,2
8000d3e8:	26100002 	addiu	s0,s0,2
8000d3ec:	26100002 	addiu	s0,s0,2
8000d3f0:	02129021 	addu	s2,s0,s2
8000d3f4:	0180f821 	move	ra,t4
8000d3f8:	24141117 	li	s4,4375
8000d3fc:	1692019e 	bne	s4,s2,8000da78 <inst_error>
8000d400:	00000000 	nop
8000d404:	3c144444 	lui	s4,0x4444
8000d408:	1682019b 	bne	s4,v0,8000da78 <inst_error>
8000d40c:	00000000 	nop
8000d410:	24020009 	li	v0,9
8000d414:	00008021 	move	s0,zero
8000d418:	00009021 	move	s2,zero
8000d41c:	3c087fff 	lui	t0,0x7fff
8000d420:	3508ffff 	ori	t0,t0,0xffff
8000d424:	3c097fff 	lui	t1,0x7fff
8000d428:	3529ffff 	ori	t1,t1,0xffff
8000d42c:	3c0a8002 	lui	t2,0x8002
8000d430:	354afff0 	ori	t2,t2,0xfff0
8000d434:	ad480000 	sw	t0,0(t2)
8000d438:	10000004 	b	8000d44c <n87_bgezal_ex_ds_test+0xdf8>
8000d43c:	00000000 	nop
8000d440:	26522222 	addiu	s2,s2,8738
8000d444:	10000007 	b	8000d464 <n87_bgezal_ex_ds_test+0xe10>
8000d448:	00000000 	nop
8000d44c:	26101111 	addiu	s0,s0,4369
8000d450:	0511fffb 	bgezal	t0,8000d440 <n87_bgezal_ex_ds_test+0xdec>
8000d454:	ad540003 	sw	s4,3(t2)
8000d458:	26100002 	addiu	s0,s0,2
8000d45c:	26100002 	addiu	s0,s0,2
8000d460:	26100002 	addiu	s0,s0,2
8000d464:	02129021 	addu	s2,s0,s2
8000d468:	0180f821 	move	ra,t4
8000d46c:	24141117 	li	s4,4375
8000d470:	16920181 	bne	s4,s2,8000da78 <inst_error>
8000d474:	00000000 	nop
8000d478:	3c144444 	lui	s4,0x4444
8000d47c:	1682017e 	bne	s4,v0,8000da78 <inst_error>
8000d480:	00000000 	nop
8000d484:	24020009 	li	v0,9
8000d488:	00008021 	move	s0,zero
8000d48c:	00009021 	move	s2,zero
8000d490:	3c087fff 	lui	t0,0x7fff
8000d494:	3508ffff 	ori	t0,t0,0xffff
8000d498:	3c097fff 	lui	t1,0x7fff
8000d49c:	3529ffff 	ori	t1,t1,0xffff
8000d4a0:	3c0a8002 	lui	t2,0x8002
8000d4a4:	354afff0 	ori	t2,t2,0xfff0
8000d4a8:	ad480000 	sw	t0,0(t2)
8000d4ac:	10000004 	b	8000d4c0 <n87_bgezal_ex_ds_test+0xe6c>
8000d4b0:	00000000 	nop
8000d4b4:	26522222 	addiu	s2,s2,8738
8000d4b8:	10000007 	b	8000d4d8 <n87_bgezal_ex_ds_test+0xe84>
8000d4bc:	00000000 	nop
8000d4c0:	26101111 	addiu	s0,s0,4369
8000d4c4:	0551fffb 	bgezal	t2,8000d4b4 <n87_bgezal_ex_ds_test+0xe60>
8000d4c8:	ad540003 	sw	s4,3(t2)
8000d4cc:	26100002 	addiu	s0,s0,2
8000d4d0:	26100002 	addiu	s0,s0,2
8000d4d4:	26100002 	addiu	s0,s0,2
8000d4d8:	02129021 	addu	s2,s0,s2
8000d4dc:	0180f821 	move	ra,t4
8000d4e0:	24141117 	li	s4,4375
8000d4e4:	16920164 	bne	s4,s2,8000da78 <inst_error>
8000d4e8:	00000000 	nop
8000d4ec:	3c144444 	lui	s4,0x4444
8000d4f0:	16820161 	bne	s4,v0,8000da78 <inst_error>
8000d4f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:25
8000d4f8:	001f6021 	addu	t4,zero,ra
8000d4fc:	24020009 	li	v0,9
8000d500:	00008021 	move	s0,zero
8000d504:	00009021 	move	s2,zero
8000d508:	3c087fff 	lui	t0,0x7fff
8000d50c:	3508ffff 	ori	t0,t0,0xffff
8000d510:	3c097fff 	lui	t1,0x7fff
8000d514:	3529ffff 	ori	t1,t1,0xffff
8000d518:	3c0a8002 	lui	t2,0x8002
8000d51c:	354afff0 	ori	t2,t2,0xfff0
8000d520:	ad480000 	sw	t0,0(t2)
8000d524:	10000004 	b	8000d538 <n87_bgezal_ex_ds_test+0xee4>
8000d528:	00000000 	nop
8000d52c:	26522222 	addiu	s2,s2,8738
8000d530:	10000007 	b	8000d550 <n87_bgezal_ex_ds_test+0xefc>
8000d534:	00000000 	nop
8000d538:	26101111 	addiu	s0,s0,4369
8000d53c:	05110004 	bgezal	t0,8000d550 <n87_bgezal_ex_ds_test+0xefc>
8000d540:	6f76e210 	0x6f76e210
8000d544:	26100002 	addiu	s0,s0,2
8000d548:	26100002 	addiu	s0,s0,2
8000d54c:	26100002 	addiu	s0,s0,2
8000d550:	02129021 	addu	s2,s0,s2
8000d554:	0180f821 	move	ra,t4
8000d558:	24141117 	li	s4,4375
8000d55c:	16920146 	bne	s4,s2,8000da78 <inst_error>
8000d560:	00000000 	nop
8000d564:	3c144444 	lui	s4,0x4444
8000d568:	16820143 	bne	s4,v0,8000da78 <inst_error>
8000d56c:	00000000 	nop
8000d570:	24020009 	li	v0,9
8000d574:	00008021 	move	s0,zero
8000d578:	00009021 	move	s2,zero
8000d57c:	3c087fff 	lui	t0,0x7fff
8000d580:	3508ffff 	ori	t0,t0,0xffff
8000d584:	3c097fff 	lui	t1,0x7fff
8000d588:	3529ffff 	ori	t1,t1,0xffff
8000d58c:	3c0a8002 	lui	t2,0x8002
8000d590:	354afff0 	ori	t2,t2,0xfff0
8000d594:	ad480000 	sw	t0,0(t2)
8000d598:	10000004 	b	8000d5ac <n87_bgezal_ex_ds_test+0xf58>
8000d59c:	00000000 	nop
8000d5a0:	26522222 	addiu	s2,s2,8738
8000d5a4:	10000007 	b	8000d5c4 <n87_bgezal_ex_ds_test+0xf70>
8000d5a8:	00000000 	nop
8000d5ac:	26101111 	addiu	s0,s0,4369
8000d5b0:	05510004 	bgezal	t2,8000d5c4 <n87_bgezal_ex_ds_test+0xf70>
8000d5b4:	6f76e210 	0x6f76e210
8000d5b8:	26100002 	addiu	s0,s0,2
8000d5bc:	26100002 	addiu	s0,s0,2
8000d5c0:	26100002 	addiu	s0,s0,2
8000d5c4:	02129021 	addu	s2,s0,s2
8000d5c8:	0180f821 	move	ra,t4
8000d5cc:	24141117 	li	s4,4375
8000d5d0:	16920129 	bne	s4,s2,8000da78 <inst_error>
8000d5d4:	00000000 	nop
8000d5d8:	3c144444 	lui	s4,0x4444
8000d5dc:	16820126 	bne	s4,v0,8000da78 <inst_error>
8000d5e0:	00000000 	nop
8000d5e4:	24020009 	li	v0,9
8000d5e8:	00008021 	move	s0,zero
8000d5ec:	00009021 	move	s2,zero
8000d5f0:	3c087fff 	lui	t0,0x7fff
8000d5f4:	3508ffff 	ori	t0,t0,0xffff
8000d5f8:	3c097fff 	lui	t1,0x7fff
8000d5fc:	3529ffff 	ori	t1,t1,0xffff
8000d600:	3c0a8002 	lui	t2,0x8002
8000d604:	354afff0 	ori	t2,t2,0xfff0
8000d608:	ad480000 	sw	t0,0(t2)
8000d60c:	10000004 	b	8000d620 <n87_bgezal_ex_ds_test+0xfcc>
8000d610:	00000000 	nop
8000d614:	26522222 	addiu	s2,s2,8738
8000d618:	10000007 	b	8000d638 <n87_bgezal_ex_ds_test+0xfe4>
8000d61c:	00000000 	nop
8000d620:	26101111 	addiu	s0,s0,4369
8000d624:	0511fffb 	bgezal	t0,8000d614 <n87_bgezal_ex_ds_test+0xfc0>
8000d628:	6f76e210 	0x6f76e210
8000d62c:	26100002 	addiu	s0,s0,2
8000d630:	26100002 	addiu	s0,s0,2
8000d634:	26100002 	addiu	s0,s0,2
8000d638:	02129021 	addu	s2,s0,s2
8000d63c:	0180f821 	move	ra,t4
8000d640:	24141117 	li	s4,4375
8000d644:	1692010c 	bne	s4,s2,8000da78 <inst_error>
8000d648:	00000000 	nop
8000d64c:	3c144444 	lui	s4,0x4444
8000d650:	16820109 	bne	s4,v0,8000da78 <inst_error>
8000d654:	00000000 	nop
8000d658:	24020009 	li	v0,9
8000d65c:	00008021 	move	s0,zero
8000d660:	00009021 	move	s2,zero
8000d664:	3c087fff 	lui	t0,0x7fff
8000d668:	3508ffff 	ori	t0,t0,0xffff
8000d66c:	3c097fff 	lui	t1,0x7fff
8000d670:	3529ffff 	ori	t1,t1,0xffff
8000d674:	3c0a8002 	lui	t2,0x8002
8000d678:	354afff0 	ori	t2,t2,0xfff0
8000d67c:	ad480000 	sw	t0,0(t2)
8000d680:	10000004 	b	8000d694 <n87_bgezal_ex_ds_test+0x1040>
8000d684:	00000000 	nop
8000d688:	26522222 	addiu	s2,s2,8738
8000d68c:	10000007 	b	8000d6ac <n87_bgezal_ex_ds_test+0x1058>
8000d690:	00000000 	nop
8000d694:	26101111 	addiu	s0,s0,4369
8000d698:	0551fffb 	bgezal	t2,8000d688 <n87_bgezal_ex_ds_test+0x1034>
8000d69c:	6f76e210 	0x6f76e210
8000d6a0:	26100002 	addiu	s0,s0,2
8000d6a4:	26100002 	addiu	s0,s0,2
8000d6a8:	26100002 	addiu	s0,s0,2
8000d6ac:	02129021 	addu	s2,s0,s2
8000d6b0:	0180f821 	move	ra,t4
8000d6b4:	24141117 	li	s4,4375
8000d6b8:	169200ef 	bne	s4,s2,8000da78 <inst_error>
8000d6bc:	00000000 	nop
8000d6c0:	3c144444 	lui	s4,0x4444
8000d6c4:	168200ec 	bne	s4,v0,8000da78 <inst_error>
8000d6c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:26
8000d6cc:	001f6021 	addu	t4,zero,ra
8000d6d0:	24020009 	li	v0,9
8000d6d4:	00008021 	move	s0,zero
8000d6d8:	00009021 	move	s2,zero
8000d6dc:	3c087fff 	lui	t0,0x7fff
8000d6e0:	3508ffff 	ori	t0,t0,0xffff
8000d6e4:	3c097fff 	lui	t1,0x7fff
8000d6e8:	3529ffff 	ori	t1,t1,0xffff
8000d6ec:	3c0a8002 	lui	t2,0x8002
8000d6f0:	354afff0 	ori	t2,t2,0xfff0
8000d6f4:	ad480000 	sw	t0,0(t2)
8000d6f8:	10000004 	b	8000d70c <n87_bgezal_ex_ds_test+0x10b8>
8000d6fc:	00000000 	nop
8000d700:	26522222 	addiu	s2,s2,8738
8000d704:	10000007 	b	8000d724 <n87_bgezal_ex_ds_test+0x10d0>
8000d708:	00000000 	nop
8000d70c:	26101111 	addiu	s0,s0,4369
8000d710:	05110004 	bgezal	t0,8000d724 <n87_bgezal_ex_ds_test+0x10d0>
8000d714:	0000000c 	syscall
8000d718:	26100002 	addiu	s0,s0,2
8000d71c:	26100002 	addiu	s0,s0,2
8000d720:	26100002 	addiu	s0,s0,2
8000d724:	02129021 	addu	s2,s0,s2
8000d728:	0180f821 	move	ra,t4
8000d72c:	24141117 	li	s4,4375
8000d730:	169200d1 	bne	s4,s2,8000da78 <inst_error>
8000d734:	00000000 	nop
8000d738:	3c144444 	lui	s4,0x4444
8000d73c:	168200ce 	bne	s4,v0,8000da78 <inst_error>
8000d740:	00000000 	nop
8000d744:	24020009 	li	v0,9
8000d748:	00008021 	move	s0,zero
8000d74c:	00009021 	move	s2,zero
8000d750:	3c087fff 	lui	t0,0x7fff
8000d754:	3508ffff 	ori	t0,t0,0xffff
8000d758:	3c097fff 	lui	t1,0x7fff
8000d75c:	3529ffff 	ori	t1,t1,0xffff
8000d760:	3c0a8002 	lui	t2,0x8002
8000d764:	354afff0 	ori	t2,t2,0xfff0
8000d768:	ad480000 	sw	t0,0(t2)
8000d76c:	10000004 	b	8000d780 <n87_bgezal_ex_ds_test+0x112c>
8000d770:	00000000 	nop
8000d774:	26522222 	addiu	s2,s2,8738
8000d778:	10000007 	b	8000d798 <n87_bgezal_ex_ds_test+0x1144>
8000d77c:	00000000 	nop
8000d780:	26101111 	addiu	s0,s0,4369
8000d784:	05510004 	bgezal	t2,8000d798 <n87_bgezal_ex_ds_test+0x1144>
8000d788:	0000000c 	syscall
8000d78c:	26100002 	addiu	s0,s0,2
8000d790:	26100002 	addiu	s0,s0,2
8000d794:	26100002 	addiu	s0,s0,2
8000d798:	02129021 	addu	s2,s0,s2
8000d79c:	0180f821 	move	ra,t4
8000d7a0:	24141117 	li	s4,4375
8000d7a4:	169200b4 	bne	s4,s2,8000da78 <inst_error>
8000d7a8:	00000000 	nop
8000d7ac:	3c144444 	lui	s4,0x4444
8000d7b0:	168200b1 	bne	s4,v0,8000da78 <inst_error>
8000d7b4:	00000000 	nop
8000d7b8:	24020009 	li	v0,9
8000d7bc:	00008021 	move	s0,zero
8000d7c0:	00009021 	move	s2,zero
8000d7c4:	3c087fff 	lui	t0,0x7fff
8000d7c8:	3508ffff 	ori	t0,t0,0xffff
8000d7cc:	3c097fff 	lui	t1,0x7fff
8000d7d0:	3529ffff 	ori	t1,t1,0xffff
8000d7d4:	3c0a8002 	lui	t2,0x8002
8000d7d8:	354afff0 	ori	t2,t2,0xfff0
8000d7dc:	ad480000 	sw	t0,0(t2)
8000d7e0:	10000004 	b	8000d7f4 <n87_bgezal_ex_ds_test+0x11a0>
8000d7e4:	00000000 	nop
8000d7e8:	26522222 	addiu	s2,s2,8738
8000d7ec:	10000007 	b	8000d80c <n87_bgezal_ex_ds_test+0x11b8>
8000d7f0:	00000000 	nop
8000d7f4:	26101111 	addiu	s0,s0,4369
8000d7f8:	0511fffb 	bgezal	t0,8000d7e8 <n87_bgezal_ex_ds_test+0x1194>
8000d7fc:	0000000c 	syscall
8000d800:	26100002 	addiu	s0,s0,2
8000d804:	26100002 	addiu	s0,s0,2
8000d808:	26100002 	addiu	s0,s0,2
8000d80c:	02129021 	addu	s2,s0,s2
8000d810:	0180f821 	move	ra,t4
8000d814:	24141117 	li	s4,4375
8000d818:	16920097 	bne	s4,s2,8000da78 <inst_error>
8000d81c:	00000000 	nop
8000d820:	3c144444 	lui	s4,0x4444
8000d824:	16820094 	bne	s4,v0,8000da78 <inst_error>
8000d828:	00000000 	nop
8000d82c:	24020009 	li	v0,9
8000d830:	00008021 	move	s0,zero
8000d834:	00009021 	move	s2,zero
8000d838:	3c087fff 	lui	t0,0x7fff
8000d83c:	3508ffff 	ori	t0,t0,0xffff
8000d840:	3c097fff 	lui	t1,0x7fff
8000d844:	3529ffff 	ori	t1,t1,0xffff
8000d848:	3c0a8002 	lui	t2,0x8002
8000d84c:	354afff0 	ori	t2,t2,0xfff0
8000d850:	ad480000 	sw	t0,0(t2)
8000d854:	10000004 	b	8000d868 <n87_bgezal_ex_ds_test+0x1214>
8000d858:	00000000 	nop
8000d85c:	26522222 	addiu	s2,s2,8738
8000d860:	10000007 	b	8000d880 <n87_bgezal_ex_ds_test+0x122c>
8000d864:	00000000 	nop
8000d868:	26101111 	addiu	s0,s0,4369
8000d86c:	0551fffb 	bgezal	t2,8000d85c <n87_bgezal_ex_ds_test+0x1208>
8000d870:	0000000c 	syscall
8000d874:	26100002 	addiu	s0,s0,2
8000d878:	26100002 	addiu	s0,s0,2
8000d87c:	26100002 	addiu	s0,s0,2
8000d880:	02129021 	addu	s2,s0,s2
8000d884:	0180f821 	move	ra,t4
8000d888:	24141117 	li	s4,4375
8000d88c:	1692007a 	bne	s4,s2,8000da78 <inst_error>
8000d890:	00000000 	nop
8000d894:	3c144444 	lui	s4,0x4444
8000d898:	16820077 	bne	s4,v0,8000da78 <inst_error>
8000d89c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:27
8000d8a0:	001f6021 	addu	t4,zero,ra
8000d8a4:	24020009 	li	v0,9
8000d8a8:	00008021 	move	s0,zero
8000d8ac:	00009021 	move	s2,zero
8000d8b0:	3c087fff 	lui	t0,0x7fff
8000d8b4:	3508ffff 	ori	t0,t0,0xffff
8000d8b8:	3c097fff 	lui	t1,0x7fff
8000d8bc:	3529ffff 	ori	t1,t1,0xffff
8000d8c0:	3c0a8002 	lui	t2,0x8002
8000d8c4:	354afff0 	ori	t2,t2,0xfff0
8000d8c8:	ad480000 	sw	t0,0(t2)
8000d8cc:	10000004 	b	8000d8e0 <n87_bgezal_ex_ds_test+0x128c>
8000d8d0:	00000000 	nop
8000d8d4:	26522222 	addiu	s2,s2,8738
8000d8d8:	10000007 	b	8000d8f8 <n87_bgezal_ex_ds_test+0x12a4>
8000d8dc:	00000000 	nop
8000d8e0:	26101111 	addiu	s0,s0,4369
8000d8e4:	05110004 	bgezal	t0,8000d8f8 <n87_bgezal_ex_ds_test+0x12a4>
8000d8e8:	0000000d 	break
8000d8ec:	26100002 	addiu	s0,s0,2
8000d8f0:	26100002 	addiu	s0,s0,2
8000d8f4:	26100002 	addiu	s0,s0,2
8000d8f8:	02129021 	addu	s2,s0,s2
8000d8fc:	0180f821 	move	ra,t4
8000d900:	24141117 	li	s4,4375
8000d904:	1692005c 	bne	s4,s2,8000da78 <inst_error>
8000d908:	00000000 	nop
8000d90c:	3c144444 	lui	s4,0x4444
8000d910:	16820059 	bne	s4,v0,8000da78 <inst_error>
8000d914:	00000000 	nop
8000d918:	24020009 	li	v0,9
8000d91c:	00008021 	move	s0,zero
8000d920:	00009021 	move	s2,zero
8000d924:	3c087fff 	lui	t0,0x7fff
8000d928:	3508ffff 	ori	t0,t0,0xffff
8000d92c:	3c097fff 	lui	t1,0x7fff
8000d930:	3529ffff 	ori	t1,t1,0xffff
8000d934:	3c0a8002 	lui	t2,0x8002
8000d938:	354afff0 	ori	t2,t2,0xfff0
8000d93c:	ad480000 	sw	t0,0(t2)
8000d940:	10000004 	b	8000d954 <n87_bgezal_ex_ds_test+0x1300>
8000d944:	00000000 	nop
8000d948:	26522222 	addiu	s2,s2,8738
8000d94c:	10000007 	b	8000d96c <n87_bgezal_ex_ds_test+0x1318>
8000d950:	00000000 	nop
8000d954:	26101111 	addiu	s0,s0,4369
8000d958:	05510004 	bgezal	t2,8000d96c <n87_bgezal_ex_ds_test+0x1318>
8000d95c:	0000000d 	break
8000d960:	26100002 	addiu	s0,s0,2
8000d964:	26100002 	addiu	s0,s0,2
8000d968:	26100002 	addiu	s0,s0,2
8000d96c:	02129021 	addu	s2,s0,s2
8000d970:	0180f821 	move	ra,t4
8000d974:	24141117 	li	s4,4375
8000d978:	1692003f 	bne	s4,s2,8000da78 <inst_error>
8000d97c:	00000000 	nop
8000d980:	3c144444 	lui	s4,0x4444
8000d984:	1682003c 	bne	s4,v0,8000da78 <inst_error>
8000d988:	00000000 	nop
8000d98c:	24020009 	li	v0,9
8000d990:	00008021 	move	s0,zero
8000d994:	00009021 	move	s2,zero
8000d998:	3c087fff 	lui	t0,0x7fff
8000d99c:	3508ffff 	ori	t0,t0,0xffff
8000d9a0:	3c097fff 	lui	t1,0x7fff
8000d9a4:	3529ffff 	ori	t1,t1,0xffff
8000d9a8:	3c0a8002 	lui	t2,0x8002
8000d9ac:	354afff0 	ori	t2,t2,0xfff0
8000d9b0:	ad480000 	sw	t0,0(t2)
8000d9b4:	10000004 	b	8000d9c8 <n87_bgezal_ex_ds_test+0x1374>
8000d9b8:	00000000 	nop
8000d9bc:	26522222 	addiu	s2,s2,8738
8000d9c0:	10000007 	b	8000d9e0 <n87_bgezal_ex_ds_test+0x138c>
8000d9c4:	00000000 	nop
8000d9c8:	26101111 	addiu	s0,s0,4369
8000d9cc:	0511fffb 	bgezal	t0,8000d9bc <n87_bgezal_ex_ds_test+0x1368>
8000d9d0:	0000000d 	break
8000d9d4:	26100002 	addiu	s0,s0,2
8000d9d8:	26100002 	addiu	s0,s0,2
8000d9dc:	26100002 	addiu	s0,s0,2
8000d9e0:	02129021 	addu	s2,s0,s2
8000d9e4:	0180f821 	move	ra,t4
8000d9e8:	24141117 	li	s4,4375
8000d9ec:	16920022 	bne	s4,s2,8000da78 <inst_error>
8000d9f0:	00000000 	nop
8000d9f4:	3c144444 	lui	s4,0x4444
8000d9f8:	1682001f 	bne	s4,v0,8000da78 <inst_error>
8000d9fc:	00000000 	nop
8000da00:	24020009 	li	v0,9
8000da04:	00008021 	move	s0,zero
8000da08:	00009021 	move	s2,zero
8000da0c:	3c087fff 	lui	t0,0x7fff
8000da10:	3508ffff 	ori	t0,t0,0xffff
8000da14:	3c097fff 	lui	t1,0x7fff
8000da18:	3529ffff 	ori	t1,t1,0xffff
8000da1c:	3c0a8002 	lui	t2,0x8002
8000da20:	354afff0 	ori	t2,t2,0xfff0
8000da24:	ad480000 	sw	t0,0(t2)
8000da28:	10000004 	b	8000da3c <n87_bgezal_ex_ds_test+0x13e8>
8000da2c:	00000000 	nop
8000da30:	26522222 	addiu	s2,s2,8738
8000da34:	10000007 	b	8000da54 <n87_bgezal_ex_ds_test+0x1400>
8000da38:	00000000 	nop
8000da3c:	26101111 	addiu	s0,s0,4369
8000da40:	0551fffb 	bgezal	t2,8000da30 <n87_bgezal_ex_ds_test+0x13dc>
8000da44:	0000000d 	break
8000da48:	26100002 	addiu	s0,s0,2
8000da4c:	26100002 	addiu	s0,s0,2
8000da50:	26100002 	addiu	s0,s0,2
8000da54:	02129021 	addu	s2,s0,s2
8000da58:	0180f821 	move	ra,t4
8000da5c:	24141117 	li	s4,4375
8000da60:	16920005 	bne	s4,s2,8000da78 <inst_error>
8000da64:	00000000 	nop
8000da68:	3c144444 	lui	s4,0x4444
8000da6c:	16820002 	bne	s4,v0,8000da78 <inst_error>
8000da70:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:33
8000da74:	26730001 	addiu	s3,s3,1

8000da78 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:36
8000da78:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:37
8000da7c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:38
8000da80:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n87_bgezal_ex_ds.S:39
8000da84:	00000000 	nop

8000da88 <n80_beq_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:14
8000da88:	3c045000 	lui	a0,0x5000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:17
8000da8c:	24020009 	li	v0,9
8000da90:	00008021 	move	s0,zero
8000da94:	00009021 	move	s2,zero
8000da98:	3c087fff 	lui	t0,0x7fff
8000da9c:	3508ffff 	ori	t0,t0,0xffff
8000daa0:	3c097fff 	lui	t1,0x7fff
8000daa4:	3529ffff 	ori	t1,t1,0xffff
8000daa8:	3c0a8002 	lui	t2,0x8002
8000daac:	354afff0 	ori	t2,t2,0xfff0
8000dab0:	ad480000 	sw	t0,0(t2)
8000dab4:	10000004 	b	8000dac8 <n80_beq_ex_ds_test+0x40>
8000dab8:	00000000 	nop
8000dabc:	26522222 	addiu	s2,s2,8738
8000dac0:	10000007 	b	8000dae0 <n80_beq_ex_ds_test+0x58>
8000dac4:	00000000 	nop
8000dac8:	26101111 	addiu	s0,s0,4369
8000dacc:	11280004 	beq	t1,t0,8000dae0 <n80_beq_ex_ds_test+0x58>
8000dad0:	21147fff 	addi	s4,t0,32767
8000dad4:	26100002 	addiu	s0,s0,2
8000dad8:	26100002 	addiu	s0,s0,2
8000dadc:	26100002 	addiu	s0,s0,2
8000dae0:	02129021 	addu	s2,s0,s2
8000dae4:	24141117 	li	s4,4375
8000dae8:	169204b9 	bne	s4,s2,8000edd0 <inst_error>
8000daec:	00000000 	nop
8000daf0:	3c144444 	lui	s4,0x4444
8000daf4:	168204b6 	bne	s4,v0,8000edd0 <inst_error>
8000daf8:	00000000 	nop
8000dafc:	24020009 	li	v0,9
8000db00:	00008021 	move	s0,zero
8000db04:	00009021 	move	s2,zero
8000db08:	3c087fff 	lui	t0,0x7fff
8000db0c:	3508ffff 	ori	t0,t0,0xffff
8000db10:	3c097fff 	lui	t1,0x7fff
8000db14:	3529ffff 	ori	t1,t1,0xffff
8000db18:	3c0a8002 	lui	t2,0x8002
8000db1c:	354afff0 	ori	t2,t2,0xfff0
8000db20:	ad480000 	sw	t0,0(t2)
8000db24:	10000004 	b	8000db38 <n80_beq_ex_ds_test+0xb0>
8000db28:	00000000 	nop
8000db2c:	26522222 	addiu	s2,s2,8738
8000db30:	10000007 	b	8000db50 <n80_beq_ex_ds_test+0xc8>
8000db34:	00000000 	nop
8000db38:	26101111 	addiu	s0,s0,4369
8000db3c:	11480004 	beq	t2,t0,8000db50 <n80_beq_ex_ds_test+0xc8>
8000db40:	21147fff 	addi	s4,t0,32767
8000db44:	26100002 	addiu	s0,s0,2
8000db48:	26100002 	addiu	s0,s0,2
8000db4c:	26100002 	addiu	s0,s0,2
8000db50:	02129021 	addu	s2,s0,s2
8000db54:	24141117 	li	s4,4375
8000db58:	1692049d 	bne	s4,s2,8000edd0 <inst_error>
8000db5c:	00000000 	nop
8000db60:	3c144444 	lui	s4,0x4444
8000db64:	1682049a 	bne	s4,v0,8000edd0 <inst_error>
8000db68:	00000000 	nop
8000db6c:	24020009 	li	v0,9
8000db70:	00008021 	move	s0,zero
8000db74:	00009021 	move	s2,zero
8000db78:	3c087fff 	lui	t0,0x7fff
8000db7c:	3508ffff 	ori	t0,t0,0xffff
8000db80:	3c097fff 	lui	t1,0x7fff
8000db84:	3529ffff 	ori	t1,t1,0xffff
8000db88:	3c0a8002 	lui	t2,0x8002
8000db8c:	354afff0 	ori	t2,t2,0xfff0
8000db90:	ad480000 	sw	t0,0(t2)
8000db94:	10000004 	b	8000dba8 <n80_beq_ex_ds_test+0x120>
8000db98:	00000000 	nop
8000db9c:	26522222 	addiu	s2,s2,8738
8000dba0:	10000007 	b	8000dbc0 <n80_beq_ex_ds_test+0x138>
8000dba4:	00000000 	nop
8000dba8:	26101111 	addiu	s0,s0,4369
8000dbac:	1128fffb 	beq	t1,t0,8000db9c <n80_beq_ex_ds_test+0x114>
8000dbb0:	21147fff 	addi	s4,t0,32767
8000dbb4:	26100002 	addiu	s0,s0,2
8000dbb8:	26100002 	addiu	s0,s0,2
8000dbbc:	26100002 	addiu	s0,s0,2
8000dbc0:	02129021 	addu	s2,s0,s2
8000dbc4:	24141117 	li	s4,4375
8000dbc8:	16920481 	bne	s4,s2,8000edd0 <inst_error>
8000dbcc:	00000000 	nop
8000dbd0:	3c144444 	lui	s4,0x4444
8000dbd4:	1682047e 	bne	s4,v0,8000edd0 <inst_error>
8000dbd8:	00000000 	nop
8000dbdc:	24020009 	li	v0,9
8000dbe0:	00008021 	move	s0,zero
8000dbe4:	00009021 	move	s2,zero
8000dbe8:	3c087fff 	lui	t0,0x7fff
8000dbec:	3508ffff 	ori	t0,t0,0xffff
8000dbf0:	3c097fff 	lui	t1,0x7fff
8000dbf4:	3529ffff 	ori	t1,t1,0xffff
8000dbf8:	3c0a8002 	lui	t2,0x8002
8000dbfc:	354afff0 	ori	t2,t2,0xfff0
8000dc00:	ad480000 	sw	t0,0(t2)
8000dc04:	10000004 	b	8000dc18 <n80_beq_ex_ds_test+0x190>
8000dc08:	00000000 	nop
8000dc0c:	26522222 	addiu	s2,s2,8738
8000dc10:	10000007 	b	8000dc30 <n80_beq_ex_ds_test+0x1a8>
8000dc14:	00000000 	nop
8000dc18:	26101111 	addiu	s0,s0,4369
8000dc1c:	1148fffb 	beq	t2,t0,8000dc0c <n80_beq_ex_ds_test+0x184>
8000dc20:	21147fff 	addi	s4,t0,32767
8000dc24:	26100002 	addiu	s0,s0,2
8000dc28:	26100002 	addiu	s0,s0,2
8000dc2c:	26100002 	addiu	s0,s0,2
8000dc30:	02129021 	addu	s2,s0,s2
8000dc34:	24141117 	li	s4,4375
8000dc38:	16920465 	bne	s4,s2,8000edd0 <inst_error>
8000dc3c:	00000000 	nop
8000dc40:	3c144444 	lui	s4,0x4444
8000dc44:	16820462 	bne	s4,v0,8000edd0 <inst_error>
8000dc48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:18
8000dc4c:	24020009 	li	v0,9
8000dc50:	00008021 	move	s0,zero
8000dc54:	00009021 	move	s2,zero
8000dc58:	3c087fff 	lui	t0,0x7fff
8000dc5c:	3508ffff 	ori	t0,t0,0xffff
8000dc60:	3c097fff 	lui	t1,0x7fff
8000dc64:	3529ffff 	ori	t1,t1,0xffff
8000dc68:	3c0a8002 	lui	t2,0x8002
8000dc6c:	354afff0 	ori	t2,t2,0xfff0
8000dc70:	ad480000 	sw	t0,0(t2)
8000dc74:	10000004 	b	8000dc88 <n80_beq_ex_ds_test+0x200>
8000dc78:	00000000 	nop
8000dc7c:	26522222 	addiu	s2,s2,8738
8000dc80:	10000007 	b	8000dca0 <n80_beq_ex_ds_test+0x218>
8000dc84:	00000000 	nop
8000dc88:	26101111 	addiu	s0,s0,4369
8000dc8c:	11280004 	beq	t1,t0,8000dca0 <n80_beq_ex_ds_test+0x218>
8000dc90:	0109a020 	add	s4,t0,t1
8000dc94:	26100002 	addiu	s0,s0,2
8000dc98:	26100002 	addiu	s0,s0,2
8000dc9c:	26100002 	addiu	s0,s0,2
8000dca0:	02129021 	addu	s2,s0,s2
8000dca4:	24141117 	li	s4,4375
8000dca8:	16920449 	bne	s4,s2,8000edd0 <inst_error>
8000dcac:	00000000 	nop
8000dcb0:	3c144444 	lui	s4,0x4444
8000dcb4:	16820446 	bne	s4,v0,8000edd0 <inst_error>
8000dcb8:	00000000 	nop
8000dcbc:	24020009 	li	v0,9
8000dcc0:	00008021 	move	s0,zero
8000dcc4:	00009021 	move	s2,zero
8000dcc8:	3c087fff 	lui	t0,0x7fff
8000dccc:	3508ffff 	ori	t0,t0,0xffff
8000dcd0:	3c097fff 	lui	t1,0x7fff
8000dcd4:	3529ffff 	ori	t1,t1,0xffff
8000dcd8:	3c0a8002 	lui	t2,0x8002
8000dcdc:	354afff0 	ori	t2,t2,0xfff0
8000dce0:	ad480000 	sw	t0,0(t2)
8000dce4:	10000004 	b	8000dcf8 <n80_beq_ex_ds_test+0x270>
8000dce8:	00000000 	nop
8000dcec:	26522222 	addiu	s2,s2,8738
8000dcf0:	10000007 	b	8000dd10 <n80_beq_ex_ds_test+0x288>
8000dcf4:	00000000 	nop
8000dcf8:	26101111 	addiu	s0,s0,4369
8000dcfc:	11480004 	beq	t2,t0,8000dd10 <n80_beq_ex_ds_test+0x288>
8000dd00:	0109a020 	add	s4,t0,t1
8000dd04:	26100002 	addiu	s0,s0,2
8000dd08:	26100002 	addiu	s0,s0,2
8000dd0c:	26100002 	addiu	s0,s0,2
8000dd10:	02129021 	addu	s2,s0,s2
8000dd14:	24141117 	li	s4,4375
8000dd18:	1692042d 	bne	s4,s2,8000edd0 <inst_error>
8000dd1c:	00000000 	nop
8000dd20:	3c144444 	lui	s4,0x4444
8000dd24:	1682042a 	bne	s4,v0,8000edd0 <inst_error>
8000dd28:	00000000 	nop
8000dd2c:	24020009 	li	v0,9
8000dd30:	00008021 	move	s0,zero
8000dd34:	00009021 	move	s2,zero
8000dd38:	3c087fff 	lui	t0,0x7fff
8000dd3c:	3508ffff 	ori	t0,t0,0xffff
8000dd40:	3c097fff 	lui	t1,0x7fff
8000dd44:	3529ffff 	ori	t1,t1,0xffff
8000dd48:	3c0a8002 	lui	t2,0x8002
8000dd4c:	354afff0 	ori	t2,t2,0xfff0
8000dd50:	ad480000 	sw	t0,0(t2)
8000dd54:	10000004 	b	8000dd68 <n80_beq_ex_ds_test+0x2e0>
8000dd58:	00000000 	nop
8000dd5c:	26522222 	addiu	s2,s2,8738
8000dd60:	10000007 	b	8000dd80 <n80_beq_ex_ds_test+0x2f8>
8000dd64:	00000000 	nop
8000dd68:	26101111 	addiu	s0,s0,4369
8000dd6c:	1128fffb 	beq	t1,t0,8000dd5c <n80_beq_ex_ds_test+0x2d4>
8000dd70:	0109a020 	add	s4,t0,t1
8000dd74:	26100002 	addiu	s0,s0,2
8000dd78:	26100002 	addiu	s0,s0,2
8000dd7c:	26100002 	addiu	s0,s0,2
8000dd80:	02129021 	addu	s2,s0,s2
8000dd84:	24141117 	li	s4,4375
8000dd88:	16920411 	bne	s4,s2,8000edd0 <inst_error>
8000dd8c:	00000000 	nop
8000dd90:	3c144444 	lui	s4,0x4444
8000dd94:	1682040e 	bne	s4,v0,8000edd0 <inst_error>
8000dd98:	00000000 	nop
8000dd9c:	24020009 	li	v0,9
8000dda0:	00008021 	move	s0,zero
8000dda4:	00009021 	move	s2,zero
8000dda8:	3c087fff 	lui	t0,0x7fff
8000ddac:	3508ffff 	ori	t0,t0,0xffff
8000ddb0:	3c097fff 	lui	t1,0x7fff
8000ddb4:	3529ffff 	ori	t1,t1,0xffff
8000ddb8:	3c0a8002 	lui	t2,0x8002
8000ddbc:	354afff0 	ori	t2,t2,0xfff0
8000ddc0:	ad480000 	sw	t0,0(t2)
8000ddc4:	10000004 	b	8000ddd8 <n80_beq_ex_ds_test+0x350>
8000ddc8:	00000000 	nop
8000ddcc:	26522222 	addiu	s2,s2,8738
8000ddd0:	10000007 	b	8000ddf0 <n80_beq_ex_ds_test+0x368>
8000ddd4:	00000000 	nop
8000ddd8:	26101111 	addiu	s0,s0,4369
8000dddc:	1148fffb 	beq	t2,t0,8000ddcc <n80_beq_ex_ds_test+0x344>
8000dde0:	0109a020 	add	s4,t0,t1
8000dde4:	26100002 	addiu	s0,s0,2
8000dde8:	26100002 	addiu	s0,s0,2
8000ddec:	26100002 	addiu	s0,s0,2
8000ddf0:	02129021 	addu	s2,s0,s2
8000ddf4:	24141117 	li	s4,4375
8000ddf8:	169203f5 	bne	s4,s2,8000edd0 <inst_error>
8000ddfc:	00000000 	nop
8000de00:	3c144444 	lui	s4,0x4444
8000de04:	168203f2 	bne	s4,v0,8000edd0 <inst_error>
8000de08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:19
8000de0c:	24020009 	li	v0,9
8000de10:	00008021 	move	s0,zero
8000de14:	00009021 	move	s2,zero
8000de18:	3c087fff 	lui	t0,0x7fff
8000de1c:	3508ffff 	ori	t0,t0,0xffff
8000de20:	3c097fff 	lui	t1,0x7fff
8000de24:	3529ffff 	ori	t1,t1,0xffff
8000de28:	3c0a8002 	lui	t2,0x8002
8000de2c:	354afff0 	ori	t2,t2,0xfff0
8000de30:	ad480000 	sw	t0,0(t2)
8000de34:	10000004 	b	8000de48 <n80_beq_ex_ds_test+0x3c0>
8000de38:	00000000 	nop
8000de3c:	26522222 	addiu	s2,s2,8738
8000de40:	10000007 	b	8000de60 <n80_beq_ex_ds_test+0x3d8>
8000de44:	00000000 	nop
8000de48:	26101111 	addiu	s0,s0,4369
8000de4c:	11280004 	beq	t1,t0,8000de60 <n80_beq_ex_ds_test+0x3d8>
8000de50:	010aa022 	sub	s4,t0,t2
8000de54:	26100002 	addiu	s0,s0,2
8000de58:	26100002 	addiu	s0,s0,2
8000de5c:	26100002 	addiu	s0,s0,2
8000de60:	02129021 	addu	s2,s0,s2
8000de64:	24141117 	li	s4,4375
8000de68:	169203d9 	bne	s4,s2,8000edd0 <inst_error>
8000de6c:	00000000 	nop
8000de70:	3c144444 	lui	s4,0x4444
8000de74:	168203d6 	bne	s4,v0,8000edd0 <inst_error>
8000de78:	00000000 	nop
8000de7c:	24020009 	li	v0,9
8000de80:	00008021 	move	s0,zero
8000de84:	00009021 	move	s2,zero
8000de88:	3c087fff 	lui	t0,0x7fff
8000de8c:	3508ffff 	ori	t0,t0,0xffff
8000de90:	3c097fff 	lui	t1,0x7fff
8000de94:	3529ffff 	ori	t1,t1,0xffff
8000de98:	3c0a8002 	lui	t2,0x8002
8000de9c:	354afff0 	ori	t2,t2,0xfff0
8000dea0:	ad480000 	sw	t0,0(t2)
8000dea4:	10000004 	b	8000deb8 <n80_beq_ex_ds_test+0x430>
8000dea8:	00000000 	nop
8000deac:	26522222 	addiu	s2,s2,8738
8000deb0:	10000007 	b	8000ded0 <n80_beq_ex_ds_test+0x448>
8000deb4:	00000000 	nop
8000deb8:	26101111 	addiu	s0,s0,4369
8000debc:	11480004 	beq	t2,t0,8000ded0 <n80_beq_ex_ds_test+0x448>
8000dec0:	010aa022 	sub	s4,t0,t2
8000dec4:	26100002 	addiu	s0,s0,2
8000dec8:	26100002 	addiu	s0,s0,2
8000decc:	26100002 	addiu	s0,s0,2
8000ded0:	02129021 	addu	s2,s0,s2
8000ded4:	24141117 	li	s4,4375
8000ded8:	169203bd 	bne	s4,s2,8000edd0 <inst_error>
8000dedc:	00000000 	nop
8000dee0:	3c144444 	lui	s4,0x4444
8000dee4:	168203ba 	bne	s4,v0,8000edd0 <inst_error>
8000dee8:	00000000 	nop
8000deec:	24020009 	li	v0,9
8000def0:	00008021 	move	s0,zero
8000def4:	00009021 	move	s2,zero
8000def8:	3c087fff 	lui	t0,0x7fff
8000defc:	3508ffff 	ori	t0,t0,0xffff
8000df00:	3c097fff 	lui	t1,0x7fff
8000df04:	3529ffff 	ori	t1,t1,0xffff
8000df08:	3c0a8002 	lui	t2,0x8002
8000df0c:	354afff0 	ori	t2,t2,0xfff0
8000df10:	ad480000 	sw	t0,0(t2)
8000df14:	10000004 	b	8000df28 <n80_beq_ex_ds_test+0x4a0>
8000df18:	00000000 	nop
8000df1c:	26522222 	addiu	s2,s2,8738
8000df20:	10000007 	b	8000df40 <n80_beq_ex_ds_test+0x4b8>
8000df24:	00000000 	nop
8000df28:	26101111 	addiu	s0,s0,4369
8000df2c:	1128fffb 	beq	t1,t0,8000df1c <n80_beq_ex_ds_test+0x494>
8000df30:	010aa022 	sub	s4,t0,t2
8000df34:	26100002 	addiu	s0,s0,2
8000df38:	26100002 	addiu	s0,s0,2
8000df3c:	26100002 	addiu	s0,s0,2
8000df40:	02129021 	addu	s2,s0,s2
8000df44:	24141117 	li	s4,4375
8000df48:	169203a1 	bne	s4,s2,8000edd0 <inst_error>
8000df4c:	00000000 	nop
8000df50:	3c144444 	lui	s4,0x4444
8000df54:	1682039e 	bne	s4,v0,8000edd0 <inst_error>
8000df58:	00000000 	nop
8000df5c:	24020009 	li	v0,9
8000df60:	00008021 	move	s0,zero
8000df64:	00009021 	move	s2,zero
8000df68:	3c087fff 	lui	t0,0x7fff
8000df6c:	3508ffff 	ori	t0,t0,0xffff
8000df70:	3c097fff 	lui	t1,0x7fff
8000df74:	3529ffff 	ori	t1,t1,0xffff
8000df78:	3c0a8002 	lui	t2,0x8002
8000df7c:	354afff0 	ori	t2,t2,0xfff0
8000df80:	ad480000 	sw	t0,0(t2)
8000df84:	10000004 	b	8000df98 <n80_beq_ex_ds_test+0x510>
8000df88:	00000000 	nop
8000df8c:	26522222 	addiu	s2,s2,8738
8000df90:	10000007 	b	8000dfb0 <n80_beq_ex_ds_test+0x528>
8000df94:	00000000 	nop
8000df98:	26101111 	addiu	s0,s0,4369
8000df9c:	1148fffb 	beq	t2,t0,8000df8c <n80_beq_ex_ds_test+0x504>
8000dfa0:	010aa022 	sub	s4,t0,t2
8000dfa4:	26100002 	addiu	s0,s0,2
8000dfa8:	26100002 	addiu	s0,s0,2
8000dfac:	26100002 	addiu	s0,s0,2
8000dfb0:	02129021 	addu	s2,s0,s2
8000dfb4:	24141117 	li	s4,4375
8000dfb8:	16920385 	bne	s4,s2,8000edd0 <inst_error>
8000dfbc:	00000000 	nop
8000dfc0:	3c144444 	lui	s4,0x4444
8000dfc4:	16820382 	bne	s4,v0,8000edd0 <inst_error>
8000dfc8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:20
8000dfcc:	24020009 	li	v0,9
8000dfd0:	00008021 	move	s0,zero
8000dfd4:	00009021 	move	s2,zero
8000dfd8:	3c087fff 	lui	t0,0x7fff
8000dfdc:	3508ffff 	ori	t0,t0,0xffff
8000dfe0:	3c097fff 	lui	t1,0x7fff
8000dfe4:	3529ffff 	ori	t1,t1,0xffff
8000dfe8:	3c0a8002 	lui	t2,0x8002
8000dfec:	354afff0 	ori	t2,t2,0xfff0
8000dff0:	ad480000 	sw	t0,0(t2)
8000dff4:	10000004 	b	8000e008 <n80_beq_ex_ds_test+0x580>
8000dff8:	00000000 	nop
8000dffc:	26522222 	addiu	s2,s2,8738
8000e000:	10000007 	b	8000e020 <n80_beq_ex_ds_test+0x598>
8000e004:	00000000 	nop
8000e008:	26101111 	addiu	s0,s0,4369
8000e00c:	11280004 	beq	t1,t0,8000e020 <n80_beq_ex_ds_test+0x598>
8000e010:	85540003 	lh	s4,3(t2)
8000e014:	26100002 	addiu	s0,s0,2
8000e018:	26100002 	addiu	s0,s0,2
8000e01c:	26100002 	addiu	s0,s0,2
8000e020:	02129021 	addu	s2,s0,s2
8000e024:	24141117 	li	s4,4375
8000e028:	16920369 	bne	s4,s2,8000edd0 <inst_error>
8000e02c:	00000000 	nop
8000e030:	3c144444 	lui	s4,0x4444
8000e034:	16820366 	bne	s4,v0,8000edd0 <inst_error>
8000e038:	00000000 	nop
8000e03c:	24020009 	li	v0,9
8000e040:	00008021 	move	s0,zero
8000e044:	00009021 	move	s2,zero
8000e048:	3c087fff 	lui	t0,0x7fff
8000e04c:	3508ffff 	ori	t0,t0,0xffff
8000e050:	3c097fff 	lui	t1,0x7fff
8000e054:	3529ffff 	ori	t1,t1,0xffff
8000e058:	3c0a8002 	lui	t2,0x8002
8000e05c:	354afff0 	ori	t2,t2,0xfff0
8000e060:	ad480000 	sw	t0,0(t2)
8000e064:	10000004 	b	8000e078 <n80_beq_ex_ds_test+0x5f0>
8000e068:	00000000 	nop
8000e06c:	26522222 	addiu	s2,s2,8738
8000e070:	10000007 	b	8000e090 <n80_beq_ex_ds_test+0x608>
8000e074:	00000000 	nop
8000e078:	26101111 	addiu	s0,s0,4369
8000e07c:	11480004 	beq	t2,t0,8000e090 <n80_beq_ex_ds_test+0x608>
8000e080:	85540003 	lh	s4,3(t2)
8000e084:	26100002 	addiu	s0,s0,2
8000e088:	26100002 	addiu	s0,s0,2
8000e08c:	26100002 	addiu	s0,s0,2
8000e090:	02129021 	addu	s2,s0,s2
8000e094:	24141117 	li	s4,4375
8000e098:	1692034d 	bne	s4,s2,8000edd0 <inst_error>
8000e09c:	00000000 	nop
8000e0a0:	3c144444 	lui	s4,0x4444
8000e0a4:	1682034a 	bne	s4,v0,8000edd0 <inst_error>
8000e0a8:	00000000 	nop
8000e0ac:	24020009 	li	v0,9
8000e0b0:	00008021 	move	s0,zero
8000e0b4:	00009021 	move	s2,zero
8000e0b8:	3c087fff 	lui	t0,0x7fff
8000e0bc:	3508ffff 	ori	t0,t0,0xffff
8000e0c0:	3c097fff 	lui	t1,0x7fff
8000e0c4:	3529ffff 	ori	t1,t1,0xffff
8000e0c8:	3c0a8002 	lui	t2,0x8002
8000e0cc:	354afff0 	ori	t2,t2,0xfff0
8000e0d0:	ad480000 	sw	t0,0(t2)
8000e0d4:	10000004 	b	8000e0e8 <n80_beq_ex_ds_test+0x660>
8000e0d8:	00000000 	nop
8000e0dc:	26522222 	addiu	s2,s2,8738
8000e0e0:	10000007 	b	8000e100 <n80_beq_ex_ds_test+0x678>
8000e0e4:	00000000 	nop
8000e0e8:	26101111 	addiu	s0,s0,4369
8000e0ec:	1128fffb 	beq	t1,t0,8000e0dc <n80_beq_ex_ds_test+0x654>
8000e0f0:	85540003 	lh	s4,3(t2)
8000e0f4:	26100002 	addiu	s0,s0,2
8000e0f8:	26100002 	addiu	s0,s0,2
8000e0fc:	26100002 	addiu	s0,s0,2
8000e100:	02129021 	addu	s2,s0,s2
8000e104:	24141117 	li	s4,4375
8000e108:	16920331 	bne	s4,s2,8000edd0 <inst_error>
8000e10c:	00000000 	nop
8000e110:	3c144444 	lui	s4,0x4444
8000e114:	1682032e 	bne	s4,v0,8000edd0 <inst_error>
8000e118:	00000000 	nop
8000e11c:	24020009 	li	v0,9
8000e120:	00008021 	move	s0,zero
8000e124:	00009021 	move	s2,zero
8000e128:	3c087fff 	lui	t0,0x7fff
8000e12c:	3508ffff 	ori	t0,t0,0xffff
8000e130:	3c097fff 	lui	t1,0x7fff
8000e134:	3529ffff 	ori	t1,t1,0xffff
8000e138:	3c0a8002 	lui	t2,0x8002
8000e13c:	354afff0 	ori	t2,t2,0xfff0
8000e140:	ad480000 	sw	t0,0(t2)
8000e144:	10000004 	b	8000e158 <n80_beq_ex_ds_test+0x6d0>
8000e148:	00000000 	nop
8000e14c:	26522222 	addiu	s2,s2,8738
8000e150:	10000007 	b	8000e170 <n80_beq_ex_ds_test+0x6e8>
8000e154:	00000000 	nop
8000e158:	26101111 	addiu	s0,s0,4369
8000e15c:	1148fffb 	beq	t2,t0,8000e14c <n80_beq_ex_ds_test+0x6c4>
8000e160:	85540003 	lh	s4,3(t2)
8000e164:	26100002 	addiu	s0,s0,2
8000e168:	26100002 	addiu	s0,s0,2
8000e16c:	26100002 	addiu	s0,s0,2
8000e170:	02129021 	addu	s2,s0,s2
8000e174:	24141117 	li	s4,4375
8000e178:	16920315 	bne	s4,s2,8000edd0 <inst_error>
8000e17c:	00000000 	nop
8000e180:	3c144444 	lui	s4,0x4444
8000e184:	16820312 	bne	s4,v0,8000edd0 <inst_error>
8000e188:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:21
8000e18c:	24020009 	li	v0,9
8000e190:	00008021 	move	s0,zero
8000e194:	00009021 	move	s2,zero
8000e198:	3c087fff 	lui	t0,0x7fff
8000e19c:	3508ffff 	ori	t0,t0,0xffff
8000e1a0:	3c097fff 	lui	t1,0x7fff
8000e1a4:	3529ffff 	ori	t1,t1,0xffff
8000e1a8:	3c0a8002 	lui	t2,0x8002
8000e1ac:	354afff0 	ori	t2,t2,0xfff0
8000e1b0:	ad480000 	sw	t0,0(t2)
8000e1b4:	10000004 	b	8000e1c8 <n80_beq_ex_ds_test+0x740>
8000e1b8:	00000000 	nop
8000e1bc:	26522222 	addiu	s2,s2,8738
8000e1c0:	10000007 	b	8000e1e0 <n80_beq_ex_ds_test+0x758>
8000e1c4:	00000000 	nop
8000e1c8:	26101111 	addiu	s0,s0,4369
8000e1cc:	11280004 	beq	t1,t0,8000e1e0 <n80_beq_ex_ds_test+0x758>
8000e1d0:	95540003 	lhu	s4,3(t2)
8000e1d4:	26100002 	addiu	s0,s0,2
8000e1d8:	26100002 	addiu	s0,s0,2
8000e1dc:	26100002 	addiu	s0,s0,2
8000e1e0:	02129021 	addu	s2,s0,s2
8000e1e4:	24141117 	li	s4,4375
8000e1e8:	169202f9 	bne	s4,s2,8000edd0 <inst_error>
8000e1ec:	00000000 	nop
8000e1f0:	3c144444 	lui	s4,0x4444
8000e1f4:	168202f6 	bne	s4,v0,8000edd0 <inst_error>
8000e1f8:	00000000 	nop
8000e1fc:	24020009 	li	v0,9
8000e200:	00008021 	move	s0,zero
8000e204:	00009021 	move	s2,zero
8000e208:	3c087fff 	lui	t0,0x7fff
8000e20c:	3508ffff 	ori	t0,t0,0xffff
8000e210:	3c097fff 	lui	t1,0x7fff
8000e214:	3529ffff 	ori	t1,t1,0xffff
8000e218:	3c0a8002 	lui	t2,0x8002
8000e21c:	354afff0 	ori	t2,t2,0xfff0
8000e220:	ad480000 	sw	t0,0(t2)
8000e224:	10000004 	b	8000e238 <n80_beq_ex_ds_test+0x7b0>
8000e228:	00000000 	nop
8000e22c:	26522222 	addiu	s2,s2,8738
8000e230:	10000007 	b	8000e250 <n80_beq_ex_ds_test+0x7c8>
8000e234:	00000000 	nop
8000e238:	26101111 	addiu	s0,s0,4369
8000e23c:	11480004 	beq	t2,t0,8000e250 <n80_beq_ex_ds_test+0x7c8>
8000e240:	95540003 	lhu	s4,3(t2)
8000e244:	26100002 	addiu	s0,s0,2
8000e248:	26100002 	addiu	s0,s0,2
8000e24c:	26100002 	addiu	s0,s0,2
8000e250:	02129021 	addu	s2,s0,s2
8000e254:	24141117 	li	s4,4375
8000e258:	169202dd 	bne	s4,s2,8000edd0 <inst_error>
8000e25c:	00000000 	nop
8000e260:	3c144444 	lui	s4,0x4444
8000e264:	168202da 	bne	s4,v0,8000edd0 <inst_error>
8000e268:	00000000 	nop
8000e26c:	24020009 	li	v0,9
8000e270:	00008021 	move	s0,zero
8000e274:	00009021 	move	s2,zero
8000e278:	3c087fff 	lui	t0,0x7fff
8000e27c:	3508ffff 	ori	t0,t0,0xffff
8000e280:	3c097fff 	lui	t1,0x7fff
8000e284:	3529ffff 	ori	t1,t1,0xffff
8000e288:	3c0a8002 	lui	t2,0x8002
8000e28c:	354afff0 	ori	t2,t2,0xfff0
8000e290:	ad480000 	sw	t0,0(t2)
8000e294:	10000004 	b	8000e2a8 <n80_beq_ex_ds_test+0x820>
8000e298:	00000000 	nop
8000e29c:	26522222 	addiu	s2,s2,8738
8000e2a0:	10000007 	b	8000e2c0 <n80_beq_ex_ds_test+0x838>
8000e2a4:	00000000 	nop
8000e2a8:	26101111 	addiu	s0,s0,4369
8000e2ac:	1128fffb 	beq	t1,t0,8000e29c <n80_beq_ex_ds_test+0x814>
8000e2b0:	95540003 	lhu	s4,3(t2)
8000e2b4:	26100002 	addiu	s0,s0,2
8000e2b8:	26100002 	addiu	s0,s0,2
8000e2bc:	26100002 	addiu	s0,s0,2
8000e2c0:	02129021 	addu	s2,s0,s2
8000e2c4:	24141117 	li	s4,4375
8000e2c8:	169202c1 	bne	s4,s2,8000edd0 <inst_error>
8000e2cc:	00000000 	nop
8000e2d0:	3c144444 	lui	s4,0x4444
8000e2d4:	168202be 	bne	s4,v0,8000edd0 <inst_error>
8000e2d8:	00000000 	nop
8000e2dc:	24020009 	li	v0,9
8000e2e0:	00008021 	move	s0,zero
8000e2e4:	00009021 	move	s2,zero
8000e2e8:	3c087fff 	lui	t0,0x7fff
8000e2ec:	3508ffff 	ori	t0,t0,0xffff
8000e2f0:	3c097fff 	lui	t1,0x7fff
8000e2f4:	3529ffff 	ori	t1,t1,0xffff
8000e2f8:	3c0a8002 	lui	t2,0x8002
8000e2fc:	354afff0 	ori	t2,t2,0xfff0
8000e300:	ad480000 	sw	t0,0(t2)
8000e304:	10000004 	b	8000e318 <n80_beq_ex_ds_test+0x890>
8000e308:	00000000 	nop
8000e30c:	26522222 	addiu	s2,s2,8738
8000e310:	10000007 	b	8000e330 <n80_beq_ex_ds_test+0x8a8>
8000e314:	00000000 	nop
8000e318:	26101111 	addiu	s0,s0,4369
8000e31c:	1148fffb 	beq	t2,t0,8000e30c <n80_beq_ex_ds_test+0x884>
8000e320:	95540003 	lhu	s4,3(t2)
8000e324:	26100002 	addiu	s0,s0,2
8000e328:	26100002 	addiu	s0,s0,2
8000e32c:	26100002 	addiu	s0,s0,2
8000e330:	02129021 	addu	s2,s0,s2
8000e334:	24141117 	li	s4,4375
8000e338:	169202a5 	bne	s4,s2,8000edd0 <inst_error>
8000e33c:	00000000 	nop
8000e340:	3c144444 	lui	s4,0x4444
8000e344:	168202a2 	bne	s4,v0,8000edd0 <inst_error>
8000e348:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:22
8000e34c:	24020009 	li	v0,9
8000e350:	00008021 	move	s0,zero
8000e354:	00009021 	move	s2,zero
8000e358:	3c087fff 	lui	t0,0x7fff
8000e35c:	3508ffff 	ori	t0,t0,0xffff
8000e360:	3c097fff 	lui	t1,0x7fff
8000e364:	3529ffff 	ori	t1,t1,0xffff
8000e368:	3c0a8002 	lui	t2,0x8002
8000e36c:	354afff0 	ori	t2,t2,0xfff0
8000e370:	ad480000 	sw	t0,0(t2)
8000e374:	10000004 	b	8000e388 <n80_beq_ex_ds_test+0x900>
8000e378:	00000000 	nop
8000e37c:	26522222 	addiu	s2,s2,8738
8000e380:	10000007 	b	8000e3a0 <n80_beq_ex_ds_test+0x918>
8000e384:	00000000 	nop
8000e388:	26101111 	addiu	s0,s0,4369
8000e38c:	11280004 	beq	t1,t0,8000e3a0 <n80_beq_ex_ds_test+0x918>
8000e390:	8d540003 	lw	s4,3(t2)
8000e394:	26100002 	addiu	s0,s0,2
8000e398:	26100002 	addiu	s0,s0,2
8000e39c:	26100002 	addiu	s0,s0,2
8000e3a0:	02129021 	addu	s2,s0,s2
8000e3a4:	24141117 	li	s4,4375
8000e3a8:	16920289 	bne	s4,s2,8000edd0 <inst_error>
8000e3ac:	00000000 	nop
8000e3b0:	3c144444 	lui	s4,0x4444
8000e3b4:	16820286 	bne	s4,v0,8000edd0 <inst_error>
8000e3b8:	00000000 	nop
8000e3bc:	24020009 	li	v0,9
8000e3c0:	00008021 	move	s0,zero
8000e3c4:	00009021 	move	s2,zero
8000e3c8:	3c087fff 	lui	t0,0x7fff
8000e3cc:	3508ffff 	ori	t0,t0,0xffff
8000e3d0:	3c097fff 	lui	t1,0x7fff
8000e3d4:	3529ffff 	ori	t1,t1,0xffff
8000e3d8:	3c0a8002 	lui	t2,0x8002
8000e3dc:	354afff0 	ori	t2,t2,0xfff0
8000e3e0:	ad480000 	sw	t0,0(t2)
8000e3e4:	10000004 	b	8000e3f8 <n80_beq_ex_ds_test+0x970>
8000e3e8:	00000000 	nop
8000e3ec:	26522222 	addiu	s2,s2,8738
8000e3f0:	10000007 	b	8000e410 <n80_beq_ex_ds_test+0x988>
8000e3f4:	00000000 	nop
8000e3f8:	26101111 	addiu	s0,s0,4369
8000e3fc:	11480004 	beq	t2,t0,8000e410 <n80_beq_ex_ds_test+0x988>
8000e400:	8d540003 	lw	s4,3(t2)
8000e404:	26100002 	addiu	s0,s0,2
8000e408:	26100002 	addiu	s0,s0,2
8000e40c:	26100002 	addiu	s0,s0,2
8000e410:	02129021 	addu	s2,s0,s2
8000e414:	24141117 	li	s4,4375
8000e418:	1692026d 	bne	s4,s2,8000edd0 <inst_error>
8000e41c:	00000000 	nop
8000e420:	3c144444 	lui	s4,0x4444
8000e424:	1682026a 	bne	s4,v0,8000edd0 <inst_error>
8000e428:	00000000 	nop
8000e42c:	24020009 	li	v0,9
8000e430:	00008021 	move	s0,zero
8000e434:	00009021 	move	s2,zero
8000e438:	3c087fff 	lui	t0,0x7fff
8000e43c:	3508ffff 	ori	t0,t0,0xffff
8000e440:	3c097fff 	lui	t1,0x7fff
8000e444:	3529ffff 	ori	t1,t1,0xffff
8000e448:	3c0a8002 	lui	t2,0x8002
8000e44c:	354afff0 	ori	t2,t2,0xfff0
8000e450:	ad480000 	sw	t0,0(t2)
8000e454:	10000004 	b	8000e468 <n80_beq_ex_ds_test+0x9e0>
8000e458:	00000000 	nop
8000e45c:	26522222 	addiu	s2,s2,8738
8000e460:	10000007 	b	8000e480 <n80_beq_ex_ds_test+0x9f8>
8000e464:	00000000 	nop
8000e468:	26101111 	addiu	s0,s0,4369
8000e46c:	1128fffb 	beq	t1,t0,8000e45c <n80_beq_ex_ds_test+0x9d4>
8000e470:	8d540003 	lw	s4,3(t2)
8000e474:	26100002 	addiu	s0,s0,2
8000e478:	26100002 	addiu	s0,s0,2
8000e47c:	26100002 	addiu	s0,s0,2
8000e480:	02129021 	addu	s2,s0,s2
8000e484:	24141117 	li	s4,4375
8000e488:	16920251 	bne	s4,s2,8000edd0 <inst_error>
8000e48c:	00000000 	nop
8000e490:	3c144444 	lui	s4,0x4444
8000e494:	1682024e 	bne	s4,v0,8000edd0 <inst_error>
8000e498:	00000000 	nop
8000e49c:	24020009 	li	v0,9
8000e4a0:	00008021 	move	s0,zero
8000e4a4:	00009021 	move	s2,zero
8000e4a8:	3c087fff 	lui	t0,0x7fff
8000e4ac:	3508ffff 	ori	t0,t0,0xffff
8000e4b0:	3c097fff 	lui	t1,0x7fff
8000e4b4:	3529ffff 	ori	t1,t1,0xffff
8000e4b8:	3c0a8002 	lui	t2,0x8002
8000e4bc:	354afff0 	ori	t2,t2,0xfff0
8000e4c0:	ad480000 	sw	t0,0(t2)
8000e4c4:	10000004 	b	8000e4d8 <n80_beq_ex_ds_test+0xa50>
8000e4c8:	00000000 	nop
8000e4cc:	26522222 	addiu	s2,s2,8738
8000e4d0:	10000007 	b	8000e4f0 <n80_beq_ex_ds_test+0xa68>
8000e4d4:	00000000 	nop
8000e4d8:	26101111 	addiu	s0,s0,4369
8000e4dc:	1148fffb 	beq	t2,t0,8000e4cc <n80_beq_ex_ds_test+0xa44>
8000e4e0:	8d540003 	lw	s4,3(t2)
8000e4e4:	26100002 	addiu	s0,s0,2
8000e4e8:	26100002 	addiu	s0,s0,2
8000e4ec:	26100002 	addiu	s0,s0,2
8000e4f0:	02129021 	addu	s2,s0,s2
8000e4f4:	24141117 	li	s4,4375
8000e4f8:	16920235 	bne	s4,s2,8000edd0 <inst_error>
8000e4fc:	00000000 	nop
8000e500:	3c144444 	lui	s4,0x4444
8000e504:	16820232 	bne	s4,v0,8000edd0 <inst_error>
8000e508:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:23
8000e50c:	24020009 	li	v0,9
8000e510:	00008021 	move	s0,zero
8000e514:	00009021 	move	s2,zero
8000e518:	3c087fff 	lui	t0,0x7fff
8000e51c:	3508ffff 	ori	t0,t0,0xffff
8000e520:	3c097fff 	lui	t1,0x7fff
8000e524:	3529ffff 	ori	t1,t1,0xffff
8000e528:	3c0a8002 	lui	t2,0x8002
8000e52c:	354afff0 	ori	t2,t2,0xfff0
8000e530:	ad480000 	sw	t0,0(t2)
8000e534:	10000004 	b	8000e548 <n80_beq_ex_ds_test+0xac0>
8000e538:	00000000 	nop
8000e53c:	26522222 	addiu	s2,s2,8738
8000e540:	10000007 	b	8000e560 <n80_beq_ex_ds_test+0xad8>
8000e544:	00000000 	nop
8000e548:	26101111 	addiu	s0,s0,4369
8000e54c:	11280004 	beq	t1,t0,8000e560 <n80_beq_ex_ds_test+0xad8>
8000e550:	a5540003 	sh	s4,3(t2)
8000e554:	26100002 	addiu	s0,s0,2
8000e558:	26100002 	addiu	s0,s0,2
8000e55c:	26100002 	addiu	s0,s0,2
8000e560:	02129021 	addu	s2,s0,s2
8000e564:	24141117 	li	s4,4375
8000e568:	16920219 	bne	s4,s2,8000edd0 <inst_error>
8000e56c:	00000000 	nop
8000e570:	3c144444 	lui	s4,0x4444
8000e574:	16820216 	bne	s4,v0,8000edd0 <inst_error>
8000e578:	00000000 	nop
8000e57c:	24020009 	li	v0,9
8000e580:	00008021 	move	s0,zero
8000e584:	00009021 	move	s2,zero
8000e588:	3c087fff 	lui	t0,0x7fff
8000e58c:	3508ffff 	ori	t0,t0,0xffff
8000e590:	3c097fff 	lui	t1,0x7fff
8000e594:	3529ffff 	ori	t1,t1,0xffff
8000e598:	3c0a8002 	lui	t2,0x8002
8000e59c:	354afff0 	ori	t2,t2,0xfff0
8000e5a0:	ad480000 	sw	t0,0(t2)
8000e5a4:	10000004 	b	8000e5b8 <n80_beq_ex_ds_test+0xb30>
8000e5a8:	00000000 	nop
8000e5ac:	26522222 	addiu	s2,s2,8738
8000e5b0:	10000007 	b	8000e5d0 <n80_beq_ex_ds_test+0xb48>
8000e5b4:	00000000 	nop
8000e5b8:	26101111 	addiu	s0,s0,4369
8000e5bc:	11480004 	beq	t2,t0,8000e5d0 <n80_beq_ex_ds_test+0xb48>
8000e5c0:	a5540003 	sh	s4,3(t2)
8000e5c4:	26100002 	addiu	s0,s0,2
8000e5c8:	26100002 	addiu	s0,s0,2
8000e5cc:	26100002 	addiu	s0,s0,2
8000e5d0:	02129021 	addu	s2,s0,s2
8000e5d4:	24141117 	li	s4,4375
8000e5d8:	169201fd 	bne	s4,s2,8000edd0 <inst_error>
8000e5dc:	00000000 	nop
8000e5e0:	3c144444 	lui	s4,0x4444
8000e5e4:	168201fa 	bne	s4,v0,8000edd0 <inst_error>
8000e5e8:	00000000 	nop
8000e5ec:	24020009 	li	v0,9
8000e5f0:	00008021 	move	s0,zero
8000e5f4:	00009021 	move	s2,zero
8000e5f8:	3c087fff 	lui	t0,0x7fff
8000e5fc:	3508ffff 	ori	t0,t0,0xffff
8000e600:	3c097fff 	lui	t1,0x7fff
8000e604:	3529ffff 	ori	t1,t1,0xffff
8000e608:	3c0a8002 	lui	t2,0x8002
8000e60c:	354afff0 	ori	t2,t2,0xfff0
8000e610:	ad480000 	sw	t0,0(t2)
8000e614:	10000004 	b	8000e628 <n80_beq_ex_ds_test+0xba0>
8000e618:	00000000 	nop
8000e61c:	26522222 	addiu	s2,s2,8738
8000e620:	10000007 	b	8000e640 <n80_beq_ex_ds_test+0xbb8>
8000e624:	00000000 	nop
8000e628:	26101111 	addiu	s0,s0,4369
8000e62c:	1128fffb 	beq	t1,t0,8000e61c <n80_beq_ex_ds_test+0xb94>
8000e630:	a5540003 	sh	s4,3(t2)
8000e634:	26100002 	addiu	s0,s0,2
8000e638:	26100002 	addiu	s0,s0,2
8000e63c:	26100002 	addiu	s0,s0,2
8000e640:	02129021 	addu	s2,s0,s2
8000e644:	24141117 	li	s4,4375
8000e648:	169201e1 	bne	s4,s2,8000edd0 <inst_error>
8000e64c:	00000000 	nop
8000e650:	3c144444 	lui	s4,0x4444
8000e654:	168201de 	bne	s4,v0,8000edd0 <inst_error>
8000e658:	00000000 	nop
8000e65c:	24020009 	li	v0,9
8000e660:	00008021 	move	s0,zero
8000e664:	00009021 	move	s2,zero
8000e668:	3c087fff 	lui	t0,0x7fff
8000e66c:	3508ffff 	ori	t0,t0,0xffff
8000e670:	3c097fff 	lui	t1,0x7fff
8000e674:	3529ffff 	ori	t1,t1,0xffff
8000e678:	3c0a8002 	lui	t2,0x8002
8000e67c:	354afff0 	ori	t2,t2,0xfff0
8000e680:	ad480000 	sw	t0,0(t2)
8000e684:	10000004 	b	8000e698 <n80_beq_ex_ds_test+0xc10>
8000e688:	00000000 	nop
8000e68c:	26522222 	addiu	s2,s2,8738
8000e690:	10000007 	b	8000e6b0 <n80_beq_ex_ds_test+0xc28>
8000e694:	00000000 	nop
8000e698:	26101111 	addiu	s0,s0,4369
8000e69c:	1148fffb 	beq	t2,t0,8000e68c <n80_beq_ex_ds_test+0xc04>
8000e6a0:	a5540003 	sh	s4,3(t2)
8000e6a4:	26100002 	addiu	s0,s0,2
8000e6a8:	26100002 	addiu	s0,s0,2
8000e6ac:	26100002 	addiu	s0,s0,2
8000e6b0:	02129021 	addu	s2,s0,s2
8000e6b4:	24141117 	li	s4,4375
8000e6b8:	169201c5 	bne	s4,s2,8000edd0 <inst_error>
8000e6bc:	00000000 	nop
8000e6c0:	3c144444 	lui	s4,0x4444
8000e6c4:	168201c2 	bne	s4,v0,8000edd0 <inst_error>
8000e6c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:24
8000e6cc:	24020009 	li	v0,9
8000e6d0:	00008021 	move	s0,zero
8000e6d4:	00009021 	move	s2,zero
8000e6d8:	3c087fff 	lui	t0,0x7fff
8000e6dc:	3508ffff 	ori	t0,t0,0xffff
8000e6e0:	3c097fff 	lui	t1,0x7fff
8000e6e4:	3529ffff 	ori	t1,t1,0xffff
8000e6e8:	3c0a8002 	lui	t2,0x8002
8000e6ec:	354afff0 	ori	t2,t2,0xfff0
8000e6f0:	ad480000 	sw	t0,0(t2)
8000e6f4:	10000004 	b	8000e708 <n80_beq_ex_ds_test+0xc80>
8000e6f8:	00000000 	nop
8000e6fc:	26522222 	addiu	s2,s2,8738
8000e700:	10000007 	b	8000e720 <n80_beq_ex_ds_test+0xc98>
8000e704:	00000000 	nop
8000e708:	26101111 	addiu	s0,s0,4369
8000e70c:	11280004 	beq	t1,t0,8000e720 <n80_beq_ex_ds_test+0xc98>
8000e710:	ad540003 	sw	s4,3(t2)
8000e714:	26100002 	addiu	s0,s0,2
8000e718:	26100002 	addiu	s0,s0,2
8000e71c:	26100002 	addiu	s0,s0,2
8000e720:	02129021 	addu	s2,s0,s2
8000e724:	24141117 	li	s4,4375
8000e728:	169201a9 	bne	s4,s2,8000edd0 <inst_error>
8000e72c:	00000000 	nop
8000e730:	3c144444 	lui	s4,0x4444
8000e734:	168201a6 	bne	s4,v0,8000edd0 <inst_error>
8000e738:	00000000 	nop
8000e73c:	24020009 	li	v0,9
8000e740:	00008021 	move	s0,zero
8000e744:	00009021 	move	s2,zero
8000e748:	3c087fff 	lui	t0,0x7fff
8000e74c:	3508ffff 	ori	t0,t0,0xffff
8000e750:	3c097fff 	lui	t1,0x7fff
8000e754:	3529ffff 	ori	t1,t1,0xffff
8000e758:	3c0a8002 	lui	t2,0x8002
8000e75c:	354afff0 	ori	t2,t2,0xfff0
8000e760:	ad480000 	sw	t0,0(t2)
8000e764:	10000004 	b	8000e778 <n80_beq_ex_ds_test+0xcf0>
8000e768:	00000000 	nop
8000e76c:	26522222 	addiu	s2,s2,8738
8000e770:	10000007 	b	8000e790 <n80_beq_ex_ds_test+0xd08>
8000e774:	00000000 	nop
8000e778:	26101111 	addiu	s0,s0,4369
8000e77c:	11480004 	beq	t2,t0,8000e790 <n80_beq_ex_ds_test+0xd08>
8000e780:	ad540003 	sw	s4,3(t2)
8000e784:	26100002 	addiu	s0,s0,2
8000e788:	26100002 	addiu	s0,s0,2
8000e78c:	26100002 	addiu	s0,s0,2
8000e790:	02129021 	addu	s2,s0,s2
8000e794:	24141117 	li	s4,4375
8000e798:	1692018d 	bne	s4,s2,8000edd0 <inst_error>
8000e79c:	00000000 	nop
8000e7a0:	3c144444 	lui	s4,0x4444
8000e7a4:	1682018a 	bne	s4,v0,8000edd0 <inst_error>
8000e7a8:	00000000 	nop
8000e7ac:	24020009 	li	v0,9
8000e7b0:	00008021 	move	s0,zero
8000e7b4:	00009021 	move	s2,zero
8000e7b8:	3c087fff 	lui	t0,0x7fff
8000e7bc:	3508ffff 	ori	t0,t0,0xffff
8000e7c0:	3c097fff 	lui	t1,0x7fff
8000e7c4:	3529ffff 	ori	t1,t1,0xffff
8000e7c8:	3c0a8002 	lui	t2,0x8002
8000e7cc:	354afff0 	ori	t2,t2,0xfff0
8000e7d0:	ad480000 	sw	t0,0(t2)
8000e7d4:	10000004 	b	8000e7e8 <n80_beq_ex_ds_test+0xd60>
8000e7d8:	00000000 	nop
8000e7dc:	26522222 	addiu	s2,s2,8738
8000e7e0:	10000007 	b	8000e800 <n80_beq_ex_ds_test+0xd78>
8000e7e4:	00000000 	nop
8000e7e8:	26101111 	addiu	s0,s0,4369
8000e7ec:	1128fffb 	beq	t1,t0,8000e7dc <n80_beq_ex_ds_test+0xd54>
8000e7f0:	ad540003 	sw	s4,3(t2)
8000e7f4:	26100002 	addiu	s0,s0,2
8000e7f8:	26100002 	addiu	s0,s0,2
8000e7fc:	26100002 	addiu	s0,s0,2
8000e800:	02129021 	addu	s2,s0,s2
8000e804:	24141117 	li	s4,4375
8000e808:	16920171 	bne	s4,s2,8000edd0 <inst_error>
8000e80c:	00000000 	nop
8000e810:	3c144444 	lui	s4,0x4444
8000e814:	1682016e 	bne	s4,v0,8000edd0 <inst_error>
8000e818:	00000000 	nop
8000e81c:	24020009 	li	v0,9
8000e820:	00008021 	move	s0,zero
8000e824:	00009021 	move	s2,zero
8000e828:	3c087fff 	lui	t0,0x7fff
8000e82c:	3508ffff 	ori	t0,t0,0xffff
8000e830:	3c097fff 	lui	t1,0x7fff
8000e834:	3529ffff 	ori	t1,t1,0xffff
8000e838:	3c0a8002 	lui	t2,0x8002
8000e83c:	354afff0 	ori	t2,t2,0xfff0
8000e840:	ad480000 	sw	t0,0(t2)
8000e844:	10000004 	b	8000e858 <n80_beq_ex_ds_test+0xdd0>
8000e848:	00000000 	nop
8000e84c:	26522222 	addiu	s2,s2,8738
8000e850:	10000007 	b	8000e870 <n80_beq_ex_ds_test+0xde8>
8000e854:	00000000 	nop
8000e858:	26101111 	addiu	s0,s0,4369
8000e85c:	1148fffb 	beq	t2,t0,8000e84c <n80_beq_ex_ds_test+0xdc4>
8000e860:	ad540003 	sw	s4,3(t2)
8000e864:	26100002 	addiu	s0,s0,2
8000e868:	26100002 	addiu	s0,s0,2
8000e86c:	26100002 	addiu	s0,s0,2
8000e870:	02129021 	addu	s2,s0,s2
8000e874:	24141117 	li	s4,4375
8000e878:	16920155 	bne	s4,s2,8000edd0 <inst_error>
8000e87c:	00000000 	nop
8000e880:	3c144444 	lui	s4,0x4444
8000e884:	16820152 	bne	s4,v0,8000edd0 <inst_error>
8000e888:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:25
8000e88c:	24020009 	li	v0,9
8000e890:	00008021 	move	s0,zero
8000e894:	00009021 	move	s2,zero
8000e898:	3c087fff 	lui	t0,0x7fff
8000e89c:	3508ffff 	ori	t0,t0,0xffff
8000e8a0:	3c097fff 	lui	t1,0x7fff
8000e8a4:	3529ffff 	ori	t1,t1,0xffff
8000e8a8:	3c0a8002 	lui	t2,0x8002
8000e8ac:	354afff0 	ori	t2,t2,0xfff0
8000e8b0:	ad480000 	sw	t0,0(t2)
8000e8b4:	10000004 	b	8000e8c8 <n80_beq_ex_ds_test+0xe40>
8000e8b8:	00000000 	nop
8000e8bc:	26522222 	addiu	s2,s2,8738
8000e8c0:	10000007 	b	8000e8e0 <n80_beq_ex_ds_test+0xe58>
8000e8c4:	00000000 	nop
8000e8c8:	26101111 	addiu	s0,s0,4369
8000e8cc:	11280004 	beq	t1,t0,8000e8e0 <n80_beq_ex_ds_test+0xe58>
8000e8d0:	6f76e210 	0x6f76e210
8000e8d4:	26100002 	addiu	s0,s0,2
8000e8d8:	26100002 	addiu	s0,s0,2
8000e8dc:	26100002 	addiu	s0,s0,2
8000e8e0:	02129021 	addu	s2,s0,s2
8000e8e4:	24141117 	li	s4,4375
8000e8e8:	16920139 	bne	s4,s2,8000edd0 <inst_error>
8000e8ec:	00000000 	nop
8000e8f0:	3c144444 	lui	s4,0x4444
8000e8f4:	16820136 	bne	s4,v0,8000edd0 <inst_error>
8000e8f8:	00000000 	nop
8000e8fc:	24020009 	li	v0,9
8000e900:	00008021 	move	s0,zero
8000e904:	00009021 	move	s2,zero
8000e908:	3c087fff 	lui	t0,0x7fff
8000e90c:	3508ffff 	ori	t0,t0,0xffff
8000e910:	3c097fff 	lui	t1,0x7fff
8000e914:	3529ffff 	ori	t1,t1,0xffff
8000e918:	3c0a8002 	lui	t2,0x8002
8000e91c:	354afff0 	ori	t2,t2,0xfff0
8000e920:	ad480000 	sw	t0,0(t2)
8000e924:	10000004 	b	8000e938 <n80_beq_ex_ds_test+0xeb0>
8000e928:	00000000 	nop
8000e92c:	26522222 	addiu	s2,s2,8738
8000e930:	10000007 	b	8000e950 <n80_beq_ex_ds_test+0xec8>
8000e934:	00000000 	nop
8000e938:	26101111 	addiu	s0,s0,4369
8000e93c:	11480004 	beq	t2,t0,8000e950 <n80_beq_ex_ds_test+0xec8>
8000e940:	6f76e210 	0x6f76e210
8000e944:	26100002 	addiu	s0,s0,2
8000e948:	26100002 	addiu	s0,s0,2
8000e94c:	26100002 	addiu	s0,s0,2
8000e950:	02129021 	addu	s2,s0,s2
8000e954:	24141117 	li	s4,4375
8000e958:	1692011d 	bne	s4,s2,8000edd0 <inst_error>
8000e95c:	00000000 	nop
8000e960:	3c144444 	lui	s4,0x4444
8000e964:	1682011a 	bne	s4,v0,8000edd0 <inst_error>
8000e968:	00000000 	nop
8000e96c:	24020009 	li	v0,9
8000e970:	00008021 	move	s0,zero
8000e974:	00009021 	move	s2,zero
8000e978:	3c087fff 	lui	t0,0x7fff
8000e97c:	3508ffff 	ori	t0,t0,0xffff
8000e980:	3c097fff 	lui	t1,0x7fff
8000e984:	3529ffff 	ori	t1,t1,0xffff
8000e988:	3c0a8002 	lui	t2,0x8002
8000e98c:	354afff0 	ori	t2,t2,0xfff0
8000e990:	ad480000 	sw	t0,0(t2)
8000e994:	10000004 	b	8000e9a8 <n80_beq_ex_ds_test+0xf20>
8000e998:	00000000 	nop
8000e99c:	26522222 	addiu	s2,s2,8738
8000e9a0:	10000007 	b	8000e9c0 <n80_beq_ex_ds_test+0xf38>
8000e9a4:	00000000 	nop
8000e9a8:	26101111 	addiu	s0,s0,4369
8000e9ac:	1128fffb 	beq	t1,t0,8000e99c <n80_beq_ex_ds_test+0xf14>
8000e9b0:	6f76e210 	0x6f76e210
8000e9b4:	26100002 	addiu	s0,s0,2
8000e9b8:	26100002 	addiu	s0,s0,2
8000e9bc:	26100002 	addiu	s0,s0,2
8000e9c0:	02129021 	addu	s2,s0,s2
8000e9c4:	24141117 	li	s4,4375
8000e9c8:	16920101 	bne	s4,s2,8000edd0 <inst_error>
8000e9cc:	00000000 	nop
8000e9d0:	3c144444 	lui	s4,0x4444
8000e9d4:	168200fe 	bne	s4,v0,8000edd0 <inst_error>
8000e9d8:	00000000 	nop
8000e9dc:	24020009 	li	v0,9
8000e9e0:	00008021 	move	s0,zero
8000e9e4:	00009021 	move	s2,zero
8000e9e8:	3c087fff 	lui	t0,0x7fff
8000e9ec:	3508ffff 	ori	t0,t0,0xffff
8000e9f0:	3c097fff 	lui	t1,0x7fff
8000e9f4:	3529ffff 	ori	t1,t1,0xffff
8000e9f8:	3c0a8002 	lui	t2,0x8002
8000e9fc:	354afff0 	ori	t2,t2,0xfff0
8000ea00:	ad480000 	sw	t0,0(t2)
8000ea04:	10000004 	b	8000ea18 <n80_beq_ex_ds_test+0xf90>
8000ea08:	00000000 	nop
8000ea0c:	26522222 	addiu	s2,s2,8738
8000ea10:	10000007 	b	8000ea30 <n80_beq_ex_ds_test+0xfa8>
8000ea14:	00000000 	nop
8000ea18:	26101111 	addiu	s0,s0,4369
8000ea1c:	1148fffb 	beq	t2,t0,8000ea0c <n80_beq_ex_ds_test+0xf84>
8000ea20:	6f76e210 	0x6f76e210
8000ea24:	26100002 	addiu	s0,s0,2
8000ea28:	26100002 	addiu	s0,s0,2
8000ea2c:	26100002 	addiu	s0,s0,2
8000ea30:	02129021 	addu	s2,s0,s2
8000ea34:	24141117 	li	s4,4375
8000ea38:	169200e5 	bne	s4,s2,8000edd0 <inst_error>
8000ea3c:	00000000 	nop
8000ea40:	3c144444 	lui	s4,0x4444
8000ea44:	168200e2 	bne	s4,v0,8000edd0 <inst_error>
8000ea48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:26
8000ea4c:	24020009 	li	v0,9
8000ea50:	00008021 	move	s0,zero
8000ea54:	00009021 	move	s2,zero
8000ea58:	3c087fff 	lui	t0,0x7fff
8000ea5c:	3508ffff 	ori	t0,t0,0xffff
8000ea60:	3c097fff 	lui	t1,0x7fff
8000ea64:	3529ffff 	ori	t1,t1,0xffff
8000ea68:	3c0a8002 	lui	t2,0x8002
8000ea6c:	354afff0 	ori	t2,t2,0xfff0
8000ea70:	ad480000 	sw	t0,0(t2)
8000ea74:	10000004 	b	8000ea88 <n80_beq_ex_ds_test+0x1000>
8000ea78:	00000000 	nop
8000ea7c:	26522222 	addiu	s2,s2,8738
8000ea80:	10000007 	b	8000eaa0 <n80_beq_ex_ds_test+0x1018>
8000ea84:	00000000 	nop
8000ea88:	26101111 	addiu	s0,s0,4369
8000ea8c:	11280004 	beq	t1,t0,8000eaa0 <n80_beq_ex_ds_test+0x1018>
8000ea90:	0000000c 	syscall
8000ea94:	26100002 	addiu	s0,s0,2
8000ea98:	26100002 	addiu	s0,s0,2
8000ea9c:	26100002 	addiu	s0,s0,2
8000eaa0:	02129021 	addu	s2,s0,s2
8000eaa4:	24141117 	li	s4,4375
8000eaa8:	169200c9 	bne	s4,s2,8000edd0 <inst_error>
8000eaac:	00000000 	nop
8000eab0:	3c144444 	lui	s4,0x4444
8000eab4:	168200c6 	bne	s4,v0,8000edd0 <inst_error>
8000eab8:	00000000 	nop
8000eabc:	24020009 	li	v0,9
8000eac0:	00008021 	move	s0,zero
8000eac4:	00009021 	move	s2,zero
8000eac8:	3c087fff 	lui	t0,0x7fff
8000eacc:	3508ffff 	ori	t0,t0,0xffff
8000ead0:	3c097fff 	lui	t1,0x7fff
8000ead4:	3529ffff 	ori	t1,t1,0xffff
8000ead8:	3c0a8002 	lui	t2,0x8002
8000eadc:	354afff0 	ori	t2,t2,0xfff0
8000eae0:	ad480000 	sw	t0,0(t2)
8000eae4:	10000004 	b	8000eaf8 <n80_beq_ex_ds_test+0x1070>
8000eae8:	00000000 	nop
8000eaec:	26522222 	addiu	s2,s2,8738
8000eaf0:	10000007 	b	8000eb10 <n80_beq_ex_ds_test+0x1088>
8000eaf4:	00000000 	nop
8000eaf8:	26101111 	addiu	s0,s0,4369
8000eafc:	11480004 	beq	t2,t0,8000eb10 <n80_beq_ex_ds_test+0x1088>
8000eb00:	0000000c 	syscall
8000eb04:	26100002 	addiu	s0,s0,2
8000eb08:	26100002 	addiu	s0,s0,2
8000eb0c:	26100002 	addiu	s0,s0,2
8000eb10:	02129021 	addu	s2,s0,s2
8000eb14:	24141117 	li	s4,4375
8000eb18:	169200ad 	bne	s4,s2,8000edd0 <inst_error>
8000eb1c:	00000000 	nop
8000eb20:	3c144444 	lui	s4,0x4444
8000eb24:	168200aa 	bne	s4,v0,8000edd0 <inst_error>
8000eb28:	00000000 	nop
8000eb2c:	24020009 	li	v0,9
8000eb30:	00008021 	move	s0,zero
8000eb34:	00009021 	move	s2,zero
8000eb38:	3c087fff 	lui	t0,0x7fff
8000eb3c:	3508ffff 	ori	t0,t0,0xffff
8000eb40:	3c097fff 	lui	t1,0x7fff
8000eb44:	3529ffff 	ori	t1,t1,0xffff
8000eb48:	3c0a8002 	lui	t2,0x8002
8000eb4c:	354afff0 	ori	t2,t2,0xfff0
8000eb50:	ad480000 	sw	t0,0(t2)
8000eb54:	10000004 	b	8000eb68 <n80_beq_ex_ds_test+0x10e0>
8000eb58:	00000000 	nop
8000eb5c:	26522222 	addiu	s2,s2,8738
8000eb60:	10000007 	b	8000eb80 <n80_beq_ex_ds_test+0x10f8>
8000eb64:	00000000 	nop
8000eb68:	26101111 	addiu	s0,s0,4369
8000eb6c:	1128fffb 	beq	t1,t0,8000eb5c <n80_beq_ex_ds_test+0x10d4>
8000eb70:	0000000c 	syscall
8000eb74:	26100002 	addiu	s0,s0,2
8000eb78:	26100002 	addiu	s0,s0,2
8000eb7c:	26100002 	addiu	s0,s0,2
8000eb80:	02129021 	addu	s2,s0,s2
8000eb84:	24141117 	li	s4,4375
8000eb88:	16920091 	bne	s4,s2,8000edd0 <inst_error>
8000eb8c:	00000000 	nop
8000eb90:	3c144444 	lui	s4,0x4444
8000eb94:	1682008e 	bne	s4,v0,8000edd0 <inst_error>
8000eb98:	00000000 	nop
8000eb9c:	24020009 	li	v0,9
8000eba0:	00008021 	move	s0,zero
8000eba4:	00009021 	move	s2,zero
8000eba8:	3c087fff 	lui	t0,0x7fff
8000ebac:	3508ffff 	ori	t0,t0,0xffff
8000ebb0:	3c097fff 	lui	t1,0x7fff
8000ebb4:	3529ffff 	ori	t1,t1,0xffff
8000ebb8:	3c0a8002 	lui	t2,0x8002
8000ebbc:	354afff0 	ori	t2,t2,0xfff0
8000ebc0:	ad480000 	sw	t0,0(t2)
8000ebc4:	10000004 	b	8000ebd8 <n80_beq_ex_ds_test+0x1150>
8000ebc8:	00000000 	nop
8000ebcc:	26522222 	addiu	s2,s2,8738
8000ebd0:	10000007 	b	8000ebf0 <n80_beq_ex_ds_test+0x1168>
8000ebd4:	00000000 	nop
8000ebd8:	26101111 	addiu	s0,s0,4369
8000ebdc:	1148fffb 	beq	t2,t0,8000ebcc <n80_beq_ex_ds_test+0x1144>
8000ebe0:	0000000c 	syscall
8000ebe4:	26100002 	addiu	s0,s0,2
8000ebe8:	26100002 	addiu	s0,s0,2
8000ebec:	26100002 	addiu	s0,s0,2
8000ebf0:	02129021 	addu	s2,s0,s2
8000ebf4:	24141117 	li	s4,4375
8000ebf8:	16920075 	bne	s4,s2,8000edd0 <inst_error>
8000ebfc:	00000000 	nop
8000ec00:	3c144444 	lui	s4,0x4444
8000ec04:	16820072 	bne	s4,v0,8000edd0 <inst_error>
8000ec08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:27
8000ec0c:	24020009 	li	v0,9
8000ec10:	00008021 	move	s0,zero
8000ec14:	00009021 	move	s2,zero
8000ec18:	3c087fff 	lui	t0,0x7fff
8000ec1c:	3508ffff 	ori	t0,t0,0xffff
8000ec20:	3c097fff 	lui	t1,0x7fff
8000ec24:	3529ffff 	ori	t1,t1,0xffff
8000ec28:	3c0a8002 	lui	t2,0x8002
8000ec2c:	354afff0 	ori	t2,t2,0xfff0
8000ec30:	ad480000 	sw	t0,0(t2)
8000ec34:	10000004 	b	8000ec48 <n80_beq_ex_ds_test+0x11c0>
8000ec38:	00000000 	nop
8000ec3c:	26522222 	addiu	s2,s2,8738
8000ec40:	10000007 	b	8000ec60 <n80_beq_ex_ds_test+0x11d8>
8000ec44:	00000000 	nop
8000ec48:	26101111 	addiu	s0,s0,4369
8000ec4c:	11280004 	beq	t1,t0,8000ec60 <n80_beq_ex_ds_test+0x11d8>
8000ec50:	0000000d 	break
8000ec54:	26100002 	addiu	s0,s0,2
8000ec58:	26100002 	addiu	s0,s0,2
8000ec5c:	26100002 	addiu	s0,s0,2
8000ec60:	02129021 	addu	s2,s0,s2
8000ec64:	24141117 	li	s4,4375
8000ec68:	16920059 	bne	s4,s2,8000edd0 <inst_error>
8000ec6c:	00000000 	nop
8000ec70:	3c144444 	lui	s4,0x4444
8000ec74:	16820056 	bne	s4,v0,8000edd0 <inst_error>
8000ec78:	00000000 	nop
8000ec7c:	24020009 	li	v0,9
8000ec80:	00008021 	move	s0,zero
8000ec84:	00009021 	move	s2,zero
8000ec88:	3c087fff 	lui	t0,0x7fff
8000ec8c:	3508ffff 	ori	t0,t0,0xffff
8000ec90:	3c097fff 	lui	t1,0x7fff
8000ec94:	3529ffff 	ori	t1,t1,0xffff
8000ec98:	3c0a8002 	lui	t2,0x8002
8000ec9c:	354afff0 	ori	t2,t2,0xfff0
8000eca0:	ad480000 	sw	t0,0(t2)
8000eca4:	10000004 	b	8000ecb8 <n80_beq_ex_ds_test+0x1230>
8000eca8:	00000000 	nop
8000ecac:	26522222 	addiu	s2,s2,8738
8000ecb0:	10000007 	b	8000ecd0 <n80_beq_ex_ds_test+0x1248>
8000ecb4:	00000000 	nop
8000ecb8:	26101111 	addiu	s0,s0,4369
8000ecbc:	11480004 	beq	t2,t0,8000ecd0 <n80_beq_ex_ds_test+0x1248>
8000ecc0:	0000000d 	break
8000ecc4:	26100002 	addiu	s0,s0,2
8000ecc8:	26100002 	addiu	s0,s0,2
8000eccc:	26100002 	addiu	s0,s0,2
8000ecd0:	02129021 	addu	s2,s0,s2
8000ecd4:	24141117 	li	s4,4375
8000ecd8:	1692003d 	bne	s4,s2,8000edd0 <inst_error>
8000ecdc:	00000000 	nop
8000ece0:	3c144444 	lui	s4,0x4444
8000ece4:	1682003a 	bne	s4,v0,8000edd0 <inst_error>
8000ece8:	00000000 	nop
8000ecec:	24020009 	li	v0,9
8000ecf0:	00008021 	move	s0,zero
8000ecf4:	00009021 	move	s2,zero
8000ecf8:	3c087fff 	lui	t0,0x7fff
8000ecfc:	3508ffff 	ori	t0,t0,0xffff
8000ed00:	3c097fff 	lui	t1,0x7fff
8000ed04:	3529ffff 	ori	t1,t1,0xffff
8000ed08:	3c0a8002 	lui	t2,0x8002
8000ed0c:	354afff0 	ori	t2,t2,0xfff0
8000ed10:	ad480000 	sw	t0,0(t2)
8000ed14:	10000004 	b	8000ed28 <n80_beq_ex_ds_test+0x12a0>
8000ed18:	00000000 	nop
8000ed1c:	26522222 	addiu	s2,s2,8738
8000ed20:	10000007 	b	8000ed40 <n80_beq_ex_ds_test+0x12b8>
8000ed24:	00000000 	nop
8000ed28:	26101111 	addiu	s0,s0,4369
8000ed2c:	1128fffb 	beq	t1,t0,8000ed1c <n80_beq_ex_ds_test+0x1294>
8000ed30:	0000000d 	break
8000ed34:	26100002 	addiu	s0,s0,2
8000ed38:	26100002 	addiu	s0,s0,2
8000ed3c:	26100002 	addiu	s0,s0,2
8000ed40:	02129021 	addu	s2,s0,s2
8000ed44:	24141117 	li	s4,4375
8000ed48:	16920021 	bne	s4,s2,8000edd0 <inst_error>
8000ed4c:	00000000 	nop
8000ed50:	3c144444 	lui	s4,0x4444
8000ed54:	1682001e 	bne	s4,v0,8000edd0 <inst_error>
8000ed58:	00000000 	nop
8000ed5c:	24020009 	li	v0,9
8000ed60:	00008021 	move	s0,zero
8000ed64:	00009021 	move	s2,zero
8000ed68:	3c087fff 	lui	t0,0x7fff
8000ed6c:	3508ffff 	ori	t0,t0,0xffff
8000ed70:	3c097fff 	lui	t1,0x7fff
8000ed74:	3529ffff 	ori	t1,t1,0xffff
8000ed78:	3c0a8002 	lui	t2,0x8002
8000ed7c:	354afff0 	ori	t2,t2,0xfff0
8000ed80:	ad480000 	sw	t0,0(t2)
8000ed84:	10000004 	b	8000ed98 <n80_beq_ex_ds_test+0x1310>
8000ed88:	00000000 	nop
8000ed8c:	26522222 	addiu	s2,s2,8738
8000ed90:	10000007 	b	8000edb0 <n80_beq_ex_ds_test+0x1328>
8000ed94:	00000000 	nop
8000ed98:	26101111 	addiu	s0,s0,4369
8000ed9c:	1148fffb 	beq	t2,t0,8000ed8c <n80_beq_ex_ds_test+0x1304>
8000eda0:	0000000d 	break
8000eda4:	26100002 	addiu	s0,s0,2
8000eda8:	26100002 	addiu	s0,s0,2
8000edac:	26100002 	addiu	s0,s0,2
8000edb0:	02129021 	addu	s2,s0,s2
8000edb4:	24141117 	li	s4,4375
8000edb8:	16920005 	bne	s4,s2,8000edd0 <inst_error>
8000edbc:	00000000 	nop
8000edc0:	3c144444 	lui	s4,0x4444
8000edc4:	16820002 	bne	s4,v0,8000edd0 <inst_error>
8000edc8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:33
8000edcc:	26730001 	addiu	s3,s3,1

8000edd0 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:36
8000edd0:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:37
8000edd4:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:38
8000edd8:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n80_beq_ex_ds.S:39
8000eddc:	00000000 	nop

8000ede0 <n74_bltzal_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:14
8000ede0:	3c044a00 	lui	a0,0x4a00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:15
8000ede4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:17
8000ede8:	001f6021 	addu	t4,zero,ra
8000edec:	00008021 	move	s0,zero
8000edf0:	00009021 	move	s2,zero
8000edf4:	3c081234 	lui	t0,0x1234
8000edf8:	35085678 	ori	t0,t0,0x5678
8000edfc:	3c091234 	lui	t1,0x1234
8000ee00:	35295678 	ori	t1,t1,0x5678
8000ee04:	3c0a8765 	lui	t2,0x8765
8000ee08:	354a4321 	ori	t2,t2,0x4321
8000ee0c:	10000014 	b	8000ee60 <n74_bltzal_ds_test+0x80>
8000ee10:	00000000 	nop
8000ee14:	26101111 	addiu	s0,s0,4369
8000ee18:	05100026 	bltzal	t0,8000eeb4 <n74_bltzal_ds_test+0xd4>
8000ee1c:	26100001 	addiu	s0,s0,1
8000ee20:	26100001 	addiu	s0,s0,1
8000ee24:	26100001 	addiu	s0,s0,1
8000ee28:	26100001 	addiu	s0,s0,1
8000ee2c:	10000021 	b	8000eeb4 <n74_bltzal_ds_test+0xd4>
8000ee30:	00000000 	nop
8000ee34:	26522222 	addiu	s2,s2,8738
8000ee38:	05500021 	bltzal	t2,8000eec0 <n74_bltzal_ds_test+0xe0>
8000ee3c:	26100001 	addiu	s0,s0,1
8000ee40:	26520001 	addiu	s2,s2,1
8000ee44:	26520001 	addiu	s2,s2,1
8000ee48:	26520001 	addiu	s2,s2,1
8000ee4c:	1000001c 	b	8000eec0 <n74_bltzal_ds_test+0xe0>
8000ee50:	00000000 	nop
8000ee54:	00000021 	move	zero,zero
8000ee58:	00000021 	move	zero,zero
8000ee5c:	00000021 	move	zero,zero
8000ee60:	0510ffec 	bltzal	t0,8000ee14 <n74_bltzal_ds_test+0x34>
8000ee64:	01098021 	addu	s0,t0,t1
8000ee68:	2610ffff 	addiu	s0,s0,-1
8000ee6c:	2610ffff 	addiu	s0,s0,-1
8000ee70:	1000ffe8 	b	8000ee14 <n74_bltzal_ds_test+0x34>
8000ee74:	00000000 	nop
8000ee78:	0550ffee 	bltzal	t2,8000ee34 <n74_bltzal_ds_test+0x54>
8000ee7c:	020a8021 	addu	s0,s0,t2
8000ee80:	2610ffff 	addiu	s0,s0,-1
8000ee84:	2610ffff 	addiu	s0,s0,-1
8000ee88:	1000ffea 	b	8000ee34 <n74_bltzal_ds_test+0x54>
8000ee8c:	00000000 	nop
8000ee90:	00000021 	move	zero,zero
8000ee94:	00000021 	move	zero,zero
8000ee98:	00000021 	move	zero,zero
8000ee9c:	00000021 	move	zero,zero
8000eea0:	00000021 	move	zero,zero
8000eea4:	00000021 	move	zero,zero
8000eea8:	00000021 	move	zero,zero
8000eeac:	00000021 	move	zero,zero
8000eeb0:	00000021 	move	zero,zero
8000eeb4:	012a9021 	addu	s2,t1,t2
8000eeb8:	1000ffef 	b	8000ee78 <n74_bltzal_ds_test+0x98>
8000eebc:	00000000 	nop
8000eec0:	02129021 	addu	s2,s0,s2
8000eec4:	00000000 	nop
8000eec8:	0180f821 	move	ra,t4
8000eecc:	3c144567 	lui	s4,0x4567
8000eed0:	3694bce0 	ori	s4,s4,0xbce0
8000eed4:	16920004 	bne	s4,s2,8000eee8 <inst_error>
8000eed8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:19
8000eedc:	14400002 	bnez	v0,8000eee8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:20
8000eee0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:22
8000eee4:	26730001 	addiu	s3,s3,1

8000eee8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:25
8000eee8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:26
8000eeec:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:27
8000eef0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n74_bltzal_ds.S:28
8000eef4:	00000000 	nop

8000eef8 <n75_bgezal_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:14
8000eef8:	3c044b00 	lui	a0,0x4b00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:15
8000eefc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:17
8000ef00:	001f6021 	addu	t4,zero,ra
8000ef04:	00008021 	move	s0,zero
8000ef08:	00009021 	move	s2,zero
8000ef0c:	3c081234 	lui	t0,0x1234
8000ef10:	35085678 	ori	t0,t0,0x5678
8000ef14:	3c091234 	lui	t1,0x1234
8000ef18:	35295678 	ori	t1,t1,0x5678
8000ef1c:	3c0a8765 	lui	t2,0x8765
8000ef20:	354a4321 	ori	t2,t2,0x4321
8000ef24:	1000001e 	b	8000efa0 <n75_bgezal_ds_test+0xa8>
8000ef28:	00000000 	nop
8000ef2c:	26101111 	addiu	s0,s0,4369
8000ef30:	0511002e 	bgezal	t0,8000efec <n75_bgezal_ds_test+0xf4>
8000ef34:	26100001 	addiu	s0,s0,1
8000ef38:	26100001 	addiu	s0,s0,1
8000ef3c:	26100001 	addiu	s0,s0,1
8000ef40:	26100001 	addiu	s0,s0,1
8000ef44:	10000029 	b	8000efec <n75_bgezal_ds_test+0xf4>
8000ef48:	00000000 	nop
8000ef4c:	26522222 	addiu	s2,s2,8738
8000ef50:	05510029 	bgezal	t2,8000eff8 <n75_bgezal_ds_test+0x100>
8000ef54:	26100001 	addiu	s0,s0,1
8000ef58:	26520001 	addiu	s2,s2,1
8000ef5c:	26520001 	addiu	s2,s2,1
8000ef60:	26520001 	addiu	s2,s2,1
8000ef64:	10000024 	b	8000eff8 <n75_bgezal_ds_test+0x100>
8000ef68:	00000000 	nop
8000ef6c:	00000021 	move	zero,zero
8000ef70:	00000021 	move	zero,zero
8000ef74:	00000021 	move	zero,zero
8000ef78:	00000021 	move	zero,zero
8000ef7c:	00000021 	move	zero,zero
8000ef80:	00000021 	move	zero,zero
8000ef84:	00000021 	move	zero,zero
8000ef88:	00000021 	move	zero,zero
8000ef8c:	00000021 	move	zero,zero
8000ef90:	00000021 	move	zero,zero
8000ef94:	00000021 	move	zero,zero
8000ef98:	00000021 	move	zero,zero
8000ef9c:	00000021 	move	zero,zero
8000efa0:	0511ffe2 	bgezal	t0,8000ef2c <n75_bgezal_ds_test+0x34>
8000efa4:	01098021 	addu	s0,t0,t1
8000efa8:	2610ffff 	addiu	s0,s0,-1
8000efac:	2610ffff 	addiu	s0,s0,-1
8000efb0:	1000ffde 	b	8000ef2c <n75_bgezal_ds_test+0x34>
8000efb4:	00000000 	nop
8000efb8:	0551ffe4 	bgezal	t2,8000ef4c <n75_bgezal_ds_test+0x54>
8000efbc:	020a8021 	addu	s0,s0,t2
8000efc0:	2610ffff 	addiu	s0,s0,-1
8000efc4:	2610ffff 	addiu	s0,s0,-1
8000efc8:	1000ffe0 	b	8000ef4c <n75_bgezal_ds_test+0x54>
8000efcc:	00000000 	nop
8000efd0:	00000021 	move	zero,zero
8000efd4:	00000021 	move	zero,zero
8000efd8:	00000021 	move	zero,zero
8000efdc:	00000021 	move	zero,zero
8000efe0:	00000021 	move	zero,zero
8000efe4:	00000021 	move	zero,zero
8000efe8:	00000021 	move	zero,zero
8000efec:	012a9021 	addu	s2,t1,t2
8000eff0:	1000fff1 	b	8000efb8 <n75_bgezal_ds_test+0xc0>
8000eff4:	00000000 	nop
8000eff8:	02129021 	addu	s2,s0,s2
8000effc:	00000000 	nop
8000f000:	0180f821 	move	ra,t4
8000f004:	3c144567 	lui	s4,0x4567
8000f008:	3694bce0 	ori	s4,s4,0xbce0
8000f00c:	16920004 	bne	s4,s2,8000f020 <inst_error>
8000f010:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:19
8000f014:	14400002 	bnez	v0,8000f020 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:20
8000f018:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:22
8000f01c:	26730001 	addiu	s3,s3,1

8000f020 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:25
8000f020:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:26
8000f024:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:27
8000f028:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n75_bgezal_ds.S:28
8000f02c:	00000000 	nop

8000f030 <n70_bgez_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:14
8000f030:	3c044600 	lui	a0,0x4600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:15
8000f034:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:17
8000f038:	00008021 	move	s0,zero
8000f03c:	00009021 	move	s2,zero
8000f040:	3c081234 	lui	t0,0x1234
8000f044:	35085678 	ori	t0,t0,0x5678
8000f048:	3c091234 	lui	t1,0x1234
8000f04c:	35295678 	ori	t1,t1,0x5678
8000f050:	3c0a8765 	lui	t2,0x8765
8000f054:	354a4321 	ori	t2,t2,0x4321
8000f058:	10000017 	b	8000f0b8 <n70_bgez_ds_test+0x88>
8000f05c:	00000000 	nop
8000f060:	26101111 	addiu	s0,s0,4369
8000f064:	05010025 	bgez	t0,8000f0fc <n70_bgez_ds_test+0xcc>
8000f068:	26100001 	addiu	s0,s0,1
8000f06c:	26100001 	addiu	s0,s0,1
8000f070:	26100001 	addiu	s0,s0,1
8000f074:	26100001 	addiu	s0,s0,1
8000f078:	10000020 	b	8000f0fc <n70_bgez_ds_test+0xcc>
8000f07c:	00000000 	nop
8000f080:	26522222 	addiu	s2,s2,8738
8000f084:	05410020 	bgez	t2,8000f108 <n70_bgez_ds_test+0xd8>
8000f088:	26100001 	addiu	s0,s0,1
8000f08c:	26520001 	addiu	s2,s2,1
8000f090:	26520001 	addiu	s2,s2,1
8000f094:	26520001 	addiu	s2,s2,1
8000f098:	1000001b 	b	8000f108 <n70_bgez_ds_test+0xd8>
8000f09c:	00000000 	nop
8000f0a0:	00000021 	move	zero,zero
8000f0a4:	00000021 	move	zero,zero
8000f0a8:	00000021 	move	zero,zero
8000f0ac:	00000021 	move	zero,zero
8000f0b0:	00000021 	move	zero,zero
8000f0b4:	00000021 	move	zero,zero
8000f0b8:	0501ffe9 	bgez	t0,8000f060 <n70_bgez_ds_test+0x30>
8000f0bc:	01098021 	addu	s0,t0,t1
8000f0c0:	2610ffff 	addiu	s0,s0,-1
8000f0c4:	2610ffff 	addiu	s0,s0,-1
8000f0c8:	1000ffe5 	b	8000f060 <n70_bgez_ds_test+0x30>
8000f0cc:	00000000 	nop
8000f0d0:	0541ffeb 	bgez	t2,8000f080 <n70_bgez_ds_test+0x50>
8000f0d4:	020a8021 	addu	s0,s0,t2
8000f0d8:	2610ffff 	addiu	s0,s0,-1
8000f0dc:	2610ffff 	addiu	s0,s0,-1
8000f0e0:	1000ffe7 	b	8000f080 <n70_bgez_ds_test+0x50>
8000f0e4:	00000000 	nop
8000f0e8:	00000021 	move	zero,zero
8000f0ec:	00000021 	move	zero,zero
8000f0f0:	00000021 	move	zero,zero
8000f0f4:	00000021 	move	zero,zero
8000f0f8:	00000021 	move	zero,zero
8000f0fc:	012a9021 	addu	s2,t1,t2
8000f100:	1000fff3 	b	8000f0d0 <n70_bgez_ds_test+0xa0>
8000f104:	00000000 	nop
8000f108:	02129021 	addu	s2,s0,s2
8000f10c:	00000000 	nop
8000f110:	3c144567 	lui	s4,0x4567
8000f114:	3694bce0 	ori	s4,s4,0xbce0
8000f118:	16920004 	bne	s4,s2,8000f12c <inst_error>
8000f11c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:19
8000f120:	14400002 	bnez	v0,8000f12c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:20
8000f124:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:22
8000f128:	26730001 	addiu	s3,s3,1

8000f12c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:25
8000f12c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:26
8000f130:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:27
8000f134:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n70_bgez_ds.S:28
8000f138:	00000000 	nop

8000f13c <n76_j_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:14
8000f13c:	3c044c00 	lui	a0,0x4c00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:15
8000f140:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:17
8000f144:	00008021 	move	s0,zero
8000f148:	00009021 	move	s2,zero
8000f14c:	3c081234 	lui	t0,0x1234
8000f150:	35085678 	ori	t0,t0,0x5678
8000f154:	3c091234 	lui	t1,0x1234
8000f158:	35295678 	ori	t1,t1,0x5678
8000f15c:	3c0a8765 	lui	t2,0x8765
8000f160:	354a4321 	ori	t2,t2,0x4321
8000f164:	1000000c 	b	8000f198 <n76_j_ds_test+0x5c>
8000f168:	00000000 	nop
8000f16c:	26101111 	addiu	s0,s0,4369
8000f170:	08003c6c 	j	8000f1b0 <n76_j_ds_test+0x74>
8000f174:	26100001 	addiu	s0,s0,1
8000f178:	26100001 	addiu	s0,s0,1
8000f17c:	26100001 	addiu	s0,s0,1
8000f180:	26100001 	addiu	s0,s0,1
8000f184:	1000000a 	b	8000f1b0 <n76_j_ds_test+0x74>
8000f188:	00000000 	nop
8000f18c:	00000021 	move	zero,zero
8000f190:	00000021 	move	zero,zero
8000f194:	00000021 	move	zero,zero
8000f198:	08003c5b 	j	8000f16c <n76_j_ds_test+0x30>
8000f19c:	01098021 	addu	s0,t0,t1
8000f1a0:	2610ffff 	addiu	s0,s0,-1
8000f1a4:	2610ffff 	addiu	s0,s0,-1
8000f1a8:	1000fff0 	b	8000f16c <n76_j_ds_test+0x30>
8000f1ac:	00000000 	nop
8000f1b0:	012a9021 	addu	s2,t1,t2
8000f1b4:	02129021 	addu	s2,s0,s2
8000f1b8:	00000000 	nop
8000f1bc:	3c14be02 	lui	s4,0xbe02
8000f1c0:	3694579b 	ori	s4,s4,0x579b
8000f1c4:	16920004 	bne	s4,s2,8000f1d8 <inst_error>
8000f1c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:19
8000f1cc:	14400002 	bnez	v0,8000f1d8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:20
8000f1d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:22
8000f1d4:	26730001 	addiu	s3,s3,1

8000f1d8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:25
8000f1d8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:26
8000f1dc:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:27
8000f1e0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n76_j_ds.S:28
8000f1e4:	00000000 	nop

8000f1e8 <n83_bgtz_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:14
8000f1e8:	3c045300 	lui	a0,0x5300
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:17
8000f1ec:	24020009 	li	v0,9
8000f1f0:	00008021 	move	s0,zero
8000f1f4:	00009021 	move	s2,zero
8000f1f8:	3c087fff 	lui	t0,0x7fff
8000f1fc:	3508ffff 	ori	t0,t0,0xffff
8000f200:	3c097fff 	lui	t1,0x7fff
8000f204:	3529ffff 	ori	t1,t1,0xffff
8000f208:	3c0a8002 	lui	t2,0x8002
8000f20c:	354afff0 	ori	t2,t2,0xfff0
8000f210:	ad480000 	sw	t0,0(t2)
8000f214:	10000004 	b	8000f228 <n83_bgtz_ex_ds_test+0x40>
8000f218:	00000000 	nop
8000f21c:	26522222 	addiu	s2,s2,8738
8000f220:	10000007 	b	8000f240 <n83_bgtz_ex_ds_test+0x58>
8000f224:	00000000 	nop
8000f228:	26101111 	addiu	s0,s0,4369
8000f22c:	1d000004 	bgtz	t0,8000f240 <n83_bgtz_ex_ds_test+0x58>
8000f230:	21147fff 	addi	s4,t0,32767
8000f234:	26100002 	addiu	s0,s0,2
8000f238:	26100002 	addiu	s0,s0,2
8000f23c:	26100002 	addiu	s0,s0,2
8000f240:	02129021 	addu	s2,s0,s2
8000f244:	24141117 	li	s4,4375
8000f248:	169204b9 	bne	s4,s2,80010530 <inst_error>
8000f24c:	00000000 	nop
8000f250:	3c144444 	lui	s4,0x4444
8000f254:	168204b6 	bne	s4,v0,80010530 <inst_error>
8000f258:	00000000 	nop
8000f25c:	24020009 	li	v0,9
8000f260:	00008021 	move	s0,zero
8000f264:	00009021 	move	s2,zero
8000f268:	3c087fff 	lui	t0,0x7fff
8000f26c:	3508ffff 	ori	t0,t0,0xffff
8000f270:	3c097fff 	lui	t1,0x7fff
8000f274:	3529ffff 	ori	t1,t1,0xffff
8000f278:	3c0a8002 	lui	t2,0x8002
8000f27c:	354afff0 	ori	t2,t2,0xfff0
8000f280:	ad480000 	sw	t0,0(t2)
8000f284:	10000004 	b	8000f298 <n83_bgtz_ex_ds_test+0xb0>
8000f288:	00000000 	nop
8000f28c:	26522222 	addiu	s2,s2,8738
8000f290:	10000007 	b	8000f2b0 <n83_bgtz_ex_ds_test+0xc8>
8000f294:	00000000 	nop
8000f298:	26101111 	addiu	s0,s0,4369
8000f29c:	1d400004 	bgtz	t2,8000f2b0 <n83_bgtz_ex_ds_test+0xc8>
8000f2a0:	21147fff 	addi	s4,t0,32767
8000f2a4:	26100002 	addiu	s0,s0,2
8000f2a8:	26100002 	addiu	s0,s0,2
8000f2ac:	26100002 	addiu	s0,s0,2
8000f2b0:	02129021 	addu	s2,s0,s2
8000f2b4:	24141117 	li	s4,4375
8000f2b8:	1692049d 	bne	s4,s2,80010530 <inst_error>
8000f2bc:	00000000 	nop
8000f2c0:	3c144444 	lui	s4,0x4444
8000f2c4:	1682049a 	bne	s4,v0,80010530 <inst_error>
8000f2c8:	00000000 	nop
8000f2cc:	24020009 	li	v0,9
8000f2d0:	00008021 	move	s0,zero
8000f2d4:	00009021 	move	s2,zero
8000f2d8:	3c087fff 	lui	t0,0x7fff
8000f2dc:	3508ffff 	ori	t0,t0,0xffff
8000f2e0:	3c097fff 	lui	t1,0x7fff
8000f2e4:	3529ffff 	ori	t1,t1,0xffff
8000f2e8:	3c0a8002 	lui	t2,0x8002
8000f2ec:	354afff0 	ori	t2,t2,0xfff0
8000f2f0:	ad480000 	sw	t0,0(t2)
8000f2f4:	10000004 	b	8000f308 <n83_bgtz_ex_ds_test+0x120>
8000f2f8:	00000000 	nop
8000f2fc:	26522222 	addiu	s2,s2,8738
8000f300:	10000007 	b	8000f320 <n83_bgtz_ex_ds_test+0x138>
8000f304:	00000000 	nop
8000f308:	26101111 	addiu	s0,s0,4369
8000f30c:	1d00fffb 	bgtz	t0,8000f2fc <n83_bgtz_ex_ds_test+0x114>
8000f310:	21147fff 	addi	s4,t0,32767
8000f314:	26100002 	addiu	s0,s0,2
8000f318:	26100002 	addiu	s0,s0,2
8000f31c:	26100002 	addiu	s0,s0,2
8000f320:	02129021 	addu	s2,s0,s2
8000f324:	24141117 	li	s4,4375
8000f328:	16920481 	bne	s4,s2,80010530 <inst_error>
8000f32c:	00000000 	nop
8000f330:	3c144444 	lui	s4,0x4444
8000f334:	1682047e 	bne	s4,v0,80010530 <inst_error>
8000f338:	00000000 	nop
8000f33c:	24020009 	li	v0,9
8000f340:	00008021 	move	s0,zero
8000f344:	00009021 	move	s2,zero
8000f348:	3c087fff 	lui	t0,0x7fff
8000f34c:	3508ffff 	ori	t0,t0,0xffff
8000f350:	3c097fff 	lui	t1,0x7fff
8000f354:	3529ffff 	ori	t1,t1,0xffff
8000f358:	3c0a8002 	lui	t2,0x8002
8000f35c:	354afff0 	ori	t2,t2,0xfff0
8000f360:	ad480000 	sw	t0,0(t2)
8000f364:	10000004 	b	8000f378 <n83_bgtz_ex_ds_test+0x190>
8000f368:	00000000 	nop
8000f36c:	26522222 	addiu	s2,s2,8738
8000f370:	10000007 	b	8000f390 <n83_bgtz_ex_ds_test+0x1a8>
8000f374:	00000000 	nop
8000f378:	26101111 	addiu	s0,s0,4369
8000f37c:	1d40fffb 	bgtz	t2,8000f36c <n83_bgtz_ex_ds_test+0x184>
8000f380:	21147fff 	addi	s4,t0,32767
8000f384:	26100002 	addiu	s0,s0,2
8000f388:	26100002 	addiu	s0,s0,2
8000f38c:	26100002 	addiu	s0,s0,2
8000f390:	02129021 	addu	s2,s0,s2
8000f394:	24141117 	li	s4,4375
8000f398:	16920465 	bne	s4,s2,80010530 <inst_error>
8000f39c:	00000000 	nop
8000f3a0:	3c144444 	lui	s4,0x4444
8000f3a4:	16820462 	bne	s4,v0,80010530 <inst_error>
8000f3a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:18
8000f3ac:	24020009 	li	v0,9
8000f3b0:	00008021 	move	s0,zero
8000f3b4:	00009021 	move	s2,zero
8000f3b8:	3c087fff 	lui	t0,0x7fff
8000f3bc:	3508ffff 	ori	t0,t0,0xffff
8000f3c0:	3c097fff 	lui	t1,0x7fff
8000f3c4:	3529ffff 	ori	t1,t1,0xffff
8000f3c8:	3c0a8002 	lui	t2,0x8002
8000f3cc:	354afff0 	ori	t2,t2,0xfff0
8000f3d0:	ad480000 	sw	t0,0(t2)
8000f3d4:	10000004 	b	8000f3e8 <n83_bgtz_ex_ds_test+0x200>
8000f3d8:	00000000 	nop
8000f3dc:	26522222 	addiu	s2,s2,8738
8000f3e0:	10000007 	b	8000f400 <n83_bgtz_ex_ds_test+0x218>
8000f3e4:	00000000 	nop
8000f3e8:	26101111 	addiu	s0,s0,4369
8000f3ec:	1d000004 	bgtz	t0,8000f400 <n83_bgtz_ex_ds_test+0x218>
8000f3f0:	0109a020 	add	s4,t0,t1
8000f3f4:	26100002 	addiu	s0,s0,2
8000f3f8:	26100002 	addiu	s0,s0,2
8000f3fc:	26100002 	addiu	s0,s0,2
8000f400:	02129021 	addu	s2,s0,s2
8000f404:	24141117 	li	s4,4375
8000f408:	16920449 	bne	s4,s2,80010530 <inst_error>
8000f40c:	00000000 	nop
8000f410:	3c144444 	lui	s4,0x4444
8000f414:	16820446 	bne	s4,v0,80010530 <inst_error>
8000f418:	00000000 	nop
8000f41c:	24020009 	li	v0,9
8000f420:	00008021 	move	s0,zero
8000f424:	00009021 	move	s2,zero
8000f428:	3c087fff 	lui	t0,0x7fff
8000f42c:	3508ffff 	ori	t0,t0,0xffff
8000f430:	3c097fff 	lui	t1,0x7fff
8000f434:	3529ffff 	ori	t1,t1,0xffff
8000f438:	3c0a8002 	lui	t2,0x8002
8000f43c:	354afff0 	ori	t2,t2,0xfff0
8000f440:	ad480000 	sw	t0,0(t2)
8000f444:	10000004 	b	8000f458 <n83_bgtz_ex_ds_test+0x270>
8000f448:	00000000 	nop
8000f44c:	26522222 	addiu	s2,s2,8738
8000f450:	10000007 	b	8000f470 <n83_bgtz_ex_ds_test+0x288>
8000f454:	00000000 	nop
8000f458:	26101111 	addiu	s0,s0,4369
8000f45c:	1d400004 	bgtz	t2,8000f470 <n83_bgtz_ex_ds_test+0x288>
8000f460:	0109a020 	add	s4,t0,t1
8000f464:	26100002 	addiu	s0,s0,2
8000f468:	26100002 	addiu	s0,s0,2
8000f46c:	26100002 	addiu	s0,s0,2
8000f470:	02129021 	addu	s2,s0,s2
8000f474:	24141117 	li	s4,4375
8000f478:	1692042d 	bne	s4,s2,80010530 <inst_error>
8000f47c:	00000000 	nop
8000f480:	3c144444 	lui	s4,0x4444
8000f484:	1682042a 	bne	s4,v0,80010530 <inst_error>
8000f488:	00000000 	nop
8000f48c:	24020009 	li	v0,9
8000f490:	00008021 	move	s0,zero
8000f494:	00009021 	move	s2,zero
8000f498:	3c087fff 	lui	t0,0x7fff
8000f49c:	3508ffff 	ori	t0,t0,0xffff
8000f4a0:	3c097fff 	lui	t1,0x7fff
8000f4a4:	3529ffff 	ori	t1,t1,0xffff
8000f4a8:	3c0a8002 	lui	t2,0x8002
8000f4ac:	354afff0 	ori	t2,t2,0xfff0
8000f4b0:	ad480000 	sw	t0,0(t2)
8000f4b4:	10000004 	b	8000f4c8 <n83_bgtz_ex_ds_test+0x2e0>
8000f4b8:	00000000 	nop
8000f4bc:	26522222 	addiu	s2,s2,8738
8000f4c0:	10000007 	b	8000f4e0 <n83_bgtz_ex_ds_test+0x2f8>
8000f4c4:	00000000 	nop
8000f4c8:	26101111 	addiu	s0,s0,4369
8000f4cc:	1d00fffb 	bgtz	t0,8000f4bc <n83_bgtz_ex_ds_test+0x2d4>
8000f4d0:	0109a020 	add	s4,t0,t1
8000f4d4:	26100002 	addiu	s0,s0,2
8000f4d8:	26100002 	addiu	s0,s0,2
8000f4dc:	26100002 	addiu	s0,s0,2
8000f4e0:	02129021 	addu	s2,s0,s2
8000f4e4:	24141117 	li	s4,4375
8000f4e8:	16920411 	bne	s4,s2,80010530 <inst_error>
8000f4ec:	00000000 	nop
8000f4f0:	3c144444 	lui	s4,0x4444
8000f4f4:	1682040e 	bne	s4,v0,80010530 <inst_error>
8000f4f8:	00000000 	nop
8000f4fc:	24020009 	li	v0,9
8000f500:	00008021 	move	s0,zero
8000f504:	00009021 	move	s2,zero
8000f508:	3c087fff 	lui	t0,0x7fff
8000f50c:	3508ffff 	ori	t0,t0,0xffff
8000f510:	3c097fff 	lui	t1,0x7fff
8000f514:	3529ffff 	ori	t1,t1,0xffff
8000f518:	3c0a8002 	lui	t2,0x8002
8000f51c:	354afff0 	ori	t2,t2,0xfff0
8000f520:	ad480000 	sw	t0,0(t2)
8000f524:	10000004 	b	8000f538 <n83_bgtz_ex_ds_test+0x350>
8000f528:	00000000 	nop
8000f52c:	26522222 	addiu	s2,s2,8738
8000f530:	10000007 	b	8000f550 <n83_bgtz_ex_ds_test+0x368>
8000f534:	00000000 	nop
8000f538:	26101111 	addiu	s0,s0,4369
8000f53c:	1d40fffb 	bgtz	t2,8000f52c <n83_bgtz_ex_ds_test+0x344>
8000f540:	0109a020 	add	s4,t0,t1
8000f544:	26100002 	addiu	s0,s0,2
8000f548:	26100002 	addiu	s0,s0,2
8000f54c:	26100002 	addiu	s0,s0,2
8000f550:	02129021 	addu	s2,s0,s2
8000f554:	24141117 	li	s4,4375
8000f558:	169203f5 	bne	s4,s2,80010530 <inst_error>
8000f55c:	00000000 	nop
8000f560:	3c144444 	lui	s4,0x4444
8000f564:	168203f2 	bne	s4,v0,80010530 <inst_error>
8000f568:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:19
8000f56c:	24020009 	li	v0,9
8000f570:	00008021 	move	s0,zero
8000f574:	00009021 	move	s2,zero
8000f578:	3c087fff 	lui	t0,0x7fff
8000f57c:	3508ffff 	ori	t0,t0,0xffff
8000f580:	3c097fff 	lui	t1,0x7fff
8000f584:	3529ffff 	ori	t1,t1,0xffff
8000f588:	3c0a8002 	lui	t2,0x8002
8000f58c:	354afff0 	ori	t2,t2,0xfff0
8000f590:	ad480000 	sw	t0,0(t2)
8000f594:	10000004 	b	8000f5a8 <n83_bgtz_ex_ds_test+0x3c0>
8000f598:	00000000 	nop
8000f59c:	26522222 	addiu	s2,s2,8738
8000f5a0:	10000007 	b	8000f5c0 <n83_bgtz_ex_ds_test+0x3d8>
8000f5a4:	00000000 	nop
8000f5a8:	26101111 	addiu	s0,s0,4369
8000f5ac:	1d000004 	bgtz	t0,8000f5c0 <n83_bgtz_ex_ds_test+0x3d8>
8000f5b0:	010aa022 	sub	s4,t0,t2
8000f5b4:	26100002 	addiu	s0,s0,2
8000f5b8:	26100002 	addiu	s0,s0,2
8000f5bc:	26100002 	addiu	s0,s0,2
8000f5c0:	02129021 	addu	s2,s0,s2
8000f5c4:	24141117 	li	s4,4375
8000f5c8:	169203d9 	bne	s4,s2,80010530 <inst_error>
8000f5cc:	00000000 	nop
8000f5d0:	3c144444 	lui	s4,0x4444
8000f5d4:	168203d6 	bne	s4,v0,80010530 <inst_error>
8000f5d8:	00000000 	nop
8000f5dc:	24020009 	li	v0,9
8000f5e0:	00008021 	move	s0,zero
8000f5e4:	00009021 	move	s2,zero
8000f5e8:	3c087fff 	lui	t0,0x7fff
8000f5ec:	3508ffff 	ori	t0,t0,0xffff
8000f5f0:	3c097fff 	lui	t1,0x7fff
8000f5f4:	3529ffff 	ori	t1,t1,0xffff
8000f5f8:	3c0a8002 	lui	t2,0x8002
8000f5fc:	354afff0 	ori	t2,t2,0xfff0
8000f600:	ad480000 	sw	t0,0(t2)
8000f604:	10000004 	b	8000f618 <n83_bgtz_ex_ds_test+0x430>
8000f608:	00000000 	nop
8000f60c:	26522222 	addiu	s2,s2,8738
8000f610:	10000007 	b	8000f630 <n83_bgtz_ex_ds_test+0x448>
8000f614:	00000000 	nop
8000f618:	26101111 	addiu	s0,s0,4369
8000f61c:	1d400004 	bgtz	t2,8000f630 <n83_bgtz_ex_ds_test+0x448>
8000f620:	010aa022 	sub	s4,t0,t2
8000f624:	26100002 	addiu	s0,s0,2
8000f628:	26100002 	addiu	s0,s0,2
8000f62c:	26100002 	addiu	s0,s0,2
8000f630:	02129021 	addu	s2,s0,s2
8000f634:	24141117 	li	s4,4375
8000f638:	169203bd 	bne	s4,s2,80010530 <inst_error>
8000f63c:	00000000 	nop
8000f640:	3c144444 	lui	s4,0x4444
8000f644:	168203ba 	bne	s4,v0,80010530 <inst_error>
8000f648:	00000000 	nop
8000f64c:	24020009 	li	v0,9
8000f650:	00008021 	move	s0,zero
8000f654:	00009021 	move	s2,zero
8000f658:	3c087fff 	lui	t0,0x7fff
8000f65c:	3508ffff 	ori	t0,t0,0xffff
8000f660:	3c097fff 	lui	t1,0x7fff
8000f664:	3529ffff 	ori	t1,t1,0xffff
8000f668:	3c0a8002 	lui	t2,0x8002
8000f66c:	354afff0 	ori	t2,t2,0xfff0
8000f670:	ad480000 	sw	t0,0(t2)
8000f674:	10000004 	b	8000f688 <n83_bgtz_ex_ds_test+0x4a0>
8000f678:	00000000 	nop
8000f67c:	26522222 	addiu	s2,s2,8738
8000f680:	10000007 	b	8000f6a0 <n83_bgtz_ex_ds_test+0x4b8>
8000f684:	00000000 	nop
8000f688:	26101111 	addiu	s0,s0,4369
8000f68c:	1d00fffb 	bgtz	t0,8000f67c <n83_bgtz_ex_ds_test+0x494>
8000f690:	010aa022 	sub	s4,t0,t2
8000f694:	26100002 	addiu	s0,s0,2
8000f698:	26100002 	addiu	s0,s0,2
8000f69c:	26100002 	addiu	s0,s0,2
8000f6a0:	02129021 	addu	s2,s0,s2
8000f6a4:	24141117 	li	s4,4375
8000f6a8:	169203a1 	bne	s4,s2,80010530 <inst_error>
8000f6ac:	00000000 	nop
8000f6b0:	3c144444 	lui	s4,0x4444
8000f6b4:	1682039e 	bne	s4,v0,80010530 <inst_error>
8000f6b8:	00000000 	nop
8000f6bc:	24020009 	li	v0,9
8000f6c0:	00008021 	move	s0,zero
8000f6c4:	00009021 	move	s2,zero
8000f6c8:	3c087fff 	lui	t0,0x7fff
8000f6cc:	3508ffff 	ori	t0,t0,0xffff
8000f6d0:	3c097fff 	lui	t1,0x7fff
8000f6d4:	3529ffff 	ori	t1,t1,0xffff
8000f6d8:	3c0a8002 	lui	t2,0x8002
8000f6dc:	354afff0 	ori	t2,t2,0xfff0
8000f6e0:	ad480000 	sw	t0,0(t2)
8000f6e4:	10000004 	b	8000f6f8 <n83_bgtz_ex_ds_test+0x510>
8000f6e8:	00000000 	nop
8000f6ec:	26522222 	addiu	s2,s2,8738
8000f6f0:	10000007 	b	8000f710 <n83_bgtz_ex_ds_test+0x528>
8000f6f4:	00000000 	nop
8000f6f8:	26101111 	addiu	s0,s0,4369
8000f6fc:	1d40fffb 	bgtz	t2,8000f6ec <n83_bgtz_ex_ds_test+0x504>
8000f700:	010aa022 	sub	s4,t0,t2
8000f704:	26100002 	addiu	s0,s0,2
8000f708:	26100002 	addiu	s0,s0,2
8000f70c:	26100002 	addiu	s0,s0,2
8000f710:	02129021 	addu	s2,s0,s2
8000f714:	24141117 	li	s4,4375
8000f718:	16920385 	bne	s4,s2,80010530 <inst_error>
8000f71c:	00000000 	nop
8000f720:	3c144444 	lui	s4,0x4444
8000f724:	16820382 	bne	s4,v0,80010530 <inst_error>
8000f728:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:20
8000f72c:	24020009 	li	v0,9
8000f730:	00008021 	move	s0,zero
8000f734:	00009021 	move	s2,zero
8000f738:	3c087fff 	lui	t0,0x7fff
8000f73c:	3508ffff 	ori	t0,t0,0xffff
8000f740:	3c097fff 	lui	t1,0x7fff
8000f744:	3529ffff 	ori	t1,t1,0xffff
8000f748:	3c0a8002 	lui	t2,0x8002
8000f74c:	354afff0 	ori	t2,t2,0xfff0
8000f750:	ad480000 	sw	t0,0(t2)
8000f754:	10000004 	b	8000f768 <n83_bgtz_ex_ds_test+0x580>
8000f758:	00000000 	nop
8000f75c:	26522222 	addiu	s2,s2,8738
8000f760:	10000007 	b	8000f780 <n83_bgtz_ex_ds_test+0x598>
8000f764:	00000000 	nop
8000f768:	26101111 	addiu	s0,s0,4369
8000f76c:	1d000004 	bgtz	t0,8000f780 <n83_bgtz_ex_ds_test+0x598>
8000f770:	85540003 	lh	s4,3(t2)
8000f774:	26100002 	addiu	s0,s0,2
8000f778:	26100002 	addiu	s0,s0,2
8000f77c:	26100002 	addiu	s0,s0,2
8000f780:	02129021 	addu	s2,s0,s2
8000f784:	24141117 	li	s4,4375
8000f788:	16920369 	bne	s4,s2,80010530 <inst_error>
8000f78c:	00000000 	nop
8000f790:	3c144444 	lui	s4,0x4444
8000f794:	16820366 	bne	s4,v0,80010530 <inst_error>
8000f798:	00000000 	nop
8000f79c:	24020009 	li	v0,9
8000f7a0:	00008021 	move	s0,zero
8000f7a4:	00009021 	move	s2,zero
8000f7a8:	3c087fff 	lui	t0,0x7fff
8000f7ac:	3508ffff 	ori	t0,t0,0xffff
8000f7b0:	3c097fff 	lui	t1,0x7fff
8000f7b4:	3529ffff 	ori	t1,t1,0xffff
8000f7b8:	3c0a8002 	lui	t2,0x8002
8000f7bc:	354afff0 	ori	t2,t2,0xfff0
8000f7c0:	ad480000 	sw	t0,0(t2)
8000f7c4:	10000004 	b	8000f7d8 <n83_bgtz_ex_ds_test+0x5f0>
8000f7c8:	00000000 	nop
8000f7cc:	26522222 	addiu	s2,s2,8738
8000f7d0:	10000007 	b	8000f7f0 <n83_bgtz_ex_ds_test+0x608>
8000f7d4:	00000000 	nop
8000f7d8:	26101111 	addiu	s0,s0,4369
8000f7dc:	1d400004 	bgtz	t2,8000f7f0 <n83_bgtz_ex_ds_test+0x608>
8000f7e0:	85540003 	lh	s4,3(t2)
8000f7e4:	26100002 	addiu	s0,s0,2
8000f7e8:	26100002 	addiu	s0,s0,2
8000f7ec:	26100002 	addiu	s0,s0,2
8000f7f0:	02129021 	addu	s2,s0,s2
8000f7f4:	24141117 	li	s4,4375
8000f7f8:	1692034d 	bne	s4,s2,80010530 <inst_error>
8000f7fc:	00000000 	nop
8000f800:	3c144444 	lui	s4,0x4444
8000f804:	1682034a 	bne	s4,v0,80010530 <inst_error>
8000f808:	00000000 	nop
8000f80c:	24020009 	li	v0,9
8000f810:	00008021 	move	s0,zero
8000f814:	00009021 	move	s2,zero
8000f818:	3c087fff 	lui	t0,0x7fff
8000f81c:	3508ffff 	ori	t0,t0,0xffff
8000f820:	3c097fff 	lui	t1,0x7fff
8000f824:	3529ffff 	ori	t1,t1,0xffff
8000f828:	3c0a8002 	lui	t2,0x8002
8000f82c:	354afff0 	ori	t2,t2,0xfff0
8000f830:	ad480000 	sw	t0,0(t2)
8000f834:	10000004 	b	8000f848 <n83_bgtz_ex_ds_test+0x660>
8000f838:	00000000 	nop
8000f83c:	26522222 	addiu	s2,s2,8738
8000f840:	10000007 	b	8000f860 <n83_bgtz_ex_ds_test+0x678>
8000f844:	00000000 	nop
8000f848:	26101111 	addiu	s0,s0,4369
8000f84c:	1d00fffb 	bgtz	t0,8000f83c <n83_bgtz_ex_ds_test+0x654>
8000f850:	85540003 	lh	s4,3(t2)
8000f854:	26100002 	addiu	s0,s0,2
8000f858:	26100002 	addiu	s0,s0,2
8000f85c:	26100002 	addiu	s0,s0,2
8000f860:	02129021 	addu	s2,s0,s2
8000f864:	24141117 	li	s4,4375
8000f868:	16920331 	bne	s4,s2,80010530 <inst_error>
8000f86c:	00000000 	nop
8000f870:	3c144444 	lui	s4,0x4444
8000f874:	1682032e 	bne	s4,v0,80010530 <inst_error>
8000f878:	00000000 	nop
8000f87c:	24020009 	li	v0,9
8000f880:	00008021 	move	s0,zero
8000f884:	00009021 	move	s2,zero
8000f888:	3c087fff 	lui	t0,0x7fff
8000f88c:	3508ffff 	ori	t0,t0,0xffff
8000f890:	3c097fff 	lui	t1,0x7fff
8000f894:	3529ffff 	ori	t1,t1,0xffff
8000f898:	3c0a8002 	lui	t2,0x8002
8000f89c:	354afff0 	ori	t2,t2,0xfff0
8000f8a0:	ad480000 	sw	t0,0(t2)
8000f8a4:	10000004 	b	8000f8b8 <n83_bgtz_ex_ds_test+0x6d0>
8000f8a8:	00000000 	nop
8000f8ac:	26522222 	addiu	s2,s2,8738
8000f8b0:	10000007 	b	8000f8d0 <n83_bgtz_ex_ds_test+0x6e8>
8000f8b4:	00000000 	nop
8000f8b8:	26101111 	addiu	s0,s0,4369
8000f8bc:	1d40fffb 	bgtz	t2,8000f8ac <n83_bgtz_ex_ds_test+0x6c4>
8000f8c0:	85540003 	lh	s4,3(t2)
8000f8c4:	26100002 	addiu	s0,s0,2
8000f8c8:	26100002 	addiu	s0,s0,2
8000f8cc:	26100002 	addiu	s0,s0,2
8000f8d0:	02129021 	addu	s2,s0,s2
8000f8d4:	24141117 	li	s4,4375
8000f8d8:	16920315 	bne	s4,s2,80010530 <inst_error>
8000f8dc:	00000000 	nop
8000f8e0:	3c144444 	lui	s4,0x4444
8000f8e4:	16820312 	bne	s4,v0,80010530 <inst_error>
8000f8e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:21
8000f8ec:	24020009 	li	v0,9
8000f8f0:	00008021 	move	s0,zero
8000f8f4:	00009021 	move	s2,zero
8000f8f8:	3c087fff 	lui	t0,0x7fff
8000f8fc:	3508ffff 	ori	t0,t0,0xffff
8000f900:	3c097fff 	lui	t1,0x7fff
8000f904:	3529ffff 	ori	t1,t1,0xffff
8000f908:	3c0a8002 	lui	t2,0x8002
8000f90c:	354afff0 	ori	t2,t2,0xfff0
8000f910:	ad480000 	sw	t0,0(t2)
8000f914:	10000004 	b	8000f928 <n83_bgtz_ex_ds_test+0x740>
8000f918:	00000000 	nop
8000f91c:	26522222 	addiu	s2,s2,8738
8000f920:	10000007 	b	8000f940 <n83_bgtz_ex_ds_test+0x758>
8000f924:	00000000 	nop
8000f928:	26101111 	addiu	s0,s0,4369
8000f92c:	1d000004 	bgtz	t0,8000f940 <n83_bgtz_ex_ds_test+0x758>
8000f930:	95540003 	lhu	s4,3(t2)
8000f934:	26100002 	addiu	s0,s0,2
8000f938:	26100002 	addiu	s0,s0,2
8000f93c:	26100002 	addiu	s0,s0,2
8000f940:	02129021 	addu	s2,s0,s2
8000f944:	24141117 	li	s4,4375
8000f948:	169202f9 	bne	s4,s2,80010530 <inst_error>
8000f94c:	00000000 	nop
8000f950:	3c144444 	lui	s4,0x4444
8000f954:	168202f6 	bne	s4,v0,80010530 <inst_error>
8000f958:	00000000 	nop
8000f95c:	24020009 	li	v0,9
8000f960:	00008021 	move	s0,zero
8000f964:	00009021 	move	s2,zero
8000f968:	3c087fff 	lui	t0,0x7fff
8000f96c:	3508ffff 	ori	t0,t0,0xffff
8000f970:	3c097fff 	lui	t1,0x7fff
8000f974:	3529ffff 	ori	t1,t1,0xffff
8000f978:	3c0a8002 	lui	t2,0x8002
8000f97c:	354afff0 	ori	t2,t2,0xfff0
8000f980:	ad480000 	sw	t0,0(t2)
8000f984:	10000004 	b	8000f998 <n83_bgtz_ex_ds_test+0x7b0>
8000f988:	00000000 	nop
8000f98c:	26522222 	addiu	s2,s2,8738
8000f990:	10000007 	b	8000f9b0 <n83_bgtz_ex_ds_test+0x7c8>
8000f994:	00000000 	nop
8000f998:	26101111 	addiu	s0,s0,4369
8000f99c:	1d400004 	bgtz	t2,8000f9b0 <n83_bgtz_ex_ds_test+0x7c8>
8000f9a0:	95540003 	lhu	s4,3(t2)
8000f9a4:	26100002 	addiu	s0,s0,2
8000f9a8:	26100002 	addiu	s0,s0,2
8000f9ac:	26100002 	addiu	s0,s0,2
8000f9b0:	02129021 	addu	s2,s0,s2
8000f9b4:	24141117 	li	s4,4375
8000f9b8:	169202dd 	bne	s4,s2,80010530 <inst_error>
8000f9bc:	00000000 	nop
8000f9c0:	3c144444 	lui	s4,0x4444
8000f9c4:	168202da 	bne	s4,v0,80010530 <inst_error>
8000f9c8:	00000000 	nop
8000f9cc:	24020009 	li	v0,9
8000f9d0:	00008021 	move	s0,zero
8000f9d4:	00009021 	move	s2,zero
8000f9d8:	3c087fff 	lui	t0,0x7fff
8000f9dc:	3508ffff 	ori	t0,t0,0xffff
8000f9e0:	3c097fff 	lui	t1,0x7fff
8000f9e4:	3529ffff 	ori	t1,t1,0xffff
8000f9e8:	3c0a8002 	lui	t2,0x8002
8000f9ec:	354afff0 	ori	t2,t2,0xfff0
8000f9f0:	ad480000 	sw	t0,0(t2)
8000f9f4:	10000004 	b	8000fa08 <n83_bgtz_ex_ds_test+0x820>
8000f9f8:	00000000 	nop
8000f9fc:	26522222 	addiu	s2,s2,8738
8000fa00:	10000007 	b	8000fa20 <n83_bgtz_ex_ds_test+0x838>
8000fa04:	00000000 	nop
8000fa08:	26101111 	addiu	s0,s0,4369
8000fa0c:	1d00fffb 	bgtz	t0,8000f9fc <n83_bgtz_ex_ds_test+0x814>
8000fa10:	95540003 	lhu	s4,3(t2)
8000fa14:	26100002 	addiu	s0,s0,2
8000fa18:	26100002 	addiu	s0,s0,2
8000fa1c:	26100002 	addiu	s0,s0,2
8000fa20:	02129021 	addu	s2,s0,s2
8000fa24:	24141117 	li	s4,4375
8000fa28:	169202c1 	bne	s4,s2,80010530 <inst_error>
8000fa2c:	00000000 	nop
8000fa30:	3c144444 	lui	s4,0x4444
8000fa34:	168202be 	bne	s4,v0,80010530 <inst_error>
8000fa38:	00000000 	nop
8000fa3c:	24020009 	li	v0,9
8000fa40:	00008021 	move	s0,zero
8000fa44:	00009021 	move	s2,zero
8000fa48:	3c087fff 	lui	t0,0x7fff
8000fa4c:	3508ffff 	ori	t0,t0,0xffff
8000fa50:	3c097fff 	lui	t1,0x7fff
8000fa54:	3529ffff 	ori	t1,t1,0xffff
8000fa58:	3c0a8002 	lui	t2,0x8002
8000fa5c:	354afff0 	ori	t2,t2,0xfff0
8000fa60:	ad480000 	sw	t0,0(t2)
8000fa64:	10000004 	b	8000fa78 <n83_bgtz_ex_ds_test+0x890>
8000fa68:	00000000 	nop
8000fa6c:	26522222 	addiu	s2,s2,8738
8000fa70:	10000007 	b	8000fa90 <n83_bgtz_ex_ds_test+0x8a8>
8000fa74:	00000000 	nop
8000fa78:	26101111 	addiu	s0,s0,4369
8000fa7c:	1d40fffb 	bgtz	t2,8000fa6c <n83_bgtz_ex_ds_test+0x884>
8000fa80:	95540003 	lhu	s4,3(t2)
8000fa84:	26100002 	addiu	s0,s0,2
8000fa88:	26100002 	addiu	s0,s0,2
8000fa8c:	26100002 	addiu	s0,s0,2
8000fa90:	02129021 	addu	s2,s0,s2
8000fa94:	24141117 	li	s4,4375
8000fa98:	169202a5 	bne	s4,s2,80010530 <inst_error>
8000fa9c:	00000000 	nop
8000faa0:	3c144444 	lui	s4,0x4444
8000faa4:	168202a2 	bne	s4,v0,80010530 <inst_error>
8000faa8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:22
8000faac:	24020009 	li	v0,9
8000fab0:	00008021 	move	s0,zero
8000fab4:	00009021 	move	s2,zero
8000fab8:	3c087fff 	lui	t0,0x7fff
8000fabc:	3508ffff 	ori	t0,t0,0xffff
8000fac0:	3c097fff 	lui	t1,0x7fff
8000fac4:	3529ffff 	ori	t1,t1,0xffff
8000fac8:	3c0a8002 	lui	t2,0x8002
8000facc:	354afff0 	ori	t2,t2,0xfff0
8000fad0:	ad480000 	sw	t0,0(t2)
8000fad4:	10000004 	b	8000fae8 <n83_bgtz_ex_ds_test+0x900>
8000fad8:	00000000 	nop
8000fadc:	26522222 	addiu	s2,s2,8738
8000fae0:	10000007 	b	8000fb00 <n83_bgtz_ex_ds_test+0x918>
8000fae4:	00000000 	nop
8000fae8:	26101111 	addiu	s0,s0,4369
8000faec:	1d000004 	bgtz	t0,8000fb00 <n83_bgtz_ex_ds_test+0x918>
8000faf0:	8d540003 	lw	s4,3(t2)
8000faf4:	26100002 	addiu	s0,s0,2
8000faf8:	26100002 	addiu	s0,s0,2
8000fafc:	26100002 	addiu	s0,s0,2
8000fb00:	02129021 	addu	s2,s0,s2
8000fb04:	24141117 	li	s4,4375
8000fb08:	16920289 	bne	s4,s2,80010530 <inst_error>
8000fb0c:	00000000 	nop
8000fb10:	3c144444 	lui	s4,0x4444
8000fb14:	16820286 	bne	s4,v0,80010530 <inst_error>
8000fb18:	00000000 	nop
8000fb1c:	24020009 	li	v0,9
8000fb20:	00008021 	move	s0,zero
8000fb24:	00009021 	move	s2,zero
8000fb28:	3c087fff 	lui	t0,0x7fff
8000fb2c:	3508ffff 	ori	t0,t0,0xffff
8000fb30:	3c097fff 	lui	t1,0x7fff
8000fb34:	3529ffff 	ori	t1,t1,0xffff
8000fb38:	3c0a8002 	lui	t2,0x8002
8000fb3c:	354afff0 	ori	t2,t2,0xfff0
8000fb40:	ad480000 	sw	t0,0(t2)
8000fb44:	10000004 	b	8000fb58 <n83_bgtz_ex_ds_test+0x970>
8000fb48:	00000000 	nop
8000fb4c:	26522222 	addiu	s2,s2,8738
8000fb50:	10000007 	b	8000fb70 <n83_bgtz_ex_ds_test+0x988>
8000fb54:	00000000 	nop
8000fb58:	26101111 	addiu	s0,s0,4369
8000fb5c:	1d400004 	bgtz	t2,8000fb70 <n83_bgtz_ex_ds_test+0x988>
8000fb60:	8d540003 	lw	s4,3(t2)
8000fb64:	26100002 	addiu	s0,s0,2
8000fb68:	26100002 	addiu	s0,s0,2
8000fb6c:	26100002 	addiu	s0,s0,2
8000fb70:	02129021 	addu	s2,s0,s2
8000fb74:	24141117 	li	s4,4375
8000fb78:	1692026d 	bne	s4,s2,80010530 <inst_error>
8000fb7c:	00000000 	nop
8000fb80:	3c144444 	lui	s4,0x4444
8000fb84:	1682026a 	bne	s4,v0,80010530 <inst_error>
8000fb88:	00000000 	nop
8000fb8c:	24020009 	li	v0,9
8000fb90:	00008021 	move	s0,zero
8000fb94:	00009021 	move	s2,zero
8000fb98:	3c087fff 	lui	t0,0x7fff
8000fb9c:	3508ffff 	ori	t0,t0,0xffff
8000fba0:	3c097fff 	lui	t1,0x7fff
8000fba4:	3529ffff 	ori	t1,t1,0xffff
8000fba8:	3c0a8002 	lui	t2,0x8002
8000fbac:	354afff0 	ori	t2,t2,0xfff0
8000fbb0:	ad480000 	sw	t0,0(t2)
8000fbb4:	10000004 	b	8000fbc8 <n83_bgtz_ex_ds_test+0x9e0>
8000fbb8:	00000000 	nop
8000fbbc:	26522222 	addiu	s2,s2,8738
8000fbc0:	10000007 	b	8000fbe0 <n83_bgtz_ex_ds_test+0x9f8>
8000fbc4:	00000000 	nop
8000fbc8:	26101111 	addiu	s0,s0,4369
8000fbcc:	1d00fffb 	bgtz	t0,8000fbbc <n83_bgtz_ex_ds_test+0x9d4>
8000fbd0:	8d540003 	lw	s4,3(t2)
8000fbd4:	26100002 	addiu	s0,s0,2
8000fbd8:	26100002 	addiu	s0,s0,2
8000fbdc:	26100002 	addiu	s0,s0,2
8000fbe0:	02129021 	addu	s2,s0,s2
8000fbe4:	24141117 	li	s4,4375
8000fbe8:	16920251 	bne	s4,s2,80010530 <inst_error>
8000fbec:	00000000 	nop
8000fbf0:	3c144444 	lui	s4,0x4444
8000fbf4:	1682024e 	bne	s4,v0,80010530 <inst_error>
8000fbf8:	00000000 	nop
8000fbfc:	24020009 	li	v0,9
8000fc00:	00008021 	move	s0,zero
8000fc04:	00009021 	move	s2,zero
8000fc08:	3c087fff 	lui	t0,0x7fff
8000fc0c:	3508ffff 	ori	t0,t0,0xffff
8000fc10:	3c097fff 	lui	t1,0x7fff
8000fc14:	3529ffff 	ori	t1,t1,0xffff
8000fc18:	3c0a8002 	lui	t2,0x8002
8000fc1c:	354afff0 	ori	t2,t2,0xfff0
8000fc20:	ad480000 	sw	t0,0(t2)
8000fc24:	10000004 	b	8000fc38 <n83_bgtz_ex_ds_test+0xa50>
8000fc28:	00000000 	nop
8000fc2c:	26522222 	addiu	s2,s2,8738
8000fc30:	10000007 	b	8000fc50 <n83_bgtz_ex_ds_test+0xa68>
8000fc34:	00000000 	nop
8000fc38:	26101111 	addiu	s0,s0,4369
8000fc3c:	1d40fffb 	bgtz	t2,8000fc2c <n83_bgtz_ex_ds_test+0xa44>
8000fc40:	8d540003 	lw	s4,3(t2)
8000fc44:	26100002 	addiu	s0,s0,2
8000fc48:	26100002 	addiu	s0,s0,2
8000fc4c:	26100002 	addiu	s0,s0,2
8000fc50:	02129021 	addu	s2,s0,s2
8000fc54:	24141117 	li	s4,4375
8000fc58:	16920235 	bne	s4,s2,80010530 <inst_error>
8000fc5c:	00000000 	nop
8000fc60:	3c144444 	lui	s4,0x4444
8000fc64:	16820232 	bne	s4,v0,80010530 <inst_error>
8000fc68:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:23
8000fc6c:	24020009 	li	v0,9
8000fc70:	00008021 	move	s0,zero
8000fc74:	00009021 	move	s2,zero
8000fc78:	3c087fff 	lui	t0,0x7fff
8000fc7c:	3508ffff 	ori	t0,t0,0xffff
8000fc80:	3c097fff 	lui	t1,0x7fff
8000fc84:	3529ffff 	ori	t1,t1,0xffff
8000fc88:	3c0a8002 	lui	t2,0x8002
8000fc8c:	354afff0 	ori	t2,t2,0xfff0
8000fc90:	ad480000 	sw	t0,0(t2)
8000fc94:	10000004 	b	8000fca8 <n83_bgtz_ex_ds_test+0xac0>
8000fc98:	00000000 	nop
8000fc9c:	26522222 	addiu	s2,s2,8738
8000fca0:	10000007 	b	8000fcc0 <n83_bgtz_ex_ds_test+0xad8>
8000fca4:	00000000 	nop
8000fca8:	26101111 	addiu	s0,s0,4369
8000fcac:	1d000004 	bgtz	t0,8000fcc0 <n83_bgtz_ex_ds_test+0xad8>
8000fcb0:	a5540003 	sh	s4,3(t2)
8000fcb4:	26100002 	addiu	s0,s0,2
8000fcb8:	26100002 	addiu	s0,s0,2
8000fcbc:	26100002 	addiu	s0,s0,2
8000fcc0:	02129021 	addu	s2,s0,s2
8000fcc4:	24141117 	li	s4,4375
8000fcc8:	16920219 	bne	s4,s2,80010530 <inst_error>
8000fccc:	00000000 	nop
8000fcd0:	3c144444 	lui	s4,0x4444
8000fcd4:	16820216 	bne	s4,v0,80010530 <inst_error>
8000fcd8:	00000000 	nop
8000fcdc:	24020009 	li	v0,9
8000fce0:	00008021 	move	s0,zero
8000fce4:	00009021 	move	s2,zero
8000fce8:	3c087fff 	lui	t0,0x7fff
8000fcec:	3508ffff 	ori	t0,t0,0xffff
8000fcf0:	3c097fff 	lui	t1,0x7fff
8000fcf4:	3529ffff 	ori	t1,t1,0xffff
8000fcf8:	3c0a8002 	lui	t2,0x8002
8000fcfc:	354afff0 	ori	t2,t2,0xfff0
8000fd00:	ad480000 	sw	t0,0(t2)
8000fd04:	10000004 	b	8000fd18 <n83_bgtz_ex_ds_test+0xb30>
8000fd08:	00000000 	nop
8000fd0c:	26522222 	addiu	s2,s2,8738
8000fd10:	10000007 	b	8000fd30 <n83_bgtz_ex_ds_test+0xb48>
8000fd14:	00000000 	nop
8000fd18:	26101111 	addiu	s0,s0,4369
8000fd1c:	1d400004 	bgtz	t2,8000fd30 <n83_bgtz_ex_ds_test+0xb48>
8000fd20:	a5540003 	sh	s4,3(t2)
8000fd24:	26100002 	addiu	s0,s0,2
8000fd28:	26100002 	addiu	s0,s0,2
8000fd2c:	26100002 	addiu	s0,s0,2
8000fd30:	02129021 	addu	s2,s0,s2
8000fd34:	24141117 	li	s4,4375
8000fd38:	169201fd 	bne	s4,s2,80010530 <inst_error>
8000fd3c:	00000000 	nop
8000fd40:	3c144444 	lui	s4,0x4444
8000fd44:	168201fa 	bne	s4,v0,80010530 <inst_error>
8000fd48:	00000000 	nop
8000fd4c:	24020009 	li	v0,9
8000fd50:	00008021 	move	s0,zero
8000fd54:	00009021 	move	s2,zero
8000fd58:	3c087fff 	lui	t0,0x7fff
8000fd5c:	3508ffff 	ori	t0,t0,0xffff
8000fd60:	3c097fff 	lui	t1,0x7fff
8000fd64:	3529ffff 	ori	t1,t1,0xffff
8000fd68:	3c0a8002 	lui	t2,0x8002
8000fd6c:	354afff0 	ori	t2,t2,0xfff0
8000fd70:	ad480000 	sw	t0,0(t2)
8000fd74:	10000004 	b	8000fd88 <n83_bgtz_ex_ds_test+0xba0>
8000fd78:	00000000 	nop
8000fd7c:	26522222 	addiu	s2,s2,8738
8000fd80:	10000007 	b	8000fda0 <n83_bgtz_ex_ds_test+0xbb8>
8000fd84:	00000000 	nop
8000fd88:	26101111 	addiu	s0,s0,4369
8000fd8c:	1d00fffb 	bgtz	t0,8000fd7c <n83_bgtz_ex_ds_test+0xb94>
8000fd90:	a5540003 	sh	s4,3(t2)
8000fd94:	26100002 	addiu	s0,s0,2
8000fd98:	26100002 	addiu	s0,s0,2
8000fd9c:	26100002 	addiu	s0,s0,2
8000fda0:	02129021 	addu	s2,s0,s2
8000fda4:	24141117 	li	s4,4375
8000fda8:	169201e1 	bne	s4,s2,80010530 <inst_error>
8000fdac:	00000000 	nop
8000fdb0:	3c144444 	lui	s4,0x4444
8000fdb4:	168201de 	bne	s4,v0,80010530 <inst_error>
8000fdb8:	00000000 	nop
8000fdbc:	24020009 	li	v0,9
8000fdc0:	00008021 	move	s0,zero
8000fdc4:	00009021 	move	s2,zero
8000fdc8:	3c087fff 	lui	t0,0x7fff
8000fdcc:	3508ffff 	ori	t0,t0,0xffff
8000fdd0:	3c097fff 	lui	t1,0x7fff
8000fdd4:	3529ffff 	ori	t1,t1,0xffff
8000fdd8:	3c0a8002 	lui	t2,0x8002
8000fddc:	354afff0 	ori	t2,t2,0xfff0
8000fde0:	ad480000 	sw	t0,0(t2)
8000fde4:	10000004 	b	8000fdf8 <n83_bgtz_ex_ds_test+0xc10>
8000fde8:	00000000 	nop
8000fdec:	26522222 	addiu	s2,s2,8738
8000fdf0:	10000007 	b	8000fe10 <n83_bgtz_ex_ds_test+0xc28>
8000fdf4:	00000000 	nop
8000fdf8:	26101111 	addiu	s0,s0,4369
8000fdfc:	1d40fffb 	bgtz	t2,8000fdec <n83_bgtz_ex_ds_test+0xc04>
8000fe00:	a5540003 	sh	s4,3(t2)
8000fe04:	26100002 	addiu	s0,s0,2
8000fe08:	26100002 	addiu	s0,s0,2
8000fe0c:	26100002 	addiu	s0,s0,2
8000fe10:	02129021 	addu	s2,s0,s2
8000fe14:	24141117 	li	s4,4375
8000fe18:	169201c5 	bne	s4,s2,80010530 <inst_error>
8000fe1c:	00000000 	nop
8000fe20:	3c144444 	lui	s4,0x4444
8000fe24:	168201c2 	bne	s4,v0,80010530 <inst_error>
8000fe28:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:24
8000fe2c:	24020009 	li	v0,9
8000fe30:	00008021 	move	s0,zero
8000fe34:	00009021 	move	s2,zero
8000fe38:	3c087fff 	lui	t0,0x7fff
8000fe3c:	3508ffff 	ori	t0,t0,0xffff
8000fe40:	3c097fff 	lui	t1,0x7fff
8000fe44:	3529ffff 	ori	t1,t1,0xffff
8000fe48:	3c0a8002 	lui	t2,0x8002
8000fe4c:	354afff0 	ori	t2,t2,0xfff0
8000fe50:	ad480000 	sw	t0,0(t2)
8000fe54:	10000004 	b	8000fe68 <n83_bgtz_ex_ds_test+0xc80>
8000fe58:	00000000 	nop
8000fe5c:	26522222 	addiu	s2,s2,8738
8000fe60:	10000007 	b	8000fe80 <n83_bgtz_ex_ds_test+0xc98>
8000fe64:	00000000 	nop
8000fe68:	26101111 	addiu	s0,s0,4369
8000fe6c:	1d000004 	bgtz	t0,8000fe80 <n83_bgtz_ex_ds_test+0xc98>
8000fe70:	ad540003 	sw	s4,3(t2)
8000fe74:	26100002 	addiu	s0,s0,2
8000fe78:	26100002 	addiu	s0,s0,2
8000fe7c:	26100002 	addiu	s0,s0,2
8000fe80:	02129021 	addu	s2,s0,s2
8000fe84:	24141117 	li	s4,4375
8000fe88:	169201a9 	bne	s4,s2,80010530 <inst_error>
8000fe8c:	00000000 	nop
8000fe90:	3c144444 	lui	s4,0x4444
8000fe94:	168201a6 	bne	s4,v0,80010530 <inst_error>
8000fe98:	00000000 	nop
8000fe9c:	24020009 	li	v0,9
8000fea0:	00008021 	move	s0,zero
8000fea4:	00009021 	move	s2,zero
8000fea8:	3c087fff 	lui	t0,0x7fff
8000feac:	3508ffff 	ori	t0,t0,0xffff
8000feb0:	3c097fff 	lui	t1,0x7fff
8000feb4:	3529ffff 	ori	t1,t1,0xffff
8000feb8:	3c0a8002 	lui	t2,0x8002
8000febc:	354afff0 	ori	t2,t2,0xfff0
8000fec0:	ad480000 	sw	t0,0(t2)
8000fec4:	10000004 	b	8000fed8 <n83_bgtz_ex_ds_test+0xcf0>
8000fec8:	00000000 	nop
8000fecc:	26522222 	addiu	s2,s2,8738
8000fed0:	10000007 	b	8000fef0 <n83_bgtz_ex_ds_test+0xd08>
8000fed4:	00000000 	nop
8000fed8:	26101111 	addiu	s0,s0,4369
8000fedc:	1d400004 	bgtz	t2,8000fef0 <n83_bgtz_ex_ds_test+0xd08>
8000fee0:	ad540003 	sw	s4,3(t2)
8000fee4:	26100002 	addiu	s0,s0,2
8000fee8:	26100002 	addiu	s0,s0,2
8000feec:	26100002 	addiu	s0,s0,2
8000fef0:	02129021 	addu	s2,s0,s2
8000fef4:	24141117 	li	s4,4375
8000fef8:	1692018d 	bne	s4,s2,80010530 <inst_error>
8000fefc:	00000000 	nop
8000ff00:	3c144444 	lui	s4,0x4444
8000ff04:	1682018a 	bne	s4,v0,80010530 <inst_error>
8000ff08:	00000000 	nop
8000ff0c:	24020009 	li	v0,9
8000ff10:	00008021 	move	s0,zero
8000ff14:	00009021 	move	s2,zero
8000ff18:	3c087fff 	lui	t0,0x7fff
8000ff1c:	3508ffff 	ori	t0,t0,0xffff
8000ff20:	3c097fff 	lui	t1,0x7fff
8000ff24:	3529ffff 	ori	t1,t1,0xffff
8000ff28:	3c0a8002 	lui	t2,0x8002
8000ff2c:	354afff0 	ori	t2,t2,0xfff0
8000ff30:	ad480000 	sw	t0,0(t2)
8000ff34:	10000004 	b	8000ff48 <n83_bgtz_ex_ds_test+0xd60>
8000ff38:	00000000 	nop
8000ff3c:	26522222 	addiu	s2,s2,8738
8000ff40:	10000007 	b	8000ff60 <n83_bgtz_ex_ds_test+0xd78>
8000ff44:	00000000 	nop
8000ff48:	26101111 	addiu	s0,s0,4369
8000ff4c:	1d00fffb 	bgtz	t0,8000ff3c <n83_bgtz_ex_ds_test+0xd54>
8000ff50:	ad540003 	sw	s4,3(t2)
8000ff54:	26100002 	addiu	s0,s0,2
8000ff58:	26100002 	addiu	s0,s0,2
8000ff5c:	26100002 	addiu	s0,s0,2
8000ff60:	02129021 	addu	s2,s0,s2
8000ff64:	24141117 	li	s4,4375
8000ff68:	16920171 	bne	s4,s2,80010530 <inst_error>
8000ff6c:	00000000 	nop
8000ff70:	3c144444 	lui	s4,0x4444
8000ff74:	1682016e 	bne	s4,v0,80010530 <inst_error>
8000ff78:	00000000 	nop
8000ff7c:	24020009 	li	v0,9
8000ff80:	00008021 	move	s0,zero
8000ff84:	00009021 	move	s2,zero
8000ff88:	3c087fff 	lui	t0,0x7fff
8000ff8c:	3508ffff 	ori	t0,t0,0xffff
8000ff90:	3c097fff 	lui	t1,0x7fff
8000ff94:	3529ffff 	ori	t1,t1,0xffff
8000ff98:	3c0a8002 	lui	t2,0x8002
8000ff9c:	354afff0 	ori	t2,t2,0xfff0
8000ffa0:	ad480000 	sw	t0,0(t2)
8000ffa4:	10000004 	b	8000ffb8 <n83_bgtz_ex_ds_test+0xdd0>
8000ffa8:	00000000 	nop
8000ffac:	26522222 	addiu	s2,s2,8738
8000ffb0:	10000007 	b	8000ffd0 <n83_bgtz_ex_ds_test+0xde8>
8000ffb4:	00000000 	nop
8000ffb8:	26101111 	addiu	s0,s0,4369
8000ffbc:	1d40fffb 	bgtz	t2,8000ffac <n83_bgtz_ex_ds_test+0xdc4>
8000ffc0:	ad540003 	sw	s4,3(t2)
8000ffc4:	26100002 	addiu	s0,s0,2
8000ffc8:	26100002 	addiu	s0,s0,2
8000ffcc:	26100002 	addiu	s0,s0,2
8000ffd0:	02129021 	addu	s2,s0,s2
8000ffd4:	24141117 	li	s4,4375
8000ffd8:	16920155 	bne	s4,s2,80010530 <inst_error>
8000ffdc:	00000000 	nop
8000ffe0:	3c144444 	lui	s4,0x4444
8000ffe4:	16820152 	bne	s4,v0,80010530 <inst_error>
8000ffe8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:25
8000ffec:	24020009 	li	v0,9
8000fff0:	00008021 	move	s0,zero
8000fff4:	00009021 	move	s2,zero
8000fff8:	3c087fff 	lui	t0,0x7fff
8000fffc:	3508ffff 	ori	t0,t0,0xffff
80010000:	3c097fff 	lui	t1,0x7fff
80010004:	3529ffff 	ori	t1,t1,0xffff
80010008:	3c0a8002 	lui	t2,0x8002
8001000c:	354afff0 	ori	t2,t2,0xfff0
80010010:	ad480000 	sw	t0,0(t2)
80010014:	10000004 	b	80010028 <n83_bgtz_ex_ds_test+0xe40>
80010018:	00000000 	nop
8001001c:	26522222 	addiu	s2,s2,8738
80010020:	10000007 	b	80010040 <n83_bgtz_ex_ds_test+0xe58>
80010024:	00000000 	nop
80010028:	26101111 	addiu	s0,s0,4369
8001002c:	1d000004 	bgtz	t0,80010040 <n83_bgtz_ex_ds_test+0xe58>
80010030:	6f76e210 	0x6f76e210
80010034:	26100002 	addiu	s0,s0,2
80010038:	26100002 	addiu	s0,s0,2
8001003c:	26100002 	addiu	s0,s0,2
80010040:	02129021 	addu	s2,s0,s2
80010044:	24141117 	li	s4,4375
80010048:	16920139 	bne	s4,s2,80010530 <inst_error>
8001004c:	00000000 	nop
80010050:	3c144444 	lui	s4,0x4444
80010054:	16820136 	bne	s4,v0,80010530 <inst_error>
80010058:	00000000 	nop
8001005c:	24020009 	li	v0,9
80010060:	00008021 	move	s0,zero
80010064:	00009021 	move	s2,zero
80010068:	3c087fff 	lui	t0,0x7fff
8001006c:	3508ffff 	ori	t0,t0,0xffff
80010070:	3c097fff 	lui	t1,0x7fff
80010074:	3529ffff 	ori	t1,t1,0xffff
80010078:	3c0a8002 	lui	t2,0x8002
8001007c:	354afff0 	ori	t2,t2,0xfff0
80010080:	ad480000 	sw	t0,0(t2)
80010084:	10000004 	b	80010098 <n83_bgtz_ex_ds_test+0xeb0>
80010088:	00000000 	nop
8001008c:	26522222 	addiu	s2,s2,8738
80010090:	10000007 	b	800100b0 <n83_bgtz_ex_ds_test+0xec8>
80010094:	00000000 	nop
80010098:	26101111 	addiu	s0,s0,4369
8001009c:	1d400004 	bgtz	t2,800100b0 <n83_bgtz_ex_ds_test+0xec8>
800100a0:	6f76e210 	0x6f76e210
800100a4:	26100002 	addiu	s0,s0,2
800100a8:	26100002 	addiu	s0,s0,2
800100ac:	26100002 	addiu	s0,s0,2
800100b0:	02129021 	addu	s2,s0,s2
800100b4:	24141117 	li	s4,4375
800100b8:	1692011d 	bne	s4,s2,80010530 <inst_error>
800100bc:	00000000 	nop
800100c0:	3c144444 	lui	s4,0x4444
800100c4:	1682011a 	bne	s4,v0,80010530 <inst_error>
800100c8:	00000000 	nop
800100cc:	24020009 	li	v0,9
800100d0:	00008021 	move	s0,zero
800100d4:	00009021 	move	s2,zero
800100d8:	3c087fff 	lui	t0,0x7fff
800100dc:	3508ffff 	ori	t0,t0,0xffff
800100e0:	3c097fff 	lui	t1,0x7fff
800100e4:	3529ffff 	ori	t1,t1,0xffff
800100e8:	3c0a8002 	lui	t2,0x8002
800100ec:	354afff0 	ori	t2,t2,0xfff0
800100f0:	ad480000 	sw	t0,0(t2)
800100f4:	10000004 	b	80010108 <n83_bgtz_ex_ds_test+0xf20>
800100f8:	00000000 	nop
800100fc:	26522222 	addiu	s2,s2,8738
80010100:	10000007 	b	80010120 <n83_bgtz_ex_ds_test+0xf38>
80010104:	00000000 	nop
80010108:	26101111 	addiu	s0,s0,4369
8001010c:	1d00fffb 	bgtz	t0,800100fc <n83_bgtz_ex_ds_test+0xf14>
80010110:	6f76e210 	0x6f76e210
80010114:	26100002 	addiu	s0,s0,2
80010118:	26100002 	addiu	s0,s0,2
8001011c:	26100002 	addiu	s0,s0,2
80010120:	02129021 	addu	s2,s0,s2
80010124:	24141117 	li	s4,4375
80010128:	16920101 	bne	s4,s2,80010530 <inst_error>
8001012c:	00000000 	nop
80010130:	3c144444 	lui	s4,0x4444
80010134:	168200fe 	bne	s4,v0,80010530 <inst_error>
80010138:	00000000 	nop
8001013c:	24020009 	li	v0,9
80010140:	00008021 	move	s0,zero
80010144:	00009021 	move	s2,zero
80010148:	3c087fff 	lui	t0,0x7fff
8001014c:	3508ffff 	ori	t0,t0,0xffff
80010150:	3c097fff 	lui	t1,0x7fff
80010154:	3529ffff 	ori	t1,t1,0xffff
80010158:	3c0a8002 	lui	t2,0x8002
8001015c:	354afff0 	ori	t2,t2,0xfff0
80010160:	ad480000 	sw	t0,0(t2)
80010164:	10000004 	b	80010178 <n83_bgtz_ex_ds_test+0xf90>
80010168:	00000000 	nop
8001016c:	26522222 	addiu	s2,s2,8738
80010170:	10000007 	b	80010190 <n83_bgtz_ex_ds_test+0xfa8>
80010174:	00000000 	nop
80010178:	26101111 	addiu	s0,s0,4369
8001017c:	1d40fffb 	bgtz	t2,8001016c <n83_bgtz_ex_ds_test+0xf84>
80010180:	6f76e210 	0x6f76e210
80010184:	26100002 	addiu	s0,s0,2
80010188:	26100002 	addiu	s0,s0,2
8001018c:	26100002 	addiu	s0,s0,2
80010190:	02129021 	addu	s2,s0,s2
80010194:	24141117 	li	s4,4375
80010198:	169200e5 	bne	s4,s2,80010530 <inst_error>
8001019c:	00000000 	nop
800101a0:	3c144444 	lui	s4,0x4444
800101a4:	168200e2 	bne	s4,v0,80010530 <inst_error>
800101a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:26
800101ac:	24020009 	li	v0,9
800101b0:	00008021 	move	s0,zero
800101b4:	00009021 	move	s2,zero
800101b8:	3c087fff 	lui	t0,0x7fff
800101bc:	3508ffff 	ori	t0,t0,0xffff
800101c0:	3c097fff 	lui	t1,0x7fff
800101c4:	3529ffff 	ori	t1,t1,0xffff
800101c8:	3c0a8002 	lui	t2,0x8002
800101cc:	354afff0 	ori	t2,t2,0xfff0
800101d0:	ad480000 	sw	t0,0(t2)
800101d4:	10000004 	b	800101e8 <n83_bgtz_ex_ds_test+0x1000>
800101d8:	00000000 	nop
800101dc:	26522222 	addiu	s2,s2,8738
800101e0:	10000007 	b	80010200 <n83_bgtz_ex_ds_test+0x1018>
800101e4:	00000000 	nop
800101e8:	26101111 	addiu	s0,s0,4369
800101ec:	1d000004 	bgtz	t0,80010200 <n83_bgtz_ex_ds_test+0x1018>
800101f0:	0000000c 	syscall
800101f4:	26100002 	addiu	s0,s0,2
800101f8:	26100002 	addiu	s0,s0,2
800101fc:	26100002 	addiu	s0,s0,2
80010200:	02129021 	addu	s2,s0,s2
80010204:	24141117 	li	s4,4375
80010208:	169200c9 	bne	s4,s2,80010530 <inst_error>
8001020c:	00000000 	nop
80010210:	3c144444 	lui	s4,0x4444
80010214:	168200c6 	bne	s4,v0,80010530 <inst_error>
80010218:	00000000 	nop
8001021c:	24020009 	li	v0,9
80010220:	00008021 	move	s0,zero
80010224:	00009021 	move	s2,zero
80010228:	3c087fff 	lui	t0,0x7fff
8001022c:	3508ffff 	ori	t0,t0,0xffff
80010230:	3c097fff 	lui	t1,0x7fff
80010234:	3529ffff 	ori	t1,t1,0xffff
80010238:	3c0a8002 	lui	t2,0x8002
8001023c:	354afff0 	ori	t2,t2,0xfff0
80010240:	ad480000 	sw	t0,0(t2)
80010244:	10000004 	b	80010258 <n83_bgtz_ex_ds_test+0x1070>
80010248:	00000000 	nop
8001024c:	26522222 	addiu	s2,s2,8738
80010250:	10000007 	b	80010270 <n83_bgtz_ex_ds_test+0x1088>
80010254:	00000000 	nop
80010258:	26101111 	addiu	s0,s0,4369
8001025c:	1d400004 	bgtz	t2,80010270 <n83_bgtz_ex_ds_test+0x1088>
80010260:	0000000c 	syscall
80010264:	26100002 	addiu	s0,s0,2
80010268:	26100002 	addiu	s0,s0,2
8001026c:	26100002 	addiu	s0,s0,2
80010270:	02129021 	addu	s2,s0,s2
80010274:	24141117 	li	s4,4375
80010278:	169200ad 	bne	s4,s2,80010530 <inst_error>
8001027c:	00000000 	nop
80010280:	3c144444 	lui	s4,0x4444
80010284:	168200aa 	bne	s4,v0,80010530 <inst_error>
80010288:	00000000 	nop
8001028c:	24020009 	li	v0,9
80010290:	00008021 	move	s0,zero
80010294:	00009021 	move	s2,zero
80010298:	3c087fff 	lui	t0,0x7fff
8001029c:	3508ffff 	ori	t0,t0,0xffff
800102a0:	3c097fff 	lui	t1,0x7fff
800102a4:	3529ffff 	ori	t1,t1,0xffff
800102a8:	3c0a8002 	lui	t2,0x8002
800102ac:	354afff0 	ori	t2,t2,0xfff0
800102b0:	ad480000 	sw	t0,0(t2)
800102b4:	10000004 	b	800102c8 <n83_bgtz_ex_ds_test+0x10e0>
800102b8:	00000000 	nop
800102bc:	26522222 	addiu	s2,s2,8738
800102c0:	10000007 	b	800102e0 <n83_bgtz_ex_ds_test+0x10f8>
800102c4:	00000000 	nop
800102c8:	26101111 	addiu	s0,s0,4369
800102cc:	1d00fffb 	bgtz	t0,800102bc <n83_bgtz_ex_ds_test+0x10d4>
800102d0:	0000000c 	syscall
800102d4:	26100002 	addiu	s0,s0,2
800102d8:	26100002 	addiu	s0,s0,2
800102dc:	26100002 	addiu	s0,s0,2
800102e0:	02129021 	addu	s2,s0,s2
800102e4:	24141117 	li	s4,4375
800102e8:	16920091 	bne	s4,s2,80010530 <inst_error>
800102ec:	00000000 	nop
800102f0:	3c144444 	lui	s4,0x4444
800102f4:	1682008e 	bne	s4,v0,80010530 <inst_error>
800102f8:	00000000 	nop
800102fc:	24020009 	li	v0,9
80010300:	00008021 	move	s0,zero
80010304:	00009021 	move	s2,zero
80010308:	3c087fff 	lui	t0,0x7fff
8001030c:	3508ffff 	ori	t0,t0,0xffff
80010310:	3c097fff 	lui	t1,0x7fff
80010314:	3529ffff 	ori	t1,t1,0xffff
80010318:	3c0a8002 	lui	t2,0x8002
8001031c:	354afff0 	ori	t2,t2,0xfff0
80010320:	ad480000 	sw	t0,0(t2)
80010324:	10000004 	b	80010338 <n83_bgtz_ex_ds_test+0x1150>
80010328:	00000000 	nop
8001032c:	26522222 	addiu	s2,s2,8738
80010330:	10000007 	b	80010350 <n83_bgtz_ex_ds_test+0x1168>
80010334:	00000000 	nop
80010338:	26101111 	addiu	s0,s0,4369
8001033c:	1d40fffb 	bgtz	t2,8001032c <n83_bgtz_ex_ds_test+0x1144>
80010340:	0000000c 	syscall
80010344:	26100002 	addiu	s0,s0,2
80010348:	26100002 	addiu	s0,s0,2
8001034c:	26100002 	addiu	s0,s0,2
80010350:	02129021 	addu	s2,s0,s2
80010354:	24141117 	li	s4,4375
80010358:	16920075 	bne	s4,s2,80010530 <inst_error>
8001035c:	00000000 	nop
80010360:	3c144444 	lui	s4,0x4444
80010364:	16820072 	bne	s4,v0,80010530 <inst_error>
80010368:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:27
8001036c:	24020009 	li	v0,9
80010370:	00008021 	move	s0,zero
80010374:	00009021 	move	s2,zero
80010378:	3c087fff 	lui	t0,0x7fff
8001037c:	3508ffff 	ori	t0,t0,0xffff
80010380:	3c097fff 	lui	t1,0x7fff
80010384:	3529ffff 	ori	t1,t1,0xffff
80010388:	3c0a8002 	lui	t2,0x8002
8001038c:	354afff0 	ori	t2,t2,0xfff0
80010390:	ad480000 	sw	t0,0(t2)
80010394:	10000004 	b	800103a8 <n83_bgtz_ex_ds_test+0x11c0>
80010398:	00000000 	nop
8001039c:	26522222 	addiu	s2,s2,8738
800103a0:	10000007 	b	800103c0 <n83_bgtz_ex_ds_test+0x11d8>
800103a4:	00000000 	nop
800103a8:	26101111 	addiu	s0,s0,4369
800103ac:	1d000004 	bgtz	t0,800103c0 <n83_bgtz_ex_ds_test+0x11d8>
800103b0:	0000000d 	break
800103b4:	26100002 	addiu	s0,s0,2
800103b8:	26100002 	addiu	s0,s0,2
800103bc:	26100002 	addiu	s0,s0,2
800103c0:	02129021 	addu	s2,s0,s2
800103c4:	24141117 	li	s4,4375
800103c8:	16920059 	bne	s4,s2,80010530 <inst_error>
800103cc:	00000000 	nop
800103d0:	3c144444 	lui	s4,0x4444
800103d4:	16820056 	bne	s4,v0,80010530 <inst_error>
800103d8:	00000000 	nop
800103dc:	24020009 	li	v0,9
800103e0:	00008021 	move	s0,zero
800103e4:	00009021 	move	s2,zero
800103e8:	3c087fff 	lui	t0,0x7fff
800103ec:	3508ffff 	ori	t0,t0,0xffff
800103f0:	3c097fff 	lui	t1,0x7fff
800103f4:	3529ffff 	ori	t1,t1,0xffff
800103f8:	3c0a8002 	lui	t2,0x8002
800103fc:	354afff0 	ori	t2,t2,0xfff0
80010400:	ad480000 	sw	t0,0(t2)
80010404:	10000004 	b	80010418 <n83_bgtz_ex_ds_test+0x1230>
80010408:	00000000 	nop
8001040c:	26522222 	addiu	s2,s2,8738
80010410:	10000007 	b	80010430 <n83_bgtz_ex_ds_test+0x1248>
80010414:	00000000 	nop
80010418:	26101111 	addiu	s0,s0,4369
8001041c:	1d400004 	bgtz	t2,80010430 <n83_bgtz_ex_ds_test+0x1248>
80010420:	0000000d 	break
80010424:	26100002 	addiu	s0,s0,2
80010428:	26100002 	addiu	s0,s0,2
8001042c:	26100002 	addiu	s0,s0,2
80010430:	02129021 	addu	s2,s0,s2
80010434:	24141117 	li	s4,4375
80010438:	1692003d 	bne	s4,s2,80010530 <inst_error>
8001043c:	00000000 	nop
80010440:	3c144444 	lui	s4,0x4444
80010444:	1682003a 	bne	s4,v0,80010530 <inst_error>
80010448:	00000000 	nop
8001044c:	24020009 	li	v0,9
80010450:	00008021 	move	s0,zero
80010454:	00009021 	move	s2,zero
80010458:	3c087fff 	lui	t0,0x7fff
8001045c:	3508ffff 	ori	t0,t0,0xffff
80010460:	3c097fff 	lui	t1,0x7fff
80010464:	3529ffff 	ori	t1,t1,0xffff
80010468:	3c0a8002 	lui	t2,0x8002
8001046c:	354afff0 	ori	t2,t2,0xfff0
80010470:	ad480000 	sw	t0,0(t2)
80010474:	10000004 	b	80010488 <n83_bgtz_ex_ds_test+0x12a0>
80010478:	00000000 	nop
8001047c:	26522222 	addiu	s2,s2,8738
80010480:	10000007 	b	800104a0 <n83_bgtz_ex_ds_test+0x12b8>
80010484:	00000000 	nop
80010488:	26101111 	addiu	s0,s0,4369
8001048c:	1d00fffb 	bgtz	t0,8001047c <n83_bgtz_ex_ds_test+0x1294>
80010490:	0000000d 	break
80010494:	26100002 	addiu	s0,s0,2
80010498:	26100002 	addiu	s0,s0,2
8001049c:	26100002 	addiu	s0,s0,2
800104a0:	02129021 	addu	s2,s0,s2
800104a4:	24141117 	li	s4,4375
800104a8:	16920021 	bne	s4,s2,80010530 <inst_error>
800104ac:	00000000 	nop
800104b0:	3c144444 	lui	s4,0x4444
800104b4:	1682001e 	bne	s4,v0,80010530 <inst_error>
800104b8:	00000000 	nop
800104bc:	24020009 	li	v0,9
800104c0:	00008021 	move	s0,zero
800104c4:	00009021 	move	s2,zero
800104c8:	3c087fff 	lui	t0,0x7fff
800104cc:	3508ffff 	ori	t0,t0,0xffff
800104d0:	3c097fff 	lui	t1,0x7fff
800104d4:	3529ffff 	ori	t1,t1,0xffff
800104d8:	3c0a8002 	lui	t2,0x8002
800104dc:	354afff0 	ori	t2,t2,0xfff0
800104e0:	ad480000 	sw	t0,0(t2)
800104e4:	10000004 	b	800104f8 <n83_bgtz_ex_ds_test+0x1310>
800104e8:	00000000 	nop
800104ec:	26522222 	addiu	s2,s2,8738
800104f0:	10000007 	b	80010510 <n83_bgtz_ex_ds_test+0x1328>
800104f4:	00000000 	nop
800104f8:	26101111 	addiu	s0,s0,4369
800104fc:	1d40fffb 	bgtz	t2,800104ec <n83_bgtz_ex_ds_test+0x1304>
80010500:	0000000d 	break
80010504:	26100002 	addiu	s0,s0,2
80010508:	26100002 	addiu	s0,s0,2
8001050c:	26100002 	addiu	s0,s0,2
80010510:	02129021 	addu	s2,s0,s2
80010514:	24141117 	li	s4,4375
80010518:	16920005 	bne	s4,s2,80010530 <inst_error>
8001051c:	00000000 	nop
80010520:	3c144444 	lui	s4,0x4444
80010524:	16820002 	bne	s4,v0,80010530 <inst_error>
80010528:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:33
8001052c:	26730001 	addiu	s3,s3,1

80010530 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:36
80010530:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:37
80010534:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:38
80010538:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n83_bgtz_ex_ds.S:39
8001053c:	00000000 	nop

80010540 <n86_bltzal_ex_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:14
80010540:	3c045600 	lui	a0,0x5600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:17
80010544:	001f6021 	addu	t4,zero,ra
80010548:	24020009 	li	v0,9
8001054c:	00008021 	move	s0,zero
80010550:	00009021 	move	s2,zero
80010554:	3c087fff 	lui	t0,0x7fff
80010558:	3508ffff 	ori	t0,t0,0xffff
8001055c:	3c097fff 	lui	t1,0x7fff
80010560:	3529ffff 	ori	t1,t1,0xffff
80010564:	3c0a8002 	lui	t2,0x8002
80010568:	354afff0 	ori	t2,t2,0xfff0
8001056c:	ad480000 	sw	t0,0(t2)
80010570:	10000004 	b	80010584 <n86_bltzal_ex_ds_test+0x44>
80010574:	00000000 	nop
80010578:	26522222 	addiu	s2,s2,8738
8001057c:	10000007 	b	8001059c <n86_bltzal_ex_ds_test+0x5c>
80010580:	00000000 	nop
80010584:	26101111 	addiu	s0,s0,4369
80010588:	05500004 	bltzal	t2,8001059c <n86_bltzal_ex_ds_test+0x5c>
8001058c:	21147fff 	addi	s4,t0,32767
80010590:	26100002 	addiu	s0,s0,2
80010594:	26100002 	addiu	s0,s0,2
80010598:	26100002 	addiu	s0,s0,2
8001059c:	02129021 	addu	s2,s0,s2
800105a0:	0180f821 	move	ra,t4
800105a4:	24141117 	li	s4,4375
800105a8:	169204ee 	bne	s4,s2,80011964 <inst_error>
800105ac:	00000000 	nop
800105b0:	3c144444 	lui	s4,0x4444
800105b4:	168204eb 	bne	s4,v0,80011964 <inst_error>
800105b8:	00000000 	nop
800105bc:	24020009 	li	v0,9
800105c0:	00008021 	move	s0,zero
800105c4:	00009021 	move	s2,zero
800105c8:	3c087fff 	lui	t0,0x7fff
800105cc:	3508ffff 	ori	t0,t0,0xffff
800105d0:	3c097fff 	lui	t1,0x7fff
800105d4:	3529ffff 	ori	t1,t1,0xffff
800105d8:	3c0a8002 	lui	t2,0x8002
800105dc:	354afff0 	ori	t2,t2,0xfff0
800105e0:	ad480000 	sw	t0,0(t2)
800105e4:	10000004 	b	800105f8 <n86_bltzal_ex_ds_test+0xb8>
800105e8:	00000000 	nop
800105ec:	26522222 	addiu	s2,s2,8738
800105f0:	10000007 	b	80010610 <n86_bltzal_ex_ds_test+0xd0>
800105f4:	00000000 	nop
800105f8:	26101111 	addiu	s0,s0,4369
800105fc:	05100004 	bltzal	t0,80010610 <n86_bltzal_ex_ds_test+0xd0>
80010600:	21147fff 	addi	s4,t0,32767
80010604:	26100002 	addiu	s0,s0,2
80010608:	26100002 	addiu	s0,s0,2
8001060c:	26100002 	addiu	s0,s0,2
80010610:	02129021 	addu	s2,s0,s2
80010614:	0180f821 	move	ra,t4
80010618:	24141117 	li	s4,4375
8001061c:	169204d1 	bne	s4,s2,80011964 <inst_error>
80010620:	00000000 	nop
80010624:	3c144444 	lui	s4,0x4444
80010628:	168204ce 	bne	s4,v0,80011964 <inst_error>
8001062c:	00000000 	nop
80010630:	24020009 	li	v0,9
80010634:	00008021 	move	s0,zero
80010638:	00009021 	move	s2,zero
8001063c:	3c087fff 	lui	t0,0x7fff
80010640:	3508ffff 	ori	t0,t0,0xffff
80010644:	3c097fff 	lui	t1,0x7fff
80010648:	3529ffff 	ori	t1,t1,0xffff
8001064c:	3c0a8002 	lui	t2,0x8002
80010650:	354afff0 	ori	t2,t2,0xfff0
80010654:	ad480000 	sw	t0,0(t2)
80010658:	10000004 	b	8001066c <n86_bltzal_ex_ds_test+0x12c>
8001065c:	00000000 	nop
80010660:	26522222 	addiu	s2,s2,8738
80010664:	10000007 	b	80010684 <n86_bltzal_ex_ds_test+0x144>
80010668:	00000000 	nop
8001066c:	26101111 	addiu	s0,s0,4369
80010670:	0550fffb 	bltzal	t2,80010660 <n86_bltzal_ex_ds_test+0x120>
80010674:	21147fff 	addi	s4,t0,32767
80010678:	26100002 	addiu	s0,s0,2
8001067c:	26100002 	addiu	s0,s0,2
80010680:	26100002 	addiu	s0,s0,2
80010684:	02129021 	addu	s2,s0,s2
80010688:	0180f821 	move	ra,t4
8001068c:	24141117 	li	s4,4375
80010690:	169204b4 	bne	s4,s2,80011964 <inst_error>
80010694:	00000000 	nop
80010698:	3c144444 	lui	s4,0x4444
8001069c:	168204b1 	bne	s4,v0,80011964 <inst_error>
800106a0:	00000000 	nop
800106a4:	24020009 	li	v0,9
800106a8:	00008021 	move	s0,zero
800106ac:	00009021 	move	s2,zero
800106b0:	3c087fff 	lui	t0,0x7fff
800106b4:	3508ffff 	ori	t0,t0,0xffff
800106b8:	3c097fff 	lui	t1,0x7fff
800106bc:	3529ffff 	ori	t1,t1,0xffff
800106c0:	3c0a8002 	lui	t2,0x8002
800106c4:	354afff0 	ori	t2,t2,0xfff0
800106c8:	ad480000 	sw	t0,0(t2)
800106cc:	10000004 	b	800106e0 <n86_bltzal_ex_ds_test+0x1a0>
800106d0:	00000000 	nop
800106d4:	26522222 	addiu	s2,s2,8738
800106d8:	10000007 	b	800106f8 <n86_bltzal_ex_ds_test+0x1b8>
800106dc:	00000000 	nop
800106e0:	26101111 	addiu	s0,s0,4369
800106e4:	0510fffb 	bltzal	t0,800106d4 <n86_bltzal_ex_ds_test+0x194>
800106e8:	21147fff 	addi	s4,t0,32767
800106ec:	26100002 	addiu	s0,s0,2
800106f0:	26100002 	addiu	s0,s0,2
800106f4:	26100002 	addiu	s0,s0,2
800106f8:	02129021 	addu	s2,s0,s2
800106fc:	0180f821 	move	ra,t4
80010700:	24141117 	li	s4,4375
80010704:	16920497 	bne	s4,s2,80011964 <inst_error>
80010708:	00000000 	nop
8001070c:	3c144444 	lui	s4,0x4444
80010710:	16820494 	bne	s4,v0,80011964 <inst_error>
80010714:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:18
80010718:	001f6021 	addu	t4,zero,ra
8001071c:	24020009 	li	v0,9
80010720:	00008021 	move	s0,zero
80010724:	00009021 	move	s2,zero
80010728:	3c087fff 	lui	t0,0x7fff
8001072c:	3508ffff 	ori	t0,t0,0xffff
80010730:	3c097fff 	lui	t1,0x7fff
80010734:	3529ffff 	ori	t1,t1,0xffff
80010738:	3c0a8002 	lui	t2,0x8002
8001073c:	354afff0 	ori	t2,t2,0xfff0
80010740:	ad480000 	sw	t0,0(t2)
80010744:	10000004 	b	80010758 <n86_bltzal_ex_ds_test+0x218>
80010748:	00000000 	nop
8001074c:	26522222 	addiu	s2,s2,8738
80010750:	10000007 	b	80010770 <n86_bltzal_ex_ds_test+0x230>
80010754:	00000000 	nop
80010758:	26101111 	addiu	s0,s0,4369
8001075c:	05500004 	bltzal	t2,80010770 <n86_bltzal_ex_ds_test+0x230>
80010760:	0109a020 	add	s4,t0,t1
80010764:	26100002 	addiu	s0,s0,2
80010768:	26100002 	addiu	s0,s0,2
8001076c:	26100002 	addiu	s0,s0,2
80010770:	02129021 	addu	s2,s0,s2
80010774:	0180f821 	move	ra,t4
80010778:	24141117 	li	s4,4375
8001077c:	16920479 	bne	s4,s2,80011964 <inst_error>
80010780:	00000000 	nop
80010784:	3c144444 	lui	s4,0x4444
80010788:	16820476 	bne	s4,v0,80011964 <inst_error>
8001078c:	00000000 	nop
80010790:	24020009 	li	v0,9
80010794:	00008021 	move	s0,zero
80010798:	00009021 	move	s2,zero
8001079c:	3c087fff 	lui	t0,0x7fff
800107a0:	3508ffff 	ori	t0,t0,0xffff
800107a4:	3c097fff 	lui	t1,0x7fff
800107a8:	3529ffff 	ori	t1,t1,0xffff
800107ac:	3c0a8002 	lui	t2,0x8002
800107b0:	354afff0 	ori	t2,t2,0xfff0
800107b4:	ad480000 	sw	t0,0(t2)
800107b8:	10000004 	b	800107cc <n86_bltzal_ex_ds_test+0x28c>
800107bc:	00000000 	nop
800107c0:	26522222 	addiu	s2,s2,8738
800107c4:	10000007 	b	800107e4 <n86_bltzal_ex_ds_test+0x2a4>
800107c8:	00000000 	nop
800107cc:	26101111 	addiu	s0,s0,4369
800107d0:	05100004 	bltzal	t0,800107e4 <n86_bltzal_ex_ds_test+0x2a4>
800107d4:	0109a020 	add	s4,t0,t1
800107d8:	26100002 	addiu	s0,s0,2
800107dc:	26100002 	addiu	s0,s0,2
800107e0:	26100002 	addiu	s0,s0,2
800107e4:	02129021 	addu	s2,s0,s2
800107e8:	0180f821 	move	ra,t4
800107ec:	24141117 	li	s4,4375
800107f0:	1692045c 	bne	s4,s2,80011964 <inst_error>
800107f4:	00000000 	nop
800107f8:	3c144444 	lui	s4,0x4444
800107fc:	16820459 	bne	s4,v0,80011964 <inst_error>
80010800:	00000000 	nop
80010804:	24020009 	li	v0,9
80010808:	00008021 	move	s0,zero
8001080c:	00009021 	move	s2,zero
80010810:	3c087fff 	lui	t0,0x7fff
80010814:	3508ffff 	ori	t0,t0,0xffff
80010818:	3c097fff 	lui	t1,0x7fff
8001081c:	3529ffff 	ori	t1,t1,0xffff
80010820:	3c0a8002 	lui	t2,0x8002
80010824:	354afff0 	ori	t2,t2,0xfff0
80010828:	ad480000 	sw	t0,0(t2)
8001082c:	10000004 	b	80010840 <n86_bltzal_ex_ds_test+0x300>
80010830:	00000000 	nop
80010834:	26522222 	addiu	s2,s2,8738
80010838:	10000007 	b	80010858 <n86_bltzal_ex_ds_test+0x318>
8001083c:	00000000 	nop
80010840:	26101111 	addiu	s0,s0,4369
80010844:	0550fffb 	bltzal	t2,80010834 <n86_bltzal_ex_ds_test+0x2f4>
80010848:	0109a020 	add	s4,t0,t1
8001084c:	26100002 	addiu	s0,s0,2
80010850:	26100002 	addiu	s0,s0,2
80010854:	26100002 	addiu	s0,s0,2
80010858:	02129021 	addu	s2,s0,s2
8001085c:	0180f821 	move	ra,t4
80010860:	24141117 	li	s4,4375
80010864:	1692043f 	bne	s4,s2,80011964 <inst_error>
80010868:	00000000 	nop
8001086c:	3c144444 	lui	s4,0x4444
80010870:	1682043c 	bne	s4,v0,80011964 <inst_error>
80010874:	00000000 	nop
80010878:	24020009 	li	v0,9
8001087c:	00008021 	move	s0,zero
80010880:	00009021 	move	s2,zero
80010884:	3c087fff 	lui	t0,0x7fff
80010888:	3508ffff 	ori	t0,t0,0xffff
8001088c:	3c097fff 	lui	t1,0x7fff
80010890:	3529ffff 	ori	t1,t1,0xffff
80010894:	3c0a8002 	lui	t2,0x8002
80010898:	354afff0 	ori	t2,t2,0xfff0
8001089c:	ad480000 	sw	t0,0(t2)
800108a0:	10000004 	b	800108b4 <n86_bltzal_ex_ds_test+0x374>
800108a4:	00000000 	nop
800108a8:	26522222 	addiu	s2,s2,8738
800108ac:	10000007 	b	800108cc <n86_bltzal_ex_ds_test+0x38c>
800108b0:	00000000 	nop
800108b4:	26101111 	addiu	s0,s0,4369
800108b8:	0510fffb 	bltzal	t0,800108a8 <n86_bltzal_ex_ds_test+0x368>
800108bc:	0109a020 	add	s4,t0,t1
800108c0:	26100002 	addiu	s0,s0,2
800108c4:	26100002 	addiu	s0,s0,2
800108c8:	26100002 	addiu	s0,s0,2
800108cc:	02129021 	addu	s2,s0,s2
800108d0:	0180f821 	move	ra,t4
800108d4:	24141117 	li	s4,4375
800108d8:	16920422 	bne	s4,s2,80011964 <inst_error>
800108dc:	00000000 	nop
800108e0:	3c144444 	lui	s4,0x4444
800108e4:	1682041f 	bne	s4,v0,80011964 <inst_error>
800108e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:19
800108ec:	001f6021 	addu	t4,zero,ra
800108f0:	24020009 	li	v0,9
800108f4:	00008021 	move	s0,zero
800108f8:	00009021 	move	s2,zero
800108fc:	3c087fff 	lui	t0,0x7fff
80010900:	3508ffff 	ori	t0,t0,0xffff
80010904:	3c097fff 	lui	t1,0x7fff
80010908:	3529ffff 	ori	t1,t1,0xffff
8001090c:	3c0a8002 	lui	t2,0x8002
80010910:	354afff0 	ori	t2,t2,0xfff0
80010914:	ad480000 	sw	t0,0(t2)
80010918:	10000004 	b	8001092c <n86_bltzal_ex_ds_test+0x3ec>
8001091c:	00000000 	nop
80010920:	26522222 	addiu	s2,s2,8738
80010924:	10000007 	b	80010944 <n86_bltzal_ex_ds_test+0x404>
80010928:	00000000 	nop
8001092c:	26101111 	addiu	s0,s0,4369
80010930:	05500004 	bltzal	t2,80010944 <n86_bltzal_ex_ds_test+0x404>
80010934:	010aa022 	sub	s4,t0,t2
80010938:	26100002 	addiu	s0,s0,2
8001093c:	26100002 	addiu	s0,s0,2
80010940:	26100002 	addiu	s0,s0,2
80010944:	02129021 	addu	s2,s0,s2
80010948:	0180f821 	move	ra,t4
8001094c:	24141117 	li	s4,4375
80010950:	16920404 	bne	s4,s2,80011964 <inst_error>
80010954:	00000000 	nop
80010958:	3c144444 	lui	s4,0x4444
8001095c:	16820401 	bne	s4,v0,80011964 <inst_error>
80010960:	00000000 	nop
80010964:	24020009 	li	v0,9
80010968:	00008021 	move	s0,zero
8001096c:	00009021 	move	s2,zero
80010970:	3c087fff 	lui	t0,0x7fff
80010974:	3508ffff 	ori	t0,t0,0xffff
80010978:	3c097fff 	lui	t1,0x7fff
8001097c:	3529ffff 	ori	t1,t1,0xffff
80010980:	3c0a8002 	lui	t2,0x8002
80010984:	354afff0 	ori	t2,t2,0xfff0
80010988:	ad480000 	sw	t0,0(t2)
8001098c:	10000004 	b	800109a0 <n86_bltzal_ex_ds_test+0x460>
80010990:	00000000 	nop
80010994:	26522222 	addiu	s2,s2,8738
80010998:	10000007 	b	800109b8 <n86_bltzal_ex_ds_test+0x478>
8001099c:	00000000 	nop
800109a0:	26101111 	addiu	s0,s0,4369
800109a4:	05100004 	bltzal	t0,800109b8 <n86_bltzal_ex_ds_test+0x478>
800109a8:	010aa022 	sub	s4,t0,t2
800109ac:	26100002 	addiu	s0,s0,2
800109b0:	26100002 	addiu	s0,s0,2
800109b4:	26100002 	addiu	s0,s0,2
800109b8:	02129021 	addu	s2,s0,s2
800109bc:	0180f821 	move	ra,t4
800109c0:	24141117 	li	s4,4375
800109c4:	169203e7 	bne	s4,s2,80011964 <inst_error>
800109c8:	00000000 	nop
800109cc:	3c144444 	lui	s4,0x4444
800109d0:	168203e4 	bne	s4,v0,80011964 <inst_error>
800109d4:	00000000 	nop
800109d8:	24020009 	li	v0,9
800109dc:	00008021 	move	s0,zero
800109e0:	00009021 	move	s2,zero
800109e4:	3c087fff 	lui	t0,0x7fff
800109e8:	3508ffff 	ori	t0,t0,0xffff
800109ec:	3c097fff 	lui	t1,0x7fff
800109f0:	3529ffff 	ori	t1,t1,0xffff
800109f4:	3c0a8002 	lui	t2,0x8002
800109f8:	354afff0 	ori	t2,t2,0xfff0
800109fc:	ad480000 	sw	t0,0(t2)
80010a00:	10000004 	b	80010a14 <n86_bltzal_ex_ds_test+0x4d4>
80010a04:	00000000 	nop
80010a08:	26522222 	addiu	s2,s2,8738
80010a0c:	10000007 	b	80010a2c <n86_bltzal_ex_ds_test+0x4ec>
80010a10:	00000000 	nop
80010a14:	26101111 	addiu	s0,s0,4369
80010a18:	0550fffb 	bltzal	t2,80010a08 <n86_bltzal_ex_ds_test+0x4c8>
80010a1c:	010aa022 	sub	s4,t0,t2
80010a20:	26100002 	addiu	s0,s0,2
80010a24:	26100002 	addiu	s0,s0,2
80010a28:	26100002 	addiu	s0,s0,2
80010a2c:	02129021 	addu	s2,s0,s2
80010a30:	0180f821 	move	ra,t4
80010a34:	24141117 	li	s4,4375
80010a38:	169203ca 	bne	s4,s2,80011964 <inst_error>
80010a3c:	00000000 	nop
80010a40:	3c144444 	lui	s4,0x4444
80010a44:	168203c7 	bne	s4,v0,80011964 <inst_error>
80010a48:	00000000 	nop
80010a4c:	24020009 	li	v0,9
80010a50:	00008021 	move	s0,zero
80010a54:	00009021 	move	s2,zero
80010a58:	3c087fff 	lui	t0,0x7fff
80010a5c:	3508ffff 	ori	t0,t0,0xffff
80010a60:	3c097fff 	lui	t1,0x7fff
80010a64:	3529ffff 	ori	t1,t1,0xffff
80010a68:	3c0a8002 	lui	t2,0x8002
80010a6c:	354afff0 	ori	t2,t2,0xfff0
80010a70:	ad480000 	sw	t0,0(t2)
80010a74:	10000004 	b	80010a88 <n86_bltzal_ex_ds_test+0x548>
80010a78:	00000000 	nop
80010a7c:	26522222 	addiu	s2,s2,8738
80010a80:	10000007 	b	80010aa0 <n86_bltzal_ex_ds_test+0x560>
80010a84:	00000000 	nop
80010a88:	26101111 	addiu	s0,s0,4369
80010a8c:	0510fffb 	bltzal	t0,80010a7c <n86_bltzal_ex_ds_test+0x53c>
80010a90:	010aa022 	sub	s4,t0,t2
80010a94:	26100002 	addiu	s0,s0,2
80010a98:	26100002 	addiu	s0,s0,2
80010a9c:	26100002 	addiu	s0,s0,2
80010aa0:	02129021 	addu	s2,s0,s2
80010aa4:	0180f821 	move	ra,t4
80010aa8:	24141117 	li	s4,4375
80010aac:	169203ad 	bne	s4,s2,80011964 <inst_error>
80010ab0:	00000000 	nop
80010ab4:	3c144444 	lui	s4,0x4444
80010ab8:	168203aa 	bne	s4,v0,80011964 <inst_error>
80010abc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:20
80010ac0:	001f6021 	addu	t4,zero,ra
80010ac4:	24020009 	li	v0,9
80010ac8:	00008021 	move	s0,zero
80010acc:	00009021 	move	s2,zero
80010ad0:	3c087fff 	lui	t0,0x7fff
80010ad4:	3508ffff 	ori	t0,t0,0xffff
80010ad8:	3c097fff 	lui	t1,0x7fff
80010adc:	3529ffff 	ori	t1,t1,0xffff
80010ae0:	3c0a8002 	lui	t2,0x8002
80010ae4:	354afff0 	ori	t2,t2,0xfff0
80010ae8:	ad480000 	sw	t0,0(t2)
80010aec:	10000004 	b	80010b00 <n86_bltzal_ex_ds_test+0x5c0>
80010af0:	00000000 	nop
80010af4:	26522222 	addiu	s2,s2,8738
80010af8:	10000007 	b	80010b18 <n86_bltzal_ex_ds_test+0x5d8>
80010afc:	00000000 	nop
80010b00:	26101111 	addiu	s0,s0,4369
80010b04:	05500004 	bltzal	t2,80010b18 <n86_bltzal_ex_ds_test+0x5d8>
80010b08:	85540003 	lh	s4,3(t2)
80010b0c:	26100002 	addiu	s0,s0,2
80010b10:	26100002 	addiu	s0,s0,2
80010b14:	26100002 	addiu	s0,s0,2
80010b18:	02129021 	addu	s2,s0,s2
80010b1c:	0180f821 	move	ra,t4
80010b20:	24141117 	li	s4,4375
80010b24:	1692038f 	bne	s4,s2,80011964 <inst_error>
80010b28:	00000000 	nop
80010b2c:	3c144444 	lui	s4,0x4444
80010b30:	1682038c 	bne	s4,v0,80011964 <inst_error>
80010b34:	00000000 	nop
80010b38:	24020009 	li	v0,9
80010b3c:	00008021 	move	s0,zero
80010b40:	00009021 	move	s2,zero
80010b44:	3c087fff 	lui	t0,0x7fff
80010b48:	3508ffff 	ori	t0,t0,0xffff
80010b4c:	3c097fff 	lui	t1,0x7fff
80010b50:	3529ffff 	ori	t1,t1,0xffff
80010b54:	3c0a8002 	lui	t2,0x8002
80010b58:	354afff0 	ori	t2,t2,0xfff0
80010b5c:	ad480000 	sw	t0,0(t2)
80010b60:	10000004 	b	80010b74 <n86_bltzal_ex_ds_test+0x634>
80010b64:	00000000 	nop
80010b68:	26522222 	addiu	s2,s2,8738
80010b6c:	10000007 	b	80010b8c <n86_bltzal_ex_ds_test+0x64c>
80010b70:	00000000 	nop
80010b74:	26101111 	addiu	s0,s0,4369
80010b78:	05100004 	bltzal	t0,80010b8c <n86_bltzal_ex_ds_test+0x64c>
80010b7c:	85540003 	lh	s4,3(t2)
80010b80:	26100002 	addiu	s0,s0,2
80010b84:	26100002 	addiu	s0,s0,2
80010b88:	26100002 	addiu	s0,s0,2
80010b8c:	02129021 	addu	s2,s0,s2
80010b90:	0180f821 	move	ra,t4
80010b94:	24141117 	li	s4,4375
80010b98:	16920372 	bne	s4,s2,80011964 <inst_error>
80010b9c:	00000000 	nop
80010ba0:	3c144444 	lui	s4,0x4444
80010ba4:	1682036f 	bne	s4,v0,80011964 <inst_error>
80010ba8:	00000000 	nop
80010bac:	24020009 	li	v0,9
80010bb0:	00008021 	move	s0,zero
80010bb4:	00009021 	move	s2,zero
80010bb8:	3c087fff 	lui	t0,0x7fff
80010bbc:	3508ffff 	ori	t0,t0,0xffff
80010bc0:	3c097fff 	lui	t1,0x7fff
80010bc4:	3529ffff 	ori	t1,t1,0xffff
80010bc8:	3c0a8002 	lui	t2,0x8002
80010bcc:	354afff0 	ori	t2,t2,0xfff0
80010bd0:	ad480000 	sw	t0,0(t2)
80010bd4:	10000004 	b	80010be8 <n86_bltzal_ex_ds_test+0x6a8>
80010bd8:	00000000 	nop
80010bdc:	26522222 	addiu	s2,s2,8738
80010be0:	10000007 	b	80010c00 <n86_bltzal_ex_ds_test+0x6c0>
80010be4:	00000000 	nop
80010be8:	26101111 	addiu	s0,s0,4369
80010bec:	0550fffb 	bltzal	t2,80010bdc <n86_bltzal_ex_ds_test+0x69c>
80010bf0:	85540003 	lh	s4,3(t2)
80010bf4:	26100002 	addiu	s0,s0,2
80010bf8:	26100002 	addiu	s0,s0,2
80010bfc:	26100002 	addiu	s0,s0,2
80010c00:	02129021 	addu	s2,s0,s2
80010c04:	0180f821 	move	ra,t4
80010c08:	24141117 	li	s4,4375
80010c0c:	16920355 	bne	s4,s2,80011964 <inst_error>
80010c10:	00000000 	nop
80010c14:	3c144444 	lui	s4,0x4444
80010c18:	16820352 	bne	s4,v0,80011964 <inst_error>
80010c1c:	00000000 	nop
80010c20:	24020009 	li	v0,9
80010c24:	00008021 	move	s0,zero
80010c28:	00009021 	move	s2,zero
80010c2c:	3c087fff 	lui	t0,0x7fff
80010c30:	3508ffff 	ori	t0,t0,0xffff
80010c34:	3c097fff 	lui	t1,0x7fff
80010c38:	3529ffff 	ori	t1,t1,0xffff
80010c3c:	3c0a8002 	lui	t2,0x8002
80010c40:	354afff0 	ori	t2,t2,0xfff0
80010c44:	ad480000 	sw	t0,0(t2)
80010c48:	10000004 	b	80010c5c <n86_bltzal_ex_ds_test+0x71c>
80010c4c:	00000000 	nop
80010c50:	26522222 	addiu	s2,s2,8738
80010c54:	10000007 	b	80010c74 <n86_bltzal_ex_ds_test+0x734>
80010c58:	00000000 	nop
80010c5c:	26101111 	addiu	s0,s0,4369
80010c60:	0510fffb 	bltzal	t0,80010c50 <n86_bltzal_ex_ds_test+0x710>
80010c64:	85540003 	lh	s4,3(t2)
80010c68:	26100002 	addiu	s0,s0,2
80010c6c:	26100002 	addiu	s0,s0,2
80010c70:	26100002 	addiu	s0,s0,2
80010c74:	02129021 	addu	s2,s0,s2
80010c78:	0180f821 	move	ra,t4
80010c7c:	24141117 	li	s4,4375
80010c80:	16920338 	bne	s4,s2,80011964 <inst_error>
80010c84:	00000000 	nop
80010c88:	3c144444 	lui	s4,0x4444
80010c8c:	16820335 	bne	s4,v0,80011964 <inst_error>
80010c90:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:21
80010c94:	001f6021 	addu	t4,zero,ra
80010c98:	24020009 	li	v0,9
80010c9c:	00008021 	move	s0,zero
80010ca0:	00009021 	move	s2,zero
80010ca4:	3c087fff 	lui	t0,0x7fff
80010ca8:	3508ffff 	ori	t0,t0,0xffff
80010cac:	3c097fff 	lui	t1,0x7fff
80010cb0:	3529ffff 	ori	t1,t1,0xffff
80010cb4:	3c0a8002 	lui	t2,0x8002
80010cb8:	354afff0 	ori	t2,t2,0xfff0
80010cbc:	ad480000 	sw	t0,0(t2)
80010cc0:	10000004 	b	80010cd4 <n86_bltzal_ex_ds_test+0x794>
80010cc4:	00000000 	nop
80010cc8:	26522222 	addiu	s2,s2,8738
80010ccc:	10000007 	b	80010cec <n86_bltzal_ex_ds_test+0x7ac>
80010cd0:	00000000 	nop
80010cd4:	26101111 	addiu	s0,s0,4369
80010cd8:	05500004 	bltzal	t2,80010cec <n86_bltzal_ex_ds_test+0x7ac>
80010cdc:	95540003 	lhu	s4,3(t2)
80010ce0:	26100002 	addiu	s0,s0,2
80010ce4:	26100002 	addiu	s0,s0,2
80010ce8:	26100002 	addiu	s0,s0,2
80010cec:	02129021 	addu	s2,s0,s2
80010cf0:	0180f821 	move	ra,t4
80010cf4:	24141117 	li	s4,4375
80010cf8:	1692031a 	bne	s4,s2,80011964 <inst_error>
80010cfc:	00000000 	nop
80010d00:	3c144444 	lui	s4,0x4444
80010d04:	16820317 	bne	s4,v0,80011964 <inst_error>
80010d08:	00000000 	nop
80010d0c:	24020009 	li	v0,9
80010d10:	00008021 	move	s0,zero
80010d14:	00009021 	move	s2,zero
80010d18:	3c087fff 	lui	t0,0x7fff
80010d1c:	3508ffff 	ori	t0,t0,0xffff
80010d20:	3c097fff 	lui	t1,0x7fff
80010d24:	3529ffff 	ori	t1,t1,0xffff
80010d28:	3c0a8002 	lui	t2,0x8002
80010d2c:	354afff0 	ori	t2,t2,0xfff0
80010d30:	ad480000 	sw	t0,0(t2)
80010d34:	10000004 	b	80010d48 <n86_bltzal_ex_ds_test+0x808>
80010d38:	00000000 	nop
80010d3c:	26522222 	addiu	s2,s2,8738
80010d40:	10000007 	b	80010d60 <n86_bltzal_ex_ds_test+0x820>
80010d44:	00000000 	nop
80010d48:	26101111 	addiu	s0,s0,4369
80010d4c:	05100004 	bltzal	t0,80010d60 <n86_bltzal_ex_ds_test+0x820>
80010d50:	95540003 	lhu	s4,3(t2)
80010d54:	26100002 	addiu	s0,s0,2
80010d58:	26100002 	addiu	s0,s0,2
80010d5c:	26100002 	addiu	s0,s0,2
80010d60:	02129021 	addu	s2,s0,s2
80010d64:	0180f821 	move	ra,t4
80010d68:	24141117 	li	s4,4375
80010d6c:	169202fd 	bne	s4,s2,80011964 <inst_error>
80010d70:	00000000 	nop
80010d74:	3c144444 	lui	s4,0x4444
80010d78:	168202fa 	bne	s4,v0,80011964 <inst_error>
80010d7c:	00000000 	nop
80010d80:	24020009 	li	v0,9
80010d84:	00008021 	move	s0,zero
80010d88:	00009021 	move	s2,zero
80010d8c:	3c087fff 	lui	t0,0x7fff
80010d90:	3508ffff 	ori	t0,t0,0xffff
80010d94:	3c097fff 	lui	t1,0x7fff
80010d98:	3529ffff 	ori	t1,t1,0xffff
80010d9c:	3c0a8002 	lui	t2,0x8002
80010da0:	354afff0 	ori	t2,t2,0xfff0
80010da4:	ad480000 	sw	t0,0(t2)
80010da8:	10000004 	b	80010dbc <n86_bltzal_ex_ds_test+0x87c>
80010dac:	00000000 	nop
80010db0:	26522222 	addiu	s2,s2,8738
80010db4:	10000007 	b	80010dd4 <n86_bltzal_ex_ds_test+0x894>
80010db8:	00000000 	nop
80010dbc:	26101111 	addiu	s0,s0,4369
80010dc0:	0550fffb 	bltzal	t2,80010db0 <n86_bltzal_ex_ds_test+0x870>
80010dc4:	95540003 	lhu	s4,3(t2)
80010dc8:	26100002 	addiu	s0,s0,2
80010dcc:	26100002 	addiu	s0,s0,2
80010dd0:	26100002 	addiu	s0,s0,2
80010dd4:	02129021 	addu	s2,s0,s2
80010dd8:	0180f821 	move	ra,t4
80010ddc:	24141117 	li	s4,4375
80010de0:	169202e0 	bne	s4,s2,80011964 <inst_error>
80010de4:	00000000 	nop
80010de8:	3c144444 	lui	s4,0x4444
80010dec:	168202dd 	bne	s4,v0,80011964 <inst_error>
80010df0:	00000000 	nop
80010df4:	24020009 	li	v0,9
80010df8:	00008021 	move	s0,zero
80010dfc:	00009021 	move	s2,zero
80010e00:	3c087fff 	lui	t0,0x7fff
80010e04:	3508ffff 	ori	t0,t0,0xffff
80010e08:	3c097fff 	lui	t1,0x7fff
80010e0c:	3529ffff 	ori	t1,t1,0xffff
80010e10:	3c0a8002 	lui	t2,0x8002
80010e14:	354afff0 	ori	t2,t2,0xfff0
80010e18:	ad480000 	sw	t0,0(t2)
80010e1c:	10000004 	b	80010e30 <n86_bltzal_ex_ds_test+0x8f0>
80010e20:	00000000 	nop
80010e24:	26522222 	addiu	s2,s2,8738
80010e28:	10000007 	b	80010e48 <n86_bltzal_ex_ds_test+0x908>
80010e2c:	00000000 	nop
80010e30:	26101111 	addiu	s0,s0,4369
80010e34:	0510fffb 	bltzal	t0,80010e24 <n86_bltzal_ex_ds_test+0x8e4>
80010e38:	95540003 	lhu	s4,3(t2)
80010e3c:	26100002 	addiu	s0,s0,2
80010e40:	26100002 	addiu	s0,s0,2
80010e44:	26100002 	addiu	s0,s0,2
80010e48:	02129021 	addu	s2,s0,s2
80010e4c:	0180f821 	move	ra,t4
80010e50:	24141117 	li	s4,4375
80010e54:	169202c3 	bne	s4,s2,80011964 <inst_error>
80010e58:	00000000 	nop
80010e5c:	3c144444 	lui	s4,0x4444
80010e60:	168202c0 	bne	s4,v0,80011964 <inst_error>
80010e64:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:22
80010e68:	001f6021 	addu	t4,zero,ra
80010e6c:	24020009 	li	v0,9
80010e70:	00008021 	move	s0,zero
80010e74:	00009021 	move	s2,zero
80010e78:	3c087fff 	lui	t0,0x7fff
80010e7c:	3508ffff 	ori	t0,t0,0xffff
80010e80:	3c097fff 	lui	t1,0x7fff
80010e84:	3529ffff 	ori	t1,t1,0xffff
80010e88:	3c0a8002 	lui	t2,0x8002
80010e8c:	354afff0 	ori	t2,t2,0xfff0
80010e90:	ad480000 	sw	t0,0(t2)
80010e94:	10000004 	b	80010ea8 <n86_bltzal_ex_ds_test+0x968>
80010e98:	00000000 	nop
80010e9c:	26522222 	addiu	s2,s2,8738
80010ea0:	10000007 	b	80010ec0 <n86_bltzal_ex_ds_test+0x980>
80010ea4:	00000000 	nop
80010ea8:	26101111 	addiu	s0,s0,4369
80010eac:	05500004 	bltzal	t2,80010ec0 <n86_bltzal_ex_ds_test+0x980>
80010eb0:	8d540003 	lw	s4,3(t2)
80010eb4:	26100002 	addiu	s0,s0,2
80010eb8:	26100002 	addiu	s0,s0,2
80010ebc:	26100002 	addiu	s0,s0,2
80010ec0:	02129021 	addu	s2,s0,s2
80010ec4:	0180f821 	move	ra,t4
80010ec8:	24141117 	li	s4,4375
80010ecc:	169202a5 	bne	s4,s2,80011964 <inst_error>
80010ed0:	00000000 	nop
80010ed4:	3c144444 	lui	s4,0x4444
80010ed8:	168202a2 	bne	s4,v0,80011964 <inst_error>
80010edc:	00000000 	nop
80010ee0:	24020009 	li	v0,9
80010ee4:	00008021 	move	s0,zero
80010ee8:	00009021 	move	s2,zero
80010eec:	3c087fff 	lui	t0,0x7fff
80010ef0:	3508ffff 	ori	t0,t0,0xffff
80010ef4:	3c097fff 	lui	t1,0x7fff
80010ef8:	3529ffff 	ori	t1,t1,0xffff
80010efc:	3c0a8002 	lui	t2,0x8002
80010f00:	354afff0 	ori	t2,t2,0xfff0
80010f04:	ad480000 	sw	t0,0(t2)
80010f08:	10000004 	b	80010f1c <n86_bltzal_ex_ds_test+0x9dc>
80010f0c:	00000000 	nop
80010f10:	26522222 	addiu	s2,s2,8738
80010f14:	10000007 	b	80010f34 <n86_bltzal_ex_ds_test+0x9f4>
80010f18:	00000000 	nop
80010f1c:	26101111 	addiu	s0,s0,4369
80010f20:	05100004 	bltzal	t0,80010f34 <n86_bltzal_ex_ds_test+0x9f4>
80010f24:	8d540003 	lw	s4,3(t2)
80010f28:	26100002 	addiu	s0,s0,2
80010f2c:	26100002 	addiu	s0,s0,2
80010f30:	26100002 	addiu	s0,s0,2
80010f34:	02129021 	addu	s2,s0,s2
80010f38:	0180f821 	move	ra,t4
80010f3c:	24141117 	li	s4,4375
80010f40:	16920288 	bne	s4,s2,80011964 <inst_error>
80010f44:	00000000 	nop
80010f48:	3c144444 	lui	s4,0x4444
80010f4c:	16820285 	bne	s4,v0,80011964 <inst_error>
80010f50:	00000000 	nop
80010f54:	24020009 	li	v0,9
80010f58:	00008021 	move	s0,zero
80010f5c:	00009021 	move	s2,zero
80010f60:	3c087fff 	lui	t0,0x7fff
80010f64:	3508ffff 	ori	t0,t0,0xffff
80010f68:	3c097fff 	lui	t1,0x7fff
80010f6c:	3529ffff 	ori	t1,t1,0xffff
80010f70:	3c0a8002 	lui	t2,0x8002
80010f74:	354afff0 	ori	t2,t2,0xfff0
80010f78:	ad480000 	sw	t0,0(t2)
80010f7c:	10000004 	b	80010f90 <n86_bltzal_ex_ds_test+0xa50>
80010f80:	00000000 	nop
80010f84:	26522222 	addiu	s2,s2,8738
80010f88:	10000007 	b	80010fa8 <n86_bltzal_ex_ds_test+0xa68>
80010f8c:	00000000 	nop
80010f90:	26101111 	addiu	s0,s0,4369
80010f94:	0550fffb 	bltzal	t2,80010f84 <n86_bltzal_ex_ds_test+0xa44>
80010f98:	8d540003 	lw	s4,3(t2)
80010f9c:	26100002 	addiu	s0,s0,2
80010fa0:	26100002 	addiu	s0,s0,2
80010fa4:	26100002 	addiu	s0,s0,2
80010fa8:	02129021 	addu	s2,s0,s2
80010fac:	0180f821 	move	ra,t4
80010fb0:	24141117 	li	s4,4375
80010fb4:	1692026b 	bne	s4,s2,80011964 <inst_error>
80010fb8:	00000000 	nop
80010fbc:	3c144444 	lui	s4,0x4444
80010fc0:	16820268 	bne	s4,v0,80011964 <inst_error>
80010fc4:	00000000 	nop
80010fc8:	24020009 	li	v0,9
80010fcc:	00008021 	move	s0,zero
80010fd0:	00009021 	move	s2,zero
80010fd4:	3c087fff 	lui	t0,0x7fff
80010fd8:	3508ffff 	ori	t0,t0,0xffff
80010fdc:	3c097fff 	lui	t1,0x7fff
80010fe0:	3529ffff 	ori	t1,t1,0xffff
80010fe4:	3c0a8002 	lui	t2,0x8002
80010fe8:	354afff0 	ori	t2,t2,0xfff0
80010fec:	ad480000 	sw	t0,0(t2)
80010ff0:	10000004 	b	80011004 <n86_bltzal_ex_ds_test+0xac4>
80010ff4:	00000000 	nop
80010ff8:	26522222 	addiu	s2,s2,8738
80010ffc:	10000007 	b	8001101c <n86_bltzal_ex_ds_test+0xadc>
80011000:	00000000 	nop
80011004:	26101111 	addiu	s0,s0,4369
80011008:	0510fffb 	bltzal	t0,80010ff8 <n86_bltzal_ex_ds_test+0xab8>
8001100c:	8d540003 	lw	s4,3(t2)
80011010:	26100002 	addiu	s0,s0,2
80011014:	26100002 	addiu	s0,s0,2
80011018:	26100002 	addiu	s0,s0,2
8001101c:	02129021 	addu	s2,s0,s2
80011020:	0180f821 	move	ra,t4
80011024:	24141117 	li	s4,4375
80011028:	1692024e 	bne	s4,s2,80011964 <inst_error>
8001102c:	00000000 	nop
80011030:	3c144444 	lui	s4,0x4444
80011034:	1682024b 	bne	s4,v0,80011964 <inst_error>
80011038:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:23
8001103c:	001f6021 	addu	t4,zero,ra
80011040:	24020009 	li	v0,9
80011044:	00008021 	move	s0,zero
80011048:	00009021 	move	s2,zero
8001104c:	3c087fff 	lui	t0,0x7fff
80011050:	3508ffff 	ori	t0,t0,0xffff
80011054:	3c097fff 	lui	t1,0x7fff
80011058:	3529ffff 	ori	t1,t1,0xffff
8001105c:	3c0a8002 	lui	t2,0x8002
80011060:	354afff0 	ori	t2,t2,0xfff0
80011064:	ad480000 	sw	t0,0(t2)
80011068:	10000004 	b	8001107c <n86_bltzal_ex_ds_test+0xb3c>
8001106c:	00000000 	nop
80011070:	26522222 	addiu	s2,s2,8738
80011074:	10000007 	b	80011094 <n86_bltzal_ex_ds_test+0xb54>
80011078:	00000000 	nop
8001107c:	26101111 	addiu	s0,s0,4369
80011080:	05500004 	bltzal	t2,80011094 <n86_bltzal_ex_ds_test+0xb54>
80011084:	a5540003 	sh	s4,3(t2)
80011088:	26100002 	addiu	s0,s0,2
8001108c:	26100002 	addiu	s0,s0,2
80011090:	26100002 	addiu	s0,s0,2
80011094:	02129021 	addu	s2,s0,s2
80011098:	0180f821 	move	ra,t4
8001109c:	24141117 	li	s4,4375
800110a0:	16920230 	bne	s4,s2,80011964 <inst_error>
800110a4:	00000000 	nop
800110a8:	3c144444 	lui	s4,0x4444
800110ac:	1682022d 	bne	s4,v0,80011964 <inst_error>
800110b0:	00000000 	nop
800110b4:	24020009 	li	v0,9
800110b8:	00008021 	move	s0,zero
800110bc:	00009021 	move	s2,zero
800110c0:	3c087fff 	lui	t0,0x7fff
800110c4:	3508ffff 	ori	t0,t0,0xffff
800110c8:	3c097fff 	lui	t1,0x7fff
800110cc:	3529ffff 	ori	t1,t1,0xffff
800110d0:	3c0a8002 	lui	t2,0x8002
800110d4:	354afff0 	ori	t2,t2,0xfff0
800110d8:	ad480000 	sw	t0,0(t2)
800110dc:	10000004 	b	800110f0 <n86_bltzal_ex_ds_test+0xbb0>
800110e0:	00000000 	nop
800110e4:	26522222 	addiu	s2,s2,8738
800110e8:	10000007 	b	80011108 <n86_bltzal_ex_ds_test+0xbc8>
800110ec:	00000000 	nop
800110f0:	26101111 	addiu	s0,s0,4369
800110f4:	05100004 	bltzal	t0,80011108 <n86_bltzal_ex_ds_test+0xbc8>
800110f8:	a5540003 	sh	s4,3(t2)
800110fc:	26100002 	addiu	s0,s0,2
80011100:	26100002 	addiu	s0,s0,2
80011104:	26100002 	addiu	s0,s0,2
80011108:	02129021 	addu	s2,s0,s2
8001110c:	0180f821 	move	ra,t4
80011110:	24141117 	li	s4,4375
80011114:	16920213 	bne	s4,s2,80011964 <inst_error>
80011118:	00000000 	nop
8001111c:	3c144444 	lui	s4,0x4444
80011120:	16820210 	bne	s4,v0,80011964 <inst_error>
80011124:	00000000 	nop
80011128:	24020009 	li	v0,9
8001112c:	00008021 	move	s0,zero
80011130:	00009021 	move	s2,zero
80011134:	3c087fff 	lui	t0,0x7fff
80011138:	3508ffff 	ori	t0,t0,0xffff
8001113c:	3c097fff 	lui	t1,0x7fff
80011140:	3529ffff 	ori	t1,t1,0xffff
80011144:	3c0a8002 	lui	t2,0x8002
80011148:	354afff0 	ori	t2,t2,0xfff0
8001114c:	ad480000 	sw	t0,0(t2)
80011150:	10000004 	b	80011164 <n86_bltzal_ex_ds_test+0xc24>
80011154:	00000000 	nop
80011158:	26522222 	addiu	s2,s2,8738
8001115c:	10000007 	b	8001117c <n86_bltzal_ex_ds_test+0xc3c>
80011160:	00000000 	nop
80011164:	26101111 	addiu	s0,s0,4369
80011168:	0550fffb 	bltzal	t2,80011158 <n86_bltzal_ex_ds_test+0xc18>
8001116c:	a5540003 	sh	s4,3(t2)
80011170:	26100002 	addiu	s0,s0,2
80011174:	26100002 	addiu	s0,s0,2
80011178:	26100002 	addiu	s0,s0,2
8001117c:	02129021 	addu	s2,s0,s2
80011180:	0180f821 	move	ra,t4
80011184:	24141117 	li	s4,4375
80011188:	169201f6 	bne	s4,s2,80011964 <inst_error>
8001118c:	00000000 	nop
80011190:	3c144444 	lui	s4,0x4444
80011194:	168201f3 	bne	s4,v0,80011964 <inst_error>
80011198:	00000000 	nop
8001119c:	24020009 	li	v0,9
800111a0:	00008021 	move	s0,zero
800111a4:	00009021 	move	s2,zero
800111a8:	3c087fff 	lui	t0,0x7fff
800111ac:	3508ffff 	ori	t0,t0,0xffff
800111b0:	3c097fff 	lui	t1,0x7fff
800111b4:	3529ffff 	ori	t1,t1,0xffff
800111b8:	3c0a8002 	lui	t2,0x8002
800111bc:	354afff0 	ori	t2,t2,0xfff0
800111c0:	ad480000 	sw	t0,0(t2)
800111c4:	10000004 	b	800111d8 <n86_bltzal_ex_ds_test+0xc98>
800111c8:	00000000 	nop
800111cc:	26522222 	addiu	s2,s2,8738
800111d0:	10000007 	b	800111f0 <n86_bltzal_ex_ds_test+0xcb0>
800111d4:	00000000 	nop
800111d8:	26101111 	addiu	s0,s0,4369
800111dc:	0510fffb 	bltzal	t0,800111cc <n86_bltzal_ex_ds_test+0xc8c>
800111e0:	a5540003 	sh	s4,3(t2)
800111e4:	26100002 	addiu	s0,s0,2
800111e8:	26100002 	addiu	s0,s0,2
800111ec:	26100002 	addiu	s0,s0,2
800111f0:	02129021 	addu	s2,s0,s2
800111f4:	0180f821 	move	ra,t4
800111f8:	24141117 	li	s4,4375
800111fc:	169201d9 	bne	s4,s2,80011964 <inst_error>
80011200:	00000000 	nop
80011204:	3c144444 	lui	s4,0x4444
80011208:	168201d6 	bne	s4,v0,80011964 <inst_error>
8001120c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:24
80011210:	001f6021 	addu	t4,zero,ra
80011214:	24020009 	li	v0,9
80011218:	00008021 	move	s0,zero
8001121c:	00009021 	move	s2,zero
80011220:	3c087fff 	lui	t0,0x7fff
80011224:	3508ffff 	ori	t0,t0,0xffff
80011228:	3c097fff 	lui	t1,0x7fff
8001122c:	3529ffff 	ori	t1,t1,0xffff
80011230:	3c0a8002 	lui	t2,0x8002
80011234:	354afff0 	ori	t2,t2,0xfff0
80011238:	ad480000 	sw	t0,0(t2)
8001123c:	10000004 	b	80011250 <n86_bltzal_ex_ds_test+0xd10>
80011240:	00000000 	nop
80011244:	26522222 	addiu	s2,s2,8738
80011248:	10000007 	b	80011268 <n86_bltzal_ex_ds_test+0xd28>
8001124c:	00000000 	nop
80011250:	26101111 	addiu	s0,s0,4369
80011254:	05500004 	bltzal	t2,80011268 <n86_bltzal_ex_ds_test+0xd28>
80011258:	ad540003 	sw	s4,3(t2)
8001125c:	26100002 	addiu	s0,s0,2
80011260:	26100002 	addiu	s0,s0,2
80011264:	26100002 	addiu	s0,s0,2
80011268:	02129021 	addu	s2,s0,s2
8001126c:	0180f821 	move	ra,t4
80011270:	24141117 	li	s4,4375
80011274:	169201bb 	bne	s4,s2,80011964 <inst_error>
80011278:	00000000 	nop
8001127c:	3c144444 	lui	s4,0x4444
80011280:	168201b8 	bne	s4,v0,80011964 <inst_error>
80011284:	00000000 	nop
80011288:	24020009 	li	v0,9
8001128c:	00008021 	move	s0,zero
80011290:	00009021 	move	s2,zero
80011294:	3c087fff 	lui	t0,0x7fff
80011298:	3508ffff 	ori	t0,t0,0xffff
8001129c:	3c097fff 	lui	t1,0x7fff
800112a0:	3529ffff 	ori	t1,t1,0xffff
800112a4:	3c0a8002 	lui	t2,0x8002
800112a8:	354afff0 	ori	t2,t2,0xfff0
800112ac:	ad480000 	sw	t0,0(t2)
800112b0:	10000004 	b	800112c4 <n86_bltzal_ex_ds_test+0xd84>
800112b4:	00000000 	nop
800112b8:	26522222 	addiu	s2,s2,8738
800112bc:	10000007 	b	800112dc <n86_bltzal_ex_ds_test+0xd9c>
800112c0:	00000000 	nop
800112c4:	26101111 	addiu	s0,s0,4369
800112c8:	05100004 	bltzal	t0,800112dc <n86_bltzal_ex_ds_test+0xd9c>
800112cc:	ad540003 	sw	s4,3(t2)
800112d0:	26100002 	addiu	s0,s0,2
800112d4:	26100002 	addiu	s0,s0,2
800112d8:	26100002 	addiu	s0,s0,2
800112dc:	02129021 	addu	s2,s0,s2
800112e0:	0180f821 	move	ra,t4
800112e4:	24141117 	li	s4,4375
800112e8:	1692019e 	bne	s4,s2,80011964 <inst_error>
800112ec:	00000000 	nop
800112f0:	3c144444 	lui	s4,0x4444
800112f4:	1682019b 	bne	s4,v0,80011964 <inst_error>
800112f8:	00000000 	nop
800112fc:	24020009 	li	v0,9
80011300:	00008021 	move	s0,zero
80011304:	00009021 	move	s2,zero
80011308:	3c087fff 	lui	t0,0x7fff
8001130c:	3508ffff 	ori	t0,t0,0xffff
80011310:	3c097fff 	lui	t1,0x7fff
80011314:	3529ffff 	ori	t1,t1,0xffff
80011318:	3c0a8002 	lui	t2,0x8002
8001131c:	354afff0 	ori	t2,t2,0xfff0
80011320:	ad480000 	sw	t0,0(t2)
80011324:	10000004 	b	80011338 <n86_bltzal_ex_ds_test+0xdf8>
80011328:	00000000 	nop
8001132c:	26522222 	addiu	s2,s2,8738
80011330:	10000007 	b	80011350 <n86_bltzal_ex_ds_test+0xe10>
80011334:	00000000 	nop
80011338:	26101111 	addiu	s0,s0,4369
8001133c:	0550fffb 	bltzal	t2,8001132c <n86_bltzal_ex_ds_test+0xdec>
80011340:	ad540003 	sw	s4,3(t2)
80011344:	26100002 	addiu	s0,s0,2
80011348:	26100002 	addiu	s0,s0,2
8001134c:	26100002 	addiu	s0,s0,2
80011350:	02129021 	addu	s2,s0,s2
80011354:	0180f821 	move	ra,t4
80011358:	24141117 	li	s4,4375
8001135c:	16920181 	bne	s4,s2,80011964 <inst_error>
80011360:	00000000 	nop
80011364:	3c144444 	lui	s4,0x4444
80011368:	1682017e 	bne	s4,v0,80011964 <inst_error>
8001136c:	00000000 	nop
80011370:	24020009 	li	v0,9
80011374:	00008021 	move	s0,zero
80011378:	00009021 	move	s2,zero
8001137c:	3c087fff 	lui	t0,0x7fff
80011380:	3508ffff 	ori	t0,t0,0xffff
80011384:	3c097fff 	lui	t1,0x7fff
80011388:	3529ffff 	ori	t1,t1,0xffff
8001138c:	3c0a8002 	lui	t2,0x8002
80011390:	354afff0 	ori	t2,t2,0xfff0
80011394:	ad480000 	sw	t0,0(t2)
80011398:	10000004 	b	800113ac <n86_bltzal_ex_ds_test+0xe6c>
8001139c:	00000000 	nop
800113a0:	26522222 	addiu	s2,s2,8738
800113a4:	10000007 	b	800113c4 <n86_bltzal_ex_ds_test+0xe84>
800113a8:	00000000 	nop
800113ac:	26101111 	addiu	s0,s0,4369
800113b0:	0510fffb 	bltzal	t0,800113a0 <n86_bltzal_ex_ds_test+0xe60>
800113b4:	ad540003 	sw	s4,3(t2)
800113b8:	26100002 	addiu	s0,s0,2
800113bc:	26100002 	addiu	s0,s0,2
800113c0:	26100002 	addiu	s0,s0,2
800113c4:	02129021 	addu	s2,s0,s2
800113c8:	0180f821 	move	ra,t4
800113cc:	24141117 	li	s4,4375
800113d0:	16920164 	bne	s4,s2,80011964 <inst_error>
800113d4:	00000000 	nop
800113d8:	3c144444 	lui	s4,0x4444
800113dc:	16820161 	bne	s4,v0,80011964 <inst_error>
800113e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:25
800113e4:	001f6021 	addu	t4,zero,ra
800113e8:	24020009 	li	v0,9
800113ec:	00008021 	move	s0,zero
800113f0:	00009021 	move	s2,zero
800113f4:	3c087fff 	lui	t0,0x7fff
800113f8:	3508ffff 	ori	t0,t0,0xffff
800113fc:	3c097fff 	lui	t1,0x7fff
80011400:	3529ffff 	ori	t1,t1,0xffff
80011404:	3c0a8002 	lui	t2,0x8002
80011408:	354afff0 	ori	t2,t2,0xfff0
8001140c:	ad480000 	sw	t0,0(t2)
80011410:	10000004 	b	80011424 <n86_bltzal_ex_ds_test+0xee4>
80011414:	00000000 	nop
80011418:	26522222 	addiu	s2,s2,8738
8001141c:	10000007 	b	8001143c <n86_bltzal_ex_ds_test+0xefc>
80011420:	00000000 	nop
80011424:	26101111 	addiu	s0,s0,4369
80011428:	05500004 	bltzal	t2,8001143c <n86_bltzal_ex_ds_test+0xefc>
8001142c:	6f76e210 	0x6f76e210
80011430:	26100002 	addiu	s0,s0,2
80011434:	26100002 	addiu	s0,s0,2
80011438:	26100002 	addiu	s0,s0,2
8001143c:	02129021 	addu	s2,s0,s2
80011440:	0180f821 	move	ra,t4
80011444:	24141117 	li	s4,4375
80011448:	16920146 	bne	s4,s2,80011964 <inst_error>
8001144c:	00000000 	nop
80011450:	3c144444 	lui	s4,0x4444
80011454:	16820143 	bne	s4,v0,80011964 <inst_error>
80011458:	00000000 	nop
8001145c:	24020009 	li	v0,9
80011460:	00008021 	move	s0,zero
80011464:	00009021 	move	s2,zero
80011468:	3c087fff 	lui	t0,0x7fff
8001146c:	3508ffff 	ori	t0,t0,0xffff
80011470:	3c097fff 	lui	t1,0x7fff
80011474:	3529ffff 	ori	t1,t1,0xffff
80011478:	3c0a8002 	lui	t2,0x8002
8001147c:	354afff0 	ori	t2,t2,0xfff0
80011480:	ad480000 	sw	t0,0(t2)
80011484:	10000004 	b	80011498 <n86_bltzal_ex_ds_test+0xf58>
80011488:	00000000 	nop
8001148c:	26522222 	addiu	s2,s2,8738
80011490:	10000007 	b	800114b0 <n86_bltzal_ex_ds_test+0xf70>
80011494:	00000000 	nop
80011498:	26101111 	addiu	s0,s0,4369
8001149c:	05100004 	bltzal	t0,800114b0 <n86_bltzal_ex_ds_test+0xf70>
800114a0:	6f76e210 	0x6f76e210
800114a4:	26100002 	addiu	s0,s0,2
800114a8:	26100002 	addiu	s0,s0,2
800114ac:	26100002 	addiu	s0,s0,2
800114b0:	02129021 	addu	s2,s0,s2
800114b4:	0180f821 	move	ra,t4
800114b8:	24141117 	li	s4,4375
800114bc:	16920129 	bne	s4,s2,80011964 <inst_error>
800114c0:	00000000 	nop
800114c4:	3c144444 	lui	s4,0x4444
800114c8:	16820126 	bne	s4,v0,80011964 <inst_error>
800114cc:	00000000 	nop
800114d0:	24020009 	li	v0,9
800114d4:	00008021 	move	s0,zero
800114d8:	00009021 	move	s2,zero
800114dc:	3c087fff 	lui	t0,0x7fff
800114e0:	3508ffff 	ori	t0,t0,0xffff
800114e4:	3c097fff 	lui	t1,0x7fff
800114e8:	3529ffff 	ori	t1,t1,0xffff
800114ec:	3c0a8002 	lui	t2,0x8002
800114f0:	354afff0 	ori	t2,t2,0xfff0
800114f4:	ad480000 	sw	t0,0(t2)
800114f8:	10000004 	b	8001150c <n86_bltzal_ex_ds_test+0xfcc>
800114fc:	00000000 	nop
80011500:	26522222 	addiu	s2,s2,8738
80011504:	10000007 	b	80011524 <n86_bltzal_ex_ds_test+0xfe4>
80011508:	00000000 	nop
8001150c:	26101111 	addiu	s0,s0,4369
80011510:	0550fffb 	bltzal	t2,80011500 <n86_bltzal_ex_ds_test+0xfc0>
80011514:	6f76e210 	0x6f76e210
80011518:	26100002 	addiu	s0,s0,2
8001151c:	26100002 	addiu	s0,s0,2
80011520:	26100002 	addiu	s0,s0,2
80011524:	02129021 	addu	s2,s0,s2
80011528:	0180f821 	move	ra,t4
8001152c:	24141117 	li	s4,4375
80011530:	1692010c 	bne	s4,s2,80011964 <inst_error>
80011534:	00000000 	nop
80011538:	3c144444 	lui	s4,0x4444
8001153c:	16820109 	bne	s4,v0,80011964 <inst_error>
80011540:	00000000 	nop
80011544:	24020009 	li	v0,9
80011548:	00008021 	move	s0,zero
8001154c:	00009021 	move	s2,zero
80011550:	3c087fff 	lui	t0,0x7fff
80011554:	3508ffff 	ori	t0,t0,0xffff
80011558:	3c097fff 	lui	t1,0x7fff
8001155c:	3529ffff 	ori	t1,t1,0xffff
80011560:	3c0a8002 	lui	t2,0x8002
80011564:	354afff0 	ori	t2,t2,0xfff0
80011568:	ad480000 	sw	t0,0(t2)
8001156c:	10000004 	b	80011580 <n86_bltzal_ex_ds_test+0x1040>
80011570:	00000000 	nop
80011574:	26522222 	addiu	s2,s2,8738
80011578:	10000007 	b	80011598 <n86_bltzal_ex_ds_test+0x1058>
8001157c:	00000000 	nop
80011580:	26101111 	addiu	s0,s0,4369
80011584:	0510fffb 	bltzal	t0,80011574 <n86_bltzal_ex_ds_test+0x1034>
80011588:	6f76e210 	0x6f76e210
8001158c:	26100002 	addiu	s0,s0,2
80011590:	26100002 	addiu	s0,s0,2
80011594:	26100002 	addiu	s0,s0,2
80011598:	02129021 	addu	s2,s0,s2
8001159c:	0180f821 	move	ra,t4
800115a0:	24141117 	li	s4,4375
800115a4:	169200ef 	bne	s4,s2,80011964 <inst_error>
800115a8:	00000000 	nop
800115ac:	3c144444 	lui	s4,0x4444
800115b0:	168200ec 	bne	s4,v0,80011964 <inst_error>
800115b4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:26
800115b8:	001f6021 	addu	t4,zero,ra
800115bc:	24020009 	li	v0,9
800115c0:	00008021 	move	s0,zero
800115c4:	00009021 	move	s2,zero
800115c8:	3c087fff 	lui	t0,0x7fff
800115cc:	3508ffff 	ori	t0,t0,0xffff
800115d0:	3c097fff 	lui	t1,0x7fff
800115d4:	3529ffff 	ori	t1,t1,0xffff
800115d8:	3c0a8002 	lui	t2,0x8002
800115dc:	354afff0 	ori	t2,t2,0xfff0
800115e0:	ad480000 	sw	t0,0(t2)
800115e4:	10000004 	b	800115f8 <n86_bltzal_ex_ds_test+0x10b8>
800115e8:	00000000 	nop
800115ec:	26522222 	addiu	s2,s2,8738
800115f0:	10000007 	b	80011610 <n86_bltzal_ex_ds_test+0x10d0>
800115f4:	00000000 	nop
800115f8:	26101111 	addiu	s0,s0,4369
800115fc:	05500004 	bltzal	t2,80011610 <n86_bltzal_ex_ds_test+0x10d0>
80011600:	0000000c 	syscall
80011604:	26100002 	addiu	s0,s0,2
80011608:	26100002 	addiu	s0,s0,2
8001160c:	26100002 	addiu	s0,s0,2
80011610:	02129021 	addu	s2,s0,s2
80011614:	0180f821 	move	ra,t4
80011618:	24141117 	li	s4,4375
8001161c:	169200d1 	bne	s4,s2,80011964 <inst_error>
80011620:	00000000 	nop
80011624:	3c144444 	lui	s4,0x4444
80011628:	168200ce 	bne	s4,v0,80011964 <inst_error>
8001162c:	00000000 	nop
80011630:	24020009 	li	v0,9
80011634:	00008021 	move	s0,zero
80011638:	00009021 	move	s2,zero
8001163c:	3c087fff 	lui	t0,0x7fff
80011640:	3508ffff 	ori	t0,t0,0xffff
80011644:	3c097fff 	lui	t1,0x7fff
80011648:	3529ffff 	ori	t1,t1,0xffff
8001164c:	3c0a8002 	lui	t2,0x8002
80011650:	354afff0 	ori	t2,t2,0xfff0
80011654:	ad480000 	sw	t0,0(t2)
80011658:	10000004 	b	8001166c <n86_bltzal_ex_ds_test+0x112c>
8001165c:	00000000 	nop
80011660:	26522222 	addiu	s2,s2,8738
80011664:	10000007 	b	80011684 <n86_bltzal_ex_ds_test+0x1144>
80011668:	00000000 	nop
8001166c:	26101111 	addiu	s0,s0,4369
80011670:	05100004 	bltzal	t0,80011684 <n86_bltzal_ex_ds_test+0x1144>
80011674:	0000000c 	syscall
80011678:	26100002 	addiu	s0,s0,2
8001167c:	26100002 	addiu	s0,s0,2
80011680:	26100002 	addiu	s0,s0,2
80011684:	02129021 	addu	s2,s0,s2
80011688:	0180f821 	move	ra,t4
8001168c:	24141117 	li	s4,4375
80011690:	169200b4 	bne	s4,s2,80011964 <inst_error>
80011694:	00000000 	nop
80011698:	3c144444 	lui	s4,0x4444
8001169c:	168200b1 	bne	s4,v0,80011964 <inst_error>
800116a0:	00000000 	nop
800116a4:	24020009 	li	v0,9
800116a8:	00008021 	move	s0,zero
800116ac:	00009021 	move	s2,zero
800116b0:	3c087fff 	lui	t0,0x7fff
800116b4:	3508ffff 	ori	t0,t0,0xffff
800116b8:	3c097fff 	lui	t1,0x7fff
800116bc:	3529ffff 	ori	t1,t1,0xffff
800116c0:	3c0a8002 	lui	t2,0x8002
800116c4:	354afff0 	ori	t2,t2,0xfff0
800116c8:	ad480000 	sw	t0,0(t2)
800116cc:	10000004 	b	800116e0 <n86_bltzal_ex_ds_test+0x11a0>
800116d0:	00000000 	nop
800116d4:	26522222 	addiu	s2,s2,8738
800116d8:	10000007 	b	800116f8 <n86_bltzal_ex_ds_test+0x11b8>
800116dc:	00000000 	nop
800116e0:	26101111 	addiu	s0,s0,4369
800116e4:	0550fffb 	bltzal	t2,800116d4 <n86_bltzal_ex_ds_test+0x1194>
800116e8:	0000000c 	syscall
800116ec:	26100002 	addiu	s0,s0,2
800116f0:	26100002 	addiu	s0,s0,2
800116f4:	26100002 	addiu	s0,s0,2
800116f8:	02129021 	addu	s2,s0,s2
800116fc:	0180f821 	move	ra,t4
80011700:	24141117 	li	s4,4375
80011704:	16920097 	bne	s4,s2,80011964 <inst_error>
80011708:	00000000 	nop
8001170c:	3c144444 	lui	s4,0x4444
80011710:	16820094 	bne	s4,v0,80011964 <inst_error>
80011714:	00000000 	nop
80011718:	24020009 	li	v0,9
8001171c:	00008021 	move	s0,zero
80011720:	00009021 	move	s2,zero
80011724:	3c087fff 	lui	t0,0x7fff
80011728:	3508ffff 	ori	t0,t0,0xffff
8001172c:	3c097fff 	lui	t1,0x7fff
80011730:	3529ffff 	ori	t1,t1,0xffff
80011734:	3c0a8002 	lui	t2,0x8002
80011738:	354afff0 	ori	t2,t2,0xfff0
8001173c:	ad480000 	sw	t0,0(t2)
80011740:	10000004 	b	80011754 <n86_bltzal_ex_ds_test+0x1214>
80011744:	00000000 	nop
80011748:	26522222 	addiu	s2,s2,8738
8001174c:	10000007 	b	8001176c <n86_bltzal_ex_ds_test+0x122c>
80011750:	00000000 	nop
80011754:	26101111 	addiu	s0,s0,4369
80011758:	0510fffb 	bltzal	t0,80011748 <n86_bltzal_ex_ds_test+0x1208>
8001175c:	0000000c 	syscall
80011760:	26100002 	addiu	s0,s0,2
80011764:	26100002 	addiu	s0,s0,2
80011768:	26100002 	addiu	s0,s0,2
8001176c:	02129021 	addu	s2,s0,s2
80011770:	0180f821 	move	ra,t4
80011774:	24141117 	li	s4,4375
80011778:	1692007a 	bne	s4,s2,80011964 <inst_error>
8001177c:	00000000 	nop
80011780:	3c144444 	lui	s4,0x4444
80011784:	16820077 	bne	s4,v0,80011964 <inst_error>
80011788:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:27
8001178c:	001f6021 	addu	t4,zero,ra
80011790:	24020009 	li	v0,9
80011794:	00008021 	move	s0,zero
80011798:	00009021 	move	s2,zero
8001179c:	3c087fff 	lui	t0,0x7fff
800117a0:	3508ffff 	ori	t0,t0,0xffff
800117a4:	3c097fff 	lui	t1,0x7fff
800117a8:	3529ffff 	ori	t1,t1,0xffff
800117ac:	3c0a8002 	lui	t2,0x8002
800117b0:	354afff0 	ori	t2,t2,0xfff0
800117b4:	ad480000 	sw	t0,0(t2)
800117b8:	10000004 	b	800117cc <n86_bltzal_ex_ds_test+0x128c>
800117bc:	00000000 	nop
800117c0:	26522222 	addiu	s2,s2,8738
800117c4:	10000007 	b	800117e4 <n86_bltzal_ex_ds_test+0x12a4>
800117c8:	00000000 	nop
800117cc:	26101111 	addiu	s0,s0,4369
800117d0:	05500004 	bltzal	t2,800117e4 <n86_bltzal_ex_ds_test+0x12a4>
800117d4:	0000000d 	break
800117d8:	26100002 	addiu	s0,s0,2
800117dc:	26100002 	addiu	s0,s0,2
800117e0:	26100002 	addiu	s0,s0,2
800117e4:	02129021 	addu	s2,s0,s2
800117e8:	0180f821 	move	ra,t4
800117ec:	24141117 	li	s4,4375
800117f0:	1692005c 	bne	s4,s2,80011964 <inst_error>
800117f4:	00000000 	nop
800117f8:	3c144444 	lui	s4,0x4444
800117fc:	16820059 	bne	s4,v0,80011964 <inst_error>
80011800:	00000000 	nop
80011804:	24020009 	li	v0,9
80011808:	00008021 	move	s0,zero
8001180c:	00009021 	move	s2,zero
80011810:	3c087fff 	lui	t0,0x7fff
80011814:	3508ffff 	ori	t0,t0,0xffff
80011818:	3c097fff 	lui	t1,0x7fff
8001181c:	3529ffff 	ori	t1,t1,0xffff
80011820:	3c0a8002 	lui	t2,0x8002
80011824:	354afff0 	ori	t2,t2,0xfff0
80011828:	ad480000 	sw	t0,0(t2)
8001182c:	10000004 	b	80011840 <n86_bltzal_ex_ds_test+0x1300>
80011830:	00000000 	nop
80011834:	26522222 	addiu	s2,s2,8738
80011838:	10000007 	b	80011858 <n86_bltzal_ex_ds_test+0x1318>
8001183c:	00000000 	nop
80011840:	26101111 	addiu	s0,s0,4369
80011844:	05100004 	bltzal	t0,80011858 <n86_bltzal_ex_ds_test+0x1318>
80011848:	0000000d 	break
8001184c:	26100002 	addiu	s0,s0,2
80011850:	26100002 	addiu	s0,s0,2
80011854:	26100002 	addiu	s0,s0,2
80011858:	02129021 	addu	s2,s0,s2
8001185c:	0180f821 	move	ra,t4
80011860:	24141117 	li	s4,4375
80011864:	1692003f 	bne	s4,s2,80011964 <inst_error>
80011868:	00000000 	nop
8001186c:	3c144444 	lui	s4,0x4444
80011870:	1682003c 	bne	s4,v0,80011964 <inst_error>
80011874:	00000000 	nop
80011878:	24020009 	li	v0,9
8001187c:	00008021 	move	s0,zero
80011880:	00009021 	move	s2,zero
80011884:	3c087fff 	lui	t0,0x7fff
80011888:	3508ffff 	ori	t0,t0,0xffff
8001188c:	3c097fff 	lui	t1,0x7fff
80011890:	3529ffff 	ori	t1,t1,0xffff
80011894:	3c0a8002 	lui	t2,0x8002
80011898:	354afff0 	ori	t2,t2,0xfff0
8001189c:	ad480000 	sw	t0,0(t2)
800118a0:	10000004 	b	800118b4 <n86_bltzal_ex_ds_test+0x1374>
800118a4:	00000000 	nop
800118a8:	26522222 	addiu	s2,s2,8738
800118ac:	10000007 	b	800118cc <n86_bltzal_ex_ds_test+0x138c>
800118b0:	00000000 	nop
800118b4:	26101111 	addiu	s0,s0,4369
800118b8:	0550fffb 	bltzal	t2,800118a8 <n86_bltzal_ex_ds_test+0x1368>
800118bc:	0000000d 	break
800118c0:	26100002 	addiu	s0,s0,2
800118c4:	26100002 	addiu	s0,s0,2
800118c8:	26100002 	addiu	s0,s0,2
800118cc:	02129021 	addu	s2,s0,s2
800118d0:	0180f821 	move	ra,t4
800118d4:	24141117 	li	s4,4375
800118d8:	16920022 	bne	s4,s2,80011964 <inst_error>
800118dc:	00000000 	nop
800118e0:	3c144444 	lui	s4,0x4444
800118e4:	1682001f 	bne	s4,v0,80011964 <inst_error>
800118e8:	00000000 	nop
800118ec:	24020009 	li	v0,9
800118f0:	00008021 	move	s0,zero
800118f4:	00009021 	move	s2,zero
800118f8:	3c087fff 	lui	t0,0x7fff
800118fc:	3508ffff 	ori	t0,t0,0xffff
80011900:	3c097fff 	lui	t1,0x7fff
80011904:	3529ffff 	ori	t1,t1,0xffff
80011908:	3c0a8002 	lui	t2,0x8002
8001190c:	354afff0 	ori	t2,t2,0xfff0
80011910:	ad480000 	sw	t0,0(t2)
80011914:	10000004 	b	80011928 <n86_bltzal_ex_ds_test+0x13e8>
80011918:	00000000 	nop
8001191c:	26522222 	addiu	s2,s2,8738
80011920:	10000007 	b	80011940 <n86_bltzal_ex_ds_test+0x1400>
80011924:	00000000 	nop
80011928:	26101111 	addiu	s0,s0,4369
8001192c:	0510fffb 	bltzal	t0,8001191c <n86_bltzal_ex_ds_test+0x13dc>
80011930:	0000000d 	break
80011934:	26100002 	addiu	s0,s0,2
80011938:	26100002 	addiu	s0,s0,2
8001193c:	26100002 	addiu	s0,s0,2
80011940:	02129021 	addu	s2,s0,s2
80011944:	0180f821 	move	ra,t4
80011948:	24141117 	li	s4,4375
8001194c:	16920005 	bne	s4,s2,80011964 <inst_error>
80011950:	00000000 	nop
80011954:	3c144444 	lui	s4,0x4444
80011958:	16820002 	bne	s4,v0,80011964 <inst_error>
8001195c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:33
80011960:	26730001 	addiu	s3,s3,1

80011964 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:36
80011964:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:37
80011968:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:38
8001196c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n86_bltzal_ex_ds.S:39
80011970:	00000000 	nop

80011974 <n68_beq_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:14
80011974:	3c044400 	lui	a0,0x4400
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:15
80011978:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:17
8001197c:	00008021 	move	s0,zero
80011980:	00009021 	move	s2,zero
80011984:	3c081234 	lui	t0,0x1234
80011988:	35085678 	ori	t0,t0,0x5678
8001198c:	3c091234 	lui	t1,0x1234
80011990:	35295678 	ori	t1,t1,0x5678
80011994:	3c0a8765 	lui	t2,0x8765
80011998:	354a4321 	ori	t2,t2,0x4321
8001199c:	10000011 	b	800119e4 <n68_beq_ds_test+0x70>
800119a0:	00000000 	nop
800119a4:	26101111 	addiu	s0,s0,4369
800119a8:	1128001b 	beq	t1,t0,80011a18 <n68_beq_ds_test+0xa4>
800119ac:	26100001 	addiu	s0,s0,1
800119b0:	26100001 	addiu	s0,s0,1
800119b4:	26100001 	addiu	s0,s0,1
800119b8:	26100001 	addiu	s0,s0,1
800119bc:	10000016 	b	80011a18 <n68_beq_ds_test+0xa4>
800119c0:	00000000 	nop
800119c4:	26522222 	addiu	s2,s2,8738
800119c8:	112a0016 	beq	t1,t2,80011a24 <n68_beq_ds_test+0xb0>
800119cc:	26100001 	addiu	s0,s0,1
800119d0:	26520001 	addiu	s2,s2,1
800119d4:	26520001 	addiu	s2,s2,1
800119d8:	26520001 	addiu	s2,s2,1
800119dc:	10000011 	b	80011a24 <n68_beq_ds_test+0xb0>
800119e0:	00000000 	nop
800119e4:	1109ffef 	beq	t0,t1,800119a4 <n68_beq_ds_test+0x30>
800119e8:	01098021 	addu	s0,t0,t1
800119ec:	2610ffff 	addiu	s0,s0,-1
800119f0:	2610ffff 	addiu	s0,s0,-1
800119f4:	1000ffeb 	b	800119a4 <n68_beq_ds_test+0x30>
800119f8:	00000000 	nop
800119fc:	110afff1 	beq	t0,t2,800119c4 <n68_beq_ds_test+0x50>
80011a00:	020a8021 	addu	s0,s0,t2
80011a04:	2610ffff 	addiu	s0,s0,-1
80011a08:	2610ffff 	addiu	s0,s0,-1
80011a0c:	1000ffed 	b	800119c4 <n68_beq_ds_test+0x50>
80011a10:	00000000 	nop
80011a14:	00000021 	move	zero,zero
80011a18:	012a9021 	addu	s2,t1,t2
80011a1c:	1000fff7 	b	800119fc <n68_beq_ds_test+0x88>
80011a20:	00000000 	nop
80011a24:	02129021 	addu	s2,s0,s2
80011a28:	00000000 	nop
80011a2c:	3c144567 	lui	s4,0x4567
80011a30:	3694bce0 	ori	s4,s4,0xbce0
80011a34:	16920004 	bne	s4,s2,80011a48 <inst_error>
80011a38:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:19
80011a3c:	14400002 	bnez	v0,80011a48 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:20
80011a40:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:22
80011a44:	26730001 	addiu	s3,s3,1

80011a48 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:25
80011a48:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:26
80011a4c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:27
80011a50:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n68_beq_ds.S:28
80011a54:	00000000 	nop

80011a58 <n79_jalr_ds_test>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:14
80011a58:	3c044f00 	lui	a0,0x4f00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:15
80011a5c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:17
80011a60:	001f6021 	addu	t4,zero,ra
80011a64:	00008021 	move	s0,zero
80011a68:	00009021 	move	s2,zero
80011a6c:	3c081234 	lui	t0,0x1234
80011a70:	35085678 	ori	t0,t0,0x5678
80011a74:	3c091234 	lui	t1,0x1234
80011a78:	35295678 	ori	t1,t1,0x5678
80011a7c:	3c0a8765 	lui	t2,0x8765
80011a80:	354a4321 	ori	t2,t2,0x4321
80011a84:	10000015 	b	80011adc <n79_jalr_ds_test+0x84>
80011a88:	00000000 	nop
80011a8c:	26101111 	addiu	s0,s0,4369
80011a90:	3c0d8001 	lui	t5,0x8001
80011a94:	25ad1b0c 	addiu	t5,t5,6924
80011a98:	01a0f809 	jalr	t5
80011a9c:	26100001 	addiu	s0,s0,1
80011aa0:	26100001 	addiu	s0,s0,1
80011aa4:	26100001 	addiu	s0,s0,1
80011aa8:	26100001 	addiu	s0,s0,1
80011aac:	10000017 	b	80011b0c <n79_jalr_ds_test+0xb4>
80011ab0:	00000000 	nop
80011ab4:	00000021 	move	zero,zero
80011ab8:	00000021 	move	zero,zero
80011abc:	00000021 	move	zero,zero
80011ac0:	00000021 	move	zero,zero
80011ac4:	00000021 	move	zero,zero
80011ac8:	00000021 	move	zero,zero
80011acc:	00000021 	move	zero,zero
80011ad0:	00000021 	move	zero,zero
80011ad4:	00000021 	move	zero,zero
80011ad8:	00000021 	move	zero,zero
80011adc:	3c0d8001 	lui	t5,0x8001
80011ae0:	25ad1a8c 	addiu	t5,t5,6796
80011ae4:	01a0f809 	jalr	t5
80011ae8:	01098021 	addu	s0,t0,t1
80011aec:	2610ffff 	addiu	s0,s0,-1
80011af0:	2610ffff 	addiu	s0,s0,-1
80011af4:	1000ffe5 	b	80011a8c <n79_jalr_ds_test+0x34>
80011af8:	00000000 	nop
80011afc:	00000021 	move	zero,zero
80011b00:	00000021 	move	zero,zero
80011b04:	00000021 	move	zero,zero
80011b08:	00000021 	move	zero,zero
80011b0c:	012a9021 	addu	s2,t1,t2
80011b10:	02129021 	addu	s2,s0,s2
80011b14:	00000000 	nop
80011b18:	0180f821 	move	ra,t4
80011b1c:	3c14be02 	lui	s4,0xbe02
80011b20:	3694579b 	ori	s4,s4,0x579b
80011b24:	16920004 	bne	s4,s2,80011b38 <inst_error>
80011b28:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:19
80011b2c:	14400002 	bnez	v0,80011b38 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:20
80011b30:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:22
80011b34:	26730001 	addiu	s3,s3,1

80011b38 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:25
80011b38:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:26
80011b3c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:27
80011b40:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n79_jalr_ds.S:28
80011b44:	00000000 	nop

80011b48 <__CTOR_LIST__>:
	...

80011b50 <__CTOR_END__>:
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x1c
   4:	00020000 	sll	zero,v0,0x0
   8:	00000400 	sll	zero,zero,0x10
   c:	00000000 	nop
  10:	80000000 	lb	zero,0(zero)
  14:	00000a54 	0xa54
	...
  20:	0000001c 	0x1c
  24:	00020000 	sll	zero,v0,0x0
  28:	006b0400 	0x6b0400
  2c:	00000000 	nop
  30:	80000a58 	lb	zero,2648(zero)
  34:	00000054 	0x54
	...
  40:	0000001c 	0x1c
  44:	00020000 	sll	zero,v0,0x0
  48:	00de0400 	0xde0400
  4c:	00000000 	nop
  50:	80000ab0 	lb	zero,2736(zero)
  54:	000000e8 	0xe8
	...
  60:	0000001c 	0x1c
  64:	00020000 	sll	zero,v0,0x0
  68:	014f0400 	0x14f0400
  6c:	00000000 	nop
  70:	80000b98 	lb	zero,2968(zero)
  74:	00000044 	0x44
	...
  80:	0000001c 	0x1c
  84:	00020000 	sll	zero,v0,0x0
  88:	01c00400 	0x1c00400
  8c:	00000000 	nop
  90:	80000be0 	lb	zero,3040(zero)
  94:	00000050 	0x50
	...
  a0:	0000001c 	0x1c
  a4:	00020000 	sll	zero,v0,0x0
  a8:	02310400 	0x2310400
  ac:	00000000 	nop
  b0:	80004908 	lb	zero,18696(zero)
  b4:	00001358 	0x1358
	...
  c0:	0000001c 	0x1c
  c4:	00020000 	sll	zero,v0,0x0
  c8:	02a90400 	0x2a90400
  cc:	00000000 	nop
  d0:	80000c30 	lb	zero,3120(zero)
  d4:	00000044 	0x44
	...
  e0:	0000001c 	0x1c
  e4:	00020000 	sll	zero,v0,0x0
  e8:	031c0400 	0x31c0400
  ec:	00000000 	nop
  f0:	80000c78 	lb	zero,3192(zero)
  f4:	00000040 	ssnop
	...
 100:	0000001c 	0x1c
 104:	00020000 	sll	zero,v0,0x0
 108:	038f0400 	0x38f0400
 10c:	00000000 	nop
 110:	80005c60 	lb	zero,23648(zero)
 114:	00000aec 	0xaec
	...
 120:	0000001c 	0x1c
 124:	00020000 	sll	zero,v0,0x0
 128:	04080400 	tgei	zero,1024
 12c:	00000000 	nop
 130:	80000cb8 	lb	zero,3256(zero)
 134:	00000044 	0x44
	...
 140:	0000001c 	0x1c
 144:	00020000 	sll	zero,v0,0x0
 148:	047a0400 	0x47a0400
 14c:	00000000 	nop
 150:	80000d00 	lb	zero,3328(zero)
 154:	0000003c 	0x3c
	...
 160:	0000001c 	0x1c
 164:	00020000 	sll	zero,v0,0x0
 168:	04ed0400 	0x4ed0400
 16c:	00000000 	nop
 170:	80000d40 	lb	zero,3392(zero)
 174:	00000054 	0x54
	...
 180:	0000001c 	0x1c
 184:	00020000 	sll	zero,v0,0x0
 188:	055e0400 	0x55e0400
 18c:	00000000 	nop
 190:	8000674c 	lb	zero,26444(zero)
 194:	00000100 	sll	zero,zero,0x4
	...
 1a0:	0000001c 	0x1c
 1a4:	00020000 	sll	zero,v0,0x0
 1a8:	05d30400 	bgezall	t6,11ac <data_size-0xc0a4>
 1ac:	00000000 	nop
 1b0:	8000684c 	lb	zero,26700(zero)
 1b4:	00000108 	0x108
	...
 1c0:	0000001c 	0x1c
 1c4:	00020000 	sll	zero,v0,0x0
 1c8:	06470400 	0x6470400
 1cc:	00000000 	nop
 1d0:	80000d98 	lb	zero,3480(zero)
 1d4:	000000d8 	0xd8
	...
 1e0:	0000001c 	0x1c
 1e4:	00020000 	sll	zero,v0,0x0
 1e8:	06ba0400 	0x6ba0400
 1ec:	00000000 	nop
 1f0:	80000e70 	lb	zero,3696(zero)
 1f4:	00000044 	0x44
	...
 200:	0000001c 	0x1c
 204:	00020000 	sll	zero,v0,0x0
 208:	072d0400 	0x72d0400
 20c:	00000000 	nop
 210:	80000eb8 	lb	zero,3768(zero)
 214:	00000048 	0x48
	...
 220:	0000001c 	0x1c
 224:	00020000 	sll	zero,v0,0x0
 228:	079f0400 	0x79f0400
 22c:	00000000 	nop
 230:	80000f00 	lb	zero,3840(zero)
 234:	000000f4 	teq	zero,zero,0x3
	...
 240:	0000001c 	0x1c
 244:	00020000 	sll	zero,v0,0x0
 248:	08120400 	j	481000 <data_size+0x473db0>
 24c:	00000000 	nop
 250:	80000ff8 	lb	zero,4088(zero)
 254:	0000002c 	0x2c
	...
 260:	0000001c 	0x1c
 264:	00020000 	sll	zero,v0,0x0
 268:	08880400 	j	2201000 <data_size+0x21f3db0>
 26c:	00000000 	nop
 270:	80001028 	lb	zero,4136(zero)
 274:	000000c0 	ehb
	...
 280:	0000001c 	0x1c
 284:	00020000 	sll	zero,v0,0x0
 288:	08f80400 	j	3e01000 <data_size+0x3df3db0>
 28c:	00000000 	nop
 290:	800010e8 	lb	zero,4328(zero)
 294:	00000044 	0x44
	...
 2a0:	0000001c 	0x1c
 2a4:	00020000 	sll	zero,v0,0x0
 2a8:	096a0400 	j	5a81000 <data_size+0x5a73db0>
 2ac:	00000000 	nop
 2b0:	80006954 	lb	zero,26964(zero)
 2b4:	0000011c 	0x11c
	...
 2c0:	0000001c 	0x1c
 2c4:	00020000 	sll	zero,v0,0x0
 2c8:	09e00400 	j	7801000 <data_size+0x77f3db0>
 2cc:	00000000 	nop
 2d0:	80001130 	lb	zero,4400(zero)
 2d4:	000000f8 	0xf8
	...
 2e0:	0000001c 	0x1c
 2e4:	00020000 	sll	zero,v0,0x0
 2e8:	0a530400 	j	94c1000 <data_size+0x94b3db0>
 2ec:	00000000 	nop
 2f0:	80001228 	lb	zero,4648(zero)
 2f4:	00000040 	ssnop
	...
 300:	0000001c 	0x1c
 304:	00020000 	sll	zero,v0,0x0
 308:	0ac50400 	j	b141000 <data_size+0xb133db0>
 30c:	00000000 	nop
 310:	80006a70 	lb	zero,27248(zero)
 314:	00001358 	0x1358
	...
 320:	0000001c 	0x1c
 324:	00020000 	sll	zero,v0,0x0
 328:	0b3e0400 	j	cf81000 <data_size+0xcf73db0>
 32c:	00000000 	nop
 330:	80007dc8 	lb	zero,32200(zero)
 334:	00000a3c 	0xa3c
	...
 340:	0000001c 	0x1c
 344:	00020000 	sll	zero,v0,0x0
 348:	0bb60400 	j	ed81000 <data_size+0xed73db0>
 34c:	00000000 	nop
 350:	80001268 	lb	zero,4712(zero)
 354:	00000048 	0x48
	...
 360:	0000001c 	0x1c
 364:	00020000 	sll	zero,v0,0x0
 368:	0c270400 	jal	9c1000 <data_size+0x9b3db0>
 36c:	00000000 	nop
 370:	80008804 	lb	zero,-30716(zero)
 374:	000009b8 	0x9b8
	...
 380:	0000001c 	0x1c
 384:	00020000 	sll	zero,v0,0x0
 388:	0c9d0400 	jal	2741000 <data_size+0x2733db0>
 38c:	00000000 	nop
 390:	800012b0 	lb	zero,4784(zero)
 394:	00000048 	0x48
	...
 3a0:	0000001c 	0x1c
 3a4:	00020000 	sll	zero,v0,0x0
 3a8:	0d0e0400 	jal	4381000 <data_size+0x4373db0>
 3ac:	00000000 	nop
 3b0:	800091bc 	lb	zero,-28228(zero)
 3b4:	00000150 	0x150
	...
 3c0:	0000001c 	0x1c
 3c4:	00020000 	sll	zero,v0,0x0
 3c8:	0d840400 	jal	6101000 <data_size+0x60f3db0>
 3cc:	00000000 	nop
 3d0:	8000930c 	lb	zero,-27892(zero)
 3d4:	00000130 	tge	zero,zero,0x4
	...
 3e0:	0000001c 	0x1c
 3e4:	00020000 	sll	zero,v0,0x0
 3e8:	0dfa0400 	jal	7e81000 <data_size+0x7e73db0>
 3ec:	00000000 	nop
 3f0:	800012f8 	lb	zero,4856(zero)
 3f4:	00000040 	ssnop
	...
 400:	0000001c 	0x1c
 404:	00020000 	sll	zero,v0,0x0
 408:	0e6e0400 	jal	9b81000 <data_size+0x9b73db0>
 40c:	00000000 	nop
 410:	80001338 	lb	zero,4920(zero)
 414:	00000048 	0x48
	...
 420:	0000001c 	0x1c
 424:	00020000 	sll	zero,v0,0x0
 428:	0ee00400 	jal	b801000 <data_size+0xb7f3db0>
 42c:	00000000 	nop
 430:	80001380 	lb	zero,4992(zero)
 434:	00000044 	0x44
	...
 440:	0000001c 	0x1c
 444:	00020000 	sll	zero,v0,0x0
 448:	0f530400 	jal	d4c1000 <data_size+0xd4b3db0>
 44c:	00000000 	nop
 450:	8000943c 	lb	zero,-27588(zero)
 454:	00001358 	0x1358
	...
 460:	0000001c 	0x1c
 464:	00020000 	sll	zero,v0,0x0
 468:	0fcc0400 	jal	f301000 <data_size+0xf2f3db0>
 46c:	00000000 	nop
 470:	800013c8 	lb	zero,5064(zero)
 474:	00001044 	0x1044
	...
 480:	0000001c 	0x1c
 484:	00020000 	sll	zero,v0,0x0
 488:	103d0400 	beq	at,sp,148c <data_size-0xbdc4>
 48c:	00000000 	nop
 490:	80002410 	lb	zero,9232(zero)
 494:	00000100 	sll	zero,zero,0x4
	...
 4a0:	0000001c 	0x1c
 4a4:	00020000 	sll	zero,v0,0x0
 4a8:	10af0400 	beq	a1,t7,14ac <data_size-0xbda4>
 4ac:	00000000 	nop
 4b0:	80002510 	lb	zero,9488(zero)
 4b4:	00000048 	0x48
	...
 4c0:	0000001c 	0x1c
 4c4:	00020000 	sll	zero,v0,0x0
 4c8:	11210400 	beq	t1,at,14cc <data_size-0xbd84>
 4cc:	00000000 	nop
 4d0:	80002558 	lb	zero,9560(zero)
 4d4:	0000002c 	0x2c
	...
 4e0:	0000001c 	0x1c
 4e4:	00020000 	sll	zero,v0,0x0
 4e8:	11950400 	beq	t4,s5,14ec <data_size-0xbd64>
 4ec:	00000000 	nop
 4f0:	80002588 	lb	zero,9608(zero)
 4f4:	00000060 	0x60
	...
 500:	0000001c 	0x1c
 504:	00020000 	sll	zero,v0,0x0
 508:	12060400 	beq	s0,a2,150c <data_size-0xbd44>
 50c:	00000000 	nop
 510:	8000a794 	lb	zero,-22636(zero)
 514:	00000100 	sll	zero,zero,0x4
	...
 520:	0000001c 	0x1c
 524:	00020000 	sll	zero,v0,0x0
 528:	127b0400 	beq	s3,k1,152c <data_size-0xbd24>
 52c:	00000000 	nop
 530:	800025e8 	lb	zero,9704(zero)
 534:	00000044 	0x44
	...
 540:	0000001c 	0x1c
 544:	00020000 	sll	zero,v0,0x0
 548:	12ee0400 	beq	s7,t6,154c <data_size-0xbd04>
 54c:	00000000 	nop
 550:	80002630 	lb	zero,9776(zero)
 554:	00000048 	0x48
	...
 560:	0000001c 	0x1c
 564:	00020000 	sll	zero,v0,0x0
 568:	135f0400 	beq	k0,ra,156c <data_size-0xbce4>
 56c:	00000000 	nop
 570:	80002678 	lb	zero,9848(zero)
 574:	00000044 	0x44
	...
 580:	0000001c 	0x1c
 584:	00020000 	sll	zero,v0,0x0
 588:	13d10400 	beq	s8,s1,158c <data_size-0xbcc4>
 58c:	00000000 	nop
 590:	800026c0 	lb	zero,9920(zero)
 594:	00000058 	0x58
	...
 5a0:	0000001c 	0x1c
 5a4:	00020000 	sll	zero,v0,0x0
 5a8:	14440400 	bne	v0,a0,15ac <data_size-0xbca4>
 5ac:	00000000 	nop
 5b0:	80002718 	lb	zero,10008(zero)
 5b4:	000000c8 	0xc8
	...
 5c0:	0000001c 	0x1c
 5c4:	00020000 	sll	zero,v0,0x0
 5c8:	14b60400 	bne	a1,s6,15cc <data_size-0xbc84>
 5cc:	00000000 	nop
 5d0:	8000a894 	lb	zero,-22380(zero)
 5d4:	00000a68 	0xa68
	...
 5e0:	0000001c 	0x1c
 5e4:	00020000 	sll	zero,v0,0x0
 5e8:	152d0400 	bne	t1,t5,15ec <data_size-0xbc64>
 5ec:	00000000 	nop
 5f0:	800027e0 	lb	zero,10208(zero)
 5f4:	00000044 	0x44
	...
 600:	0000001c 	0x1c
 604:	00020000 	sll	zero,v0,0x0
 608:	15a00400 	bnez	t5,160c <data_size-0xbc44>
 60c:	00000000 	nop
 610:	80002828 	lb	zero,10280(zero)
 614:	00000048 	0x48
	...
 620:	0000001c 	0x1c
 624:	00020000 	sll	zero,v0,0x0
 628:	16120400 	bne	s0,s2,162c <data_size-0xbc24>
 62c:	00000000 	nop
 630:	80002870 	lb	zero,10352(zero)
 634:	00001b34 	teq	zero,zero,0x6c
	...
 640:	0000001c 	0x1c
 644:	00020000 	sll	zero,v0,0x0
 648:	16840400 	bne	s4,a0,164c <data_size-0xbc04>
 64c:	00000000 	nop
 650:	8000b2fc 	lb	zero,-19716(zero)
 654:	00001358 	0x1358
	...
 660:	0000001c 	0x1c
 664:	00020000 	sll	zero,v0,0x0
 668:	16fd0400 	bne	s7,sp,166c <data_size-0xbbe4>
 66c:	00000000 	nop
 670:	8000c654 	lb	zero,-14764(zero)
 674:	00001434 	teq	zero,zero,0x50
	...
 680:	0000001c 	0x1c
 684:	00020000 	sll	zero,v0,0x0
 688:	17780400 	bne	k1,t8,168c <data_size-0xbbc4>
 68c:	00000000 	nop
 690:	800043a8 	lb	zero,17320(zero)
 694:	000000dc 	0xdc
	...
 6a0:	0000001c 	0x1c
 6a4:	00020000 	sll	zero,v0,0x0
 6a8:	17ea0400 	bne	ra,t2,16ac <data_size-0xbba4>
 6ac:	00000000 	nop
 6b0:	8000da88 	lb	zero,-9592(zero)
 6b4:	00001358 	0x1358
	...
 6c0:	0000001c 	0x1c
 6c4:	00020000 	sll	zero,v0,0x0
 6c8:	18620400 	0x18620400
 6cc:	00000000 	nop
 6d0:	80004488 	lb	zero,17544(zero)
 6d4:	00000044 	0x44
	...
 6e0:	0000001c 	0x1c
 6e4:	00020000 	sll	zero,v0,0x0
 6e8:	18d50400 	0x18d50400
 6ec:	00000000 	nop
 6f0:	800044d0 	lb	zero,17616(zero)
 6f4:	000000b4 	teq	zero,zero,0x2
	...
 700:	0000001c 	0x1c
 704:	00020000 	sll	zero,v0,0x0
 708:	19480400 	0x19480400
 70c:	00000000 	nop
 710:	80004588 	lb	zero,17800(zero)
 714:	00000040 	ssnop
	...
 720:	0000001c 	0x1c
 724:	00020000 	sll	zero,v0,0x0
 728:	19bb0400 	0x19bb0400
 72c:	00000000 	nop
 730:	800045c8 	lb	zero,17864(zero)
 734:	00000044 	0x44
	...
 740:	0000001c 	0x1c
 744:	00020000 	sll	zero,v0,0x0
 748:	1a2d0400 	0x1a2d0400
 74c:	00000000 	nop
 750:	8000ede0 	lb	zero,-4640(zero)
 754:	00000118 	0x118
	...
 760:	0000001c 	0x1c
 764:	00020000 	sll	zero,v0,0x0
 768:	1aa50400 	0x1aa50400
 76c:	00000000 	nop
 770:	80004610 	lb	zero,17936(zero)
 774:	00000044 	0x44
	...
 780:	0000001c 	0x1c
 784:	00020000 	sll	zero,v0,0x0
 788:	1b180400 	0x1b180400
 78c:	00000000 	nop
 790:	80004658 	lb	zero,18008(zero)
 794:	00000054 	0x54
	...
 7a0:	0000001c 	0x1c
 7a4:	00020000 	sll	zero,v0,0x0
 7a8:	1b890400 	0x1b890400
 7ac:	00000000 	nop
 7b0:	800046b0 	lb	zero,18096(zero)
 7b4:	00000044 	0x44
	...
 7c0:	0000001c 	0x1c
 7c4:	00020000 	sll	zero,v0,0x0
 7c8:	1bfc0400 	0x1bfc0400
 7cc:	00000000 	nop
 7d0:	800046f8 	lb	zero,18168(zero)
 7d4:	000000e4 	0xe4
	...
 7e0:	0000001c 	0x1c
 7e4:	00020000 	sll	zero,v0,0x0
 7e8:	1c6f0400 	0x1c6f0400
 7ec:	00000000 	nop
 7f0:	8000eef8 	lb	zero,-4360(zero)
 7f4:	00000138 	0x138
	...
 800:	0000001c 	0x1c
 804:	00020000 	sll	zero,v0,0x0
 808:	1ce70400 	0x1ce70400
 80c:	00000000 	nop
 810:	800047e0 	lb	zero,18400(zero)
 814:	00000044 	0x44
	...
 820:	0000001c 	0x1c
 824:	00020000 	sll	zero,v0,0x0
 828:	1d590400 	0x1d590400
 82c:	00000000 	nop
 830:	8000f030 	lb	zero,-4048(zero)
 834:	0000010c 	syscall	0x4
	...
 840:	0000001c 	0x1c
 844:	00020000 	sll	zero,v0,0x0
 848:	1dcf0400 	0x1dcf0400
 84c:	00000000 	nop
 850:	80004828 	lb	zero,18472(zero)
 854:	00000044 	0x44
	...
 860:	0000001c 	0x1c
 864:	00020000 	sll	zero,v0,0x0
 868:	1e410400 	0x1e410400
 86c:	00000000 	nop
 870:	8000f13c 	lb	zero,-3780(zero)
 874:	000000ac 	0xac
	...
 880:	0000001c 	0x1c
 884:	00020000 	sll	zero,v0,0x0
 888:	1eb40400 	0x1eb40400
 88c:	00000000 	nop
 890:	8000f1e8 	lb	zero,-3608(zero)
 894:	00001358 	0x1358
	...
 8a0:	0000001c 	0x1c
 8a4:	00020000 	sll	zero,v0,0x0
 8a8:	1f2d0400 	0x1f2d0400
 8ac:	00000000 	nop
 8b0:	80004870 	lb	zero,18544(zero)
 8b4:	00000048 	0x48
	...
 8c0:	0000001c 	0x1c
 8c4:	00020000 	sll	zero,v0,0x0
 8c8:	1f9f0400 	0x1f9f0400
 8cc:	00000000 	nop
 8d0:	80010540 	lb	at,1344(zero)
 8d4:	00001434 	teq	zero,zero,0x50
	...
 8e0:	0000001c 	0x1c
 8e4:	00020000 	sll	zero,v0,0x0
 8e8:	201a0400 	addi	k0,zero,1024
 8ec:	00000000 	nop
 8f0:	80011974 	lb	at,6516(zero)
 8f4:	000000e4 	0xe4
	...
 900:	0000001c 	0x1c
 904:	00020000 	sll	zero,v0,0x0
 908:	208f0400 	addi	t7,a0,1024
 90c:	00000000 	nop
 910:	800048b8 	lb	zero,18616(zero)
 914:	00000034 	teq	zero,zero
	...
 920:	0000001c 	0x1c
 924:	00020000 	sll	zero,v0,0x0
 928:	21010400 	addi	at,t0,1024
 92c:	00000000 	nop
 930:	80011a58 	lb	at,6744(zero)
 934:	000000f0 	tge	zero,zero,0x3
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	80000a58 	lb	zero,2648(zero)
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	80000ab0 	lb	zero,2736(zero)
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	80000b98 	lb	zero,2968(zero)
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	80000be0 	lb	zero,3040(zero)
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	80000c30 	lb	zero,3120(zero)
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	80000c78 	lb	zero,3192(zero)
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	80000cb8 	lb	zero,3256(zero)
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	80000d00 	lb	zero,3328(zero)
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	80000d40 	lb	zero,3392(zero)
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	80000d98 	lb	zero,3480(zero)
	...
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f
 140:	80000e70 	lb	zero,3696(zero)
	...
 158:	0000001d 	0x1d
 15c:	0000001f 	0x1f
 160:	80000eb8 	lb	zero,3768(zero)
	...
 178:	0000001d 	0x1d
 17c:	0000001f 	0x1f
 180:	80000f00 	lb	zero,3840(zero)
	...
 198:	0000001d 	0x1d
 19c:	0000001f 	0x1f
 1a0:	80000ff8 	lb	zero,4088(zero)
	...
 1b8:	0000001d 	0x1d
 1bc:	0000001f 	0x1f
 1c0:	80001028 	lb	zero,4136(zero)
	...
 1d8:	0000001d 	0x1d
 1dc:	0000001f 	0x1f
 1e0:	800010e8 	lb	zero,4328(zero)
	...
 1f8:	0000001d 	0x1d
 1fc:	0000001f 	0x1f
 200:	80001130 	lb	zero,4400(zero)
	...
 218:	0000001d 	0x1d
 21c:	0000001f 	0x1f
 220:	80001228 	lb	zero,4648(zero)
	...
 238:	0000001d 	0x1d
 23c:	0000001f 	0x1f
 240:	80001268 	lb	zero,4712(zero)
	...
 258:	0000001d 	0x1d
 25c:	0000001f 	0x1f
 260:	800012b0 	lb	zero,4784(zero)
	...
 278:	0000001d 	0x1d
 27c:	0000001f 	0x1f
 280:	800012f8 	lb	zero,4856(zero)
	...
 298:	0000001d 	0x1d
 29c:	0000001f 	0x1f
 2a0:	80001338 	lb	zero,4920(zero)
	...
 2b8:	0000001d 	0x1d
 2bc:	0000001f 	0x1f
 2c0:	80001380 	lb	zero,4992(zero)
	...
 2d8:	0000001d 	0x1d
 2dc:	0000001f 	0x1f
 2e0:	800013c8 	lb	zero,5064(zero)
	...
 2f8:	0000001d 	0x1d
 2fc:	0000001f 	0x1f
 300:	80002410 	lb	zero,9232(zero)
	...
 318:	0000001d 	0x1d
 31c:	0000001f 	0x1f
 320:	80002510 	lb	zero,9488(zero)
	...
 338:	0000001d 	0x1d
 33c:	0000001f 	0x1f
 340:	80002558 	lb	zero,9560(zero)
	...
 358:	0000001d 	0x1d
 35c:	0000001f 	0x1f
 360:	80002588 	lb	zero,9608(zero)
	...
 378:	0000001d 	0x1d
 37c:	0000001f 	0x1f
 380:	800025e8 	lb	zero,9704(zero)
	...
 398:	0000001d 	0x1d
 39c:	0000001f 	0x1f
 3a0:	80002630 	lb	zero,9776(zero)
	...
 3b8:	0000001d 	0x1d
 3bc:	0000001f 	0x1f
 3c0:	80002678 	lb	zero,9848(zero)
	...
 3d8:	0000001d 	0x1d
 3dc:	0000001f 	0x1f
 3e0:	800026c0 	lb	zero,9920(zero)
	...
 3f8:	0000001d 	0x1d
 3fc:	0000001f 	0x1f
 400:	80002718 	lb	zero,10008(zero)
	...
 418:	0000001d 	0x1d
 41c:	0000001f 	0x1f
 420:	800027e0 	lb	zero,10208(zero)
	...
 438:	0000001d 	0x1d
 43c:	0000001f 	0x1f
 440:	80002828 	lb	zero,10280(zero)
	...
 458:	0000001d 	0x1d
 45c:	0000001f 	0x1f
 460:	80002870 	lb	zero,10352(zero)
	...
 478:	0000001d 	0x1d
 47c:	0000001f 	0x1f
 480:	800043a8 	lb	zero,17320(zero)
	...
 498:	0000001d 	0x1d
 49c:	0000001f 	0x1f
 4a0:	80004488 	lb	zero,17544(zero)
	...
 4b8:	0000001d 	0x1d
 4bc:	0000001f 	0x1f
 4c0:	800044d0 	lb	zero,17616(zero)
	...
 4d8:	0000001d 	0x1d
 4dc:	0000001f 	0x1f
 4e0:	80004588 	lb	zero,17800(zero)
	...
 4f8:	0000001d 	0x1d
 4fc:	0000001f 	0x1f
 500:	800045c8 	lb	zero,17864(zero)
	...
 518:	0000001d 	0x1d
 51c:	0000001f 	0x1f
 520:	80004610 	lb	zero,17936(zero)
	...
 538:	0000001d 	0x1d
 53c:	0000001f 	0x1f
 540:	80004658 	lb	zero,18008(zero)
	...
 558:	0000001d 	0x1d
 55c:	0000001f 	0x1f
 560:	800046b0 	lb	zero,18096(zero)
	...
 578:	0000001d 	0x1d
 57c:	0000001f 	0x1f
 580:	800046f8 	lb	zero,18168(zero)
	...
 598:	0000001d 	0x1d
 59c:	0000001f 	0x1f
 5a0:	800047e0 	lb	zero,18400(zero)
	...
 5b8:	0000001d 	0x1d
 5bc:	0000001f 	0x1f
 5c0:	80004828 	lb	zero,18472(zero)
	...
 5d8:	0000001d 	0x1d
 5dc:	0000001f 	0x1f
 5e0:	80004870 	lb	zero,18544(zero)
	...
 5f8:	0000001d 	0x1d
 5fc:	0000001f 	0x1f
 600:	800048b8 	lb	zero,18616(zero)
	...
 618:	0000001d 	0x1d
 61c:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	000001e2 	0x1e2
       4:	00020000 	sll	zero,v0,0x0
       8:	001e0101 	0x1e0101
       c:	fb0e0d00 	sdc2	$14,3328(t8)
      10:	01010101 	0x1010101
      14:	00000001 	movf	zero,zero,$fcc0
      18:	00000100 	sll	zero,zero,0x4
      1c:	73746172 	0x73746172
      20:	742e5300 	jalx	b94c00 <data_size+0xb879b0>
      24:	00000000 	nop
      28:	00050280 	sll	zero,a1,0xa
      2c:	00000003 	sra	zero,zero,0x0
      30:	c000014b 	ll	zero,331(zero)
      34:	4b4b8383 	c2	0x14b8383
      38:	4b4b4b4c 	c2	0x14b4b4c
      3c:	4b02d006 	c2	0x102d006
      40:	184b4b4b 	0x184b4b4b
      44:	4b4b4b4b 	c2	0x14b4b4b
      48:	4b4b4b4b 	c2	0x14b4b4b
      4c:	4b4b4b4b 	c2	0x14b4b4b
      50:	4b4b4b4b 	c2	0x14b4b4b
      54:	4b4b4b4b 	c2	0x14b4b4b
      58:	4b4b4b4b 	c2	0x14b4b4b
      5c:	4b4c4b4b 	c2	0x14c4b4b
      60:	834b4b4b 	lb	t3,19275(k0)
      64:	4b4b4b4b 	c2	0x14b4b4b
      68:	4b4b4b4b 	c2	0x14b4b4b
      6c:	4b4b4b4c 	c2	0x14b4b4c
      70:	4b4b834b 	c2	0x14b834b
      74:	4b4b4b4b 	c2	0x14b4b4b
      78:	4b4b4b4b 	c2	0x14b4b4b
      7c:	4b4b4b4b 	c2	0x14b4b4b
      80:	4b4c834b 	c2	0x14c834b
      84:	4b4b4c4b 	c2	0x14b4c4b
      88:	4b4b4b4b 	c2	0x14b4b4b
      8c:	4b4b4b4b 	c2	0x14b4b4b
      90:	4b4b4b4b 	c2	0x14b4b4b
      94:	4c4b4b4b 	0x4c4b4b4b
      98:	4b4b4b4b 	c2	0x14b4b4b
      9c:	4b4b4b4b 	c2	0x14b4b4b
      a0:	4b4b4c4b 	c2	0x14b4c4b
      a4:	4b4b4b4b 	c2	0x14b4b4b
      a8:	4b4b4b4b 	c2	0x14b4b4b
      ac:	4b4b4b4b 	c2	0x14b4b4b
      b0:	4c4b4b4b 	0x4c4b4b4b
      b4:	4b4b4b4b 	c2	0x14b4b4b
      b8:	4b4b4b4b 	c2	0x14b4b4b
      bc:	4b4b4b4c 	c2	0x14b4b4c
      c0:	4b4b4b4b 	c2	0x14b4b4b
      c4:	4b4b4b4b 	c2	0x14b4b4b
      c8:	4b4b4b4b 	c2	0x14b4b4b
      cc:	4b4c4b4b 	c2	0x14c4b4b
      d0:	4b4b4b4b 	c2	0x14b4b4b
      d4:	4c4b4b4b 	0x4c4b4b4b
      d8:	4b4b4b4b 	c2	0x14b4b4b
      dc:	4c4b4b4b 	0x4c4b4b4b
      e0:	4d4c4b4b 	0x4d4c4b4b
      e4:	504b834c 	beql	v0,t3,fffe0e18 <_stack+0x7fddc530>
      e8:	834b4c4b 	lb	t3,19531(k0)
      ec:	4d4b4d4b 	0x4d4b4d4b
      f0:	4d4b4d4b 	0x4d4b4d4b
      f4:	4d4b4d4b 	0x4d4b4d4b
      f8:	4d4b4d4b 	0x4d4b4d4b
      fc:	4d4b0313 	0x4d4b0313
     100:	4a4b4d4b 	c2	0x4b4d4b
     104:	4d4b4d4b 	0x4d4b4d4b
     108:	4d4b4d4b 	0x4d4b4d4b
     10c:	4d4b4d4b 	0x4d4b4d4b
     110:	4d4b4d4b 	0x4d4b4d4b
     114:	4d4b4d4b 	0x4d4b4d4b
     118:	4d4b4d4b 	0x4d4b4d4b
     11c:	4d4b4d4b 	0x4d4b4d4b
     120:	4d4b4d4b 	0x4d4b4d4b
     124:	4d4b4d4b 	0x4d4b4d4b
     128:	030b4a4b 	0x30b4a4b
     12c:	4d4b4d4b 	0x4d4b4d4b
     130:	4d4b4d4b 	0x4d4b4d4b
     134:	4d4b4d4b 	0x4d4b4d4b
     138:	4d4b514b 	0x4d4b514b
     13c:	4d4b4d4b 	0x4d4b4d4b
     140:	4d4b514b 	0x4d4b514b
     144:	030b4a4b 	0x30b4a4b
     148:	514b030b 	beql	t2,t3,d78 <data_size-0xc4d8>
     14c:	4a4b4b4b 	c2	0x4b4b4b
     150:	4b4b4b4b 	c2	0x14b4b4b
     154:	4b4b4b4b 	c2	0x14b4b4b
     158:	03344a83 	0x3344a83
     15c:	4b4b4b4b 	c2	0x14b4b4b
     160:	834b4b4b 	lb	t3,19275(k0)
     164:	4b834b4b 	c2	0x1834b4b
     168:	4b4b834b 	c2	0x14b834b
     16c:	4b4b4b83 	c2	0x14b4b83
     170:	4b4b4b4b 	c2	0x14b4b4b
     174:	834b4b4b 	lb	t3,19275(k0)
     178:	4b834b4b 	c2	0x1834b4b
     17c:	4b4b834b 	c2	0x14b834b
     180:	4b4b4b83 	c2	0x14b4b83
     184:	4b4b4b4b 	c2	0x14b4b4b
     188:	834b4b4b 	lb	t3,19275(k0)
     18c:	4b834b4b 	c2	0x1834b4b
     190:	4b4b834b 	c2	0x14b834b
     194:	4b4b4b83 	c2	0x14b4b83
     198:	4b4b4b4b 	c2	0x14b4b4b
     19c:	834b4b4b 	lb	t3,19275(k0)
     1a0:	4b834b4b 	c2	0x1834b4b
     1a4:	4b4b834b 	c2	0x14b834b
     1a8:	4b4b4b83 	c2	0x14b4b83
     1ac:	4b4b4b4b 	c2	0x14b4b4b
     1b0:	834b4b4b 	lb	t3,19275(k0)
     1b4:	4b834b4b 	c2	0x1834b4b
     1b8:	4b4b834b 	c2	0x14b834b
     1bc:	4b4b4b83 	c2	0x14b4b83
     1c0:	4b4b4b4b 	c2	0x14b4b4b
     1c4:	834b4b4b 	lb	t3,19275(k0)
     1c8:	4b834b4b 	c2	0x1834b4b
     1cc:	4b4b834b 	c2	0x14b834b
     1d0:	4b4b4e4b 	c2	0x14b4e4b
     1d4:	4b4c4b4d 	c2	0x14c4b4d
     1d8:	834c4b4e 	lb	t4,19278(k0)
     1dc:	4c4b4b4b 	0x4c4b4b4b
     1e0:	4b020400 	c2	0x1020400
     1e4:	01010000 	0x1010000
     1e8:	004b0002 	0x4b0002
     1ec:	00000021 	move	zero,zero
     1f0:	0101fb0e 	0x101fb0e
     1f4:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     1f8:	01010000 	0x1010000
     1fc:	00010000 	sll	zero,at,0x0
     200:	01006e35 	0x1006e35
     204:	375f6d74 	ori	ra,k0,0x6d74
     208:	63302e53 	0x63302e53
     20c:	00000000 	nop
     210:	00000502 	srl	zero,zero,0x14
     214:	80000a58 	lb	zero,2648(zero)
     218:	030a014b 	0x30a014b
     21c:	4c030982 	0x4c030982
     220:	4b4c4b4c 	c2	0x14c4b4c
     224:	4b4b4b4b 	c2	0x14b4b4b
     228:	4b4c4b4c 	c2	0x14c4b4c
     22c:	4d4b4b4b 	0x4d4b4b4b
     230:	02040001 	movf	zero,s0,$fcc1
     234:	01000000 	0x1000000
     238:	40000200 	0x40000200
     23c:	00001f01 	0x1f01
     240:	01fb0e0d 	break	0x1fb,0x38
     244:	00010101 	0x10101
     248:	01000000 	0x1000000
     24c:	01000001 	movf	zero,t0,$fcc0
     250:	006e3339 	0x6e3339
     254:	5f6a722e 	0x5f6a722e
     258:	53000000 	beqzl	t8,25c <data_size-0xcff4>
     25c:	00000005 	0x5
     260:	0280000a 	movz	zero,s4,zero
     264:	b0030a01 	0xb0030a01
     268:	4b4c02c4 	c2	0x14c02c4
     26c:	01144b4c 	syscall	0x4512d
     270:	4d4b4b4b 	0x4d4b4b4b
     274:	02040001 	movf	zero,s0,$fcc1
     278:	01000000 	0x1000000
     27c:	3e000200 	0x3e000200
     280:	00001f01 	0x1f01
     284:	01fb0e0d 	break	0x1fb,0x38
     288:	00010101 	0x10101
     28c:	01000000 	0x1000000
     290:	01000001 	movf	zero,t0,$fcc0
     294:	006e375f 	0x6e375f
     298:	736c742e 	0x736c742e
     29c:	53000000 	beqzl	t8,2a0 <data_size-0xcfb0>
     2a0:	00000005 	0x5
     2a4:	0280000b 	movn	zero,s4,zero
     2a8:	98030a01 	lwr	v1,2561(zero)
     2ac:	4b4c08e6 	c2	0x14c08e6
     2b0:	4b4c4d4b 	c2	0x14c4d4b
     2b4:	4b4b0204 	c2	0x14b0204
     2b8:	00010100 	sll	zero,at,0x4
     2bc:	00003f00 	sll	a3,zero,0x1c
     2c0:	02000000 	0x2000000
     2c4:	1f0101fb 	0x1f0101fb
     2c8:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     2cc:	01010100 	0x1010100
     2d0:	00000100 	sll	zero,zero,0x4
     2d4:	0001006e 	0x1006e
     2d8:	34375f6c 	ori	s7,at,0x5f6c
     2dc:	622e5300 	0x622e5300
     2e0:	00000000 	nop
     2e4:	00050280 	sll	zero,a1,0xa
     2e8:	000be003 	sra	gp,t3,0x0
     2ec:	0a014b4c 	j	8052d30 <data_size+0x8045ae0>
     2f0:	022c144b 	0x22c144b
     2f4:	4c4d4b4b 	0x4c4d4b4b
     2f8:	4b020400 	c2	0x1020400
     2fc:	01010000 	0x1010000
     300:	006c0002 	0x6c0002
     304:	00000026 	xor	zero,zero,zero
     308:	0101fb0e 	0x101fb0e
     30c:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     310:	01010000 	0x1010000
     314:	00010000 	sll	zero,at,0x0
     318:	01006e38 	0x1006e38
     31c:	315f626e 	andi	ra,t2,0x626e
     320:	655f6578 	0x655f6578
     324:	5f64732e 	0x5f64732e
     328:	53000000 	beqzl	t8,32c <data_size-0xcf24>
     32c:	00000005 	0x5
     330:	02800049 	0x2800049
     334:	08030d01 	j	c3404 <data_size+0xb61b4>
     338:	4d02c003 	bc3fl	ffff0348 <_stack+0x7fdeba60>
     33c:	1302c003 	beq	t8,v0,ffff034c <_stack+0x7fdeba64>
     340:	1302c003 	beq	t8,v0,ffff0350 <_stack+0x7fdeba68>
     344:	1302c003 	beq	t8,v0,ffff0354 <_stack+0x7fdeba6c>
     348:	1302c003 	beq	t8,v0,ffff0358 <_stack+0x7fdeba70>
     34c:	1302c003 	beq	t8,v0,ffff035c <_stack+0x7fdeba74>
     350:	1302c003 	beq	t8,v0,ffff0360 <_stack+0x7fdeba78>
     354:	1302c003 	beq	t8,v0,ffff0364 <_stack+0x7fdeba7c>
     358:	1302c003 	beq	t8,v0,ffff0368 <_stack+0x7fdeba80>
     35c:	1302c003 	beq	t8,v0,ffff036c <_stack+0x7fdeba84>
     360:	1302c003 	beq	t8,v0,ffff0370 <_stack+0x7fdeba88>
     364:	184d4b4b 	0x184d4b4b
     368:	4b020400 	c2	0x1020400
     36c:	01010000 	0x1010000
     370:	00400002 	0x400002
     374:	00000021 	move	zero,zero
     378:	0101fb0e 	0x101fb0e
     37c:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     380:	01010000 	0x1010000
     384:	00010000 	sll	zero,at,0x0
     388:	01006e34 	teq	t0,zero,0x1b8
     38c:	5f616464 	0x5f616464
     390:	69752e53 	0x69752e53
     394:	00000000 	nop
     398:	00000502 	srl	zero,zero,0x14
     39c:	80000c30 	lb	zero,3120(zero)
     3a0:	030a014b 	0x30a014b
     3a4:	4c08e64b 	0x4c08e64b
     3a8:	4c4d4b4b 	0x4c4d4b4b
     3ac:	4b020400 	c2	0x1020400
     3b0:	01010000 	0x1010000
     3b4:	00400002 	0x400002
     3b8:	00000021 	move	zero,zero
     3bc:	0101fb0e 	0x101fb0e
     3c0:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     3c4:	01010000 	0x1010000
     3c8:	00010000 	sll	zero,at,0x0
     3cc:	01006e32 	tlt	t0,zero,0x1b8
     3d0:	385f7372 	xori	ra,v0,0x7372
     3d4:	6c762e53 	0x6c762e53
     3d8:	00000000 	nop
     3dc:	00000502 	srl	zero,zero,0x14
     3e0:	80000c78 	lb	zero,3192(zero)
     3e4:	030a014b 	0x30a014b
     3e8:	4c08ae4b 	0x4c08ae4b
     3ec:	4c4d4b4b 	0x4c4d4b4b
     3f0:	4b020400 	c2	0x1020400
     3f4:	01010000 	0x1010000
     3f8:	006d0002 	0x6d0002
     3fc:	00000027 	nor	zero,zero,zero
     400:	0101fb0e 	0x101fb0e
     404:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     408:	01010000 	0x1010000
     40c:	00010000 	sll	zero,at,0x0
     410:	01006e39 	0x1006e39
     414:	315f6a61 	andi	ra,t2,0x6a61
     418:	6c725f65 	0x6c725f65
     41c:	785f6473 	0x785f6473
     420:	2e530000 	sltiu	s3,s2,0
     424:	00000000 	nop
     428:	05028000 	bltzl	t0,fffe042c <_stack+0x7fddbb44>
     42c:	5c60030d 	bgtzl	v1,1064 <data_size-0xc1ec>
     430:	014d02fc 	0x14d02fc
     434:	011302fc 	0x11302fc
     438:	011302fc 	0x11302fc
     43c:	011302fc 	0x11302fc
     440:	011302fc 	0x11302fc
     444:	011302fc 	0x11302fc
     448:	011302fc 	0x11302fc
     44c:	011302fc 	0x11302fc
     450:	011302fc 	0x11302fc
     454:	011302fc 	0x11302fc
     458:	011302fc 	0x11302fc
     45c:	01184d4b 	0x1184d4b
     460:	4b4b0204 	c2	0x14b0204
     464:	00010100 	sll	zero,at,0x4
     468:	00003f00 	sll	a3,zero,0x1c
     46c:	02000000 	0x2000000
     470:	200101fb 	addi	at,zero,507
     474:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     478:	01010100 	0x1010100
     47c:	00000100 	sll	zero,zero,0x4
     480:	0001006e 	0x1006e
     484:	325f6164 	andi	ra,s2,0x6164
     488:	64692e53 	0x64692e53
     48c:	00000000 	nop
     490:	00000502 	srl	zero,zero,0x14
     494:	80000cb8 	lb	zero,3256(zero)
     498:	030a014b 	0x30a014b
     49c:	4c08e64b 	0x4c08e64b
     4a0:	4c4d4b4b 	0x4c4d4b4b
     4a4:	4b020400 	c2	0x1020400
     4a8:	01010000 	0x1010000
     4ac:	00400002 	0x400002
     4b0:	00000021 	move	zero,zero
     4b4:	0101fb0e 	0x101fb0e
     4b8:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     4bc:	01010000 	0x1010000
     4c0:	00010000 	sll	zero,at,0x0
     4c4:	01006e34 	teq	t0,zero,0x1b8
     4c8:	325f6d66 	andi	ra,s2,0x6d66
     4cc:	6c6f2e53 	0x6c6f2e53
     4d0:	00000000 	nop
     4d4:	00000502 	srl	zero,zero,0x14
     4d8:	80000d00 	lb	zero,3328(zero)
     4dc:	030a014b 	0x30a014b
     4e0:	4c08764b 	0x4c08764b
     4e4:	4c4d4b4b 	0x4c4d4b4b
     4e8:	4b020400 	c2	0x1020400
     4ec:	01010000 	0x1010000
     4f0:	003f0002 	ror	zero,ra,0x0
     4f4:	0000001f 	0x1f
     4f8:	0101fb0e 	0x101fb0e
     4fc:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     500:	01010000 	0x1010000
     504:	00010000 	sll	zero,at,0x0
     508:	01006e35 	0x1006e35
     50c:	345f7377 	ori	ra,v0,0x7377
     510:	2e530000 	sltiu	s3,s2,0
     514:	00000000 	nop
     518:	05028000 	bltzl	t0,fffe051c <_stack+0x7fddbc34>
     51c:	0d40030a 	jal	5000c28 <data_size+0x4ff39d8>
     520:	014b4c02 	0x14b4c02
     524:	30154b4c 	andi	s5,zero,0x4b4c
     528:	4d4b4b4b 	0x4d4b4b4b
     52c:	02040001 	movf	zero,s0,$fcc1
     530:	01000000 	0x1000000
     534:	44000200 	0x44000200
     538:	00002301 	0x2301
     53c:	01fb0e0d 	break	0x1fb,0x38
     540:	00010101 	0x10101
     544:	01000000 	0x1000000
     548:	01000001 	movf	zero,t0,$fcc0
     54c:	006e3639 	0x6e3639
     550:	5f626e65 	0x5f626e65
     554:	5f64732e 	0x5f64732e
     558:	53000000 	beqzl	t8,55c <data_size-0xccf4>
     55c:	00000005 	0x5
     560:	02800067 	0x2800067
     564:	4c030d01 	0x4c030d01
     568:	4b4c02dc 	c2	0x14c02dc
     56c:	01144b4c 	syscall	0x4512d
     570:	4d4b4b4b 	0x4d4b4b4b
     574:	02040001 	movf	zero,s0,$fcc1
     578:	01000000 	0x1000000
     57c:	43000200 	c0	0x1000200
     580:	00002201 	0x2201
     584:	01fb0e0d 	break	0x1fb,0x38
     588:	00010101 	0x10101
     58c:	01000000 	0x1000000
     590:	01000001 	movf	zero,t0,$fcc0
     594:	006e3738 	0x6e3738
     598:	5f6a725f 	0x5f6a725f
     59c:	64732e53 	0x64732e53
     5a0:	00000000 	nop
     5a4:	00000502 	srl	zero,zero,0x14
     5a8:	8000684c 	lb	zero,26700(zero)
     5ac:	030d014b 	0x30d014b
     5b0:	4c02e401 	0x4c02e401
     5b4:	144b4c4d 	bne	v0,t3,136ec <data_size+0x649c>
     5b8:	4b4b4b02 	c2	0x14b4b02
     5bc:	04000101 	bltz	zero,9c4 <data_size-0xc88c>
     5c0:	00000042 	srl	zero,zero,0x1
     5c4:	00020000 	sll	zero,v0,0x0
     5c8:	00210101 	0x210101
     5cc:	fb0e0d00 	sdc2	$14,3328(t8)
     5d0:	01010101 	0x1010101
     5d4:	00000001 	movf	zero,zero,$fcc0
     5d8:	00000100 	sll	zero,zero,0x4
     5dc:	6e33335f 	0x6e33335f
     5e0:	626c657a 	0x626c657a
     5e4:	2e530000 	sltiu	s3,s2,0
     5e8:	00000000 	nop
     5ec:	05028000 	bltzl	t0,fffe05f0 <_stack+0x7fddbd08>
     5f0:	0d98030a 	jal	6600c28 <data_size+0x65f39d8>
     5f4:	014b4c02 	0x14b4c02
     5f8:	b401144b 	0xb401144b
     5fc:	4c4d4b4b 	0x4c4d4b4b
     600:	4b020400 	c2	0x1020400
     604:	01010000 	0x1010000
     608:	00400002 	0x400002
     60c:	00000021 	move	zero,zero
     610:	0101fb0e 	0x101fb0e
     614:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     618:	01010000 	0x1010000
     61c:	00010000 	sll	zero,at,0x0
     620:	01006e34 	teq	t0,zero,0x1b8
     624:	345f6d74 	ori	ra,v0,0x6d74
     628:	6c6f2e53 	0x6c6f2e53
     62c:	00000000 	nop
     630:	00000502 	srl	zero,zero,0x14
     634:	80000e70 	lb	zero,3696(zero)
     638:	030a014b 	0x30a014b
     63c:	4c08e74b 	0x4c08e74b
     640:	4c4d4b4b 	0x4c4d4b4b
     644:	4b020400 	c2	0x1020400
     648:	01010000 	0x1010000
     64c:	00400002 	0x400002
     650:	00000020 	add	zero,zero,zero
     654:	0101fb0e 	0x101fb0e
     658:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     65c:	01010000 	0x1010000
     660:	00010000 	sll	zero,at,0x0
     664:	01006e33 	tltu	t0,zero,0x1b8
     668:	5f616464 	0x5f616464
     66c:	752e5300 	jalx	4b94c00 <data_size+0x4b879b0>
     670:	00000000 	nop
     674:	00050280 	sll	zero,a1,0xa
     678:	000eb803 	sra	s7,t6,0x0
     67c:	0a014b4c 	j	8052d30 <data_size+0x8045ae0>
     680:	0224144b 	0x224144b
     684:	4c4d4b4b 	0x4c4d4b4b
     688:	4b020400 	c2	0x1020400
     68c:	01010000 	0x1010000
     690:	00420002 	0x420002
     694:	00000021 	move	zero,zero
     698:	0101fb0e 	0x101fb0e
     69c:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     6a0:	01010000 	0x1010000
     6a4:	00010000 	sll	zero,at,0x0
     6a8:	01006e34 	teq	t0,zero,0x1b8
     6ac:	305f6a61 	andi	ra,v0,0x6a61
     6b0:	6c722e53 	0x6c722e53
     6b4:	00000000 	nop
     6b8:	00000502 	srl	zero,zero,0x14
     6bc:	80000f00 	lb	zero,3840(zero)
     6c0:	030a014b 	0x30a014b
     6c4:	4c02d001 	mfc3	v0,$26,1
     6c8:	144b4c4d 	bne	v0,t3,13800 <data_size+0x65b0>
     6cc:	4b4b4b02 	c2	0x14b4b02
     6d0:	04000101 	bltz	zero,ad8 <data_size-0xc778>
     6d4:	00000043 	sra	zero,zero,0x1
     6d8:	00020000 	sll	zero,v0,0x0
     6dc:	00240101 	0x240101
     6e0:	fb0e0d00 	sdc2	$14,3328(t8)
     6e4:	01010101 	0x1010101
     6e8:	00000001 	movf	zero,zero,$fcc0
     6ec:	00000100 	sll	zero,zero,0x4
     6f0:	6e34365f 	0x6e34365f
     6f4:	73797363 	0x73797363
     6f8:	616c6c2e 	0x616c6c2e
     6fc:	53000000 	beqzl	t8,700 <data_size-0xcb50>
     700:	00000005 	0x5
     704:	0280000f 	0x280000f
     708:	f8030a01 	sdc2	$3,2561(zero)
     70c:	4b4e4c4b 	c2	0x14e4c4b
     710:	4b4c4d4b 	c2	0x14c4d4b
     714:	4b4b0204 	c2	0x14b0204
     718:	00010100 	sll	zero,at,0x4
     71c:	00003f00 	sll	a3,zero,0x1c
     720:	02000000 	0x2000000
     724:	1e0101fb 	0x1e0101fb
     728:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     72c:	01010100 	0x1010100
     730:	00000100 	sll	zero,zero,0x4
     734:	0001006e 	0x1006e
     738:	33375f6a 	andi	s7,t9,0x5f6a
     73c:	2e530000 	sltiu	s3,s2,0
     740:	00000000 	nop
     744:	05028000 	bltzl	t0,fffe0748 <_stack+0x7fddbe60>
     748:	1028030a 	beq	at,t0,1374 <data_size-0xbedc>
     74c:	014b4c02 	0x14b4c02
     750:	9c01144b 	0x9c01144b
     754:	4c4d4b4b 	0x4c4d4b4b
     758:	4b020400 	c2	0x1020400
     75c:	01010000 	0x1010000
     760:	003f0002 	ror	zero,ra,0x0
     764:	00000020 	add	zero,zero,zero
     768:	0101fb0e 	0x101fb0e
     76c:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     770:	01010000 	0x1010000
     774:	00010000 	sll	zero,at,0x0
     778:	01006e32 	tlt	t0,zero,0x1b8
     77c:	375f7372 	ori	ra,k0,0x7372
     780:	6c2e5300 	0x6c2e5300
     784:	00000000 	nop
     788:	00050280 	sll	zero,a1,0xa
     78c:	0010e803 	sra	sp,s0,0x0
     790:	0a014b4c 	j	8052d30 <data_size+0x8045ae0>
     794:	08e64b4c 	j	3992d30 <data_size+0x3985ae0>
     798:	4d4b4b4b 	0x4d4b4b4b
     79c:	02040001 	movf	zero,s0,$fcc1
     7a0:	01000000 	0x1000000
     7a4:	45000200 	bc1f	fa8 <data_size-0xc2a8>
     7a8:	00002401 	0x2401
     7ac:	01fb0e0d 	break	0x1fb,0x38
     7b0:	00010101 	0x10101
     7b4:	01000000 	0x1000000
     7b8:	01000001 	movf	zero,t0,$fcc0
     7bc:	006e3733 	tltu	v1,t6,0xdc
     7c0:	5f626c74 	0x5f626c74
     7c4:	7a5f6473 	0x7a5f6473
     7c8:	2e530000 	sltiu	s3,s2,0
     7cc:	00000000 	nop
     7d0:	05028000 	bltzl	t0,fffe07d4 <_stack+0x7fddbeec>
     7d4:	6954030d 	0x6954030d
     7d8:	014b4c02 	0x14b4c02
     7dc:	f801144b 	sdc2	$1,5195(zero)
     7e0:	4c4d4b4b 	0x4c4d4b4b
     7e4:	4b020400 	c2	0x1020400
     7e8:	01010000 	0x1010000
     7ec:	00420002 	0x420002
     7f0:	00000021 	move	zero,zero
     7f4:	0101fb0e 	0x101fb0e
     7f8:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     7fc:	01010000 	0x1010000
     800:	00010000 	sll	zero,at,0x0
     804:	01006e33 	tltu	t0,zero,0x1b8
     808:	345f626c 	ori	ra,v0,0x626c
     80c:	747a2e53 	jalx	1e8b94c <data_size+0x1e7e6fc>
     810:	00000000 	nop
     814:	00000502 	srl	zero,zero,0x14
     818:	80001130 	lb	zero,4400(zero)
     81c:	030a014b 	0x30a014b
     820:	4c02d401 	0x4c02d401
     824:	144b4c4d 	bne	v0,t3,1395c <data_size+0x670c>
     828:	4b4b4b02 	c2	0x14b4b02
     82c:	04000101 	bltz	zero,c34 <data_size-0xc61c>
     830:	0000003f 	0x3f
     834:	00020000 	sll	zero,v0,0x0
     838:	00200101 	0x200101
     83c:	fb0e0d00 	sdc2	$14,3328(t8)
     840:	01010101 	0x1010101
     844:	00000001 	movf	zero,zero,$fcc0
     848:	00000100 	sll	zero,zero,0x4
     84c:	6e385f73 	0x6e385f73
     850:	6c74692e 	0x6c74692e
     854:	53000000 	beqzl	t8,858 <data_size-0xc9f8>
     858:	00000005 	0x5
     85c:	02800012 	0x2800012
     860:	28030a01 	slti	v1,zero,2561
     864:	4b4c08ae 	c2	0x14c08ae
     868:	4b4c4d4b 	c2	0x14c4d4b
     86c:	4b4b0204 	c2	0x14b0204
     870:	00010100 	sll	zero,at,0x4
     874:	00006d00 	sll	t5,zero,0x14
     878:	02000000 	0x2000000
     87c:	270101fb 	addiu	at,t8,507
     880:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     884:	01010100 	0x1010100
     888:	00000100 	sll	zero,zero,0x4
     88c:	0001006e 	0x1006e
     890:	38355f62 	xori	s5,at,0x5f62
     894:	6c747a5f 	0x6c747a5f
     898:	65785f64 	0x65785f64
     89c:	732e5300 	0x732e5300
     8a0:	00000000 	nop
     8a4:	00050280 	sll	zero,a1,0xa
     8a8:	006a7003 	0x6a7003
     8ac:	0d014d02 	jal	4053408 <data_size+0x40461b8>
     8b0:	c0031302 	ll	v1,4866(zero)
     8b4:	c0031302 	ll	v1,4866(zero)
     8b8:	c0031302 	ll	v1,4866(zero)
     8bc:	c0031302 	ll	v1,4866(zero)
     8c0:	c0031302 	ll	v1,4866(zero)
     8c4:	c0031302 	ll	v1,4866(zero)
     8c8:	c0031302 	ll	v1,4866(zero)
     8cc:	c0031302 	ll	v1,4866(zero)
     8d0:	c0031302 	ll	v1,4866(zero)
     8d4:	c0031302 	ll	v1,4866(zero)
     8d8:	c003184d 	ll	v1,6221(zero)
     8dc:	4b4b4b02 	c2	0x14b4b02
     8e0:	04000101 	bltz	zero,ce8 <data_size-0xc568>
     8e4:	0000006c 	0x6c
     8e8:	00020000 	sll	zero,v0,0x0
     8ec:	00260101 	0x260101
     8f0:	fb0e0d00 	sdc2	$14,3328(t8)
     8f4:	01010101 	0x1010101
     8f8:	00000001 	movf	zero,zero,$fcc0
     8fc:	00000100 	sll	zero,zero,0x4
     900:	6e38395f 	0x6e38395f
     904:	6a616c5f 	0x6a616c5f
     908:	65785f64 	0x65785f64
     90c:	732e5300 	0x732e5300
     910:	00000000 	nop
     914:	00050280 	sll	zero,a1,0xa
     918:	007dc803 	0x7dc803
     91c:	0d014d02 	jal	4053408 <data_size+0x40461b8>
     920:	ec011302 	swc3	$1,4866(zero)
     924:	ec011302 	swc3	$1,4866(zero)
     928:	ec011302 	swc3	$1,4866(zero)
     92c:	ec011302 	swc3	$1,4866(zero)
     930:	ec011302 	swc3	$1,4866(zero)
     934:	ec011302 	swc3	$1,4866(zero)
     938:	ec011302 	swc3	$1,4866(zero)
     93c:	ec011302 	swc3	$1,4866(zero)
     940:	ec011302 	swc3	$1,4866(zero)
     944:	ec011302 	swc3	$1,4866(zero)
     948:	ec01184d 	swc3	$1,6221(zero)
     94c:	4b4b4b02 	c2	0x14b4b02
     950:	04000101 	bltz	zero,d58 <data_size-0xc4f8>
     954:	0000003f 	0x3f
     958:	00020000 	sll	zero,v0,0x0
     95c:	001f0101 	0x1f0101
     960:	fb0e0d00 	sdc2	$14,3328(t8)
     964:	01010101 	0x1010101
     968:	00000001 	movf	zero,zero,$fcc0
     96c:	00000100 	sll	zero,zero,0x4
     970:	6e315f61 	0x6e315f61
     974:	64642e53 	0x64642e53
     978:	00000000 	nop
     97c:	00000502 	srl	zero,zero,0x14
     980:	80001268 	lb	zero,4712(zero)
     984:	030a014b 	0x30a014b
     988:	4c022414 	0x4c022414
     98c:	4b4c4d4b 	c2	0x14c4d4b
     990:	4b4b0204 	c2	0x14b0204
     994:	00010100 	sll	zero,at,0x4
     998:	00006a00 	sll	t5,zero,0x8
     99c:	02000000 	0x2000000
     9a0:	240101fb 	li	at,507
     9a4:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     9a8:	01010100 	0x1010100
     9ac:	00000100 	sll	zero,zero,0x4
     9b0:	0001006e 	0x1006e
     9b4:	38385f6a 	xori	t8,at,0x5f6a
     9b8:	5f65785f 	0x5f65785f
     9bc:	64732e53 	0x64732e53
     9c0:	00000000 	nop
     9c4:	00000502 	srl	zero,zero,0x14
     9c8:	80008804 	lb	zero,-30716(zero)
     9cc:	030d014d 	break	0x30d,0x5
     9d0:	02e00113 	0x2e00113
     9d4:	02e00113 	0x2e00113
     9d8:	02e00113 	0x2e00113
     9dc:	02e00113 	0x2e00113
     9e0:	02e00113 	0x2e00113
     9e4:	02e00113 	0x2e00113
     9e8:	02e00113 	0x2e00113
     9ec:	02e00113 	0x2e00113
     9f0:	02e00113 	0x2e00113
     9f4:	02e00113 	0x2e00113
     9f8:	02e00118 	0x2e00118
     9fc:	4d4b4b4b 	0x4d4b4b4b
     a00:	02040001 	movf	zero,s0,$fcc1
     a04:	01000000 	0x1000000
     a08:	3f000200 	0x3f000200
     a0c:	00001f01 	0x1f01
     a10:	01fb0e0d 	break	0x1fb,0x38
     a14:	00010101 	0x10101
     a18:	01000000 	0x1000000
     a1c:	01000001 	movf	zero,t0,$fcc0
     a20:	006e355f 	0x6e355f
     a24:	7375622e 	0x7375622e
     a28:	53000000 	beqzl	t8,a2c <data_size-0xc824>
     a2c:	00000005 	0x5
     a30:	02800012 	0x2800012
     a34:	b0030a01 	0xb0030a01
     a38:	4b4c0224 	c2	0x14c0224
     a3c:	144b4c4d 	bne	v0,t3,13b74 <data_size+0x6924>
     a40:	4b4b4b02 	c2	0x14b4b02
     a44:	04000101 	bltz	zero,e4c <data_size-0xc404>
     a48:	00000045 	0x45
     a4c:	00020000 	sll	zero,v0,0x0
     a50:	00240101 	0x240101
     a54:	fb0e0d00 	sdc2	$14,3328(t8)
     a58:	01010101 	0x1010101
     a5c:	00000001 	movf	zero,zero,$fcc0
     a60:	00000100 	sll	zero,zero,0x4
     a64:	6e37315f 	0x6e37315f
     a68:	6267747a 	0x6267747a
     a6c:	5f64732e 	0x5f64732e
     a70:	53000000 	beqzl	t8,a74 <data_size-0xc7dc>
     a74:	00000005 	0x5
     a78:	02800091 	0x2800091
     a7c:	bc030d01 	cache	0x3,3329(zero)
     a80:	4b4c02ac 	c2	0x14c02ac
     a84:	02144b4c 	syscall	0x8512d
     a88:	4d4b4b4b 	0x4d4b4b4b
     a8c:	02040001 	movf	zero,s0,$fcc1
     a90:	01000000 	0x1000000
     a94:	45000200 	bc1f	1298 <data_size-0xbfb8>
     a98:	00002401 	0x2401
     a9c:	01fb0e0d 	break	0x1fb,0x38
     aa0:	00010101 	0x10101
     aa4:	01000000 	0x1000000
     aa8:	01000001 	movf	zero,t0,$fcc0
     aac:	006e3732 	tlt	v1,t6,0xdc
     ab0:	5f626c65 	0x5f626c65
     ab4:	7a5f6473 	0x7a5f6473
     ab8:	2e530000 	sltiu	s3,s2,0
     abc:	00000000 	nop
     ac0:	05028000 	bltzl	t0,fffe0ac4 <_stack+0x7fddc1dc>
     ac4:	930c030d 	lbu	t4,781(t8)
     ac8:	014b4c02 	0x14b4c02
     acc:	8c02144b 	lw	v0,5195(zero)
     ad0:	4c4d4b4b 	0x4c4d4b4b
     ad4:	4b020400 	c2	0x1020400
     ad8:	01010000 	0x1010000
     adc:	00410002 	0x410002
     ae0:	00000022 	neg	zero,zero
     ae4:	0101fb0e 	0x101fb0e
     ae8:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     aec:	01010000 	0x1010000
     af0:	00010000 	sll	zero,at,0x0
     af4:	01006e31 	tgeu	t0,zero,0x1b8
     af8:	305f736c 	andi	ra,v0,0x736c
     afc:	7469752e 	jalx	1a5d4b8 <data_size+0x1a50268>
     b00:	53000000 	beqzl	t8,b04 <data_size-0xc74c>
     b04:	00000005 	0x5
     b08:	02800012 	0x2800012
     b0c:	f8030a01 	sdc2	$3,2561(zero)
     b10:	4b4c08ae 	c2	0x14c08ae
     b14:	4b4c4d4b 	c2	0x14c4d4b
     b18:	4b4b0204 	c2	0x14b0204
     b1c:	00010100 	sll	zero,at,0x4
     b20:	00004000 	sll	t0,zero,0x0
     b24:	02000000 	0x2000000
     b28:	200101fb 	addi	at,zero,507
     b2c:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     b30:	01010100 	0x1010100
     b34:	00000100 	sll	zero,zero,0x4
     b38:	0001006e 	0x1006e
     b3c:	31385f6e 	andi	t8,t1,0x5f6e
     b40:	6f722e53 	0x6f722e53
     b44:	00000000 	nop
     b48:	00000502 	srl	zero,zero,0x14
     b4c:	80001338 	lb	zero,4920(zero)
     b50:	030a014b 	0x30a014b
     b54:	4c022414 	0x4c022414
     b58:	4b4c4d4b 	c2	0x14c4d4b
     b5c:	4b4b0204 	c2	0x14b0204
     b60:	00010100 	sll	zero,at,0x4
     b64:	00004500 	sll	t0,zero,0x14
     b68:	02000000 	0x2000000
     b6c:	210101fb 	addi	at,t0,507
     b70:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     b74:	01010100 	0x1010100
     b78:	00000100 	sll	zero,zero,0x4
     b7c:	0001006e 	0x1006e
     b80:	35355f65 	ori	s5,t1,0x5f65
     b84:	7265742e 	0x7265742e
     b88:	53000000 	beqzl	t8,b8c <data_size-0xc6c4>
     b8c:	00000005 	0x5
     b90:	02800013 	mtlo	s4
     b94:	80030a01 	lb	v1,2561(zero)
     b98:	4b4c834b 	c2	0x14c834b
     b9c:	4b4b4d4c 	c2	0x14b4d4c
     ba0:	4b4b4c4d 	c2	0x14b4c4d
     ba4:	4b4b4b02 	c2	0x14b4b02
     ba8:	04000101 	bltz	zero,fb0 <data_size-0xc2a0>
     bac:	0000006d 	0x6d
     bb0:	00020000 	sll	zero,v0,0x0
     bb4:	00270101 	0x270101
     bb8:	fb0e0d00 	sdc2	$14,3328(t8)
     bbc:	01010101 	0x1010101
     bc0:	00000001 	movf	zero,zero,$fcc0
     bc4:	00000100 	sll	zero,zero,0x4
     bc8:	6e38345f 	0x6e38345f
     bcc:	626c657a 	0x626c657a
     bd0:	5f65785f 	0x5f65785f
     bd4:	64732e53 	0x64732e53
     bd8:	00000000 	nop
     bdc:	00000502 	srl	zero,zero,0x14
     be0:	8000943c 	lb	zero,-27588(zero)
     be4:	030d014d 	break	0x30d,0x5
     be8:	02c00313 	0x2c00313
     bec:	02c00313 	0x2c00313
     bf0:	02c00313 	0x2c00313
     bf4:	02c00313 	0x2c00313
     bf8:	02c00313 	0x2c00313
     bfc:	02c00313 	0x2c00313
     c00:	02c00313 	0x2c00313
     c04:	02c00313 	0x2c00313
     c08:	02c00313 	0x2c00313
     c0c:	02c00313 	0x2c00313
     c10:	02c00318 	0x2c00318
     c14:	4d4b4b4b 	0x4d4b4b4b
     c18:	02040001 	movf	zero,s0,$fcc1
     c1c:	01000001 	movf	zero,t0,$fcc0
     c20:	3e000200 	0x3e000200
     c24:	00001f01 	0x1f01
     c28:	01fb0e0d 	break	0x1fb,0x38
     c2c:	00010101 	0x10101
     c30:	01000000 	0x1000000
     c34:	01000001 	movf	zero,t0,$fcc0
     c38:	006e3439 	0x6e3439
     c3c:	5f6c682e 	0x5f6c682e
     c40:	53000000 	beqzl	t8,c44 <data_size-0xc60c>
     c44:	00000005 	0x5
     c48:	02800013 	mtlo	s4
     c4c:	c8030a01 	lwc2	$3,2561(zero)
     c50:	4b4c022c 	c2	0x14c022c
     c54:	13023c13 	beq	t8,v0,fca4 <data_size+0x2a54>
     c58:	023c1302 	0x23c1302
     c5c:	2c13023c 	sltiu	s3,zero,572
     c60:	13022c13 	beq	t8,v0,bcb0 <data_size-0x15a0>
     c64:	022c1302 	0x22c1302
     c68:	2c13023c 	sltiu	s3,zero,572
     c6c:	13023c13 	beq	t8,v0,fcbc <data_size+0x2a6c>
     c70:	022c1302 	0x22c1302
     c74:	2c13022c 	sltiu	s3,zero,556
     c78:	13022c13 	beq	t8,v0,bcc8 <data_size-0x1588>
     c7c:	023c1302 	0x23c1302
     c80:	2c13023c 	sltiu	s3,zero,572
     c84:	13022c13 	beq	t8,v0,bcd4 <data_size-0x157c>
     c88:	023c1302 	0x23c1302
     c8c:	3c13022c 	lui	s3,0x22c
     c90:	13023c13 	beq	t8,v0,fce0 <data_size+0x2a90>
     c94:	022c1302 	0x22c1302
     c98:	3c13023c 	lui	s3,0x23c
     c9c:	13022c13 	beq	t8,v0,bcec <data_size-0x1564>
     ca0:	022c1302 	0x22c1302
     ca4:	2c13022c 	sltiu	s3,zero,556
     ca8:	13023c13 	beq	t8,v0,fcf8 <data_size+0x2aa8>
     cac:	022c1302 	0x22c1302
     cb0:	2c13022c 	sltiu	s3,zero,556
     cb4:	13022c13 	beq	t8,v0,bd04 <data_size-0x154c>
     cb8:	022c1302 	0x22c1302
     cbc:	2c13022c 	sltiu	s3,zero,556
     cc0:	13023813 	beq	t8,v0,ed10 <data_size+0x1ac0>
     cc4:	02381302 	0x2381302
     cc8:	38130228 	xori	s3,zero,0x228
     ccc:	13023813 	beq	t8,v0,ed1c <data_size+0x1acc>
     cd0:	02381302 	0x2381302
     cd4:	28130238 	slti	s3,zero,568
     cd8:	13022813 	beq	t8,v0,ad28 <data_size-0x2528>
     cdc:	02281302 	0x2281302
     ce0:	38130228 	xori	s3,zero,0x228
     ce4:	13023813 	beq	t8,v0,ed34 <data_size+0x1ae4>
     ce8:	02381302 	0x2381302
     cec:	38130238 	xori	s3,zero,0x238
     cf0:	13022813 	beq	t8,v0,ad40 <data_size-0x2510>
     cf4:	02281302 	0x2281302
     cf8:	38130238 	xori	s3,zero,0x238
     cfc:	13023813 	beq	t8,v0,ed4c <data_size+0x1afc>
     d00:	02381302 	0x2381302
     d04:	28130228 	slti	s3,zero,552
     d08:	13022813 	beq	t8,v0,ad58 <data_size-0x24f8>
     d0c:	02381302 	0x2381302
     d10:	38130238 	xori	s3,zero,0x238
     d14:	13022813 	beq	t8,v0,ad64 <data_size-0x24ec>
     d18:	02381302 	0x2381302
     d1c:	38130228 	xori	s3,zero,0x228
     d20:	13022813 	beq	t8,v0,ad70 <data_size-0x24e0>
     d24:	02381302 	0x2381302
     d28:	28130228 	slti	s3,zero,552
     d2c:	13022813 	beq	t8,v0,ad7c <data_size-0x24d4>
     d30:	02281302 	0x2281302
     d34:	28130228 	slti	s3,zero,552
     d38:	13022813 	beq	t8,v0,ad88 <data_size-0x24c8>
     d3c:	02281302 	0x2281302
     d40:	28130228 	slti	s3,zero,552
     d44:	13022813 	beq	t8,v0,ad94 <data_size-0x24bc>
     d48:	02281302 	0x2281302
     d4c:	28130228 	slti	s3,zero,552
     d50:	13022414 	beq	t8,v0,9da4 <data_size-0x34ac>
     d54:	4b4c4d4b 	c2	0x14c4d4b
     d58:	4b4b0204 	c2	0x14b0204
     d5c:	00010100 	sll	zero,at,0x4
     d60:	00004100 	sll	t0,zero,0x4
     d64:	02000000 	0x2000000
     d68:	200101fb 	addi	at,zero,507
     d6c:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     d70:	01010100 	0x1010100
     d74:	00000100 	sll	zero,zero,0x4
     d78:	0001006e 	0x1006e
     d7c:	33305f62 	andi	s0,t9,0x5f62
     d80:	6e652e53 	0x6e652e53
     d84:	00000000 	nop
     d88:	00000502 	srl	zero,zero,0x14
     d8c:	80002410 	lb	zero,9232(zero)
     d90:	030a014b 	0x30a014b
     d94:	4c02dc01 	0x4c02dc01
     d98:	144b4c4d 	bne	v0,t3,13ed0 <data_size+0x6c80>
     d9c:	4b4b4b02 	c2	0x14b4b02
     da0:	04000101 	bltz	zero,11a8 <data_size-0xc0a8>
     da4:	00000040 	ssnop
     da8:	00020000 	sll	zero,v0,0x0
     dac:	00200101 	0x200101
     db0:	fb0e0d00 	sdc2	$14,3328(t8)
     db4:	01010101 	0x1010101
     db8:	00000001 	movf	zero,zero,$fcc0
     dbc:	00000100 	sll	zero,zero,0x4
     dc0:	6e365f73 	0x6e365f73
     dc4:	7562752e 	jalx	589d4b8 <data_size+0x5890268>
     dc8:	53000000 	beqzl	t8,dcc <data_size-0xc484>
     dcc:	00000005 	0x5
     dd0:	02800025 	move	zero,s4
     dd4:	10030a01 	beq	zero,v1,35dc <data_size-0x9c74>
     dd8:	4b4c0224 	c2	0x14c0224
     ddc:	144b4c4d 	bne	v0,t3,13f14 <data_size+0x6cc4>
     de0:	4b4b4b02 	c2	0x14b4b02
     de4:	04000101 	bltz	zero,11ec <data_size-0xc064>
     de8:	00000041 	0x41
     dec:	00020000 	sll	zero,v0,0x0
     df0:	00220101 	0x220101
     df4:	fb0e0d00 	sdc2	$14,3328(t8)
     df8:	01010101 	0x1010101
     dfc:	00000001 	movf	zero,zero,$fcc0
     e00:	00000100 	sll	zero,zero,0x4
     e04:	6e34355f 	0x6e34355f
     e08:	62726561 	0x62726561
     e0c:	6b2e5300 	0x6b2e5300
     e10:	00000000 	nop
     e14:	00050280 	sll	zero,a1,0xa
     e18:	00255803 	0x255803
     e1c:	0a014b4e 	j	8052d38 <data_size+0x8045ae8>
     e20:	4c4b4b4c 	0x4c4b4b4c
     e24:	4d4b4b4b 	0x4d4b4b4b
     e28:	02040001 	movf	zero,s0,$fcc1
     e2c:	01000000 	0x1000000
     e30:	3f000200 	0x3f000200
     e34:	00001f01 	0x1f01
     e38:	01fb0e0d 	break	0x1fb,0x38
     e3c:	00010101 	0x10101
     e40:	01000000 	0x1000000
     e44:	01000001 	movf	zero,t0,$fcc0
     e48:	006e3532 	tlt	v1,t6,0xd4
     e4c:	5f73622e 	0x5f73622e
     e50:	53000000 	beqzl	t8,e54 <data_size-0xc3fc>
     e54:	00000005 	0x5
     e58:	02800025 	move	zero,s4
     e5c:	88030a01 	lwl	v1,2561(zero)
     e60:	4b4c023c 	c2	0x14c023c
     e64:	144b4c4d 	bne	v0,t3,13f9c <data_size+0x6d4c>
     e68:	4b4b4b02 	c2	0x14b4b02
     e6c:	04000101 	bltz	zero,1274 <data_size-0xbfdc>
     e70:	00000044 	0x44
     e74:	00020000 	sll	zero,v0,0x0
     e78:	00230101 	0x230101
     e7c:	fb0e0d00 	sdc2	$14,3328(t8)
     e80:	01010101 	0x1010101
     e84:	00000001 	movf	zero,zero,$fcc0
     e88:	00000100 	sll	zero,zero,0x4
     e8c:	6e37375f 	0x6e37375f
     e90:	6a616c5f 	0x6a616c5f
     e94:	64732e53 	0x64732e53
     e98:	00000000 	nop
     e9c:	00000502 	srl	zero,zero,0x14
     ea0:	8000a794 	lb	zero,-22636(zero)
     ea4:	030d014b 	0x30d014b
     ea8:	4c02dc01 	0x4c02dc01
     eac:	144b4c4d 	bne	v0,t3,13fe4 <data_size+0x6d94>
     eb0:	4b4b4b02 	c2	0x14b4b02
     eb4:	04000101 	bltz	zero,12bc <data_size-0xbf94>
     eb8:	00000040 	ssnop
     ebc:	00020000 	sll	zero,v0,0x0
     ec0:	00210101 	0x210101
     ec4:	fb0e0d00 	sdc2	$14,3328(t8)
     ec8:	01010101 	0x1010101
     ecc:	00000001 	movf	zero,zero,$fcc0
     ed0:	00000100 	sll	zero,zero,0x4
     ed4:	6e32345f 	0x6e32345f
     ed8:	736c6c76 	0x736c6c76
     edc:	2e530000 	sltiu	s3,s2,0
     ee0:	00000000 	nop
     ee4:	05028000 	bltzl	t0,fffe0ee8 <_stack+0x7fddc600>
     ee8:	25e8030a 	addiu	t0,t7,778
     eec:	014b4c08 	0x14b4c08
     ef0:	e64b4c4d 	swc1	$f11,19533(s2)
     ef4:	4b4b4b02 	c2	0x14b4b02
     ef8:	04000101 	bltz	zero,1300 <data_size-0xbf50>
     efc:	0000003f 	0x3f
     f00:	00020000 	sll	zero,v0,0x0
     f04:	001f0101 	0x1f0101
     f08:	fb0e0d00 	sdc2	$14,3328(t8)
     f0c:	01010101 	0x1010101
     f10:	00000001 	movf	zero,zero,$fcc0
     f14:	00000100 	sll	zero,zero,0x4
     f18:	6e31395f 	0x6e31395f
     f1c:	6f722e53 	0x6f722e53
     f20:	00000000 	nop
     f24:	00000502 	srl	zero,zero,0x14
     f28:	80002630 	lb	zero,9776(zero)
     f2c:	030a014b 	0x30a014b
     f30:	4c022414 	0x4c022414
     f34:	4b4c4d4b 	c2	0x14c4d4b
     f38:	4b4b0204 	c2	0x14b0204
     f3c:	00010100 	sll	zero,at,0x4
     f40:	00003f00 	sll	a3,zero,0x1c
     f44:	02000000 	0x2000000
     f48:	200101fb 	addi	at,zero,507
     f4c:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
     f50:	01010100 	0x1010100
     f54:	00000100 	sll	zero,zero,0x4
     f58:	0001006e 	0x1006e
     f5c:	395f736c 	xori	ra,t2,0x736c
     f60:	74752e53 	jalx	1d4b94c <data_size+0x1d3e6fc>
     f64:	00000000 	nop
     f68:	00000502 	srl	zero,zero,0x14
     f6c:	80002678 	lb	zero,9848(zero)
     f70:	030a014b 	0x30a014b
     f74:	4c08e64b 	0x4c08e64b
     f78:	4c4d4b4b 	0x4c4d4b4b
     f7c:	4b020400 	c2	0x1020400
     f80:	01010000 	0x1010000
     f84:	004a0002 	0x4a0002
     f88:	00000021 	move	zero,zero
     f8c:	0101fb0e 	0x101fb0e
     f90:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
     f94:	01010000 	0x1010000
     f98:	00010000 	sll	zero,at,0x0
     f9c:	01006e35 	0x1006e35
     fa0:	365f6d66 	ori	ra,s2,0x6d66
     fa4:	63302e53 	0x63302e53
     fa8:	00000000 	nop
     fac:	00000502 	srl	zero,zero,0x14
     fb0:	800026c0 	lb	zero,9920(zero)
     fb4:	030a014b 	0x30a014b
     fb8:	4c85514b 	0x4c85514b
     fbc:	4c4b4c4b 	0x4c4b4c4b
     fc0:	4b4b4b4b 	c2	0x14b4b4b
     fc4:	4c4b4c4d 	0x4c4b4c4d
     fc8:	4b4b4b02 	c2	0x14b4b02
     fcc:	04000101 	bltz	zero,13d4 <data_size-0xbe7c>
     fd0:	00000041 	0x41
     fd4:	00020000 	sll	zero,v0,0x0
     fd8:	00200101 	0x200101
     fdc:	fb0e0d00 	sdc2	$14,3328(t8)
     fe0:	01010101 	0x1010101
     fe4:	00000001 	movf	zero,zero,$fcc0
     fe8:	00000100 	sll	zero,zero,0x4
     fec:	6e33385f 	0x6e33385f
     ff0:	6a616c2e 	0x6a616c2e
     ff4:	53000000 	beqzl	t8,ff8 <data_size-0xc258>
     ff8:	00000005 	0x5
     ffc:	02800027 	nor	zero,s4,zero
    1000:	18030a01 	0x18030a01
    1004:	4b4c02a4 	c2	0x14c02a4
    1008:	01144b4c 	syscall	0x4512d
    100c:	4d4b4b4b 	0x4d4b4b4b
    1010:	02040001 	movf	zero,s0,$fcc1
    1014:	01000000 	0x1000000
    1018:	6b000200 	0x6b000200
    101c:	00002501 	0x2501
    1020:	01fb0e0d 	break	0x1fb,0x38
    1024:	00010101 	0x10101
    1028:	01000000 	0x1000000
    102c:	01000001 	movf	zero,t0,$fcc0
    1030:	006e3930 	tge	v1,t6,0xe4
    1034:	5f6a725f 	0x5f6a725f
    1038:	65785f64 	0x65785f64
    103c:	732e5300 	0x732e5300
    1040:	00000000 	nop
    1044:	00050280 	sll	zero,a1,0xa
    1048:	00a89403 	0xa89403
    104c:	0d014d02 	jal	4053408 <data_size+0x40461b8>
    1050:	f0011302 	0xf0011302
    1054:	f0011302 	0xf0011302
    1058:	f0011302 	0xf0011302
    105c:	f0011302 	0xf0011302
    1060:	f0011302 	0xf0011302
    1064:	f0011302 	0xf0011302
    1068:	f0011302 	0xf0011302
    106c:	f0011302 	0xf0011302
    1070:	f0011302 	0xf0011302
    1074:	f0011302 	0xf0011302
    1078:	f001184d 	0xf001184d
    107c:	4b4b4b02 	c2	0x14b4b02
    1080:	04000101 	bltz	zero,1488 <data_size-0xbdc8>
    1084:	00000040 	ssnop
    1088:	00020000 	sll	zero,v0,0x0
    108c:	00210101 	0x210101
    1090:	fb0e0d00 	sdc2	$14,3328(t8)
    1094:	01010101 	0x1010101
    1098:	00000001 	movf	zero,zero,$fcc0
    109c:	00000100 	sll	zero,zero,0x4
    10a0:	6e34335f 	0x6e34335f
    10a4:	6d746869 	0x6d746869
    10a8:	2e530000 	sltiu	s3,s2,0
    10ac:	00000000 	nop
    10b0:	05028000 	bltzl	t0,fffe10b4 <_stack+0x7fddc7cc>
    10b4:	27e0030a 	addiu	zero,ra,778
    10b8:	014b4c08 	0x14b4c08
    10bc:	e64b4c4d 	swc1	$f11,19533(s2)
    10c0:	4b4b4b02 	c2	0x14b4b02
    10c4:	04000101 	bltz	zero,14cc <data_size-0xbd84>
    10c8:	00000040 	ssnop
    10cc:	00020000 	sll	zero,v0,0x0
    10d0:	00200101 	0x200101
    10d4:	fb0e0d00 	sdc2	$14,3328(t8)
    10d8:	01010101 	0x1010101
    10dc:	00000001 	movf	zero,zero,$fcc0
    10e0:	00000100 	sll	zero,zero,0x4
    10e4:	6e32315f 	0x6e32315f
    10e8:	786f722e 	0x786f722e
    10ec:	53000000 	beqzl	t8,10f0 <data_size-0xc160>
    10f0:	00000005 	0x5
    10f4:	02800028 	0x2800028
    10f8:	28030a01 	slti	v1,zero,2561
    10fc:	4b4c0224 	c2	0x14c0224
    1100:	144b4c4d 	bne	v0,t3,14238 <data_size+0x6fe8>
    1104:	4b4b4b02 	c2	0x14b4b02
    1108:	04000101 	bltz	zero,1510 <data_size-0xbd40>
    110c:	0000020b 	0x20b
    1110:	00020000 	sll	zero,v0,0x0
    1114:	00200101 	0x200101
    1118:	fb0e0d00 	sdc2	$14,3328(t8)
    111c:	01010101 	0x1010101
    1120:	00000001 	movf	zero,zero,$fcc0
    1124:	00000100 	sll	zero,zero,0x4
    1128:	6e34385f 	0x6e34385f
    112c:	6c62752e 	0x6c62752e
    1130:	53000000 	beqzl	t8,1134 <data_size-0xc11c>
    1134:	00000005 	0x5
    1138:	02800028 	0x2800028
    113c:	70030a01 	0x70030a01
    1140:	4b4c022c 	c2	0x14c022c
    1144:	13022c13 	beq	t8,v0,c194 <data_size-0x10bc>
    1148:	022c1302 	0x22c1302
    114c:	2c13022c 	sltiu	s3,zero,556
    1150:	13022c13 	beq	t8,v0,c1a0 <data_size-0x10b0>
    1154:	023c1302 	0x23c1302
    1158:	2c13023c 	sltiu	s3,zero,572
    115c:	13022c13 	beq	t8,v0,c1ac <data_size-0x10a4>
    1160:	022c1302 	0x22c1302
    1164:	2c13022c 	sltiu	s3,zero,556
    1168:	13022c13 	beq	t8,v0,c1b8 <data_size-0x1098>
    116c:	022c1302 	0x22c1302
    1170:	2c13022c 	sltiu	s3,zero,556
    1174:	13022c13 	beq	t8,v0,c1c4 <data_size-0x108c>
    1178:	023c1302 	0x23c1302
    117c:	2c13022c 	sltiu	s3,zero,556
    1180:	13022c13 	beq	t8,v0,c1d0 <data_size-0x1080>
    1184:	022c1302 	0x22c1302
    1188:	2c13022c 	sltiu	s3,zero,556
    118c:	13022c13 	beq	t8,v0,c1dc <data_size-0x1074>
    1190:	022c1302 	0x22c1302
    1194:	3c13023c 	lui	s3,0x23c
    1198:	13022c13 	beq	t8,v0,c1e8 <data_size-0x1068>
    119c:	022c1302 	0x22c1302
    11a0:	2c13022c 	sltiu	s3,zero,556
    11a4:	13022c13 	beq	t8,v0,c1f4 <data_size-0x105c>
    11a8:	022c1302 	0x22c1302
    11ac:	2c13022c 	sltiu	s3,zero,556
    11b0:	13022c13 	beq	t8,v0,c200 <data_size-0x1050>
    11b4:	023c1302 	0x23c1302
    11b8:	2c13023c 	sltiu	s3,zero,572
    11bc:	13022c13 	beq	t8,v0,c20c <data_size-0x1044>
    11c0:	022c1302 	0x22c1302
    11c4:	2c13022c 	sltiu	s3,zero,556
    11c8:	13022c13 	beq	t8,v0,c218 <data_size-0x1038>
    11cc:	022c1302 	0x22c1302
    11d0:	2c13023c 	sltiu	s3,zero,572
    11d4:	13022c13 	beq	t8,v0,c224 <data_size-0x102c>
    11d8:	022c1302 	0x22c1302
    11dc:	2c13022c 	sltiu	s3,zero,556
    11e0:	13022813 	beq	t8,v0,b230 <data_size-0x2020>
    11e4:	02281302 	0x2281302
    11e8:	28130238 	slti	s3,zero,568
    11ec:	13022813 	beq	t8,v0,b23c <data_size-0x2014>
    11f0:	02281302 	0x2281302
    11f4:	28130228 	slti	s3,zero,552
    11f8:	13023813 	beq	t8,v0,f248 <data_size+0x1ff8>
    11fc:	02381302 	0x2381302
    1200:	38130238 	xori	s3,zero,0x238
    1204:	13023813 	beq	t8,v0,f254 <data_size+0x2004>
    1208:	02381302 	0x2381302
    120c:	28130228 	slti	s3,zero,552
    1210:	13023813 	beq	t8,v0,f260 <data_size+0x2010>
    1214:	02381302 	0x2381302
    1218:	38130228 	xori	s3,zero,0x228
    121c:	13023813 	beq	t8,v0,f26c <data_size+0x201c>
    1220:	02281302 	0x2281302
    1224:	38130238 	xori	s3,zero,0x238
    1228:	13023813 	beq	t8,v0,f278 <data_size+0x2028>
    122c:	02281302 	0x2281302
    1230:	28130238 	slti	s3,zero,568
    1234:	13022813 	beq	t8,v0,b284 <data_size-0x1fcc>
    1238:	02381302 	0x2381302
    123c:	38130238 	xori	s3,zero,0x238
    1240:	13022813 	beq	t8,v0,b290 <data_size-0x1fc0>
    1244:	02381302 	0x2381302
    1248:	38130228 	xori	s3,zero,0x228
    124c:	13023813 	beq	t8,v0,f29c <data_size+0x204c>
    1250:	02381302 	0x2381302
    1254:	38130238 	xori	s3,zero,0x238
    1258:	13023813 	beq	t8,v0,f2a8 <data_size+0x2058>
    125c:	02281302 	0x2281302
    1260:	28130238 	slti	s3,zero,568
    1264:	13022813 	beq	t8,v0,b2b4 <data_size-0x1f9c>
    1268:	02381302 	0x2381302
    126c:	28130228 	slti	s3,zero,552
    1270:	13022813 	beq	t8,v0,b2c0 <data_size-0x1f90>
    1274:	02281302 	0x2281302
    1278:	28130228 	slti	s3,zero,552
    127c:	13022813 	beq	t8,v0,b2cc <data_size-0x1f84>
    1280:	02281302 	0x2281302
    1284:	28130228 	slti	s3,zero,552
    1288:	13022813 	beq	t8,v0,b2d8 <data_size-0x1f78>
    128c:	02281302 	0x2281302
    1290:	28130228 	slti	s3,zero,552
    1294:	13022813 	beq	t8,v0,b2e4 <data_size-0x1f6c>
    1298:	02281302 	0x2281302
    129c:	28130228 	slti	s3,zero,552
    12a0:	13022813 	beq	t8,v0,b2f0 <data_size-0x1f60>
    12a4:	02281302 	0x2281302
    12a8:	28130228 	slti	s3,zero,552
    12ac:	13022813 	beq	t8,v0,b2fc <data_size-0x1f54>
    12b0:	02281302 	0x2281302
    12b4:	28130228 	slti	s3,zero,552
    12b8:	13022813 	beq	t8,v0,b308 <data_size-0x1f48>
    12bc:	02281302 	0x2281302
    12c0:	28130228 	slti	s3,zero,552
    12c4:	13022813 	beq	t8,v0,b314 <data_size-0x1f3c>
    12c8:	02281302 	0x2281302
    12cc:	28130228 	slti	s3,zero,552
    12d0:	13022813 	beq	t8,v0,b320 <data_size-0x1f30>
    12d4:	02281302 	0x2281302
    12d8:	28130228 	slti	s3,zero,552
    12dc:	13022813 	beq	t8,v0,b32c <data_size-0x1f24>
    12e0:	02281302 	0x2281302
    12e4:	28130228 	slti	s3,zero,552
    12e8:	13022813 	beq	t8,v0,b338 <data_size-0x1f18>
    12ec:	02281302 	0x2281302
    12f0:	28130228 	slti	s3,zero,552
    12f4:	13022813 	beq	t8,v0,b344 <data_size-0x1f0c>
    12f8:	02281302 	0x2281302
    12fc:	28130228 	slti	s3,zero,552
    1300:	13022813 	beq	t8,v0,b350 <data_size-0x1f00>
    1304:	02281302 	0x2281302
    1308:	28130228 	slti	s3,zero,552
    130c:	13022414 	beq	t8,v0,a360 <data_size-0x2ef0>
    1310:	4b4c4d4b 	c2	0x14c4d4b
    1314:	4b4b0204 	c2	0x14b0204
    1318:	00010100 	sll	zero,at,0x4
    131c:	00006d00 	sll	t5,zero,0x14
    1320:	02000000 	0x2000000
    1324:	270101fb 	addiu	at,t8,507
    1328:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
    132c:	01010100 	0x1010100
    1330:	00000100 	sll	zero,zero,0x4
    1334:	0001006e 	0x1006e
    1338:	38325f62 	xori	s2,at,0x5f62
    133c:	67657a5f 	0x67657a5f
    1340:	65785f64 	0x65785f64
    1344:	732e5300 	0x732e5300
    1348:	00000000 	nop
    134c:	00050280 	sll	zero,a1,0xa
    1350:	00b2fc03 	0xb2fc03
    1354:	0d014d02 	jal	4053408 <data_size+0x40461b8>
    1358:	c0031302 	ll	v1,4866(zero)
    135c:	c0031302 	ll	v1,4866(zero)
    1360:	c0031302 	ll	v1,4866(zero)
    1364:	c0031302 	ll	v1,4866(zero)
    1368:	c0031302 	ll	v1,4866(zero)
    136c:	c0031302 	ll	v1,4866(zero)
    1370:	c0031302 	ll	v1,4866(zero)
    1374:	c0031302 	ll	v1,4866(zero)
    1378:	c0031302 	ll	v1,4866(zero)
    137c:	c0031302 	ll	v1,4866(zero)
    1380:	c003184d 	ll	v1,6221(zero)
    1384:	4b4b4b02 	c2	0x14b4b02
    1388:	04000101 	bltz	zero,1790 <data_size-0xbac0>
    138c:	0000006f 	0x6f
    1390:	00020000 	sll	zero,v0,0x0
    1394:	00290101 	0x290101
    1398:	fb0e0d00 	sdc2	$14,3328(t8)
    139c:	01010101 	0x1010101
    13a0:	00000001 	movf	zero,zero,$fcc0
    13a4:	00000100 	sll	zero,zero,0x4
    13a8:	6e38375f 	0x6e38375f
    13ac:	6267657a 	0x6267657a
    13b0:	616c5f65 	0x616c5f65
    13b4:	785f6473 	0x785f6473
    13b8:	2e530000 	sltiu	s3,s2,0
    13bc:	00000000 	nop
    13c0:	05028000 	bltzl	t0,fffe13c4 <_stack+0x7fddcadc>
    13c4:	c654030d 	lwc1	$f20,781(s2)
    13c8:	014d02d4 	0x14d02d4
    13cc:	031302d4 	0x31302d4
    13d0:	031302d4 	0x31302d4
    13d4:	031302d4 	0x31302d4
    13d8:	031302d4 	0x31302d4
    13dc:	031302d4 	0x31302d4
    13e0:	031302d4 	0x31302d4
    13e4:	031302d4 	0x31302d4
    13e8:	031302d4 	0x31302d4
    13ec:	031302d4 	0x31302d4
    13f0:	031302d4 	0x31302d4
    13f4:	03184d4b 	0x3184d4b
    13f8:	4b4b0204 	c2	0x14b0204
    13fc:	00010100 	sll	zero,at,0x4
    1400:	00004100 	sll	t0,zero,0x4
    1404:	02000000 	0x2000000
    1408:	200101fb 	addi	at,zero,507
    140c:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
    1410:	01010100 	0x1010100
    1414:	00000100 	sll	zero,zero,0x4
    1418:	0001006e 	0x1006e
    141c:	32395f62 	andi	t9,s1,0x5f62
    1420:	65712e53 	0x65712e53
    1424:	00000000 	nop
    1428:	00000502 	srl	zero,zero,0x14
    142c:	800043a8 	lb	zero,17320(zero)
    1430:	030a014b 	0x30a014b
    1434:	4c02b801 	mfc3	v0,$23,1
    1438:	144b4c4d 	bne	v0,t3,14570 <data_size+0x7320>
    143c:	4b4b4b02 	c2	0x14b4b02
    1440:	04000101 	bltz	zero,1848 <data_size-0xba08>
    1444:	0000006c 	0x6c
    1448:	00020000 	sll	zero,v0,0x0
    144c:	00260101 	0x260101
    1450:	fb0e0d00 	sdc2	$14,3328(t8)
    1454:	01010101 	0x1010101
    1458:	00000001 	movf	zero,zero,$fcc0
    145c:	00000100 	sll	zero,zero,0x4
    1460:	6e38305f 	0x6e38305f
    1464:	6265715f 	0x6265715f
    1468:	65785f64 	0x65785f64
    146c:	732e5300 	0x732e5300
    1470:	00000000 	nop
    1474:	00050280 	sll	zero,a1,0xa
    1478:	00da8803 	0xda8803
    147c:	0d014d02 	jal	4053408 <data_size+0x40461b8>
    1480:	c0031302 	ll	v1,4866(zero)
    1484:	c0031302 	ll	v1,4866(zero)
    1488:	c0031302 	ll	v1,4866(zero)
    148c:	c0031302 	ll	v1,4866(zero)
    1490:	c0031302 	ll	v1,4866(zero)
    1494:	c0031302 	ll	v1,4866(zero)
    1498:	c0031302 	ll	v1,4866(zero)
    149c:	c0031302 	ll	v1,4866(zero)
    14a0:	c0031302 	ll	v1,4866(zero)
    14a4:	c0031302 	ll	v1,4866(zero)
    14a8:	c003184d 	ll	v1,6221(zero)
    14ac:	4b4b4b02 	c2	0x14b4b02
    14b0:	04000101 	bltz	zero,18b8 <data_size-0xb998>
    14b4:	00000040 	ssnop
    14b8:	00020000 	sll	zero,v0,0x0
    14bc:	00210101 	0x210101
    14c0:	fb0e0d00 	sdc2	$14,3328(t8)
    14c4:	01010101 	0x1010101
    14c8:	00000001 	movf	zero,zero,$fcc0
    14cc:	00000100 	sll	zero,zero,0x4
    14d0:	6e32325f 	0x6e32325f
    14d4:	786f7269 	0x786f7269
    14d8:	2e530000 	sltiu	s3,s2,0
    14dc:	00000000 	nop
    14e0:	05028000 	bltzl	t0,fffe14e4 <_stack+0x7fddcbfc>
    14e4:	4488030a 	0x4488030a
    14e8:	014b4c08 	0x14b4c08
    14ec:	e64b4c4d 	swc1	$f11,19533(s2)
    14f0:	4b4b4b02 	c2	0x14b4b02
    14f4:	04000101 	bltz	zero,18fc <data_size-0xb954>
    14f8:	00000042 	srl	zero,zero,0x1
    14fc:	00020000 	sll	zero,v0,0x0
    1500:	00210101 	0x210101
    1504:	fb0e0d00 	sdc2	$14,3328(t8)
    1508:	01010101 	0x1010101
    150c:	00000001 	movf	zero,zero,$fcc0
    1510:	00000100 	sll	zero,zero,0x4
    1514:	6e33315f 	0x6e33315f
    1518:	6267657a 	0x6267657a
    151c:	2e530000 	sltiu	s3,s2,0
    1520:	00000000 	nop
    1524:	05028000 	bltzl	t0,fffe1528 <_stack+0x7fddcc40>
    1528:	44d0030a 	0x44d0030a
    152c:	014b4c02 	0x14b4c02
    1530:	9001144b 	lbu	at,5195(zero)
    1534:	4c4d4b4b 	0x4c4d4b4b
    1538:	4b020400 	c2	0x1020400
    153c:	01010000 	0x1010000
    1540:	00400002 	0x400002
    1544:	00000021 	move	zero,zero
    1548:	0101fb0e 	0x101fb0e
    154c:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
    1550:	01010000 	0x1010000
    1554:	00010000 	sll	zero,at,0x0
    1558:	01006e31 	tgeu	t0,zero,0x1b8
    155c:	365f616e 	ori	ra,s2,0x616e
    1560:	64692e53 	0x64692e53
    1564:	00000000 	nop
    1568:	00000502 	srl	zero,zero,0x14
    156c:	80004588 	lb	zero,17800(zero)
    1570:	030a014b 	0x30a014b
    1574:	4c08ae4b 	0x4c08ae4b
    1578:	4c4d4b4b 	0x4c4d4b4b
    157c:	4b020400 	c2	0x1020400
    1580:	01010000 	0x1010000
    1584:	003f0002 	ror	zero,ra,0x0
    1588:	00000020 	add	zero,zero,zero
    158c:	0101fb0e 	0x101fb0e
    1590:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
    1594:	01010000 	0x1010000
    1598:	00010000 	sll	zero,at,0x0
    159c:	01006e32 	tlt	t0,zero,0x1b8
    15a0:	335f736c 	andi	ra,k0,0x736c
    15a4:	6c2e5300 	0x6c2e5300
    15a8:	00000000 	nop
    15ac:	00050280 	sll	zero,a1,0xa
    15b0:	0045c803 	0x45c803
    15b4:	0a014b4c 	j	8052d30 <data_size+0x8045ae0>
    15b8:	08e64b4c 	j	3992d30 <data_size+0x3985ae0>
    15bc:	4d4b4b4b 	0x4d4b4b4b
    15c0:	02040001 	movf	zero,s0,$fcc1
    15c4:	01000000 	0x1000000
    15c8:	47000200 	c1	0x1000200
    15cc:	00002601 	0x2601
    15d0:	01fb0e0d 	break	0x1fb,0x38
    15d4:	00010101 	0x10101
    15d8:	01000000 	0x1000000
    15dc:	01000001 	movf	zero,t0,$fcc0
    15e0:	006e3734 	teq	v1,t6,0xdc
    15e4:	5f626c74 	0x5f626c74
    15e8:	7a616c5f 	0x7a616c5f
    15ec:	64732e53 	0x64732e53
    15f0:	00000000 	nop
    15f4:	00000502 	srl	zero,zero,0x14
    15f8:	8000ede0 	lb	zero,-4640(zero)
    15fc:	030d014b 	0x30d014b
    1600:	4c02f401 	0x4c02f401
    1604:	144b4c4d 	bne	v0,t3,1473c <data_size+0x74ec>
    1608:	4b4b4b02 	c2	0x14b4b02
    160c:	04000101 	bltz	zero,1a14 <data_size-0xb83c>
    1610:	00000040 	ssnop
    1614:	00020000 	sll	zero,v0,0x0
    1618:	00210101 	0x210101
    161c:	fb0e0d00 	sdc2	$14,3328(t8)
    1620:	01010101 	0x1010101
    1624:	00000001 	movf	zero,zero,$fcc0
    1628:	00000100 	sll	zero,zero,0x4
    162c:	6e32365f 	0x6e32365f
    1630:	73726176 	0x73726176
    1634:	2e530000 	sltiu	s3,s2,0
    1638:	00000000 	nop
    163c:	05028000 	bltzl	t0,fffe1640 <_stack+0x7fddcd58>
    1640:	4610030a 	c1	0x10030a
    1644:	014b4c08 	0x14b4c08
    1648:	e64b4c4d 	swc1	$f11,19533(s2)
    164c:	4b4b4b02 	c2	0x14b4b02
    1650:	04000101 	bltz	zero,1a58 <data_size-0xb7f8>
    1654:	0000003f 	0x3f
    1658:	00020000 	sll	zero,v0,0x0
    165c:	001f0101 	0x1f0101
    1660:	fb0e0d00 	sdc2	$14,3328(t8)
    1664:	01010101 	0x1010101
    1668:	00000001 	movf	zero,zero,$fcc0
    166c:	00000100 	sll	zero,zero,0x4
    1670:	6e35315f 	0x6e35315f
    1674:	6c772e53 	0x6c772e53
    1678:	00000000 	nop
    167c:	00000502 	srl	zero,zero,0x14
    1680:	80004658 	lb	zero,18008(zero)
    1684:	030a014b 	0x30a014b
    1688:	4c023015 	0x4c023015
    168c:	4b4c4d4b 	c2	0x14c4d4b
    1690:	4b4b0204 	c2	0x14b0204
    1694:	00010100 	sll	zero,at,0x4
    1698:	00004000 	sll	t0,zero,0x0
    169c:	02000000 	0x2000000
    16a0:	210101fb 	addi	at,t0,507
    16a4:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
    16a8:	01010100 	0x1010100
    16ac:	00000100 	sll	zero,zero,0x4
    16b0:	0001006e 	0x1006e
    16b4:	34315f6d 	ori	s1,at,0x5f6d
    16b8:	6668692e 	0x6668692e
    16bc:	53000000 	beqzl	t8,16c0 <data_size-0xbb90>
    16c0:	00000005 	0x5
    16c4:	02800046 	rorv	zero,zero,s4
    16c8:	b0030a01 	0xb0030a01
    16cc:	4b4c08e7 	c2	0x14c08e7
    16d0:	4b4c4d4b 	c2	0x14c4d4b
    16d4:	4b4b0204 	c2	0x14b0204
    16d8:	00010100 	sll	zero,at,0x4
    16dc:	00004200 	sll	t0,zero,0x8
    16e0:	02000000 	0x2000000
    16e4:	210101fb 	addi	at,t0,507
    16e8:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
    16ec:	01010100 	0x1010100
    16f0:	00000100 	sll	zero,zero,0x4
    16f4:	0001006e 	0x1006e
    16f8:	33325f62 	andi	s2,t9,0x5f62
    16fc:	67747a2e 	0x67747a2e
    1700:	53000000 	beqzl	t8,1704 <data_size-0xbb4c>
    1704:	00000005 	0x5
    1708:	02800046 	rorv	zero,zero,s4
    170c:	f8030a01 	sdc2	$3,2561(zero)
    1710:	4b4c02c0 	c2	0x14c02c0
    1714:	01154b4c 	syscall	0x4552d
    1718:	4d4b4b4b 	0x4d4b4b4b
    171c:	02040001 	movf	zero,s0,$fcc1
    1720:	01000000 	0x1000000
    1724:	47000200 	c1	0x1000200
    1728:	00002601 	0x2601
    172c:	01fb0e0d 	break	0x1fb,0x38
    1730:	00010101 	0x10101
    1734:	01000000 	0x1000000
    1738:	01000001 	movf	zero,t0,$fcc0
    173c:	006e3735 	0x6e3735
    1740:	5f626765 	0x5f626765
    1744:	7a616c5f 	0x7a616c5f
    1748:	64732e53 	0x64732e53
    174c:	00000000 	nop
    1750:	00000502 	srl	zero,zero,0x14
    1754:	8000eef8 	lb	zero,-4360(zero)
    1758:	030d014b 	0x30d014b
    175c:	4c029402 	0x4c029402
    1760:	144b4c4d 	bne	v0,t3,14898 <data_size+0x7648>
    1764:	4b4b4b02 	c2	0x14b4b02
    1768:	04000101 	bltz	zero,1b70 <data_size-0xb6e0>
    176c:	0000003f 	0x3f
    1770:	00020000 	sll	zero,v0,0x0
    1774:	00200101 	0x200101
    1778:	fb0e0d00 	sdc2	$14,3328(t8)
    177c:	01010101 	0x1010101
    1780:	00000001 	movf	zero,zero,$fcc0
    1784:	00000100 	sll	zero,zero,0x4
    1788:	6e32305f 	0x6e32305f
    178c:	6f72692e 	0x6f72692e
    1790:	53000000 	beqzl	t8,1794 <data_size-0xbabc>
    1794:	00000005 	0x5
    1798:	02800047 	0x2800047
    179c:	e0030a01 	sc	v1,2561(zero)
    17a0:	4b4c08e6 	c2	0x14c08e6
    17a4:	4b4c4d4b 	c2	0x14c4d4b
    17a8:	4b4b0204 	c2	0x14b0204
    17ac:	00010100 	sll	zero,at,0x4
    17b0:	00004500 	sll	t0,zero,0x14
    17b4:	02000000 	0x2000000
    17b8:	240101fb 	li	at,507
    17bc:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
    17c0:	01010100 	0x1010100
    17c4:	00000100 	sll	zero,zero,0x4
    17c8:	0001006e 	0x1006e
    17cc:	37305f62 	ori	s0,t9,0x5f62
    17d0:	67657a5f 	0x67657a5f
    17d4:	64732e53 	0x64732e53
    17d8:	00000000 	nop
    17dc:	00000502 	srl	zero,zero,0x14
    17e0:	8000f030 	lb	zero,-4048(zero)
    17e4:	030d014b 	0x30d014b
    17e8:	4c02e801 	mfc3	v0,$29,1
    17ec:	144b4c4d 	bne	v0,t3,14924 <data_size+0x76d4>
    17f0:	4b4b4b02 	c2	0x14b4b02
    17f4:	04000101 	bltz	zero,1bfc <data_size-0xb654>
    17f8:	0000003f 	0x3f
    17fc:	00020000 	sll	zero,v0,0x0
    1800:	00200101 	0x200101
    1804:	fb0e0d00 	sdc2	$14,3328(t8)
    1808:	01010101 	0x1010101
    180c:	00000001 	movf	zero,zero,$fcc0
    1810:	00000100 	sll	zero,zero,0x4
    1814:	6e32355f 	0x6e32355f
    1818:	7372612e 	0x7372612e
    181c:	53000000 	beqzl	t8,1820 <data_size-0xba30>
    1820:	00000005 	0x5
    1824:	02800048 	0x2800048
    1828:	28030a01 	slti	v1,zero,2561
    182c:	4b4c08e6 	c2	0x14c08e6
    1830:	4b4c4d4b 	c2	0x14c4d4b
    1834:	4b4b0204 	c2	0x14b0204
    1838:	00010100 	sll	zero,at,0x4
    183c:	00004200 	sll	t0,zero,0x8
    1840:	02000000 	0x2000000
    1844:	210101fb 	addi	at,t0,507
    1848:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
    184c:	01010100 	0x1010100
    1850:	00000100 	sll	zero,zero,0x4
    1854:	0001006e 	0x1006e
    1858:	37365f6a 	ori	s6,t9,0x5f6a
    185c:	5f64732e 	0x5f64732e
    1860:	53000000 	beqzl	t8,1864 <data_size-0xb9ec>
    1864:	00000005 	0x5
    1868:	028000f1 	tgeu	s4,zero,0x3
    186c:	3c030d01 	lui	v1,0xd01
    1870:	4b4c0288 	c2	0x14c0288
    1874:	01144b4c 	syscall	0x4512d
    1878:	4d4b4b4b 	0x4d4b4b4b
    187c:	02040001 	movf	zero,s0,$fcc1
    1880:	01000000 	0x1000000
    1884:	6d000200 	0x6d000200
    1888:	00002701 	0x2701
    188c:	01fb0e0d 	break	0x1fb,0x38
    1890:	00010101 	0x10101
    1894:	01000000 	0x1000000
    1898:	01000001 	movf	zero,t0,$fcc0
    189c:	006e3833 	tltu	v1,t6,0xe0
    18a0:	5f626774 	0x5f626774
    18a4:	7a5f6578 	0x7a5f6578
    18a8:	5f64732e 	0x5f64732e
    18ac:	53000000 	beqzl	t8,18b0 <data_size-0xb9a0>
    18b0:	00000005 	0x5
    18b4:	028000f1 	tgeu	s4,zero,0x3
    18b8:	e8030d01 	swc2	$3,3329(zero)
    18bc:	4d02c003 	bc3fl	ffff18cc <_stack+0x7fdecfe4>
    18c0:	1302c003 	beq	t8,v0,ffff18d0 <_stack+0x7fdecfe8>
    18c4:	1302c003 	beq	t8,v0,ffff18d4 <_stack+0x7fdecfec>
    18c8:	1302c003 	beq	t8,v0,ffff18d8 <_stack+0x7fdecff0>
    18cc:	1302c003 	beq	t8,v0,ffff18dc <_stack+0x7fdecff4>
    18d0:	1302c003 	beq	t8,v0,ffff18e0 <_stack+0x7fdecff8>
    18d4:	1302c003 	beq	t8,v0,ffff18e4 <_stack+0x7fdecffc>
    18d8:	1302c003 	beq	t8,v0,ffff18e8 <_stack+0x7fded000>
    18dc:	1302c003 	beq	t8,v0,ffff18ec <_stack+0x7fded004>
    18e0:	1302c003 	beq	t8,v0,ffff18f0 <_stack+0x7fded008>
    18e4:	1302c003 	beq	t8,v0,ffff18f4 <_stack+0x7fded00c>
    18e8:	184d4b4b 	0x184d4b4b
    18ec:	4b020400 	c2	0x1020400
    18f0:	01010000 	0x1010000
    18f4:	00400002 	0x400002
    18f8:	00000020 	add	zero,zero,zero
    18fc:	0101fb0e 	0x101fb0e
    1900:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
    1904:	01010000 	0x1010000
    1908:	00010000 	sll	zero,at,0x0
    190c:	01006e31 	tgeu	t0,zero,0x1b8
    1910:	355f616e 	ori	ra,t2,0x616e
    1914:	642e5300 	0x642e5300
    1918:	00000000 	nop
    191c:	00050280 	sll	zero,a1,0xa
    1920:	00487003 	0x487003
    1924:	0a014b4c 	j	8052d30 <data_size+0x8045ae0>
    1928:	0224144b 	0x224144b
    192c:	4c4d4b4b 	0x4c4d4b4b
    1930:	4b020400 	c2	0x1020400
    1934:	01010000 	0x1010000
    1938:	006f0002 	0x6f0002
    193c:	00000029 	0x29
    1940:	0101fb0e 	0x101fb0e
    1944:	0d000101 	jal	4000404 <data_size+0x3ff31b4>
    1948:	01010000 	0x1010000
    194c:	00010000 	sll	zero,at,0x0
    1950:	01006e38 	0x1006e38
    1954:	365f626c 	ori	ra,s2,0x626c
    1958:	747a616c 	jalx	1e985b0 <data_size+0x1e8b360>
    195c:	5f65785f 	0x5f65785f
    1960:	64732e53 	0x64732e53
    1964:	00000000 	nop
    1968:	00000502 	srl	zero,zero,0x14
    196c:	80010540 	lb	at,1344(zero)
    1970:	030d014d 	break	0x30d,0x5
    1974:	02d40313 	0x2d40313
    1978:	02d40313 	0x2d40313
    197c:	02d40313 	0x2d40313
    1980:	02d40313 	0x2d40313
    1984:	02d40313 	0x2d40313
    1988:	02d40313 	0x2d40313
    198c:	02d40313 	0x2d40313
    1990:	02d40313 	0x2d40313
    1994:	02d40313 	0x2d40313
    1998:	02d40313 	0x2d40313
    199c:	02d40318 	0x2d40318
    19a0:	4d4b4b4b 	0x4d4b4b4b
    19a4:	02040001 	movf	zero,s0,$fcc1
    19a8:	01000000 	0x1000000
    19ac:	44000200 	0x44000200
    19b0:	00002301 	0x2301
    19b4:	01fb0e0d 	break	0x1fb,0x38
    19b8:	00010101 	0x10101
    19bc:	01000000 	0x1000000
    19c0:	01000001 	movf	zero,t0,$fcc0
    19c4:	006e3638 	0x6e3638
    19c8:	5f626571 	0x5f626571
    19cc:	5f64732e 	0x5f64732e
    19d0:	53000000 	beqzl	t8,19d4 <data_size-0xb87c>
    19d4:	00000005 	0x5
    19d8:	02800119 	0x2800119
    19dc:	74030d01 	jalx	c3404 <data_size+0xb61b4>
    19e0:	4b4c02c0 	c2	0x14c02c0
    19e4:	01144b4c 	syscall	0x4512d
    19e8:	4d4b4b4b 	0x4d4b4b4b
    19ec:	02040001 	movf	zero,s0,$fcc1
    19f0:	01000000 	0x1000000
    19f4:	3e000200 	0x3e000200
    19f8:	00002001 	movf	a0,zero,$fcc0
    19fc:	01fb0e0d 	break	0x1fb,0x38
    1a00:	00010101 	0x10101
    1a04:	01000000 	0x1000000
    1a08:	01000001 	movf	zero,t0,$fcc0
    1a0c:	006e3137 	0x6e3137
    1a10:	5f6c7569 	0x5f6c7569
    1a14:	2e530000 	sltiu	s3,s2,0
    1a18:	00000000 	nop
    1a1c:	05028000 	bltzl	t0,fffe1a20 <_stack+0x7fddd138>
    1a20:	48b8030a 	0x48b8030a
    1a24:	014b4cf4 	teq	t2,t3,0x133
    1a28:	4b4c4d4b 	c2	0x14c4d4b
    1a2c:	4b4b0204 	c2	0x14b0204
    1a30:	00010100 	sll	zero,at,0x4
    1a34:	00004500 	sll	t0,zero,0x14
    1a38:	02000000 	0x2000000
    1a3c:	240101fb 	li	at,507
    1a40:	0e0d0001 	jal	8340004 <data_size+0x8332db4>
    1a44:	01010100 	0x1010100
    1a48:	00000100 	sll	zero,zero,0x4
    1a4c:	0001006e 	0x1006e
    1a50:	37395f6a 	ori	t9,t9,0x5f6a
    1a54:	616c725f 	0x616c725f
    1a58:	64732e53 	0x64732e53
    1a5c:	00000000 	nop
    1a60:	00000502 	srl	zero,zero,0x14
    1a64:	80011a58 	lb	at,6744(zero)
    1a68:	030d014b 	0x30d014b
    1a6c:	4c02cc01 	0x4c02cc01
    1a70:	144b4c4d 	bne	v0,t3,14ba8 <data_size+0x7958>
    1a74:	4b4b4b02 	c2	0x14b4b02
    1a78:	04000101 	bltz	zero,1e80 <data_size-0xb3d0>

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000067 	0x67
       4:	00020000 	sll	zero,v0,0x0
       8:	00000401 	0x401
       c:	00000000 	nop
      10:	80000000 	lb	zero,0(zero)
      14:	80000a54 	lb	zero,2644(zero)
      18:	73746172 	0x73746172
      1c:	742e5300 	jalx	b94c00 <data_size+0xb879b0>
      20:	2f686f6d 	sltiu	t0,k1,28525
      24:	652f7a68 	0x652f7a68
      28:	616e6768 	0x616e6768
      2c:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
      30:	6e672f43 	0x6e672f43
      34:	6f6d7075 	0x6f6d7075
      38:	7465725f 	jalx	195c97c <data_size+0x194f72c>
      3c:	41726368 	0x41726368
      40:	69746563 	0x69746563
      44:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
      48:	2f66756e 	sltiu	a2,k1,30062
      4c:	6374696f 	0x6374696f
      50:	6e746573 	0x6e746573
      54:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
      58:	6300474e 	0x6300474e
      5c:	55204153 	bnezl	t1,105ac <data_size+0x335c>
      60:	20322e32 	addi	s2,at,11826
      64:	342e3531 	ori	t6,at,0x3531
      68:	00800100 	0x800100
      6c:	00006f00 	sll	t5,zero,0x1c
      70:	02000000 	0x2000000
      74:	14040100 	bne	zero,a0,478 <data_size-0xcdd8>
      78:	0001e680 	sll	gp,at,0x1a
      7c:	000a5880 	sll	t3,t2,0x2
      80:	000aac6e 	0xaac6e
      84:	35375f6d 	ori	s7,t1,0x5f6d
      88:	7463302e 	jalx	18cc0b8 <data_size+0x18bee68>
      8c:	53002f68 	beqzl	t8,be30 <data_size-0x1420>
      90:	6f6d652f 	0x6f6d652f
      94:	7a68616e 	0x7a68616e
      98:	67687569 	0x67687569
      9c:	6d656e67 	0x6d656e67
      a0:	2f436f6d 	sltiu	v1,k0,28525
      a4:	70757465 	0x70757465
      a8:	725f4172 	0x725f4172
      ac:	63686974 	0x63686974
      b0:	65637475 	0x65637475
      b4:	72652f66 	0x72652f66
      b8:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
      bc:	696f6e74 	0x696f6e74
      c0:	6573742f 	0x6573742f
      c4:	7372632f 	0x7372632f
      c8:	696e7374 	0x696e7374
      cc:	00474e55 	0x474e55
      d0:	20415320 	addi	at,v0,21280
      d4:	322e3234 	andi	t6,s1,0x3234
      d8:	2e353100 	sltiu	s5,s1,12544
      dc:	80010000 	lb	at,0(zero)
      e0:	006d0002 	0x6d0002
      e4:	00000028 	0x28
      e8:	04010000 	b	ec <data_size-0xd164>
      ec:	02358000 	0x2358000
      f0:	0ab08000 	j	ac20000 <data_size+0xac12db0>
      f4:	0b986e33 	j	e61b8cc <data_size+0xe60e67c>
      f8:	395f6a72 	xori	ra,t2,0x6a72
      fc:	2e53002f 	sltiu	s3,s2,47
     100:	686f6d65 	0x686f6d65
     104:	2f7a6861 	sltiu	k0,k1,26721
     108:	6e676875 	0x6e676875
     10c:	696d656e 	0x696d656e
     110:	672f436f 	0x672f436f
     114:	6d707574 	0x6d707574
     118:	65725f41 	0x65725f41
     11c:	72636869 	0x72636869
     120:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
     124:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
     128:	66756e63 	0x66756e63
     12c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
     130:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
     134:	2f737263 	sltiu	s3,k1,29283
     138:	2f696e73 	sltiu	t1,k1,28275
     13c:	7400474e 	jalx	11d38 <data_size+0x4ae8>
     140:	55204153 	bnezl	t1,10690 <data_size+0x3440>
     144:	20322e32 	addi	s2,at,11826
     148:	342e3531 	ori	t6,at,0x3531
     14c:	00800100 	0x800100
     150:	00006d00 	sll	t5,zero,0x14
     154:	02000000 	0x2000000
     158:	3c040100 	lui	a0,0x100
     15c:	00027980 	sll	t7,v0,0x6
     160:	000b9880 	sll	s3,t3,0x2
     164:	000bdc6e 	0xbdc6e
     168:	375f736c 	ori	ra,k0,0x736c
     16c:	742e5300 	jalx	b94c00 <data_size+0xb879b0>
     170:	2f686f6d 	sltiu	t0,k1,28525
     174:	652f7a68 	0x652f7a68
     178:	616e6768 	0x616e6768
     17c:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     180:	6e672f43 	0x6e672f43
     184:	6f6d7075 	0x6f6d7075
     188:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     18c:	41726368 	0x41726368
     190:	69746563 	0x69746563
     194:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     198:	2f66756e 	sltiu	a2,k1,30062
     19c:	6374696f 	0x6374696f
     1a0:	6e746573 	0x6e746573
     1a4:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     1a8:	632f696e 	0x632f696e
     1ac:	73740047 	0x73740047
     1b0:	4e552041 	c3	0x552041
     1b4:	5320322e 	beqzl	t9,ca70 <data_size-0x7e0>
     1b8:	32342e35 	andi	s4,s1,0x2e35
     1bc:	31008001 	andi	zero,t0,0x8001
     1c0:	0000006d 	0x6d
     1c4:	00020000 	sll	zero,v0,0x0
     1c8:	00500401 	0x500401
     1cc:	000002bb 	0x2bb
     1d0:	80000be0 	lb	zero,3040(zero)
     1d4:	80000c30 	lb	zero,3120(zero)
     1d8:	6e34375f 	0x6e34375f
     1dc:	6c622e53 	0x6c622e53
     1e0:	002f686f 	0x2f686f
     1e4:	6d652f7a 	0x6d652f7a
     1e8:	68616e67 	0x68616e67
     1ec:	6875696d 	0x6875696d
     1f0:	656e672f 	0x656e672f
     1f4:	436f6d70 	c0	0x16f6d70
     1f8:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
     1fc:	5f417263 	0x5f417263
     200:	68697465 	0x68697465
     204:	63747572 	0x63747572
     208:	652f6675 	0x652f6675
     20c:	6e637469 	0x6e637469
     210:	6f6e7465 	0x6f6e7465
     214:	73742f73 	0x73742f73
     218:	72632f69 	0x72632f69
     21c:	6e737400 	0x6e737400
     220:	474e5520 	c1	0x14e5520
     224:	41532032 	0x41532032
     228:	2e32342e 	sltiu	s2,s1,13358
     22c:	35310080 	ori	s1,t1,0x80
     230:	01000000 	0x1000000
     234:	74000200 	jalx	800 <data_size-0xca50>
     238:	00006404 	0x6404
     23c:	01000002 	0x1000002
     240:	fe800049 	sdc3	$0,73(s4)
     244:	0880005c 	j	2000170 <data_size+0x1ff2f20>
     248:	606e3831 	0x606e3831
     24c:	5f626e65 	0x5f626e65
     250:	5f65785f 	0x5f65785f
     254:	64732e53 	0x64732e53
     258:	002f686f 	0x2f686f
     25c:	6d652f7a 	0x6d652f7a
     260:	68616e67 	0x68616e67
     264:	6875696d 	0x6875696d
     268:	656e672f 	0x656e672f
     26c:	436f6d70 	c0	0x16f6d70
     270:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
     274:	5f417263 	0x5f417263
     278:	68697465 	0x68697465
     27c:	63747572 	0x63747572
     280:	652f6675 	0x652f6675
     284:	6e637469 	0x6e637469
     288:	6f6e7465 	0x6f6e7465
     28c:	73742f73 	0x73742f73
     290:	72632f69 	0x72632f69
     294:	6e737400 	0x6e737400
     298:	474e5520 	c1	0x14e5520
     29c:	41532032 	0x41532032
     2a0:	2e32342e 	sltiu	s2,s1,13358
     2a4:	35310080 	ori	s1,t1,0x80
     2a8:	01000000 	0x1000000
     2ac:	6f000200 	0x6f000200
     2b0:	00007804 	sllv	t7,zero,zero
     2b4:	01000003 	0x1000003
     2b8:	6e80000c 	0x6e80000c
     2bc:	3080000c 	andi	zero,a0,0xc
     2c0:	746e345f 	jalx	1b8d17c <data_size+0x1b7ff2c>
     2c4:	61646469 	0x61646469
     2c8:	752e5300 	jalx	4b94c00 <data_size+0x4b879b0>
     2cc:	2f686f6d 	sltiu	t0,k1,28525
     2d0:	652f7a68 	0x652f7a68
     2d4:	616e6768 	0x616e6768
     2d8:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     2dc:	6e672f43 	0x6e672f43
     2e0:	6f6d7075 	0x6f6d7075
     2e4:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     2e8:	41726368 	0x41726368
     2ec:	69746563 	0x69746563
     2f0:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     2f4:	2f66756e 	sltiu	a2,k1,30062
     2f8:	6374696f 	0x6374696f
     2fc:	6e746573 	0x6e746573
     300:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     304:	632f696e 	0x632f696e
     308:	73740047 	0x73740047
     30c:	4e552041 	c3	0x552041
     310:	5320322e 	beqzl	t9,cbcc <data_size-0x684>
     314:	32342e35 	andi	s4,s1,0x2e35
     318:	31008001 	andi	zero,t0,0x8001
     31c:	0000006f 	0x6f
     320:	00020000 	sll	zero,v0,0x0
     324:	008c0401 	0x8c0401
     328:	000003b2 	tlt	zero,zero,0xe
     32c:	80000c78 	lb	zero,3192(zero)
     330:	80000cb8 	lb	zero,3256(zero)
     334:	6e32385f 	0x6e32385f
     338:	73726c76 	0x73726c76
     33c:	2e53002f 	sltiu	s3,s2,47
     340:	686f6d65 	0x686f6d65
     344:	2f7a6861 	sltiu	k0,k1,26721
     348:	6e676875 	0x6e676875
     34c:	696d656e 	0x696d656e
     350:	672f436f 	0x672f436f
     354:	6d707574 	0x6d707574
     358:	65725f41 	0x65725f41
     35c:	72636869 	0x72636869
     360:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
     364:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
     368:	66756e63 	0x66756e63
     36c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
     370:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
     374:	2f737263 	sltiu	s3,k1,29283
     378:	2f696e73 	sltiu	t1,k1,28275
     37c:	7400474e 	jalx	11d38 <data_size+0x4ae8>
     380:	55204153 	bnezl	t1,108d0 <data_size+0x3680>
     384:	20322e32 	addi	s2,at,11826
     388:	342e3531 	ori	t6,at,0x3531
     38c:	00800100 	0x800100
     390:	00007500 	sll	t6,zero,0x14
     394:	02000000 	0x2000000
     398:	a0040100 	sb	a0,256(zero)
     39c:	0003f680 	sll	s8,v1,0x1a
     3a0:	005c6080 	0x5c6080
     3a4:	00674c6e 	0x674c6e
     3a8:	39315f6a 	xori	s1,t1,0x5f6a
     3ac:	616c725f 	0x616c725f
     3b0:	65785f64 	0x65785f64
     3b4:	732e5300 	0x732e5300
     3b8:	2f686f6d 	sltiu	t0,k1,28525
     3bc:	652f7a68 	0x652f7a68
     3c0:	616e6768 	0x616e6768
     3c4:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     3c8:	6e672f43 	0x6e672f43
     3cc:	6f6d7075 	0x6f6d7075
     3d0:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     3d4:	41726368 	0x41726368
     3d8:	69746563 	0x69746563
     3dc:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     3e0:	2f66756e 	sltiu	a2,k1,30062
     3e4:	6374696f 	0x6374696f
     3e8:	6e746573 	0x6e746573
     3ec:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     3f0:	632f696e 	0x632f696e
     3f4:	73740047 	0x73740047
     3f8:	4e552041 	c3	0x552041
     3fc:	5320322e 	beqzl	t9,ccb8 <data_size-0x598>
     400:	32342e35 	andi	s4,s1,0x2e35
     404:	31008001 	andi	zero,t0,0x8001
     408:	0000006e 	0x6e
     40c:	00020000 	sll	zero,v0,0x0
     410:	00b40401 	0xb40401
     414:	00000467 	0x467
     418:	80000cb8 	lb	zero,3256(zero)
     41c:	80000cfc 	lb	zero,3324(zero)
     420:	6e325f61 	0x6e325f61
     424:	6464692e 	0x6464692e
     428:	53002f68 	beqzl	t8,c1cc <data_size-0x1084>
     42c:	6f6d652f 	0x6f6d652f
     430:	7a68616e 	0x7a68616e
     434:	67687569 	0x67687569
     438:	6d656e67 	0x6d656e67
     43c:	2f436f6d 	sltiu	v1,k0,28525
     440:	70757465 	0x70757465
     444:	725f4172 	0x725f4172
     448:	63686974 	0x63686974
     44c:	65637475 	0x65637475
     450:	72652f66 	0x72652f66
     454:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     458:	696f6e74 	0x696f6e74
     45c:	6573742f 	0x6573742f
     460:	7372632f 	0x7372632f
     464:	696e7374 	0x696e7374
     468:	00474e55 	0x474e55
     46c:	20415320 	addi	at,v0,21280
     470:	322e3234 	andi	t6,s1,0x3234
     474:	2e353100 	sltiu	s5,s1,12544
     478:	80010000 	lb	at,0(zero)
     47c:	006f0002 	0x6f0002
     480:	000000c8 	0xc8
     484:	04010000 	b	488 <data_size-0xcdc8>
     488:	04aa8000 	tlti	a1,-32768
     48c:	0d008000 	jal	4020000 <data_size+0x4012db0>
     490:	0d3c6e34 	jal	4f1b8d0 <data_size+0x4f0e680>
     494:	325f6d66 	andi	ra,s2,0x6d66
     498:	6c6f2e53 	0x6c6f2e53
     49c:	002f686f 	0x2f686f
     4a0:	6d652f7a 	0x6d652f7a
     4a4:	68616e67 	0x68616e67
     4a8:	6875696d 	0x6875696d
     4ac:	656e672f 	0x656e672f
     4b0:	436f6d70 	c0	0x16f6d70
     4b4:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
     4b8:	5f417263 	0x5f417263
     4bc:	68697465 	0x68697465
     4c0:	63747572 	0x63747572
     4c4:	652f6675 	0x652f6675
     4c8:	6e637469 	0x6e637469
     4cc:	6f6e7465 	0x6f6e7465
     4d0:	73742f73 	0x73742f73
     4d4:	72632f69 	0x72632f69
     4d8:	6e737400 	0x6e737400
     4dc:	474e5520 	c1	0x14e5520
     4e0:	41532032 	0x41532032
     4e4:	2e32342e 	sltiu	s2,s1,13358
     4e8:	35310080 	ori	s1,t1,0x80
     4ec:	01000000 	0x1000000
     4f0:	6d000200 	0x6d000200
     4f4:	0000dc04 	0xdc04
     4f8:	01000004 	sllv	zero,zero,t0
     4fc:	ee80000d 	swc3	$0,13(s4)
     500:	4080000d 	0x4080000d
     504:	946e3534 	lhu	t6,13620(v1)
     508:	5f73772e 	0x5f73772e
     50c:	53002f68 	beqzl	t8,c2b0 <data_size-0xfa0>
     510:	6f6d652f 	0x6f6d652f
     514:	7a68616e 	0x7a68616e
     518:	67687569 	0x67687569
     51c:	6d656e67 	0x6d656e67
     520:	2f436f6d 	sltiu	v1,k0,28525
     524:	70757465 	0x70757465
     528:	725f4172 	0x725f4172
     52c:	63686974 	0x63686974
     530:	65637475 	0x65637475
     534:	72652f66 	0x72652f66
     538:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     53c:	696f6e74 	0x696f6e74
     540:	6573742f 	0x6573742f
     544:	7372632f 	0x7372632f
     548:	696e7374 	0x696e7374
     54c:	00474e55 	0x474e55
     550:	20415320 	addi	at,v0,21280
     554:	322e3234 	andi	t6,s1,0x3234
     558:	2e353100 	sltiu	s5,s1,12544
     55c:	80010000 	lb	at,0(zero)
     560:	00710002 	0x710002
     564:	000000f0 	tge	zero,zero,0x3
     568:	04010000 	b	56c <data_size-0xcce4>
     56c:	05318000 	bgezal	t1,fffe0570 <_stack+0x7fddbc88>
     570:	674c8000 	0x674c8000
     574:	684c6e36 	0x684c6e36
     578:	395f626e 	xori	ra,t2,0x626e
     57c:	655f6473 	0x655f6473
     580:	2e53002f 	sltiu	s3,s2,47
     584:	686f6d65 	0x686f6d65
     588:	2f7a6861 	sltiu	k0,k1,26721
     58c:	6e676875 	0x6e676875
     590:	696d656e 	0x696d656e
     594:	672f436f 	0x672f436f
     598:	6d707574 	0x6d707574
     59c:	65725f41 	0x65725f41
     5a0:	72636869 	0x72636869
     5a4:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
     5a8:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
     5ac:	66756e63 	0x66756e63
     5b0:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
     5b4:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
     5b8:	2f737263 	sltiu	s3,k1,29283
     5bc:	2f696e73 	sltiu	t1,k1,28275
     5c0:	7400474e 	jalx	11d38 <data_size+0x4ae8>
     5c4:	55204153 	bnezl	t1,10b14 <data_size+0x38c4>
     5c8:	20322e32 	addi	s2,at,11826
     5cc:	342e3531 	ori	t6,at,0x3531
     5d0:	00800100 	0x800100
     5d4:	00007000 	sll	t6,zero,0x0
     5d8:	02000001 	movf	zero,s0,$fcc0
     5dc:	04040100 	0x4040100
     5e0:	00057980 	sll	t7,a1,0x6
     5e4:	00684c80 	0x684c80
     5e8:	0069546e 	0x69546e
     5ec:	37385f6a 	ori	t8,t9,0x5f6a
     5f0:	725f6473 	0x725f6473
     5f4:	2e53002f 	sltiu	s3,s2,47
     5f8:	686f6d65 	0x686f6d65
     5fc:	2f7a6861 	sltiu	k0,k1,26721
     600:	6e676875 	0x6e676875
     604:	696d656e 	0x696d656e
     608:	672f436f 	0x672f436f
     60c:	6d707574 	0x6d707574
     610:	65725f41 	0x65725f41
     614:	72636869 	0x72636869
     618:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
     61c:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
     620:	66756e63 	0x66756e63
     624:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
     628:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
     62c:	2f737263 	sltiu	s3,k1,29283
     630:	2f696e73 	sltiu	t1,k1,28275
     634:	7400474e 	jalx	11d38 <data_size+0x4ae8>
     638:	55204153 	bnezl	t1,10b88 <data_size+0x3938>
     63c:	20322e32 	addi	s2,at,11826
     640:	342e3531 	ori	t6,at,0x3531
     644:	00800100 	0x800100
     648:	00006f00 	sll	t5,zero,0x1c
     64c:	02000001 	movf	zero,s0,$fcc0
     650:	18040100 	0x18040100
     654:	0005c080 	sll	t8,a1,0x2
     658:	000d9880 	sll	s3,t5,0x2
     65c:	000e706e 	0xe706e
     660:	33335f62 	andi	s3,t9,0x5f62
     664:	6c657a2e 	0x6c657a2e
     668:	53002f68 	beqzl	t8,c40c <data_size-0xe44>
     66c:	6f6d652f 	0x6f6d652f
     670:	7a68616e 	0x7a68616e
     674:	67687569 	0x67687569
     678:	6d656e67 	0x6d656e67
     67c:	2f436f6d 	sltiu	v1,k0,28525
     680:	70757465 	0x70757465
     684:	725f4172 	0x725f4172
     688:	63686974 	0x63686974
     68c:	65637475 	0x65637475
     690:	72652f66 	0x72652f66
     694:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     698:	696f6e74 	0x696f6e74
     69c:	6573742f 	0x6573742f
     6a0:	7372632f 	0x7372632f
     6a4:	696e7374 	0x696e7374
     6a8:	00474e55 	0x474e55
     6ac:	20415320 	addi	at,v0,21280
     6b0:	322e3234 	andi	t6,s1,0x3234
     6b4:	2e353100 	sltiu	s5,s1,12544
     6b8:	80010000 	lb	at,0(zero)
     6bc:	006f0002 	0x6f0002
     6c0:	0000012c 	0x12c
     6c4:	04010000 	b	6c8 <data_size-0xcb88>
     6c8:	06068000 	0x6068000
     6cc:	0e708000 	jal	9c20000 <data_size+0x9c12db0>
     6d0:	0eb46e34 	jal	ad1b8d0 <data_size+0xad0e680>
     6d4:	345f6d74 	ori	ra,v0,0x6d74
     6d8:	6c6f2e53 	0x6c6f2e53
     6dc:	002f686f 	0x2f686f
     6e0:	6d652f7a 	0x6d652f7a
     6e4:	68616e67 	0x68616e67
     6e8:	6875696d 	0x6875696d
     6ec:	656e672f 	0x656e672f
     6f0:	436f6d70 	c0	0x16f6d70
     6f4:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
     6f8:	5f417263 	0x5f417263
     6fc:	68697465 	0x68697465
     700:	63747572 	0x63747572
     704:	652f6675 	0x652f6675
     708:	6e637469 	0x6e637469
     70c:	6f6e7465 	0x6f6e7465
     710:	73742f73 	0x73742f73
     714:	72632f69 	0x72632f69
     718:	6e737400 	0x6e737400
     71c:	474e5520 	c1	0x14e5520
     720:	41532032 	0x41532032
     724:	2e32342e 	sltiu	s2,s1,13358
     728:	35310080 	ori	s1,t1,0x80
     72c:	01000000 	0x1000000
     730:	6e000200 	0x6e000200
     734:	00014004 	sllv	t0,at,zero
     738:	01000006 	srlv	zero,zero,t0
     73c:	4a80000e 	c2	0x80000e
     740:	b880000f 	swr	zero,15(a0)
     744:	006e335f 	0x6e335f
     748:	61646475 	0x61646475
     74c:	2e53002f 	sltiu	s3,s2,47
     750:	686f6d65 	0x686f6d65
     754:	2f7a6861 	sltiu	k0,k1,26721
     758:	6e676875 	0x6e676875
     75c:	696d656e 	0x696d656e
     760:	672f436f 	0x672f436f
     764:	6d707574 	0x6d707574
     768:	65725f41 	0x65725f41
     76c:	72636869 	0x72636869
     770:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
     774:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
     778:	66756e63 	0x66756e63
     77c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
     780:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
     784:	2f737263 	sltiu	s3,k1,29283
     788:	2f696e73 	sltiu	t1,k1,28275
     78c:	7400474e 	jalx	11d38 <data_size+0x4ae8>
     790:	55204153 	bnezl	t1,10ce0 <data_size+0x3a90>
     794:	20322e32 	addi	s2,at,11826
     798:	342e3531 	ori	t6,at,0x3531
     79c:	00800100 	0x800100
     7a0:	00006f00 	sll	t5,zero,0x1c
     7a4:	02000001 	movf	zero,s0,$fcc0
     7a8:	54040100 	bnel	zero,a0,bac <data_size-0xc6a4>
     7ac:	00068e80 	sll	s1,a2,0x1a
     7b0:	000f0080 	sll	zero,t7,0x2
     7b4:	000ff46e 	0xff46e
     7b8:	34305f6a 	ori	s0,at,0x5f6a
     7bc:	616c722e 	0x616c722e
     7c0:	53002f68 	beqzl	t8,c564 <data_size-0xcec>
     7c4:	6f6d652f 	0x6f6d652f
     7c8:	7a68616e 	0x7a68616e
     7cc:	67687569 	0x67687569
     7d0:	6d656e67 	0x6d656e67
     7d4:	2f436f6d 	sltiu	v1,k0,28525
     7d8:	70757465 	0x70757465
     7dc:	725f4172 	0x725f4172
     7e0:	63686974 	0x63686974
     7e4:	65637475 	0x65637475
     7e8:	72652f66 	0x72652f66
     7ec:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     7f0:	696f6e74 	0x696f6e74
     7f4:	6573742f 	0x6573742f
     7f8:	7372632f 	0x7372632f
     7fc:	696e7374 	0x696e7374
     800:	00474e55 	0x474e55
     804:	20415320 	addi	at,v0,21280
     808:	322e3234 	andi	t6,s1,0x3234
     80c:	2e353100 	sltiu	s5,s1,12544
     810:	80010000 	lb	at,0(zero)
     814:	00720002 	0x720002
     818:	00000168 	0x168
     81c:	04010000 	b	820 <data_size-0xca30>
     820:	06d48000 	0x6d48000
     824:	0ff88000 	jal	fe20000 <data_size+0xfe12db0>
     828:	10246e34 	beq	at,a0,1c0fc <data_size+0xeeac>
     82c:	365f7379 	ori	ra,s2,0x7379
     830:	7363616c 	0x7363616c
     834:	6c2e5300 	0x6c2e5300
     838:	2f686f6d 	sltiu	t0,k1,28525
     83c:	652f7a68 	0x652f7a68
     840:	616e6768 	0x616e6768
     844:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     848:	6e672f43 	0x6e672f43
     84c:	6f6d7075 	0x6f6d7075
     850:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     854:	41726368 	0x41726368
     858:	69746563 	0x69746563
     85c:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     860:	2f66756e 	sltiu	a2,k1,30062
     864:	6374696f 	0x6374696f
     868:	6e746573 	0x6e746573
     86c:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     870:	632f696e 	0x632f696e
     874:	73740047 	0x73740047
     878:	4e552041 	c3	0x552041
     87c:	5320322e 	beqzl	t9,d138 <data_size-0x118>
     880:	32342e35 	andi	s4,s1,0x2e35
     884:	31008001 	andi	zero,t0,0x8001
     888:	0000006c 	0x6c
     88c:	00020000 	sll	zero,v0,0x0
     890:	017c0401 	0x17c0401
     894:	0000071b 	0x71b
     898:	80001028 	lb	zero,4136(zero)
     89c:	800010e8 	lb	zero,4328(zero)
     8a0:	6e33375f 	0x6e33375f
     8a4:	6a2e5300 	0x6a2e5300
     8a8:	2f686f6d 	sltiu	t0,k1,28525
     8ac:	652f7a68 	0x652f7a68
     8b0:	616e6768 	0x616e6768
     8b4:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     8b8:	6e672f43 	0x6e672f43
     8bc:	6f6d7075 	0x6f6d7075
     8c0:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     8c4:	41726368 	0x41726368
     8c8:	69746563 	0x69746563
     8cc:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     8d0:	2f66756e 	sltiu	a2,k1,30062
     8d4:	6374696f 	0x6374696f
     8d8:	6e746573 	0x6e746573
     8dc:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     8e0:	632f696e 	0x632f696e
     8e4:	73740047 	0x73740047
     8e8:	4e552041 	c3	0x552041
     8ec:	5320322e 	beqzl	t9,d1a8 <data_size-0xa8>
     8f0:	32342e35 	andi	s4,s1,0x2e35
     8f4:	31008001 	andi	zero,t0,0x8001
     8f8:	0000006e 	0x6e
     8fc:	00020000 	sll	zero,v0,0x0
     900:	01900401 	0x1900401
     904:	0000075e 	0x75e
     908:	800010e8 	lb	zero,4328(zero)
     90c:	8000112c 	lb	zero,4396(zero)
     910:	6e32375f 	0x6e32375f
     914:	73726c2e 	0x73726c2e
     918:	53002f68 	beqzl	t8,c6bc <data_size-0xb94>
     91c:	6f6d652f 	0x6f6d652f
     920:	7a68616e 	0x7a68616e
     924:	67687569 	0x67687569
     928:	6d656e67 	0x6d656e67
     92c:	2f436f6d 	sltiu	v1,k0,28525
     930:	70757465 	0x70757465
     934:	725f4172 	0x725f4172
     938:	63686974 	0x63686974
     93c:	65637475 	0x65637475
     940:	72652f66 	0x72652f66
     944:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     948:	696f6e74 	0x696f6e74
     94c:	6573742f 	0x6573742f
     950:	7372632f 	0x7372632f
     954:	696e7374 	0x696e7374
     958:	00474e55 	0x474e55
     95c:	20415320 	addi	at,v0,21280
     960:	322e3234 	andi	t6,s1,0x3234
     964:	2e353100 	sltiu	s5,s1,12544
     968:	80010000 	lb	at,0(zero)
     96c:	00720002 	0x720002
     970:	000001a4 	0x1a4
     974:	04010000 	b	978 <data_size-0xc8d8>
     978:	07a18000 	bgez	sp,fffe097c <_stack+0x7fddc094>
     97c:	69548000 	0x69548000
     980:	6a706e37 	0x6a706e37
     984:	335f626c 	andi	ra,k0,0x626c
     988:	747a5f64 	jalx	1e97d90 <data_size+0x1e8ab40>
     98c:	732e5300 	0x732e5300
     990:	2f686f6d 	sltiu	t0,k1,28525
     994:	652f7a68 	0x652f7a68
     998:	616e6768 	0x616e6768
     99c:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     9a0:	6e672f43 	0x6e672f43
     9a4:	6f6d7075 	0x6f6d7075
     9a8:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     9ac:	41726368 	0x41726368
     9b0:	69746563 	0x69746563
     9b4:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     9b8:	2f66756e 	sltiu	a2,k1,30062
     9bc:	6374696f 	0x6374696f
     9c0:	6e746573 	0x6e746573
     9c4:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     9c8:	632f696e 	0x632f696e
     9cc:	73740047 	0x73740047
     9d0:	4e552041 	c3	0x552041
     9d4:	5320322e 	beqzl	t9,d290 <data_size+0x40>
     9d8:	32342e35 	andi	s4,s1,0x2e35
     9dc:	31008001 	andi	zero,t0,0x8001
     9e0:	0000006f 	0x6f
     9e4:	00020000 	sll	zero,v0,0x0
     9e8:	01b80401 	0x1b80401
     9ec:	000007ea 	0x7ea
     9f0:	80001130 	lb	zero,4400(zero)
     9f4:	80001228 	lb	zero,4648(zero)
     9f8:	6e33345f 	0x6e33345f
     9fc:	626c747a 	0x626c747a
     a00:	2e53002f 	sltiu	s3,s2,47
     a04:	686f6d65 	0x686f6d65
     a08:	2f7a6861 	sltiu	k0,k1,26721
     a0c:	6e676875 	0x6e676875
     a10:	696d656e 	0x696d656e
     a14:	672f436f 	0x672f436f
     a18:	6d707574 	0x6d707574
     a1c:	65725f41 	0x65725f41
     a20:	72636869 	0x72636869
     a24:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
     a28:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
     a2c:	66756e63 	0x66756e63
     a30:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
     a34:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
     a38:	2f737263 	sltiu	s3,k1,29283
     a3c:	2f696e73 	sltiu	t1,k1,28275
     a40:	7400474e 	jalx	11d38 <data_size+0x4ae8>
     a44:	55204153 	bnezl	t1,10f94 <data_size+0x3d44>
     a48:	20322e32 	addi	s2,at,11826
     a4c:	342e3531 	ori	t6,at,0x3531
     a50:	00800100 	0x800100
     a54:	00006e00 	sll	t5,zero,0x18
     a58:	02000001 	movf	zero,s0,$fcc0
     a5c:	cc040100 	pref	0x4,256(zero)
     a60:	00083080 	sll	a2,t0,0x2
     a64:	00122880 	sll	a1,s2,0x2
     a68:	0012686e 	0x12686e
     a6c:	385f736c 	xori	ra,v0,0x736c
     a70:	74692e53 	jalx	1a4b94c <data_size+0x1a3e6fc>
     a74:	002f686f 	0x2f686f
     a78:	6d652f7a 	0x6d652f7a
     a7c:	68616e67 	0x68616e67
     a80:	6875696d 	0x6875696d
     a84:	656e672f 	0x656e672f
     a88:	436f6d70 	c0	0x16f6d70
     a8c:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
     a90:	5f417263 	0x5f417263
     a94:	68697465 	0x68697465
     a98:	63747572 	0x63747572
     a9c:	652f6675 	0x652f6675
     aa0:	6e637469 	0x6e637469
     aa4:	6f6e7465 	0x6f6e7465
     aa8:	73742f73 	0x73742f73
     aac:	72632f69 	0x72632f69
     ab0:	6e737400 	0x6e737400
     ab4:	474e5520 	c1	0x14e5520
     ab8:	41532032 	0x41532032
     abc:	2e32342e 	sltiu	s2,s1,13358
     ac0:	35310080 	ori	s1,t1,0x80
     ac4:	01000000 	0x1000000
     ac8:	75000200 	jalx	4000800 <data_size+0x3ff35b0>
     acc:	0001e004 	sllv	gp,at,zero
     ad0:	01000008 	jr	t0
     ad4:	7380006a 	0x7380006a
     ad8:	7080007d 	0x7080007d
     adc:	c86e3835 	lwc2	$14,14389(v1)
     ae0:	5f626c74 	0x5f626c74
     ae4:	7a5f6578 	0x7a5f6578
     ae8:	5f64732e 	0x5f64732e
     aec:	53002f68 	beqzl	t8,c890 <data_size-0x9c0>
     af0:	6f6d652f 	0x6f6d652f
     af4:	7a68616e 	0x7a68616e
     af8:	67687569 	0x67687569
     afc:	6d656e67 	0x6d656e67
     b00:	2f436f6d 	sltiu	v1,k0,28525
     b04:	70757465 	0x70757465
     b08:	725f4172 	0x725f4172
     b0c:	63686974 	0x63686974
     b10:	65637475 	0x65637475
     b14:	72652f66 	0x72652f66
     b18:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     b1c:	696f6e74 	0x696f6e74
     b20:	6573742f 	0x6573742f
     b24:	7372632f 	0x7372632f
     b28:	696e7374 	0x696e7374
     b2c:	00474e55 	0x474e55
     b30:	20415320 	addi	at,v0,21280
     b34:	322e3234 	andi	t6,s1,0x3234
     b38:	2e353100 	sltiu	s5,s1,12544
     b3c:	80010000 	lb	at,0(zero)
     b40:	00740002 	0x740002
     b44:	000001f4 	teq	zero,zero,0x7
     b48:	04010000 	b	b4c <data_size-0xc704>
     b4c:	08e48000 	j	3920000 <data_size+0x3912db0>
     b50:	7dc88000 	0x7dc88000
     b54:	88046e38 	lwl	a0,28216(zero)
     b58:	395f6a61 	xori	ra,t2,0x6a61
     b5c:	6c5f6578 	0x6c5f6578
     b60:	5f64732e 	0x5f64732e
     b64:	53002f68 	beqzl	t8,c908 <data_size-0x948>
     b68:	6f6d652f 	0x6f6d652f
     b6c:	7a68616e 	0x7a68616e
     b70:	67687569 	0x67687569
     b74:	6d656e67 	0x6d656e67
     b78:	2f436f6d 	sltiu	v1,k0,28525
     b7c:	70757465 	0x70757465
     b80:	725f4172 	0x725f4172
     b84:	63686974 	0x63686974
     b88:	65637475 	0x65637475
     b8c:	72652f66 	0x72652f66
     b90:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     b94:	696f6e74 	0x696f6e74
     b98:	6573742f 	0x6573742f
     b9c:	7372632f 	0x7372632f
     ba0:	696e7374 	0x696e7374
     ba4:	00474e55 	0x474e55
     ba8:	20415320 	addi	at,v0,21280
     bac:	322e3234 	andi	t6,s1,0x3234
     bb0:	2e353100 	sltiu	s5,s1,12544
     bb4:	80010000 	lb	at,0(zero)
     bb8:	006d0002 	0x6d0002
     bbc:	00000208 	0x208
     bc0:	04010000 	b	bc4 <data_size-0xc68c>
     bc4:	09548000 	j	5520000 <data_size+0x5512db0>
     bc8:	12688000 	beq	s3,t0,fffe0bcc <_stack+0x7fddc2e4>
     bcc:	12b06e31 	beq	s5,s0,1c494 <data_size+0xf244>
     bd0:	5f616464 	0x5f616464
     bd4:	2e53002f 	sltiu	s3,s2,47
     bd8:	686f6d65 	0x686f6d65
     bdc:	2f7a6861 	sltiu	k0,k1,26721
     be0:	6e676875 	0x6e676875
     be4:	696d656e 	0x696d656e
     be8:	672f436f 	0x672f436f
     bec:	6d707574 	0x6d707574
     bf0:	65725f41 	0x65725f41
     bf4:	72636869 	0x72636869
     bf8:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
     bfc:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
     c00:	66756e63 	0x66756e63
     c04:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
     c08:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
     c0c:	2f737263 	sltiu	s3,k1,29283
     c10:	2f696e73 	sltiu	t1,k1,28275
     c14:	7400474e 	jalx	11d38 <data_size+0x4ae8>
     c18:	55204153 	bnezl	t1,11168 <data_size+0x3f18>
     c1c:	20322e32 	addi	s2,at,11826
     c20:	342e3531 	ori	t6,at,0x3531
     c24:	00800100 	0x800100
     c28:	00007200 	sll	t6,zero,0x8
     c2c:	02000002 	0x2000002
     c30:	1c040100 	0x1c040100
     c34:	00099780 	sll	s2,t1,0x1e
     c38:	00880480 	0x880480
     c3c:	0091bc6e 	0x91bc6e
     c40:	38385f6a 	xori	t8,at,0x5f6a
     c44:	5f65785f 	0x5f65785f
     c48:	64732e53 	0x64732e53
     c4c:	002f686f 	0x2f686f
     c50:	6d652f7a 	0x6d652f7a
     c54:	68616e67 	0x68616e67
     c58:	6875696d 	0x6875696d
     c5c:	656e672f 	0x656e672f
     c60:	436f6d70 	c0	0x16f6d70
     c64:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
     c68:	5f417263 	0x5f417263
     c6c:	68697465 	0x68697465
     c70:	63747572 	0x63747572
     c74:	652f6675 	0x652f6675
     c78:	6e637469 	0x6e637469
     c7c:	6f6e7465 	0x6f6e7465
     c80:	73742f73 	0x73742f73
     c84:	72632f69 	0x72632f69
     c88:	6e737400 	0x6e737400
     c8c:	474e5520 	c1	0x14e5520
     c90:	41532032 	0x41532032
     c94:	2e32342e 	sltiu	s2,s1,13358
     c98:	35310080 	ori	s1,t1,0x80
     c9c:	01000000 	0x1000000
     ca0:	6d000200 	0x6d000200
     ca4:	00023004 	sllv	a2,v0,zero
     ca8:	0100000a 	movz	zero,t0,zero
     cac:	05800012 	bltz	t4,cf8 <data_size-0xc558>
     cb0:	b0800012 	0xb0800012
     cb4:	f86e355f 	sdc2	$14,13663(v1)
     cb8:	7375622e 	0x7375622e
     cbc:	53002f68 	beqzl	t8,ca60 <data_size-0x7f0>
     cc0:	6f6d652f 	0x6f6d652f
     cc4:	7a68616e 	0x7a68616e
     cc8:	67687569 	0x67687569
     ccc:	6d656e67 	0x6d656e67
     cd0:	2f436f6d 	sltiu	v1,k0,28525
     cd4:	70757465 	0x70757465
     cd8:	725f4172 	0x725f4172
     cdc:	63686974 	0x63686974
     ce0:	65637475 	0x65637475
     ce4:	72652f66 	0x72652f66
     ce8:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     cec:	696f6e74 	0x696f6e74
     cf0:	6573742f 	0x6573742f
     cf4:	7372632f 	0x7372632f
     cf8:	696e7374 	0x696e7374
     cfc:	00474e55 	0x474e55
     d00:	20415320 	addi	at,v0,21280
     d04:	322e3234 	andi	t6,s1,0x3234
     d08:	2e353100 	sltiu	s5,s1,12544
     d0c:	80010000 	lb	at,0(zero)
     d10:	00720002 	0x720002
     d14:	00000244 	0x244
     d18:	04010000 	b	d1c <data_size-0xc534>
     d1c:	0a488000 	j	9220000 <data_size+0x9212db0>
     d20:	91bc8000 	lbu	gp,-32768(t5)
     d24:	930c6e37 	lbu	t4,28215(t8)
     d28:	315f6267 	andi	ra,t2,0x6267
     d2c:	747a5f64 	jalx	1e97d90 <data_size+0x1e8ab40>
     d30:	732e5300 	0x732e5300
     d34:	2f686f6d 	sltiu	t0,k1,28525
     d38:	652f7a68 	0x652f7a68
     d3c:	616e6768 	0x616e6768
     d40:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     d44:	6e672f43 	0x6e672f43
     d48:	6f6d7075 	0x6f6d7075
     d4c:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     d50:	41726368 	0x41726368
     d54:	69746563 	0x69746563
     d58:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     d5c:	2f66756e 	sltiu	a2,k1,30062
     d60:	6374696f 	0x6374696f
     d64:	6e746573 	0x6e746573
     d68:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     d6c:	632f696e 	0x632f696e
     d70:	73740047 	0x73740047
     d74:	4e552041 	c3	0x552041
     d78:	5320322e 	beqzl	t9,d634 <data_size+0x3e4>
     d7c:	32342e35 	andi	s4,s1,0x2e35
     d80:	31008001 	andi	zero,t0,0x8001
     d84:	00000072 	tlt	zero,zero,0x1
     d88:	00020000 	sll	zero,v0,0x0
     d8c:	02580401 	0x2580401
     d90:	00000a91 	0xa91
     d94:	8000930c 	lb	zero,-27892(zero)
     d98:	8000943c 	lb	zero,-27588(zero)
     d9c:	6e37325f 	0x6e37325f
     da0:	626c657a 	0x626c657a
     da4:	5f64732e 	0x5f64732e
     da8:	53002f68 	beqzl	t8,cb4c <data_size-0x704>
     dac:	6f6d652f 	0x6f6d652f
     db0:	7a68616e 	0x7a68616e
     db4:	67687569 	0x67687569
     db8:	6d656e67 	0x6d656e67
     dbc:	2f436f6d 	sltiu	v1,k0,28525
     dc0:	70757465 	0x70757465
     dc4:	725f4172 	0x725f4172
     dc8:	63686974 	0x63686974
     dcc:	65637475 	0x65637475
     dd0:	72652f66 	0x72652f66
     dd4:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     dd8:	696f6e74 	0x696f6e74
     ddc:	6573742f 	0x6573742f
     de0:	7372632f 	0x7372632f
     de4:	696e7374 	0x696e7374
     de8:	00474e55 	0x474e55
     dec:	20415320 	addi	at,v0,21280
     df0:	322e3234 	andi	t6,s1,0x3234
     df4:	2e353100 	sltiu	s5,s1,12544
     df8:	80010000 	lb	at,0(zero)
     dfc:	00700002 	0x700002
     e00:	0000026c 	0x26c
     e04:	04010000 	b	e08 <data_size-0xc448>
     e08:	0ada8000 	j	b6a0000 <data_size+0xb692db0>
     e0c:	12f88000 	beq	s7,t8,fffe0e10 <_stack+0x7fddc528>
     e10:	13386e31 	beq	t9,t8,1c6d8 <data_size+0xf488>
     e14:	305f736c 	andi	ra,v0,0x736c
     e18:	7469752e 	jalx	1a5d4b8 <data_size+0x1a50268>
     e1c:	53002f68 	beqzl	t8,cbc0 <data_size-0x690>
     e20:	6f6d652f 	0x6f6d652f
     e24:	7a68616e 	0x7a68616e
     e28:	67687569 	0x67687569
     e2c:	6d656e67 	0x6d656e67
     e30:	2f436f6d 	sltiu	v1,k0,28525
     e34:	70757465 	0x70757465
     e38:	725f4172 	0x725f4172
     e3c:	63686974 	0x63686974
     e40:	65637475 	0x65637475
     e44:	72652f66 	0x72652f66
     e48:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
     e4c:	696f6e74 	0x696f6e74
     e50:	6573742f 	0x6573742f
     e54:	7372632f 	0x7372632f
     e58:	696e7374 	0x696e7374
     e5c:	00474e55 	0x474e55
     e60:	20415320 	addi	at,v0,21280
     e64:	322e3234 	andi	t6,s1,0x3234
     e68:	2e353100 	sltiu	s5,s1,12544
     e6c:	80010000 	lb	at,0(zero)
     e70:	006e0002 	0x6e0002
     e74:	00000280 	sll	zero,zero,0xa
     e78:	04010000 	b	e7c <data_size-0xc3d4>
     e7c:	0b1f8000 	j	c7e0000 <data_size+0xc7d2db0>
     e80:	13388000 	beq	t9,t8,fffe0e84 <_stack+0x7fddc59c>
     e84:	13806e31 	beqz	gp,1c74c <data_size+0xf4fc>
     e88:	385f6e6f 	xori	ra,v0,0x6e6f
     e8c:	722e5300 	0x722e5300
     e90:	2f686f6d 	sltiu	t0,k1,28525
     e94:	652f7a68 	0x652f7a68
     e98:	616e6768 	0x616e6768
     e9c:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     ea0:	6e672f43 	0x6e672f43
     ea4:	6f6d7075 	0x6f6d7075
     ea8:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     eac:	41726368 	0x41726368
     eb0:	69746563 	0x69746563
     eb4:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     eb8:	2f66756e 	sltiu	a2,k1,30062
     ebc:	6374696f 	0x6374696f
     ec0:	6e746573 	0x6e746573
     ec4:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     ec8:	632f696e 	0x632f696e
     ecc:	73740047 	0x73740047
     ed0:	4e552041 	c3	0x552041
     ed4:	5320322e 	beqzl	t9,d790 <data_size+0x540>
     ed8:	32342e35 	andi	s4,s1,0x2e35
     edc:	31008001 	andi	zero,t0,0x8001
     ee0:	0000006f 	0x6f
     ee4:	00020000 	sll	zero,v0,0x0
     ee8:	02940401 	0x2940401
     eec:	00000b63 	0xb63
     ef0:	80001380 	lb	zero,4992(zero)
     ef4:	800013c4 	lb	zero,5060(zero)
     ef8:	6e35355f 	0x6e35355f
     efc:	65726574 	0x65726574
     f00:	2e53002f 	sltiu	s3,s2,47
     f04:	686f6d65 	0x686f6d65
     f08:	2f7a6861 	sltiu	k0,k1,26721
     f0c:	6e676875 	0x6e676875
     f10:	696d656e 	0x696d656e
     f14:	672f436f 	0x672f436f
     f18:	6d707574 	0x6d707574
     f1c:	65725f41 	0x65725f41
     f20:	72636869 	0x72636869
     f24:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
     f28:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
     f2c:	66756e63 	0x66756e63
     f30:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
     f34:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
     f38:	2f737263 	sltiu	s3,k1,29283
     f3c:	2f696e73 	sltiu	t1,k1,28275
     f40:	7400474e 	jalx	11d38 <data_size+0x4ae8>
     f44:	55204153 	bnezl	t1,11494 <data_size+0x4244>
     f48:	20322e32 	addi	s2,at,11826
     f4c:	342e3531 	ori	t6,at,0x3531
     f50:	00800100 	0x800100
     f54:	00007500 	sll	t6,zero,0x14
     f58:	02000002 	0x2000002
     f5c:	a8040100 	swl	a0,256(zero)
     f60:	000bac80 	sll	s5,t3,0x12
     f64:	00943c80 	0x943c80
     f68:	00a7946e 	0xa7946e
     f6c:	38345f62 	xori	s4,at,0x5f62
     f70:	6c657a5f 	0x6c657a5f
     f74:	65785f64 	0x65785f64
     f78:	732e5300 	0x732e5300
     f7c:	2f686f6d 	sltiu	t0,k1,28525
     f80:	652f7a68 	0x652f7a68
     f84:	616e6768 	0x616e6768
     f88:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
     f8c:	6e672f43 	0x6e672f43
     f90:	6f6d7075 	0x6f6d7075
     f94:	7465725f 	jalx	195c97c <data_size+0x194f72c>
     f98:	41726368 	0x41726368
     f9c:	69746563 	0x69746563
     fa0:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
     fa4:	2f66756e 	sltiu	a2,k1,30062
     fa8:	6374696f 	0x6374696f
     fac:	6e746573 	0x6e746573
     fb0:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
     fb4:	632f696e 	0x632f696e
     fb8:	73740047 	0x73740047
     fbc:	4e552041 	c3	0x552041
     fc0:	5320322e 	beqzl	t9,d87c <data_size+0x62c>
     fc4:	32342e35 	andi	s4,s1,0x2e35
     fc8:	31008001 	andi	zero,t0,0x8001
     fcc:	0000006d 	0x6d
     fd0:	00020000 	sll	zero,v0,0x0
     fd4:	02bc0401 	0x2bc0401
     fd8:	00000c1d 	0xc1d
     fdc:	800013c8 	lb	zero,5064(zero)
     fe0:	8000240c 	lb	zero,9228(zero)
     fe4:	6e34395f 	0x6e34395f
     fe8:	6c682e53 	0x6c682e53
     fec:	002f686f 	0x2f686f
     ff0:	6d652f7a 	0x6d652f7a
     ff4:	68616e67 	0x68616e67
     ff8:	6875696d 	0x6875696d
     ffc:	656e672f 	0x656e672f
    1000:	436f6d70 	c0	0x16f6d70
    1004:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    1008:	5f417263 	0x5f417263
    100c:	68697465 	0x68697465
    1010:	63747572 	0x63747572
    1014:	652f6675 	0x652f6675
    1018:	6e637469 	0x6e637469
    101c:	6f6e7465 	0x6f6e7465
    1020:	73742f73 	0x73742f73
    1024:	72632f69 	0x72632f69
    1028:	6e737400 	0x6e737400
    102c:	474e5520 	c1	0x14e5520
    1030:	41532032 	0x41532032
    1034:	2e32342e 	sltiu	s2,s1,13358
    1038:	35310080 	ori	s1,t1,0x80
    103c:	01000000 	0x1000000
    1040:	6e000200 	0x6e000200
    1044:	0002d004 	sllv	k0,v0,zero
    1048:	0100000d 	break	0x100
    104c:	5f800024 	bgtzl	gp,10e0 <data_size-0xc170>
    1050:	10800025 	beqz	a0,10e8 <data_size-0xc168>
    1054:	106e3330 	beq	v1,t6,dd18 <data_size+0xac8>
    1058:	5f626e65 	0x5f626e65
    105c:	2e53002f 	sltiu	s3,s2,47
    1060:	686f6d65 	0x686f6d65
    1064:	2f7a6861 	sltiu	k0,k1,26721
    1068:	6e676875 	0x6e676875
    106c:	696d656e 	0x696d656e
    1070:	672f436f 	0x672f436f
    1074:	6d707574 	0x6d707574
    1078:	65725f41 	0x65725f41
    107c:	72636869 	0x72636869
    1080:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    1084:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    1088:	66756e63 	0x66756e63
    108c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    1090:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    1094:	2f737263 	sltiu	s3,k1,29283
    1098:	2f696e73 	sltiu	t1,k1,28275
    109c:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    10a0:	55204153 	bnezl	t1,115f0 <data_size+0x43a0>
    10a4:	20322e32 	addi	s2,at,11826
    10a8:	342e3531 	ori	t6,at,0x3531
    10ac:	00800100 	0x800100
    10b0:	00006e00 	sll	t5,zero,0x18
    10b4:	02000002 	0x2000002
    10b8:	e4040100 	swc1	$f4,256(zero)
    10bc:	000da480 	sll	s4,t5,0x12
    10c0:	00251080 	0x251080
    10c4:	0025586e 	0x25586e
    10c8:	365f7375 	ori	ra,s2,0x7375
    10cc:	62752e53 	0x62752e53
    10d0:	002f686f 	0x2f686f
    10d4:	6d652f7a 	0x6d652f7a
    10d8:	68616e67 	0x68616e67
    10dc:	6875696d 	0x6875696d
    10e0:	656e672f 	0x656e672f
    10e4:	436f6d70 	c0	0x16f6d70
    10e8:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    10ec:	5f417263 	0x5f417263
    10f0:	68697465 	0x68697465
    10f4:	63747572 	0x63747572
    10f8:	652f6675 	0x652f6675
    10fc:	6e637469 	0x6e637469
    1100:	6f6e7465 	0x6f6e7465
    1104:	73742f73 	0x73742f73
    1108:	72632f69 	0x72632f69
    110c:	6e737400 	0x6e737400
    1110:	474e5520 	c1	0x14e5520
    1114:	41532032 	0x41532032
    1118:	2e32342e 	sltiu	s2,s1,13358
    111c:	35310080 	ori	s1,t1,0x80
    1120:	01000000 	0x1000000
    1124:	70000200 	0x70000200
    1128:	0002f804 	sllv	ra,v0,zero
    112c:	0100000d 	break	0x100
    1130:	e8800025 	swc2	$0,37(a0)
    1134:	58800025 	blezl	a0,11cc <data_size-0xc084>
    1138:	846e3435 	lh	t6,13365(v1)
    113c:	5f627265 	0x5f627265
    1140:	616b2e53 	0x616b2e53
    1144:	002f686f 	0x2f686f
    1148:	6d652f7a 	0x6d652f7a
    114c:	68616e67 	0x68616e67
    1150:	6875696d 	0x6875696d
    1154:	656e672f 	0x656e672f
    1158:	436f6d70 	c0	0x16f6d70
    115c:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    1160:	5f417263 	0x5f417263
    1164:	68697465 	0x68697465
    1168:	63747572 	0x63747572
    116c:	652f6675 	0x652f6675
    1170:	6e637469 	0x6e637469
    1174:	6f6e7465 	0x6f6e7465
    1178:	73742f73 	0x73742f73
    117c:	72632f69 	0x72632f69
    1180:	6e737400 	0x6e737400
    1184:	474e5520 	c1	0x14e5520
    1188:	41532032 	0x41532032
    118c:	2e32342e 	sltiu	s2,s1,13358
    1190:	35310080 	ori	s1,t1,0x80
    1194:	01000000 	0x1000000
    1198:	6d000200 	0x6d000200
    119c:	00030c04 	0x30c04
    11a0:	0100000e 	0x100000e
    11a4:	2d800025 	sltiu	zero,t4,37
    11a8:	88800025 	lwl	zero,37(a0)
    11ac:	e86e3532 	swc2	$14,13618(v1)
    11b0:	5f73622e 	0x5f73622e
    11b4:	53002f68 	beqzl	t8,cf58 <data_size-0x2f8>
    11b8:	6f6d652f 	0x6f6d652f
    11bc:	7a68616e 	0x7a68616e
    11c0:	67687569 	0x67687569
    11c4:	6d656e67 	0x6d656e67
    11c8:	2f436f6d 	sltiu	v1,k0,28525
    11cc:	70757465 	0x70757465
    11d0:	725f4172 	0x725f4172
    11d4:	63686974 	0x63686974
    11d8:	65637475 	0x65637475
    11dc:	72652f66 	0x72652f66
    11e0:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
    11e4:	696f6e74 	0x696f6e74
    11e8:	6573742f 	0x6573742f
    11ec:	7372632f 	0x7372632f
    11f0:	696e7374 	0x696e7374
    11f4:	00474e55 	0x474e55
    11f8:	20415320 	addi	at,v0,21280
    11fc:	322e3234 	andi	t6,s1,0x3234
    1200:	2e353100 	sltiu	s5,s1,12544
    1204:	80010000 	lb	at,0(zero)
    1208:	00710002 	0x710002
    120c:	00000320 	0x320
    1210:	04010000 	b	1214 <data_size-0xc03c>
    1214:	0e708000 	jal	9c20000 <data_size+0x9c12db0>
    1218:	a7948000 	sh	s4,-32768(gp)
    121c:	a8946e37 	swl	s4,28215(a0)
    1220:	375f6a61 	ori	ra,k0,0x6a61
    1224:	6c5f6473 	0x6c5f6473
    1228:	2e53002f 	sltiu	s3,s2,47
    122c:	686f6d65 	0x686f6d65
    1230:	2f7a6861 	sltiu	k0,k1,26721
    1234:	6e676875 	0x6e676875
    1238:	696d656e 	0x696d656e
    123c:	672f436f 	0x672f436f
    1240:	6d707574 	0x6d707574
    1244:	65725f41 	0x65725f41
    1248:	72636869 	0x72636869
    124c:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    1250:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    1254:	66756e63 	0x66756e63
    1258:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    125c:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    1260:	2f737263 	sltiu	s3,k1,29283
    1264:	2f696e73 	sltiu	t1,k1,28275
    1268:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    126c:	55204153 	bnezl	t1,117bc <data_size+0x456c>
    1270:	20322e32 	addi	s2,at,11826
    1274:	342e3531 	ori	t6,at,0x3531
    1278:	00800100 	0x800100
    127c:	00006f00 	sll	t5,zero,0x1c
    1280:	02000003 	0x2000003
    1284:	34040100 	li	a0,0x100
    1288:	000eb880 	sll	s7,t6,0x2
    128c:	0025e880 	0x25e880
    1290:	00262c6e 	0x262c6e
    1294:	32345f73 	andi	s4,s1,0x5f73
    1298:	6c6c762e 	0x6c6c762e
    129c:	53002f68 	beqzl	t8,d040 <data_size-0x210>
    12a0:	6f6d652f 	0x6f6d652f
    12a4:	7a68616e 	0x7a68616e
    12a8:	67687569 	0x67687569
    12ac:	6d656e67 	0x6d656e67
    12b0:	2f436f6d 	sltiu	v1,k0,28525
    12b4:	70757465 	0x70757465
    12b8:	725f4172 	0x725f4172
    12bc:	63686974 	0x63686974
    12c0:	65637475 	0x65637475
    12c4:	72652f66 	0x72652f66
    12c8:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
    12cc:	696f6e74 	0x696f6e74
    12d0:	6573742f 	0x6573742f
    12d4:	7372632f 	0x7372632f
    12d8:	696e7374 	0x696e7374
    12dc:	00474e55 	0x474e55
    12e0:	20415320 	addi	at,v0,21280
    12e4:	322e3234 	andi	t6,s1,0x3234
    12e8:	2e353100 	sltiu	s5,s1,12544
    12ec:	80010000 	lb	at,0(zero)
    12f0:	006d0002 	0x6d0002
    12f4:	00000348 	0x348
    12f8:	04010000 	b	12fc <data_size-0xbf54>
    12fc:	0efc8000 	jal	bf20000 <data_size+0xbf12db0>
    1300:	26308000 	addiu	s0,s1,-32768
    1304:	26786e31 	addiu	t8,s3,28209
    1308:	395f6f72 	xori	ra,t2,0x6f72
    130c:	2e53002f 	sltiu	s3,s2,47
    1310:	686f6d65 	0x686f6d65
    1314:	2f7a6861 	sltiu	k0,k1,26721
    1318:	6e676875 	0x6e676875
    131c:	696d656e 	0x696d656e
    1320:	672f436f 	0x672f436f
    1324:	6d707574 	0x6d707574
    1328:	65725f41 	0x65725f41
    132c:	72636869 	0x72636869
    1330:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    1334:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    1338:	66756e63 	0x66756e63
    133c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    1340:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    1344:	2f737263 	sltiu	s3,k1,29283
    1348:	2f696e73 	sltiu	t1,k1,28275
    134c:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    1350:	55204153 	bnezl	t1,118a0 <data_size+0x4650>
    1354:	20322e32 	addi	s2,at,11826
    1358:	342e3531 	ori	t6,at,0x3531
    135c:	00800100 	0x800100
    1360:	00006e00 	sll	t5,zero,0x18
    1364:	02000003 	0x2000003
    1368:	5c040100 	0x5c040100
    136c:	000f3f80 	sll	a3,t7,0x1e
    1370:	00267880 	0x267880
    1374:	0026bc6e 	0x26bc6e
    1378:	395f736c 	xori	ra,t2,0x736c
    137c:	74752e53 	jalx	1d4b94c <data_size+0x1d3e6fc>
    1380:	002f686f 	0x2f686f
    1384:	6d652f7a 	0x6d652f7a
    1388:	68616e67 	0x68616e67
    138c:	6875696d 	0x6875696d
    1390:	656e672f 	0x656e672f
    1394:	436f6d70 	c0	0x16f6d70
    1398:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    139c:	5f417263 	0x5f417263
    13a0:	68697465 	0x68697465
    13a4:	63747572 	0x63747572
    13a8:	652f6675 	0x652f6675
    13ac:	6e637469 	0x6e637469
    13b0:	6f6e7465 	0x6f6e7465
    13b4:	73742f73 	0x73742f73
    13b8:	72632f69 	0x72632f69
    13bc:	6e737400 	0x6e737400
    13c0:	474e5520 	c1	0x14e5520
    13c4:	41532032 	0x41532032
    13c8:	2e32342e 	sltiu	s2,s1,13358
    13cc:	35310080 	ori	s1,t1,0x80
    13d0:	01000000 	0x1000000
    13d4:	6f000200 	0x6f000200
    13d8:	00037004 	sllv	t6,v1,zero
    13dc:	0100000f 	0x100000f
    13e0:	82800026 	lb	zero,38(s4)
    13e4:	c0800027 	ll	zero,39(a0)
    13e8:	186e3536 	0x186e3536
    13ec:	5f6d6663 	0x5f6d6663
    13f0:	302e5300 	andi	t6,at,0x5300
    13f4:	2f686f6d 	sltiu	t0,k1,28525
    13f8:	652f7a68 	0x652f7a68
    13fc:	616e6768 	0x616e6768
    1400:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
    1404:	6e672f43 	0x6e672f43
    1408:	6f6d7075 	0x6f6d7075
    140c:	7465725f 	jalx	195c97c <data_size+0x194f72c>
    1410:	41726368 	0x41726368
    1414:	69746563 	0x69746563
    1418:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
    141c:	2f66756e 	sltiu	a2,k1,30062
    1420:	6374696f 	0x6374696f
    1424:	6e746573 	0x6e746573
    1428:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
    142c:	632f696e 	0x632f696e
    1430:	73740047 	0x73740047
    1434:	4e552041 	c3	0x552041
    1438:	5320322e 	beqzl	t9,dcf4 <data_size+0xaa4>
    143c:	32342e35 	andi	s4,s1,0x2e35
    1440:	31008001 	andi	zero,t0,0x8001
    1444:	0000006e 	0x6e
    1448:	00020000 	sll	zero,v0,0x0
    144c:	03840401 	0x3840401
    1450:	00000fd0 	0xfd0
    1454:	80002718 	lb	zero,10008(zero)
    1458:	800027e0 	lb	zero,10208(zero)
    145c:	6e33385f 	0x6e33385f
    1460:	6a616c2e 	0x6a616c2e
    1464:	53002f68 	beqzl	t8,d208 <data_size-0x48>
    1468:	6f6d652f 	0x6f6d652f
    146c:	7a68616e 	0x7a68616e
    1470:	67687569 	0x67687569
    1474:	6d656e67 	0x6d656e67
    1478:	2f436f6d 	sltiu	v1,k0,28525
    147c:	70757465 	0x70757465
    1480:	725f4172 	0x725f4172
    1484:	63686974 	0x63686974
    1488:	65637475 	0x65637475
    148c:	72652f66 	0x72652f66
    1490:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
    1494:	696f6e74 	0x696f6e74
    1498:	6573742f 	0x6573742f
    149c:	7372632f 	0x7372632f
    14a0:	696e7374 	0x696e7374
    14a4:	00474e55 	0x474e55
    14a8:	20415320 	addi	at,v0,21280
    14ac:	322e3234 	andi	t6,s1,0x3234
    14b0:	2e353100 	sltiu	s5,s1,12544
    14b4:	80010000 	lb	at,0(zero)
    14b8:	00730002 	0x730002
    14bc:	00000398 	0x398
    14c0:	04010000 	b	14c4 <data_size-0xbd8c>
    14c4:	10158000 	beq	zero,s5,fffe14c8 <_stack+0x7fddcbe0>
    14c8:	a8948000 	swl	s4,-32768(a0)
    14cc:	b2fc6e39 	0xb2fc6e39
    14d0:	305f6a72 	andi	ra,v0,0x6a72
    14d4:	5f65785f 	0x5f65785f
    14d8:	64732e53 	0x64732e53
    14dc:	002f686f 	0x2f686f
    14e0:	6d652f7a 	0x6d652f7a
    14e4:	68616e67 	0x68616e67
    14e8:	6875696d 	0x6875696d
    14ec:	656e672f 	0x656e672f
    14f0:	436f6d70 	c0	0x16f6d70
    14f4:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    14f8:	5f417263 	0x5f417263
    14fc:	68697465 	0x68697465
    1500:	63747572 	0x63747572
    1504:	652f6675 	0x652f6675
    1508:	6e637469 	0x6e637469
    150c:	6f6e7465 	0x6f6e7465
    1510:	73742f73 	0x73742f73
    1514:	72632f69 	0x72632f69
    1518:	6e737400 	0x6e737400
    151c:	474e5520 	c1	0x14e5520
    1520:	41532032 	0x41532032
    1524:	2e32342e 	sltiu	s2,s1,13358
    1528:	35310080 	ori	s1,t1,0x80
    152c:	01000000 	0x1000000
    1530:	6f000200 	0x6f000200
    1534:	0003ac04 	0x3ac04
    1538:	01000010 	0x1000010
    153c:	84800027 	lh	zero,39(a0)
    1540:	e0800028 	sc	zero,40(a0)
    1544:	246e3433 	addiu	t6,v1,13363
    1548:	5f6d7468 	0x5f6d7468
    154c:	692e5300 	0x692e5300
    1550:	2f686f6d 	sltiu	t0,k1,28525
    1554:	652f7a68 	0x652f7a68
    1558:	616e6768 	0x616e6768
    155c:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
    1560:	6e672f43 	0x6e672f43
    1564:	6f6d7075 	0x6f6d7075
    1568:	7465725f 	jalx	195c97c <data_size+0x194f72c>
    156c:	41726368 	0x41726368
    1570:	69746563 	0x69746563
    1574:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
    1578:	2f66756e 	sltiu	a2,k1,30062
    157c:	6374696f 	0x6374696f
    1580:	6e746573 	0x6e746573
    1584:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
    1588:	632f696e 	0x632f696e
    158c:	73740047 	0x73740047
    1590:	4e552041 	c3	0x552041
    1594:	5320322e 	beqzl	t9,de50 <data_size+0xc00>
    1598:	32342e35 	andi	s4,s1,0x2e35
    159c:	31008001 	andi	zero,t0,0x8001
    15a0:	0000006e 	0x6e
    15a4:	00020000 	sll	zero,v0,0x0
    15a8:	03c00401 	0x3c00401
    15ac:	000010c8 	0x10c8
    15b0:	80002828 	lb	zero,10280(zero)
    15b4:	80002870 	lb	zero,10352(zero)
    15b8:	6e32315f 	0x6e32315f
    15bc:	786f722e 	0x786f722e
    15c0:	53002f68 	beqzl	t8,d364 <data_size+0x114>
    15c4:	6f6d652f 	0x6f6d652f
    15c8:	7a68616e 	0x7a68616e
    15cc:	67687569 	0x67687569
    15d0:	6d656e67 	0x6d656e67
    15d4:	2f436f6d 	sltiu	v1,k0,28525
    15d8:	70757465 	0x70757465
    15dc:	725f4172 	0x725f4172
    15e0:	63686974 	0x63686974
    15e4:	65637475 	0x65637475
    15e8:	72652f66 	0x72652f66
    15ec:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
    15f0:	696f6e74 	0x696f6e74
    15f4:	6573742f 	0x6573742f
    15f8:	7372632f 	0x7372632f
    15fc:	696e7374 	0x696e7374
    1600:	00474e55 	0x474e55
    1604:	20415320 	addi	at,v0,21280
    1608:	322e3234 	andi	t6,s1,0x3234
    160c:	2e353100 	sltiu	s5,s1,12544
    1610:	80010000 	lb	at,0(zero)
    1614:	006e0002 	0x6e0002
    1618:	000003d4 	0x3d4
    161c:	04010000 	b	1620 <data_size-0xbc30>
    1620:	110c8000 	beq	t0,t4,fffe1624 <_stack+0x7fddcd3c>
    1624:	28708000 	slti	s0,v1,-32768
    1628:	43a46e34 	c0	0x1a46e34
    162c:	385f6c62 	xori	ra,v0,0x6c62
    1630:	752e5300 	jalx	4b94c00 <data_size+0x4b879b0>
    1634:	2f686f6d 	sltiu	t0,k1,28525
    1638:	652f7a68 	0x652f7a68
    163c:	616e6768 	0x616e6768
    1640:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
    1644:	6e672f43 	0x6e672f43
    1648:	6f6d7075 	0x6f6d7075
    164c:	7465725f 	jalx	195c97c <data_size+0x194f72c>
    1650:	41726368 	0x41726368
    1654:	69746563 	0x69746563
    1658:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
    165c:	2f66756e 	sltiu	a2,k1,30062
    1660:	6374696f 	0x6374696f
    1664:	6e746573 	0x6e746573
    1668:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
    166c:	632f696e 	0x632f696e
    1670:	73740047 	0x73740047
    1674:	4e552041 	c3	0x552041
    1678:	5320322e 	beqzl	t9,df34 <data_size+0xce4>
    167c:	32342e35 	andi	s4,s1,0x2e35
    1680:	31008001 	andi	zero,t0,0x8001
    1684:	00000075 	0x75
    1688:	00020000 	sll	zero,v0,0x0
    168c:	03e80401 	0x3e80401
    1690:	0000131b 	0x131b
    1694:	8000b2fc 	lb	zero,-19716(zero)
    1698:	8000c654 	lb	zero,-14764(zero)
    169c:	6e38325f 	0x6e38325f
    16a0:	6267657a 	0x6267657a
    16a4:	5f65785f 	0x5f65785f
    16a8:	64732e53 	0x64732e53
    16ac:	002f686f 	0x2f686f
    16b0:	6d652f7a 	0x6d652f7a
    16b4:	68616e67 	0x68616e67
    16b8:	6875696d 	0x6875696d
    16bc:	656e672f 	0x656e672f
    16c0:	436f6d70 	c0	0x16f6d70
    16c4:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    16c8:	5f417263 	0x5f417263
    16cc:	68697465 	0x68697465
    16d0:	63747572 	0x63747572
    16d4:	652f6675 	0x652f6675
    16d8:	6e637469 	0x6e637469
    16dc:	6f6e7465 	0x6f6e7465
    16e0:	73742f73 	0x73742f73
    16e4:	72632f69 	0x72632f69
    16e8:	6e737400 	0x6e737400
    16ec:	474e5520 	c1	0x14e5520
    16f0:	41532032 	0x41532032
    16f4:	2e32342e 	sltiu	s2,s1,13358
    16f8:	35310080 	ori	s1,t1,0x80
    16fc:	01000000 	0x1000000
    1700:	77000200 	jalx	c000800 <data_size+0xbff35b0>
    1704:	0003fc04 	0x3fc04
    1708:	01000013 	mtlo	t0
    170c:	8c8000c6 	lw	zero,198(a0)
    1710:	548000da 	bnezl	a0,1a7c <data_size-0xb7d4>
    1714:	886e3837 	lwl	t6,14391(v1)
    1718:	5f626765 	0x5f626765
    171c:	7a616c5f 	0x7a616c5f
    1720:	65785f64 	0x65785f64
    1724:	732e5300 	0x732e5300
    1728:	2f686f6d 	sltiu	t0,k1,28525
    172c:	652f7a68 	0x652f7a68
    1730:	616e6768 	0x616e6768
    1734:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
    1738:	6e672f43 	0x6e672f43
    173c:	6f6d7075 	0x6f6d7075
    1740:	7465725f 	jalx	195c97c <data_size+0x194f72c>
    1744:	41726368 	0x41726368
    1748:	69746563 	0x69746563
    174c:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
    1750:	2f66756e 	sltiu	a2,k1,30062
    1754:	6374696f 	0x6374696f
    1758:	6e746573 	0x6e746573
    175c:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
    1760:	632f696e 	0x632f696e
    1764:	73740047 	0x73740047
    1768:	4e552041 	c3	0x552041
    176c:	5320322e 	beqzl	t9,e028 <data_size+0xdd8>
    1770:	32342e35 	andi	s4,s1,0x2e35
    1774:	31008001 	andi	zero,t0,0x8001
    1778:	0000006e 	0x6e
    177c:	00020000 	sll	zero,v0,0x0
    1780:	04100401 	bltzal	zero,2788 <data_size-0xaac8>
    1784:	000013ff 	0x13ff
    1788:	800043a8 	lb	zero,17320(zero)
    178c:	80004484 	lb	zero,17540(zero)
    1790:	6e32395f 	0x6e32395f
    1794:	6265712e 	0x6265712e
    1798:	53002f68 	beqzl	t8,d53c <data_size+0x2ec>
    179c:	6f6d652f 	0x6f6d652f
    17a0:	7a68616e 	0x7a68616e
    17a4:	67687569 	0x67687569
    17a8:	6d656e67 	0x6d656e67
    17ac:	2f436f6d 	sltiu	v1,k0,28525
    17b0:	70757465 	0x70757465
    17b4:	725f4172 	0x725f4172
    17b8:	63686974 	0x63686974
    17bc:	65637475 	0x65637475
    17c0:	72652f66 	0x72652f66
    17c4:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
    17c8:	696f6e74 	0x696f6e74
    17cc:	6573742f 	0x6573742f
    17d0:	7372632f 	0x7372632f
    17d4:	696e7374 	0x696e7374
    17d8:	00474e55 	0x474e55
    17dc:	20415320 	addi	at,v0,21280
    17e0:	322e3234 	andi	t6,s1,0x3234
    17e4:	2e353100 	sltiu	s5,s1,12544
    17e8:	80010000 	lb	at,0(zero)
    17ec:	00740002 	0x740002
    17f0:	00000424 	0x424
    17f4:	04010000 	b	17f8 <data_size-0xba58>
    17f8:	14448000 	bne	v0,a0,fffe17fc <_stack+0x7fddcf14>
    17fc:	da888000 	ldc2	$8,-32768(s4)
    1800:	ede06e38 	swc3	$0,28216(t7)
    1804:	305f6265 	andi	ra,v0,0x6265
    1808:	715f6578 	0x715f6578
    180c:	5f64732e 	0x5f64732e
    1810:	53002f68 	beqzl	t8,d5b4 <data_size+0x364>
    1814:	6f6d652f 	0x6f6d652f
    1818:	7a68616e 	0x7a68616e
    181c:	67687569 	0x67687569
    1820:	6d656e67 	0x6d656e67
    1824:	2f436f6d 	sltiu	v1,k0,28525
    1828:	70757465 	0x70757465
    182c:	725f4172 	0x725f4172
    1830:	63686974 	0x63686974
    1834:	65637475 	0x65637475
    1838:	72652f66 	0x72652f66
    183c:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
    1840:	696f6e74 	0x696f6e74
    1844:	6573742f 	0x6573742f
    1848:	7372632f 	0x7372632f
    184c:	696e7374 	0x696e7374
    1850:	00474e55 	0x474e55
    1854:	20415320 	addi	at,v0,21280
    1858:	322e3234 	andi	t6,s1,0x3234
    185c:	2e353100 	sltiu	s5,s1,12544
    1860:	80010000 	lb	at,0(zero)
    1864:	006f0002 	0x6f0002
    1868:	00000438 	0x438
    186c:	04010000 	b	1870 <data_size-0xb9e0>
    1870:	14b48000 	bne	a1,s4,fffe1874 <_stack+0x7fddcf8c>
    1874:	44888000 	mtc1	t0,$f16
    1878:	44cc6e32 	0x44cc6e32
    187c:	325f786f 	andi	ra,s2,0x786f
    1880:	72692e53 	0x72692e53
    1884:	002f686f 	0x2f686f
    1888:	6d652f7a 	0x6d652f7a
    188c:	68616e67 	0x68616e67
    1890:	6875696d 	0x6875696d
    1894:	656e672f 	0x656e672f
    1898:	436f6d70 	c0	0x16f6d70
    189c:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    18a0:	5f417263 	0x5f417263
    18a4:	68697465 	0x68697465
    18a8:	63747572 	0x63747572
    18ac:	652f6675 	0x652f6675
    18b0:	6e637469 	0x6e637469
    18b4:	6f6e7465 	0x6f6e7465
    18b8:	73742f73 	0x73742f73
    18bc:	72632f69 	0x72632f69
    18c0:	6e737400 	0x6e737400
    18c4:	474e5520 	c1	0x14e5520
    18c8:	41532032 	0x41532032
    18cc:	2e32342e 	sltiu	s2,s1,13358
    18d0:	35310080 	ori	s1,t1,0x80
    18d4:	01000000 	0x1000000
    18d8:	6f000200 	0x6f000200
    18dc:	00044c04 	0x44c04
    18e0:	01000014 	0x1000014
    18e4:	f8800044 	sdc2	$0,68(a0)
    18e8:	d0800045 	0xd0800045
    18ec:	846e3331 	lh	t6,13105(v1)
    18f0:	5f626765 	0x5f626765
    18f4:	7a2e5300 	0x7a2e5300
    18f8:	2f686f6d 	sltiu	t0,k1,28525
    18fc:	652f7a68 	0x652f7a68
    1900:	616e6768 	0x616e6768
    1904:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
    1908:	6e672f43 	0x6e672f43
    190c:	6f6d7075 	0x6f6d7075
    1910:	7465725f 	jalx	195c97c <data_size+0x194f72c>
    1914:	41726368 	0x41726368
    1918:	69746563 	0x69746563
    191c:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
    1920:	2f66756e 	sltiu	a2,k1,30062
    1924:	6374696f 	0x6374696f
    1928:	6e746573 	0x6e746573
    192c:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
    1930:	632f696e 	0x632f696e
    1934:	73740047 	0x73740047
    1938:	4e552041 	c3	0x552041
    193c:	5320322e 	beqzl	t9,e1f8 <data_size+0xfa8>
    1940:	32342e35 	andi	s4,s1,0x2e35
    1944:	31008001 	andi	zero,t0,0x8001
    1948:	0000006f 	0x6f
    194c:	00020000 	sll	zero,v0,0x0
    1950:	04600401 	bltz	v1,2958 <data_size-0xa8f8>
    1954:	0000153e 	0x153e
    1958:	80004588 	lb	zero,17800(zero)
    195c:	800045c8 	lb	zero,17864(zero)
    1960:	6e31365f 	0x6e31365f
    1964:	616e6469 	0x616e6469
    1968:	2e53002f 	sltiu	s3,s2,47
    196c:	686f6d65 	0x686f6d65
    1970:	2f7a6861 	sltiu	k0,k1,26721
    1974:	6e676875 	0x6e676875
    1978:	696d656e 	0x696d656e
    197c:	672f436f 	0x672f436f
    1980:	6d707574 	0x6d707574
    1984:	65725f41 	0x65725f41
    1988:	72636869 	0x72636869
    198c:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    1990:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    1994:	66756e63 	0x66756e63
    1998:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    199c:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    19a0:	2f737263 	sltiu	s3,k1,29283
    19a4:	2f696e73 	sltiu	t1,k1,28275
    19a8:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    19ac:	55204153 	bnezl	t1,11efc <data_size+0x4cac>
    19b0:	20322e32 	addi	s2,at,11826
    19b4:	342e3531 	ori	t6,at,0x3531
    19b8:	00800100 	0x800100
    19bc:	00006e00 	sll	t5,zero,0x18
    19c0:	02000004 	sllv	zero,zero,s0
    19c4:	74040100 	jalx	100400 <data_size+0xf31b0>
    19c8:	00158280 	sll	s0,s5,0xa
    19cc:	0045c880 	0x45c880
    19d0:	00460c6e 	0x460c6e
    19d4:	32335f73 	andi	s3,s1,0x5f73
    19d8:	6c6c2e53 	0x6c6c2e53
    19dc:	002f686f 	0x2f686f
    19e0:	6d652f7a 	0x6d652f7a
    19e4:	68616e67 	0x68616e67
    19e8:	6875696d 	0x6875696d
    19ec:	656e672f 	0x656e672f
    19f0:	436f6d70 	c0	0x16f6d70
    19f4:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    19f8:	5f417263 	0x5f417263
    19fc:	68697465 	0x68697465
    1a00:	63747572 	0x63747572
    1a04:	652f6675 	0x652f6675
    1a08:	6e637469 	0x6e637469
    1a0c:	6f6e7465 	0x6f6e7465
    1a10:	73742f73 	0x73742f73
    1a14:	72632f69 	0x72632f69
    1a18:	6e737400 	0x6e737400
    1a1c:	474e5520 	c1	0x14e5520
    1a20:	41532032 	0x41532032
    1a24:	2e32342e 	sltiu	s2,s1,13358
    1a28:	35310080 	ori	s1,t1,0x80
    1a2c:	01000000 	0x1000000
    1a30:	74000200 	jalx	800 <data_size-0xca50>
    1a34:	00048804 	sllv	s1,a0,zero
    1a38:	01000015 	0x1000015
    1a3c:	c58000ed 	lwc1	$f0,237(t4)
    1a40:	e08000ee 	sc	zero,238(a0)
    1a44:	f86e3734 	sdc2	$14,14132(v1)
    1a48:	5f626c74 	0x5f626c74
    1a4c:	7a616c5f 	0x7a616c5f
    1a50:	64732e53 	0x64732e53
    1a54:	002f686f 	0x2f686f
    1a58:	6d652f7a 	0x6d652f7a
    1a5c:	68616e67 	0x68616e67
    1a60:	6875696d 	0x6875696d
    1a64:	656e672f 	0x656e672f
    1a68:	436f6d70 	c0	0x16f6d70
    1a6c:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    1a70:	5f417263 	0x5f417263
    1a74:	68697465 	0x68697465
    1a78:	63747572 	0x63747572
    1a7c:	652f6675 	0x652f6675
    1a80:	6e637469 	0x6e637469
    1a84:	6f6e7465 	0x6f6e7465
    1a88:	73742f73 	0x73742f73
    1a8c:	72632f69 	0x72632f69
    1a90:	6e737400 	0x6e737400
    1a94:	474e5520 	c1	0x14e5520
    1a98:	41532032 	0x41532032
    1a9c:	2e32342e 	sltiu	s2,s1,13358
    1aa0:	35310080 	ori	s1,t1,0x80
    1aa4:	01000000 	0x1000000
    1aa8:	6f000200 	0x6f000200
    1aac:	00049c04 	0x49c04
    1ab0:	01000016 	0x1000016
    1ab4:	10800046 	beqz	a0,1bd0 <data_size-0xb680>
    1ab8:	10800046 	beqz	a0,1bd4 <data_size-0xb67c>
    1abc:	546e3236 	bnel	v1,t6,e398 <data_size+0x1148>
    1ac0:	5f737261 	0x5f737261
    1ac4:	762e5300 	jalx	8b94c00 <data_size+0x8b879b0>
    1ac8:	2f686f6d 	sltiu	t0,k1,28525
    1acc:	652f7a68 	0x652f7a68
    1ad0:	616e6768 	0x616e6768
    1ad4:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
    1ad8:	6e672f43 	0x6e672f43
    1adc:	6f6d7075 	0x6f6d7075
    1ae0:	7465725f 	jalx	195c97c <data_size+0x194f72c>
    1ae4:	41726368 	0x41726368
    1ae8:	69746563 	0x69746563
    1aec:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
    1af0:	2f66756e 	sltiu	a2,k1,30062
    1af4:	6374696f 	0x6374696f
    1af8:	6e746573 	0x6e746573
    1afc:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
    1b00:	632f696e 	0x632f696e
    1b04:	73740047 	0x73740047
    1b08:	4e552041 	c3	0x552041
    1b0c:	5320322e 	beqzl	t9,e3c8 <data_size+0x1178>
    1b10:	32342e35 	andi	s4,s1,0x2e35
    1b14:	31008001 	andi	zero,t0,0x8001
    1b18:	0000006d 	0x6d
    1b1c:	00020000 	sll	zero,v0,0x0
    1b20:	04b00401 	bltzal	a1,2b28 <data_size-0xa728>
    1b24:	00001654 	0x1654
    1b28:	80004658 	lb	zero,18008(zero)
    1b2c:	800046ac 	lb	zero,18092(zero)
    1b30:	6e35315f 	0x6e35315f
    1b34:	6c772e53 	0x6c772e53
    1b38:	002f686f 	0x2f686f
    1b3c:	6d652f7a 	0x6d652f7a
    1b40:	68616e67 	0x68616e67
    1b44:	6875696d 	0x6875696d
    1b48:	656e672f 	0x656e672f
    1b4c:	436f6d70 	c0	0x16f6d70
    1b50:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    1b54:	5f417263 	0x5f417263
    1b58:	68697465 	0x68697465
    1b5c:	63747572 	0x63747572
    1b60:	652f6675 	0x652f6675
    1b64:	6e637469 	0x6e637469
    1b68:	6f6e7465 	0x6f6e7465
    1b6c:	73742f73 	0x73742f73
    1b70:	72632f69 	0x72632f69
    1b74:	6e737400 	0x6e737400
    1b78:	474e5520 	c1	0x14e5520
    1b7c:	41532032 	0x41532032
    1b80:	2e32342e 	sltiu	s2,s1,13358
    1b84:	35310080 	ori	s1,t1,0x80
    1b88:	01000000 	0x1000000
    1b8c:	6f000200 	0x6f000200
    1b90:	0004c404 	0x4c404
    1b94:	01000016 	0x1000016
    1b98:	97800046 	lhu	zero,70(gp)
    1b9c:	b0800046 	0xb0800046
    1ba0:	f46e3431 	sdc1	$f14,13361(v1)
    1ba4:	5f6d6668 	0x5f6d6668
    1ba8:	692e5300 	0x692e5300
    1bac:	2f686f6d 	sltiu	t0,k1,28525
    1bb0:	652f7a68 	0x652f7a68
    1bb4:	616e6768 	0x616e6768
    1bb8:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
    1bbc:	6e672f43 	0x6e672f43
    1bc0:	6f6d7075 	0x6f6d7075
    1bc4:	7465725f 	jalx	195c97c <data_size+0x194f72c>
    1bc8:	41726368 	0x41726368
    1bcc:	69746563 	0x69746563
    1bd0:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
    1bd4:	2f66756e 	sltiu	a2,k1,30062
    1bd8:	6374696f 	0x6374696f
    1bdc:	6e746573 	0x6e746573
    1be0:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
    1be4:	632f696e 	0x632f696e
    1be8:	73740047 	0x73740047
    1bec:	4e552041 	c3	0x552041
    1bf0:	5320322e 	beqzl	t9,e4ac <data_size+0x125c>
    1bf4:	32342e35 	andi	s4,s1,0x2e35
    1bf8:	31008001 	andi	zero,t0,0x8001
    1bfc:	0000006f 	0x6f
    1c00:	00020000 	sll	zero,v0,0x0
    1c04:	04d80401 	0x4d80401
    1c08:	000016db 	0x16db
    1c0c:	800046f8 	lb	zero,18168(zero)
    1c10:	800047dc 	lb	zero,18396(zero)
    1c14:	6e33325f 	0x6e33325f
    1c18:	6267747a 	0x6267747a
    1c1c:	2e53002f 	sltiu	s3,s2,47
    1c20:	686f6d65 	0x686f6d65
    1c24:	2f7a6861 	sltiu	k0,k1,26721
    1c28:	6e676875 	0x6e676875
    1c2c:	696d656e 	0x696d656e
    1c30:	672f436f 	0x672f436f
    1c34:	6d707574 	0x6d707574
    1c38:	65725f41 	0x65725f41
    1c3c:	72636869 	0x72636869
    1c40:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    1c44:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    1c48:	66756e63 	0x66756e63
    1c4c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    1c50:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    1c54:	2f737263 	sltiu	s3,k1,29283
    1c58:	2f696e73 	sltiu	t1,k1,28275
    1c5c:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    1c60:	55204153 	bnezl	t1,121b0 <data_size+0x4f60>
    1c64:	20322e32 	addi	s2,at,11826
    1c68:	342e3531 	ori	t6,at,0x3531
    1c6c:	00800100 	0x800100
    1c70:	00007400 	sll	t6,zero,0x10
    1c74:	02000004 	sllv	zero,zero,s0
    1c78:	ec040100 	swc3	$4,256(zero)
    1c7c:	00172180 	sll	a0,s7,0x6
    1c80:	00eef880 	0xeef880
    1c84:	00f0306e 	0xf0306e
    1c88:	37355f62 	ori	s5,t9,0x5f62
    1c8c:	67657a61 	0x67657a61
    1c90:	6c5f6473 	0x6c5f6473
    1c94:	2e53002f 	sltiu	s3,s2,47
    1c98:	686f6d65 	0x686f6d65
    1c9c:	2f7a6861 	sltiu	k0,k1,26721
    1ca0:	6e676875 	0x6e676875
    1ca4:	696d656e 	0x696d656e
    1ca8:	672f436f 	0x672f436f
    1cac:	6d707574 	0x6d707574
    1cb0:	65725f41 	0x65725f41
    1cb4:	72636869 	0x72636869
    1cb8:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    1cbc:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    1cc0:	66756e63 	0x66756e63
    1cc4:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    1cc8:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    1ccc:	2f737263 	sltiu	s3,k1,29283
    1cd0:	2f696e73 	sltiu	t1,k1,28275
    1cd4:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    1cd8:	55204153 	bnezl	t1,12228 <data_size+0x4fd8>
    1cdc:	20322e32 	addi	s2,at,11826
    1ce0:	342e3531 	ori	t6,at,0x3531
    1ce4:	00800100 	0x800100
    1ce8:	00006e00 	sll	t5,zero,0x18
    1cec:	02000005 	0x2000005
    1cf0:	00040100 	sll	zero,a0,0x4
    1cf4:	00176c80 	sll	t5,s7,0x12
    1cf8:	0047e080 	0x47e080
    1cfc:	0048246e 	0x48246e
    1d00:	32305f6f 	andi	s0,s1,0x5f6f
    1d04:	72692e53 	0x72692e53
    1d08:	002f686f 	0x2f686f
    1d0c:	6d652f7a 	0x6d652f7a
    1d10:	68616e67 	0x68616e67
    1d14:	6875696d 	0x6875696d
    1d18:	656e672f 	0x656e672f
    1d1c:	436f6d70 	c0	0x16f6d70
    1d20:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    1d24:	5f417263 	0x5f417263
    1d28:	68697465 	0x68697465
    1d2c:	63747572 	0x63747572
    1d30:	652f6675 	0x652f6675
    1d34:	6e637469 	0x6e637469
    1d38:	6f6e7465 	0x6f6e7465
    1d3c:	73742f73 	0x73742f73
    1d40:	72632f69 	0x72632f69
    1d44:	6e737400 	0x6e737400
    1d48:	474e5520 	c1	0x14e5520
    1d4c:	41532032 	0x41532032
    1d50:	2e32342e 	sltiu	s2,s1,13358
    1d54:	35310080 	ori	s1,t1,0x80
    1d58:	01000000 	0x1000000
    1d5c:	72000200 	0x72000200
    1d60:	00051404 	0x51404
    1d64:	01000017 	0x1000017
    1d68:	af8000f0 	sw	zero,240(gp)
    1d6c:	308000f1 	andi	zero,a0,0xf1
    1d70:	3c6e3730 	0x3c6e3730
    1d74:	5f626765 	0x5f626765
    1d78:	7a5f6473 	0x7a5f6473
    1d7c:	2e53002f 	sltiu	s3,s2,47
    1d80:	686f6d65 	0x686f6d65
    1d84:	2f7a6861 	sltiu	k0,k1,26721
    1d88:	6e676875 	0x6e676875
    1d8c:	696d656e 	0x696d656e
    1d90:	672f436f 	0x672f436f
    1d94:	6d707574 	0x6d707574
    1d98:	65725f41 	0x65725f41
    1d9c:	72636869 	0x72636869
    1da0:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    1da4:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    1da8:	66756e63 	0x66756e63
    1dac:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    1db0:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    1db4:	2f737263 	sltiu	s3,k1,29283
    1db8:	2f696e73 	sltiu	t1,k1,28275
    1dbc:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    1dc0:	55204153 	bnezl	t1,12310 <data_size+0x50c0>
    1dc4:	20322e32 	addi	s2,at,11826
    1dc8:	342e3531 	ori	t6,at,0x3531
    1dcc:	00800100 	0x800100
    1dd0:	00006e00 	sll	t5,zero,0x18
    1dd4:	02000005 	0x2000005
    1dd8:	28040100 	slti	a0,zero,256
    1ddc:	0017f880 	sll	ra,s7,0x2
    1de0:	00482880 	0x482880
    1de4:	00486c6e 	0x486c6e
    1de8:	32355f73 	andi	s5,s1,0x5f73
    1dec:	72612e53 	0x72612e53
    1df0:	002f686f 	0x2f686f
    1df4:	6d652f7a 	0x6d652f7a
    1df8:	68616e67 	0x68616e67
    1dfc:	6875696d 	0x6875696d
    1e00:	656e672f 	0x656e672f
    1e04:	436f6d70 	c0	0x16f6d70
    1e08:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    1e0c:	5f417263 	0x5f417263
    1e10:	68697465 	0x68697465
    1e14:	63747572 	0x63747572
    1e18:	652f6675 	0x652f6675
    1e1c:	6e637469 	0x6e637469
    1e20:	6f6e7465 	0x6f6e7465
    1e24:	73742f73 	0x73742f73
    1e28:	72632f69 	0x72632f69
    1e2c:	6e737400 	0x6e737400
    1e30:	474e5520 	c1	0x14e5520
    1e34:	41532032 	0x41532032
    1e38:	2e32342e 	sltiu	s2,s1,13358
    1e3c:	35310080 	ori	s1,t1,0x80
    1e40:	01000000 	0x1000000
    1e44:	6f000200 	0x6f000200
    1e48:	00053c04 	0x53c04
    1e4c:	01000018 	mult	t0,zero
    1e50:	3b8000f1 	xori	zero,gp,0xf1
    1e54:	3c8000f1 	0x3c8000f1
    1e58:	e86e3736 	swc2	$14,14134(v1)
    1e5c:	5f6a5f64 	0x5f6a5f64
    1e60:	732e5300 	0x732e5300
    1e64:	2f686f6d 	sltiu	t0,k1,28525
    1e68:	652f7a68 	0x652f7a68
    1e6c:	616e6768 	0x616e6768
    1e70:	75696d65 	jalx	5a5b594 <data_size+0x5a4e344>
    1e74:	6e672f43 	0x6e672f43
    1e78:	6f6d7075 	0x6f6d7075
    1e7c:	7465725f 	jalx	195c97c <data_size+0x194f72c>
    1e80:	41726368 	0x41726368
    1e84:	69746563 	0x69746563
    1e88:	74757265 	jalx	1d5c994 <data_size+0x1d4f744>
    1e8c:	2f66756e 	sltiu	a2,k1,30062
    1e90:	6374696f 	0x6374696f
    1e94:	6e746573 	0x6e746573
    1e98:	742f7372 	jalx	bdcdc8 <data_size+0xbcfb78>
    1e9c:	632f696e 	0x632f696e
    1ea0:	73740047 	0x73740047
    1ea4:	4e552041 	c3	0x552041
    1ea8:	5320322e 	beqzl	t9,e764 <data_size+0x1514>
    1eac:	32342e35 	andi	s4,s1,0x2e35
    1eb0:	31008001 	andi	zero,t0,0x8001
    1eb4:	00000075 	0x75
    1eb8:	00020000 	sll	zero,v0,0x0
    1ebc:	05500401 	bltzal	t2,2ec4 <data_size-0xa38c>
    1ec0:	00001881 	0x1881
    1ec4:	8000f1e8 	lb	zero,-3608(zero)
    1ec8:	80010540 	lb	at,1344(zero)
    1ecc:	6e38335f 	0x6e38335f
    1ed0:	6267747a 	0x6267747a
    1ed4:	5f65785f 	0x5f65785f
    1ed8:	64732e53 	0x64732e53
    1edc:	002f686f 	0x2f686f
    1ee0:	6d652f7a 	0x6d652f7a
    1ee4:	68616e67 	0x68616e67
    1ee8:	6875696d 	0x6875696d
    1eec:	656e672f 	0x656e672f
    1ef0:	436f6d70 	c0	0x16f6d70
    1ef4:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    1ef8:	5f417263 	0x5f417263
    1efc:	68697465 	0x68697465
    1f00:	63747572 	0x63747572
    1f04:	652f6675 	0x652f6675
    1f08:	6e637469 	0x6e637469
    1f0c:	6f6e7465 	0x6f6e7465
    1f10:	73742f73 	0x73742f73
    1f14:	72632f69 	0x72632f69
    1f18:	6e737400 	0x6e737400
    1f1c:	474e5520 	c1	0x14e5520
    1f20:	41532032 	0x41532032
    1f24:	2e32342e 	sltiu	s2,s1,13358
    1f28:	35310080 	ori	s1,t1,0x80
    1f2c:	01000000 	0x1000000
    1f30:	6e000200 	0x6e000200
    1f34:	00056404 	0x56404
    1f38:	01000018 	mult	t0,zero
    1f3c:	f2800048 	0xf2800048
    1f40:	70800048 	0x70800048
    1f44:	b86e3135 	swr	t6,12597(v1)
    1f48:	5f616e64 	0x5f616e64
    1f4c:	2e53002f 	sltiu	s3,s2,47
    1f50:	686f6d65 	0x686f6d65
    1f54:	2f7a6861 	sltiu	k0,k1,26721
    1f58:	6e676875 	0x6e676875
    1f5c:	696d656e 	0x696d656e
    1f60:	672f436f 	0x672f436f
    1f64:	6d707574 	0x6d707574
    1f68:	65725f41 	0x65725f41
    1f6c:	72636869 	0x72636869
    1f70:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    1f74:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    1f78:	66756e63 	0x66756e63
    1f7c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    1f80:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    1f84:	2f737263 	sltiu	s3,k1,29283
    1f88:	2f696e73 	sltiu	t1,k1,28275
    1f8c:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    1f90:	55204153 	bnezl	t1,124e0 <data_size+0x5290>
    1f94:	20322e32 	addi	s2,at,11826
    1f98:	342e3531 	ori	t6,at,0x3531
    1f9c:	00800100 	0x800100
    1fa0:	00007700 	sll	t6,zero,0x1c
    1fa4:	02000005 	0x2000005
    1fa8:	78040100 	0x78040100
    1fac:	00193680 	sll	a2,t9,0x1a
    1fb0:	01054080 	0x1054080
    1fb4:	0119746e 	0x119746e
    1fb8:	38365f62 	xori	s6,at,0x5f62
    1fbc:	6c747a61 	0x6c747a61
    1fc0:	6c5f6578 	0x6c5f6578
    1fc4:	5f64732e 	0x5f64732e
    1fc8:	53002f68 	beqzl	t8,dd6c <data_size+0xb1c>
    1fcc:	6f6d652f 	0x6f6d652f
    1fd0:	7a68616e 	0x7a68616e
    1fd4:	67687569 	0x67687569
    1fd8:	6d656e67 	0x6d656e67
    1fdc:	2f436f6d 	sltiu	v1,k0,28525
    1fe0:	70757465 	0x70757465
    1fe4:	725f4172 	0x725f4172
    1fe8:	63686974 	0x63686974
    1fec:	65637475 	0x65637475
    1ff0:	72652f66 	0x72652f66
    1ff4:	756e6374 	jalx	5b98dd0 <data_size+0x5b8bb80>
    1ff8:	696f6e74 	0x696f6e74
    1ffc:	6573742f 	0x6573742f
    2000:	7372632f 	0x7372632f
    2004:	696e7374 	0x696e7374
    2008:	00474e55 	0x474e55
    200c:	20415320 	addi	at,v0,21280
    2010:	322e3234 	andi	t6,s1,0x3234
    2014:	2e353100 	sltiu	s5,s1,12544
    2018:	80010000 	lb	at,0(zero)
    201c:	00710002 	0x710002
    2020:	0000058c 	syscall	0x16
    2024:	04010000 	b	2028 <data_size-0xb228>
    2028:	19a98001 	0x19a98001
    202c:	19748001 	0x19748001
    2030:	1a586e36 	0x1a586e36
    2034:	385f6265 	xori	ra,v0,0x6265
    2038:	715f6473 	0x715f6473
    203c:	2e53002f 	sltiu	s3,s2,47
    2040:	686f6d65 	0x686f6d65
    2044:	2f7a6861 	sltiu	k0,k1,26721
    2048:	6e676875 	0x6e676875
    204c:	696d656e 	0x696d656e
    2050:	672f436f 	0x672f436f
    2054:	6d707574 	0x6d707574
    2058:	65725f41 	0x65725f41
    205c:	72636869 	0x72636869
    2060:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    2064:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    2068:	66756e63 	0x66756e63
    206c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    2070:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    2074:	2f737263 	sltiu	s3,k1,29283
    2078:	2f696e73 	sltiu	t1,k1,28275
    207c:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    2080:	55204153 	bnezl	t1,125d0 <data_size+0x5380>
    2084:	20322e32 	addi	s2,at,11826
    2088:	342e3531 	ori	t6,at,0x3531
    208c:	00800100 	0x800100
    2090:	00006e00 	sll	t5,zero,0x18
    2094:	02000005 	0x2000005
    2098:	a0040100 	sb	a0,256(zero)
    209c:	0019f180 	sll	s8,t9,0x6
    20a0:	0048b880 	0x48b880
    20a4:	0048ec6e 	0x48ec6e
    20a8:	31375f6c 	andi	s7,t1,0x5f6c
    20ac:	75692e53 	jalx	5a4b94c <data_size+0x5a3e6fc>
    20b0:	002f686f 	0x2f686f
    20b4:	6d652f7a 	0x6d652f7a
    20b8:	68616e67 	0x68616e67
    20bc:	6875696d 	0x6875696d
    20c0:	656e672f 	0x656e672f
    20c4:	436f6d70 	c0	0x16f6d70
    20c8:	75746572 	jalx	5d195c8 <data_size+0x5d0c378>
    20cc:	5f417263 	0x5f417263
    20d0:	68697465 	0x68697465
    20d4:	63747572 	0x63747572
    20d8:	652f6675 	0x652f6675
    20dc:	6e637469 	0x6e637469
    20e0:	6f6e7465 	0x6f6e7465
    20e4:	73742f73 	0x73742f73
    20e8:	72632f69 	0x72632f69
    20ec:	6e737400 	0x6e737400
    20f0:	474e5520 	c1	0x14e5520
    20f4:	41532032 	0x41532032
    20f8:	2e32342e 	sltiu	s2,s1,13358
    20fc:	35310080 	ori	s1,t1,0x80
    2100:	01000000 	0x1000000
    2104:	72000200 	0x72000200
    2108:	0005b404 	0x5b404
    210c:	0100001a 	div	zero,t0,zero
    2110:	3380011a 	andi	zero,gp,0x11a
    2114:	5880011b 	blezl	a0,2584 <data_size-0xaccc>
    2118:	486e3739 	0x486e3739
    211c:	5f6a616c 	0x5f6a616c
    2120:	725f6473 	0x725f6473
    2124:	2e53002f 	sltiu	s3,s2,47
    2128:	686f6d65 	0x686f6d65
    212c:	2f7a6861 	sltiu	k0,k1,26721
    2130:	6e676875 	0x6e676875
    2134:	696d656e 	0x696d656e
    2138:	672f436f 	0x672f436f
    213c:	6d707574 	0x6d707574
    2140:	65725f41 	0x65725f41
    2144:	72636869 	0x72636869
    2148:	74656374 	jalx	1958dd0 <data_size+0x194bb80>
    214c:	7572652f 	jalx	5c994bc <data_size+0x5c8c26c>
    2150:	66756e63 	0x66756e63
    2154:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a4eb68>
    2158:	74657374 	jalx	195cdd0 <data_size+0x194fb80>
    215c:	2f737263 	sltiu	s3,k1,29283
    2160:	2f696e73 	sltiu	t1,k1,28275
    2164:	7400474e 	jalx	11d38 <data_size+0x4ae8>
    2168:	55204153 	bnezl	t1,126b8 <data_size+0x5468>
    216c:	20322e32 	addi	s2,at,11826
    2170:	342e3531 	ori	t6,at,0x3531
    2174:	Address 0x0000000000002174 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01110010 	0x1110010
   4:	06110112 	bgezal	s0,450 <data_size-0xce00>
   8:	0103081b 	0x103081b
   c:	08250813 	j	94204c <data_size+0x934dfc>
  10:	05000000 	bltz	t0,14 <data_size-0xd23c>
  14:	01110010 	0x1110010
  18:	06110112 	bgezal	s0,464 <data_size-0xcdec>
  1c:	0103081b 	0x103081b
  20:	08250813 	j	94204c <data_size+0x934dfc>
  24:	05000000 	bltz	t0,28 <data_size-0xd228>
  28:	01110010 	0x1110010
  2c:	06110112 	bgezal	s0,478 <data_size-0xcdd8>
  30:	0103081b 	0x103081b
  34:	08250813 	j	94204c <data_size+0x934dfc>
  38:	05000000 	bltz	t0,3c <data_size-0xd214>
  3c:	01110010 	0x1110010
  40:	06110112 	bgezal	s0,48c <data_size-0xcdc4>
  44:	0103081b 	0x103081b
  48:	08250813 	j	94204c <data_size+0x934dfc>
  4c:	05000000 	bltz	t0,50 <data_size-0xd200>
  50:	01110010 	0x1110010
  54:	06110112 	bgezal	s0,4a0 <data_size-0xcdb0>
  58:	0103081b 	0x103081b
  5c:	08250813 	j	94204c <data_size+0x934dfc>
  60:	05000000 	bltz	t0,64 <data_size-0xd1ec>
  64:	01110010 	0x1110010
  68:	06110112 	bgezal	s0,4b4 <data_size-0xcd9c>
  6c:	0103081b 	0x103081b
  70:	08250813 	j	94204c <data_size+0x934dfc>
  74:	05000000 	bltz	t0,78 <data_size-0xd1d8>
  78:	01110010 	0x1110010
  7c:	06110112 	bgezal	s0,4c8 <data_size-0xcd88>
  80:	0103081b 	0x103081b
  84:	08250813 	j	94204c <data_size+0x934dfc>
  88:	05000000 	bltz	t0,8c <data_size-0xd1c4>
  8c:	01110010 	0x1110010
  90:	06110112 	bgezal	s0,4dc <data_size-0xcd74>
  94:	0103081b 	0x103081b
  98:	08250813 	j	94204c <data_size+0x934dfc>
  9c:	05000000 	bltz	t0,a0 <data_size-0xd1b0>
  a0:	01110010 	0x1110010
  a4:	06110112 	bgezal	s0,4f0 <data_size-0xcd60>
  a8:	0103081b 	0x103081b
  ac:	08250813 	j	94204c <data_size+0x934dfc>
  b0:	05000000 	bltz	t0,b4 <data_size-0xd19c>
  b4:	01110010 	0x1110010
  b8:	06110112 	bgezal	s0,504 <data_size-0xcd4c>
  bc:	0103081b 	0x103081b
  c0:	08250813 	j	94204c <data_size+0x934dfc>
  c4:	05000000 	bltz	t0,c8 <data_size-0xd188>
  c8:	01110010 	0x1110010
  cc:	06110112 	bgezal	s0,518 <data_size-0xcd38>
  d0:	0103081b 	0x103081b
  d4:	08250813 	j	94204c <data_size+0x934dfc>
  d8:	05000000 	bltz	t0,dc <data_size-0xd174>
  dc:	01110010 	0x1110010
  e0:	06110112 	bgezal	s0,52c <data_size-0xcd24>
  e4:	0103081b 	0x103081b
  e8:	08250813 	j	94204c <data_size+0x934dfc>
  ec:	05000000 	bltz	t0,f0 <data_size-0xd160>
  f0:	01110010 	0x1110010
  f4:	06110112 	bgezal	s0,540 <data_size-0xcd10>
  f8:	0103081b 	0x103081b
  fc:	08250813 	j	94204c <data_size+0x934dfc>
 100:	05000000 	bltz	t0,104 <data_size-0xd14c>
 104:	01110010 	0x1110010
 108:	06110112 	bgezal	s0,554 <data_size-0xccfc>
 10c:	0103081b 	0x103081b
 110:	08250813 	j	94204c <data_size+0x934dfc>
 114:	05000000 	bltz	t0,118 <data_size-0xd138>
 118:	01110010 	0x1110010
 11c:	06110112 	bgezal	s0,568 <data_size-0xcce8>
 120:	0103081b 	0x103081b
 124:	08250813 	j	94204c <data_size+0x934dfc>
 128:	05000000 	bltz	t0,12c <data_size-0xd124>
 12c:	01110010 	0x1110010
 130:	06110112 	bgezal	s0,57c <data_size-0xccd4>
 134:	0103081b 	0x103081b
 138:	08250813 	j	94204c <data_size+0x934dfc>
 13c:	05000000 	bltz	t0,140 <data_size-0xd110>
 140:	01110010 	0x1110010
 144:	06110112 	bgezal	s0,590 <data_size-0xccc0>
 148:	0103081b 	0x103081b
 14c:	08250813 	j	94204c <data_size+0x934dfc>
 150:	05000000 	bltz	t0,154 <data_size-0xd0fc>
 154:	01110010 	0x1110010
 158:	06110112 	bgezal	s0,5a4 <data_size-0xccac>
 15c:	0103081b 	0x103081b
 160:	08250813 	j	94204c <data_size+0x934dfc>
 164:	05000000 	bltz	t0,168 <data_size-0xd0e8>
 168:	01110010 	0x1110010
 16c:	06110112 	bgezal	s0,5b8 <data_size-0xcc98>
 170:	0103081b 	0x103081b
 174:	08250813 	j	94204c <data_size+0x934dfc>
 178:	05000000 	bltz	t0,17c <data_size-0xd0d4>
 17c:	01110010 	0x1110010
 180:	06110112 	bgezal	s0,5cc <data_size-0xcc84>
 184:	0103081b 	0x103081b
 188:	08250813 	j	94204c <data_size+0x934dfc>
 18c:	05000000 	bltz	t0,190 <data_size-0xd0c0>
 190:	01110010 	0x1110010
 194:	06110112 	bgezal	s0,5e0 <data_size-0xcc70>
 198:	0103081b 	0x103081b
 19c:	08250813 	j	94204c <data_size+0x934dfc>
 1a0:	05000000 	bltz	t0,1a4 <data_size-0xd0ac>
 1a4:	01110010 	0x1110010
 1a8:	06110112 	bgezal	s0,5f4 <data_size-0xcc5c>
 1ac:	0103081b 	0x103081b
 1b0:	08250813 	j	94204c <data_size+0x934dfc>
 1b4:	05000000 	bltz	t0,1b8 <data_size-0xd098>
 1b8:	01110010 	0x1110010
 1bc:	06110112 	bgezal	s0,608 <data_size-0xcc48>
 1c0:	0103081b 	0x103081b
 1c4:	08250813 	j	94204c <data_size+0x934dfc>
 1c8:	05000000 	bltz	t0,1cc <data_size-0xd084>
 1cc:	01110010 	0x1110010
 1d0:	06110112 	bgezal	s0,61c <data_size-0xcc34>
 1d4:	0103081b 	0x103081b
 1d8:	08250813 	j	94204c <data_size+0x934dfc>
 1dc:	05000000 	bltz	t0,1e0 <data_size-0xd070>
 1e0:	01110010 	0x1110010
 1e4:	06110112 	bgezal	s0,630 <data_size-0xcc20>
 1e8:	0103081b 	0x103081b
 1ec:	08250813 	j	94204c <data_size+0x934dfc>
 1f0:	05000000 	bltz	t0,1f4 <data_size-0xd05c>
 1f4:	01110010 	0x1110010
 1f8:	06110112 	bgezal	s0,644 <data_size-0xcc0c>
 1fc:	0103081b 	0x103081b
 200:	08250813 	j	94204c <data_size+0x934dfc>
 204:	05000000 	bltz	t0,208 <data_size-0xd048>
 208:	01110010 	0x1110010
 20c:	06110112 	bgezal	s0,658 <data_size-0xcbf8>
 210:	0103081b 	0x103081b
 214:	08250813 	j	94204c <data_size+0x934dfc>
 218:	05000000 	bltz	t0,21c <data_size-0xd034>
 21c:	01110010 	0x1110010
 220:	06110112 	bgezal	s0,66c <data_size-0xcbe4>
 224:	0103081b 	0x103081b
 228:	08250813 	j	94204c <data_size+0x934dfc>
 22c:	05000000 	bltz	t0,230 <data_size-0xd020>
 230:	01110010 	0x1110010
 234:	06110112 	bgezal	s0,680 <data_size-0xcbd0>
 238:	0103081b 	0x103081b
 23c:	08250813 	j	94204c <data_size+0x934dfc>
 240:	05000000 	bltz	t0,244 <data_size-0xd00c>
 244:	01110010 	0x1110010
 248:	06110112 	bgezal	s0,694 <data_size-0xcbbc>
 24c:	0103081b 	0x103081b
 250:	08250813 	j	94204c <data_size+0x934dfc>
 254:	05000000 	bltz	t0,258 <data_size-0xcff8>
 258:	01110010 	0x1110010
 25c:	06110112 	bgezal	s0,6a8 <data_size-0xcba8>
 260:	0103081b 	0x103081b
 264:	08250813 	j	94204c <data_size+0x934dfc>
 268:	05000000 	bltz	t0,26c <data_size-0xcfe4>
 26c:	01110010 	0x1110010
 270:	06110112 	bgezal	s0,6bc <data_size-0xcb94>
 274:	0103081b 	0x103081b
 278:	08250813 	j	94204c <data_size+0x934dfc>
 27c:	05000000 	bltz	t0,280 <data_size-0xcfd0>
 280:	01110010 	0x1110010
 284:	06110112 	bgezal	s0,6d0 <data_size-0xcb80>
 288:	0103081b 	0x103081b
 28c:	08250813 	j	94204c <data_size+0x934dfc>
 290:	05000000 	bltz	t0,294 <data_size-0xcfbc>
 294:	01110010 	0x1110010
 298:	06110112 	bgezal	s0,6e4 <data_size-0xcb6c>
 29c:	0103081b 	0x103081b
 2a0:	08250813 	j	94204c <data_size+0x934dfc>
 2a4:	05000000 	bltz	t0,2a8 <data_size-0xcfa8>
 2a8:	01110010 	0x1110010
 2ac:	06110112 	bgezal	s0,6f8 <data_size-0xcb58>
 2b0:	0103081b 	0x103081b
 2b4:	08250813 	j	94204c <data_size+0x934dfc>
 2b8:	05000000 	bltz	t0,2bc <data_size-0xcf94>
 2bc:	01110010 	0x1110010
 2c0:	06110112 	bgezal	s0,70c <data_size-0xcb44>
 2c4:	0103081b 	0x103081b
 2c8:	08250813 	j	94204c <data_size+0x934dfc>
 2cc:	05000000 	bltz	t0,2d0 <data_size-0xcf80>
 2d0:	01110010 	0x1110010
 2d4:	06110112 	bgezal	s0,720 <data_size-0xcb30>
 2d8:	0103081b 	0x103081b
 2dc:	08250813 	j	94204c <data_size+0x934dfc>
 2e0:	05000000 	bltz	t0,2e4 <data_size-0xcf6c>
 2e4:	01110010 	0x1110010
 2e8:	06110112 	bgezal	s0,734 <data_size-0xcb1c>
 2ec:	0103081b 	0x103081b
 2f0:	08250813 	j	94204c <data_size+0x934dfc>
 2f4:	05000000 	bltz	t0,2f8 <data_size-0xcf58>
 2f8:	01110010 	0x1110010
 2fc:	06110112 	bgezal	s0,748 <data_size-0xcb08>
 300:	0103081b 	0x103081b
 304:	08250813 	j	94204c <data_size+0x934dfc>
 308:	05000000 	bltz	t0,30c <data_size-0xcf44>
 30c:	01110010 	0x1110010
 310:	06110112 	bgezal	s0,75c <data_size-0xcaf4>
 314:	0103081b 	0x103081b
 318:	08250813 	j	94204c <data_size+0x934dfc>
 31c:	05000000 	bltz	t0,320 <data_size-0xcf30>
 320:	01110010 	0x1110010
 324:	06110112 	bgezal	s0,770 <data_size-0xcae0>
 328:	0103081b 	0x103081b
 32c:	08250813 	j	94204c <data_size+0x934dfc>
 330:	05000000 	bltz	t0,334 <data_size-0xcf1c>
 334:	01110010 	0x1110010
 338:	06110112 	bgezal	s0,784 <data_size-0xcacc>
 33c:	0103081b 	0x103081b
 340:	08250813 	j	94204c <data_size+0x934dfc>
 344:	05000000 	bltz	t0,348 <data_size-0xcf08>
 348:	01110010 	0x1110010
 34c:	06110112 	bgezal	s0,798 <data_size-0xcab8>
 350:	0103081b 	0x103081b
 354:	08250813 	j	94204c <data_size+0x934dfc>
 358:	05000000 	bltz	t0,35c <data_size-0xcef4>
 35c:	01110010 	0x1110010
 360:	06110112 	bgezal	s0,7ac <data_size-0xcaa4>
 364:	0103081b 	0x103081b
 368:	08250813 	j	94204c <data_size+0x934dfc>
 36c:	05000000 	bltz	t0,370 <data_size-0xcee0>
 370:	01110010 	0x1110010
 374:	06110112 	bgezal	s0,7c0 <data_size-0xca90>
 378:	0103081b 	0x103081b
 37c:	08250813 	j	94204c <data_size+0x934dfc>
 380:	05000000 	bltz	t0,384 <data_size-0xcecc>
 384:	01110010 	0x1110010
 388:	06110112 	bgezal	s0,7d4 <data_size-0xca7c>
 38c:	0103081b 	0x103081b
 390:	08250813 	j	94204c <data_size+0x934dfc>
 394:	05000000 	bltz	t0,398 <data_size-0xceb8>
 398:	01110010 	0x1110010
 39c:	06110112 	bgezal	s0,7e8 <data_size-0xca68>
 3a0:	0103081b 	0x103081b
 3a4:	08250813 	j	94204c <data_size+0x934dfc>
 3a8:	05000000 	bltz	t0,3ac <data_size-0xcea4>
 3ac:	01110010 	0x1110010
 3b0:	06110112 	bgezal	s0,7fc <data_size-0xca54>
 3b4:	0103081b 	0x103081b
 3b8:	08250813 	j	94204c <data_size+0x934dfc>
 3bc:	05000000 	bltz	t0,3c0 <data_size-0xce90>
 3c0:	01110010 	0x1110010
 3c4:	06110112 	bgezal	s0,810 <data_size-0xca40>
 3c8:	0103081b 	0x103081b
 3cc:	08250813 	j	94204c <data_size+0x934dfc>
 3d0:	05000000 	bltz	t0,3d4 <data_size-0xce7c>
 3d4:	01110010 	0x1110010
 3d8:	06110112 	bgezal	s0,824 <data_size-0xca2c>
 3dc:	0103081b 	0x103081b
 3e0:	08250813 	j	94204c <data_size+0x934dfc>
 3e4:	05000000 	bltz	t0,3e8 <data_size-0xce68>
 3e8:	01110010 	0x1110010
 3ec:	06110112 	bgezal	s0,838 <data_size-0xca18>
 3f0:	0103081b 	0x103081b
 3f4:	08250813 	j	94204c <data_size+0x934dfc>
 3f8:	05000000 	bltz	t0,3fc <data_size-0xce54>
 3fc:	01110010 	0x1110010
 400:	06110112 	bgezal	s0,84c <data_size-0xca04>
 404:	0103081b 	0x103081b
 408:	08250813 	j	94204c <data_size+0x934dfc>
 40c:	05000000 	bltz	t0,410 <data_size-0xce40>
 410:	01110010 	0x1110010
 414:	06110112 	bgezal	s0,860 <data_size-0xc9f0>
 418:	0103081b 	0x103081b
 41c:	08250813 	j	94204c <data_size+0x934dfc>
 420:	05000000 	bltz	t0,424 <data_size-0xce2c>
 424:	01110010 	0x1110010
 428:	06110112 	bgezal	s0,874 <data_size-0xc9dc>
 42c:	0103081b 	0x103081b
 430:	08250813 	j	94204c <data_size+0x934dfc>
 434:	05000000 	bltz	t0,438 <data_size-0xce18>
 438:	01110010 	0x1110010
 43c:	06110112 	bgezal	s0,888 <data_size-0xc9c8>
 440:	0103081b 	0x103081b
 444:	08250813 	j	94204c <data_size+0x934dfc>
 448:	05000000 	bltz	t0,44c <data_size-0xce04>
 44c:	01110010 	0x1110010
 450:	06110112 	bgezal	s0,89c <data_size-0xc9b4>
 454:	0103081b 	0x103081b
 458:	08250813 	j	94204c <data_size+0x934dfc>
 45c:	05000000 	bltz	t0,460 <data_size-0xcdf0>
 460:	01110010 	0x1110010
 464:	06110112 	bgezal	s0,8b0 <data_size-0xc9a0>
 468:	0103081b 	0x103081b
 46c:	08250813 	j	94204c <data_size+0x934dfc>
 470:	05000000 	bltz	t0,474 <data_size-0xcddc>
 474:	01110010 	0x1110010
 478:	06110112 	bgezal	s0,8c4 <data_size-0xc98c>
 47c:	0103081b 	0x103081b
 480:	08250813 	j	94204c <data_size+0x934dfc>
 484:	05000000 	bltz	t0,488 <data_size-0xcdc8>
 488:	01110010 	0x1110010
 48c:	06110112 	bgezal	s0,8d8 <data_size-0xc978>
 490:	0103081b 	0x103081b
 494:	08250813 	j	94204c <data_size+0x934dfc>
 498:	05000000 	bltz	t0,49c <data_size-0xcdb4>
 49c:	01110010 	0x1110010
 4a0:	06110112 	bgezal	s0,8ec <data_size-0xc964>
 4a4:	0103081b 	0x103081b
 4a8:	08250813 	j	94204c <data_size+0x934dfc>
 4ac:	05000000 	bltz	t0,4b0 <data_size-0xcda0>
 4b0:	01110010 	0x1110010
 4b4:	06110112 	bgezal	s0,900 <data_size-0xc950>
 4b8:	0103081b 	0x103081b
 4bc:	08250813 	j	94204c <data_size+0x934dfc>
 4c0:	05000000 	bltz	t0,4c4 <data_size-0xcd8c>
 4c4:	01110010 	0x1110010
 4c8:	06110112 	bgezal	s0,914 <data_size-0xc93c>
 4cc:	0103081b 	0x103081b
 4d0:	08250813 	j	94204c <data_size+0x934dfc>
 4d4:	05000000 	bltz	t0,4d8 <data_size-0xcd78>
 4d8:	01110010 	0x1110010
 4dc:	06110112 	bgezal	s0,928 <data_size-0xc928>
 4e0:	0103081b 	0x103081b
 4e4:	08250813 	j	94204c <data_size+0x934dfc>
 4e8:	05000000 	bltz	t0,4ec <data_size-0xcd64>
 4ec:	01110010 	0x1110010
 4f0:	06110112 	bgezal	s0,93c <data_size-0xc914>
 4f4:	0103081b 	0x103081b
 4f8:	08250813 	j	94204c <data_size+0x934dfc>
 4fc:	05000000 	bltz	t0,500 <data_size-0xcd50>
 500:	01110010 	0x1110010
 504:	06110112 	bgezal	s0,950 <data_size-0xc900>
 508:	0103081b 	0x103081b
 50c:	08250813 	j	94204c <data_size+0x934dfc>
 510:	05000000 	bltz	t0,514 <data_size-0xcd3c>
 514:	01110010 	0x1110010
 518:	06110112 	bgezal	s0,964 <data_size-0xc8ec>
 51c:	0103081b 	0x103081b
 520:	08250813 	j	94204c <data_size+0x934dfc>
 524:	05000000 	bltz	t0,528 <data_size-0xcd28>
 528:	01110010 	0x1110010
 52c:	06110112 	bgezal	s0,978 <data_size-0xc8d8>
 530:	0103081b 	0x103081b
 534:	08250813 	j	94204c <data_size+0x934dfc>
 538:	05000000 	bltz	t0,53c <data_size-0xcd14>
 53c:	01110010 	0x1110010
 540:	06110112 	bgezal	s0,98c <data_size-0xc8c4>
 544:	0103081b 	0x103081b
 548:	08250813 	j	94204c <data_size+0x934dfc>
 54c:	05000000 	bltz	t0,550 <data_size-0xcd00>
 550:	01110010 	0x1110010
 554:	06110112 	bgezal	s0,9a0 <data_size-0xc8b0>
 558:	0103081b 	0x103081b
 55c:	08250813 	j	94204c <data_size+0x934dfc>
 560:	05000000 	bltz	t0,564 <data_size-0xccec>
 564:	01110010 	0x1110010
 568:	06110112 	bgezal	s0,9b4 <data_size-0xc89c>
 56c:	0103081b 	0x103081b
 570:	08250813 	j	94204c <data_size+0x934dfc>
 574:	05000000 	bltz	t0,578 <data_size-0xccd8>
 578:	01110010 	0x1110010
 57c:	06110112 	bgezal	s0,9c8 <data_size-0xc888>
 580:	0103081b 	0x103081b
 584:	08250813 	j	94204c <data_size+0x934dfc>
 588:	05000000 	bltz	t0,58c <data_size-0xccc4>
 58c:	01110010 	0x1110010
 590:	06110112 	bgezal	s0,9dc <data_size-0xc874>
 594:	0103081b 	0x103081b
 598:	08250813 	j	94204c <data_size+0x934dfc>
 59c:	05000000 	bltz	t0,5a0 <data_size-0xccb0>
 5a0:	01110010 	0x1110010
 5a4:	06110112 	bgezal	s0,9f0 <data_size-0xc860>
 5a8:	0103081b 	0x103081b
 5ac:	08250813 	j	94204c <data_size+0x934dfc>
 5b0:	05000000 	bltz	t0,5b4 <data_size-0xcc9c>
 5b4:	01110010 	0x1110010
 5b8:	06110112 	bgezal	s0,a04 <data_size-0xc84c>
 5bc:	0103081b 	0x103081b
 5c0:	08250813 	j	94204c <data_size+0x934dfc>
 5c4:	05000000 	bltz	t0,5c8 <data_size-0xcc88>
