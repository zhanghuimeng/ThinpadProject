
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
80000010:	27bd46a8 	addiu	sp,sp,18088
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:69
80000014:	3c1c8001 	lui	gp,0x8001
80000018:	279cc6d0 	addiu	gp,gp,-14640
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
80000400:	277b0dc0 	addiu	k1,k1,3520
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
8000044c:	277b2320 	addiu	k1,k1,8992
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
80000490:	275a1160 	addiu	k0,k0,4448
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
8000063c:	0c00040a 	jal	80001028 <n1_add_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:274
80000640:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:277
80000644:	0c00029e 	jal	80000a78 <n2_addi_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:278
80000648:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:281
8000064c:	0c00031e 	jal	80000c78 <n3_addu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:282
80000650:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:285
80000654:	0c00027c 	jal	800009f0 <n4_addiu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:286
80000658:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:289
8000065c:	0c00041c 	jal	80001070 <n5_sub_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:290
80000660:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:293
80000664:	0c0008b4 	jal	800022d0 <n6_subu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:294
80000668:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:297
8000066c:	0c000256 	jal	80000958 <n7_slt_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:298
80000670:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:301
80000674:	0c0003fa 	jal	80000fe8 <n8_slti_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:302
80000678:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:305
8000067c:	0c00090e 	jal	80002438 <n9_sltu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:306
80000680:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:309
80000684:	0c00042e 	jal	800010b8 <n10_sltiu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:310
80000688:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:329
8000068c:	0c00118c 	jal	80004630 <n15_and_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:330
80000690:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:333
80000694:	0c0010d2 	jal	80004348 <n16_andi_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:334
80000698:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:337
8000069c:	0c00119e 	jal	80004678 <n17_lui_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:338
800006a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:341
800006a4:	0c00043e 	jal	800010f8 <n18_nor_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:342
800006a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:345
800006ac:	0c0008fc 	jal	800023f0 <n19_or_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:346
800006b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:349
800006b4:	0c001168 	jal	800045a0 <n20_ori_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:350
800006b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:353
800006bc:	0c00097a 	jal	800025e8 <n21_xor_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:354
800006c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:357
800006c4:	0c001092 	jal	80004248 <n22_xori_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:358
800006c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:361
800006cc:	0c0010e2 	jal	80004388 <n23_sll_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:362
800006d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:365
800006d4:	0c0008ea 	jal	800023a8 <n24_sllv_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:366
800006d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:369
800006dc:	0c00117a 	jal	800045e8 <n25_sra_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:370
800006e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:373
800006e4:	0c0010f4 	jal	800043d0 <n26_srav_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:374
800006e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:377
800006ec:	0c0003aa 	jal	80000ea8 <n27_srl_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:378
800006f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:381
800006f4:	0c00028e 	jal	80000a38 <n28_srlv_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:382
800006f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:385
800006fc:	0c00105a 	jal	80004168 <n29_beq_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:386
80000700:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:389
80000704:	0c000874 	jal	800021d0 <n30_bne_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:390
80000708:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:393
8000070c:	0c0010a4 	jal	80004290 <n31_bgez_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:394
80000710:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:397
80000714:	0c00112e 	jal	800044b8 <n32_bgtz_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:398
80000718:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:401
8000071c:	0c0002d6 	jal	80000b58 <n33_blez_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:402
80000720:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:405
80000724:	0c0003bc 	jal	80000ef0 <n34_bltz_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:406
80000728:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:417
8000072c:	0c00037a 	jal	80000de8 <n37_j_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:418
80000730:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:421
80000734:	0c000936 	jal	800024d8 <n38_jal_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:422
80000738:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:425
8000073c:	0c00021c 	jal	80000870 <n39_jr_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:426
80000740:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:429
80000744:	0c000330 	jal	80000cc0 <n40_jalr_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:430
80000748:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:433
8000074c:	0c00111c 	jal	80004470 <n41_mfhi_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:434
80000750:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:437
80000754:	0c0002b0 	jal	80000ac0 <n42_mflo_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:438
80000758:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:441
8000075c:	0c000968 	jal	800025a0 <n43_mthi_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:442
80000760:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:445
80000764:	0c00030c 	jal	80000c30 <n44_mtlo_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:446
80000768:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:453
8000076c:	0c00036e 	jal	80000db8 <n46_syscall_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:454
80000770:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:457
80000774:	0c000268 	jal	800009a0 <n47_lb_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:458
80000778:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:461
8000077c:	0c00098c 	jal	80002630 <n48_lbu_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:462
80000780:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:465
80000784:	0c000462 	jal	80001188 <n49_lh_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:466
80000788:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:473
8000078c:	0c001106 	jal	80004418 <n51_lw_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:474
80000790:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:485
80000794:	0c0008d2 	jal	80002348 <n52_sb_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:486
80000798:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:493
8000079c:	0c0002c0 	jal	80000b00 <n54_sw_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:494
800007a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:505
800007a4:	0c000450 	jal	80001140 <n55_eret_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:506
800007a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:507
800007ac:	0c0001ff 	jal	800007fc <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:508
800007b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:509
800007b4:	0c000920 	jal	80002480 <n56_mfc0_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:510
800007b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:511
800007bc:	0c0001ff 	jal	800007fc <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:512
800007c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:513
800007c4:	0c000206 	jal	80000818 <n57_mtc0_test>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:514
800007c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:515
800007cc:	0c0001ff 	jal	800007fc <wait_1s>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:516
800007d0:	00000000 	nop

800007d4 <test_end>:
test_end():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:571
800007d4:	2404005b 	li	a0,91
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:572
800007d8:	10930003 	beq	a0,s3,800007e8 <test_end+0x14>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:573
800007dc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:575
800007e0:	10000004 	b	800007f4 <test_end+0x20>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:576
800007e4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:579
800007e8:	3c08bfd0 	lui	t0,0xbfd0
800007ec:	3508f000 	ori	t0,t0,0xf000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:580
800007f0:	ad000000 	sw	zero,0(t0)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:582
800007f4:	1000ffff 	b	800007f4 <test_end+0x20>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:583
800007f8:	00000000 	nop

800007fc <wait_1s>:
wait_1s():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:587
800007fc:	3c0800f0 	lui	t0,0xf0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:589
80000800:	2508ffff 	addiu	t0,t0,-1
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:590
80000804:	1500fffe 	bnez	t0,80000800 <wait_1s+0x4>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:591
80000808:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:592
8000080c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/start.S:593
80000810:	00000000 	nop
80000814:	00000000 	nop

80000818 <n57_mtc0_test>:
n57_mtc0_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:11
80000818:	3c043900 	lui	a0,0x3900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:12
8000081c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:14
80000820:	3c08bfc0 	lui	t0,0xbfc0
80000824:	3508ffff 	ori	t0,t0,0xffff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:23
80000828:	40096000 	mfc0	t1,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:24
8000082c:	40896000 	mtc0	t1,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:26
80000830:	40096800 	mfc0	t1,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:27
80000834:	40896800 	mtc0	t1,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:29
80000838:	40097000 	mfc0	t1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:30
8000083c:	40887000 	mtc0	t0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:31
80000840:	40107000 	mfc0	s0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:32
80000844:	40897000 	mtc0	t1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:33
80000848:	15100004 	bne	t0,s0,8000085c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:34
8000084c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:36
80000850:	14400002 	bnez	v0,8000085c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:37
80000854:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:39
80000858:	26730001 	addiu	s3,s3,1

8000085c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:42
8000085c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:43
80000860:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:44
80000864:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n57_mtc0.S:45
80000868:	00000000 	nop
inst_error():
8000086c:	00000000 	nop

80000870 <n39_jr_test>:
n39_jr_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:11
80000870:	3c042700 	lui	a0,0x2700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:12
80000874:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:14
80000878:	3c0cc21e 	lui	t4,0xc21e
8000087c:	358c6e78 	ori	t4,t4,0x6e78
80000880:	3c0d0e2e 	lui	t5,0xe2e
80000884:	35ada248 	ori	t5,t5,0xa248
80000888:	24100000 	li	s0,0
8000088c:	24120000 	li	s2,0
80000890:	3c088000 	lui	t0,0x8000
80000894:	250808a8 	addiu	t0,t0,2216
80000898:	3c098000 	lui	t1,0x8000
8000089c:	25290910 	addiu	t1,t1,2320
800008a0:	1000000a 	b	800008cc <n39_jr_test+0x5c>
800008a4:	00000000 	nop
800008a8:	3c10c21e 	lui	s0,0xc21e
800008ac:	36106e78 	ori	s0,s0,0x6e78
800008b0:	01200008 	jr	t1
800008b4:	00000000 	nop
800008b8:	10000017 	b	80000918 <n39_jr_test+0xa8>
800008bc:	00000000 	nop
800008c0:	00000021 	move	zero,zero
800008c4:	00000021 	move	zero,zero
800008c8:	00000021 	move	zero,zero
800008cc:	01000008 	jr	t0
800008d0:	00000000 	nop
800008d4:	10000010 	b	80000918 <n39_jr_test+0xa8>
800008d8:	00000000 	nop
800008dc:	00000021 	move	zero,zero
800008e0:	00000021 	move	zero,zero
800008e4:	00000021 	move	zero,zero
800008e8:	00000021 	move	zero,zero
800008ec:	00000021 	move	zero,zero
800008f0:	00000021 	move	zero,zero
800008f4:	00000021 	move	zero,zero
800008f8:	00000021 	move	zero,zero
800008fc:	00000021 	move	zero,zero
80000900:	00000021 	move	zero,zero
80000904:	00000021 	move	zero,zero
80000908:	00000021 	move	zero,zero
8000090c:	00000021 	move	zero,zero
80000910:	3c120e2e 	lui	s2,0xe2e
80000914:	3652a248 	ori	s2,s2,0xa248
80000918:	00000000 	nop
8000091c:	3c14c21e 	lui	s4,0xc21e
80000920:	36946e78 	ori	s4,s4,0x6e78
80000924:	16140008 	bne	s0,s4,80000948 <inst_error>
80000928:	00000000 	nop
8000092c:	3c150e2e 	lui	s5,0xe2e
80000930:	36b5a248 	ori	s5,s5,0xa248
80000934:	16550004 	bne	s2,s5,80000948 <inst_error>
80000938:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:16
8000093c:	14400002 	bnez	v0,80000948 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:17
80000940:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:19
80000944:	26730001 	addiu	s3,s3,1

80000948 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:22
80000948:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:23
8000094c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:24
80000950:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n39_jr.S:25
80000954:	00000000 	nop

80000958 <n7_slt_test>:
n7_slt_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:11
80000958:	3c040700 	lui	a0,0x700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:12
8000095c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:14
80000960:	3c087245 	lui	t0,0x7245
80000964:	3508316a 	ori	t0,t0,0x316a
80000968:	3c097835 	lui	t1,0x7835
8000096c:	352906f0 	ori	t1,t1,0x6f0
80000970:	0109802a 	slt	s0,t0,t1
80000974:	24120001 	li	s2,1
80000978:	16120004 	bne	s0,s2,8000098c <inst_error>
8000097c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:16
80000980:	14400002 	bnez	v0,8000098c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:17
80000984:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:19
80000988:	26730001 	addiu	s3,s3,1

8000098c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:22
8000098c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:23
80000990:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:24
80000994:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n7_slt.S:25
80000998:	00000000 	nop
inst_error():
8000099c:	00000000 	nop

800009a0 <n47_lb_test>:
n47_lb_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:11
800009a0:	3c042f00 	lui	a0,0x2f00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:12
800009a4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:14
800009a8:	3c09c83b 	lui	t1,0xc83b
800009ac:	35290be0 	ori	t1,t1,0xbe0
800009b0:	3c088002 	lui	t0,0x8002
800009b4:	35086760 	ori	t0,t0,0x6760
800009b8:	240a37a1 	li	t2,14241
800009bc:	240c37a0 	li	t4,14240
800009c0:	ad0937a0 	sw	t1,14240(t0)
800009c4:	811037a1 	lb	s0,14241(t0)
800009c8:	2412000b 	li	s2,11
800009cc:	16120004 	bne	s0,s2,800009e0 <inst_error>
800009d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:16
800009d4:	14400002 	bnez	v0,800009e0 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:17
800009d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:19
800009dc:	26730001 	addiu	s3,s3,1

800009e0 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:22
800009e0:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:23
800009e4:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:24
800009e8:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n47_lb.S:25
800009ec:	00000000 	nop

800009f0 <n4_addiu_test>:
n4_addiu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:11
800009f0:	3c040400 	lui	a0,0x400
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:12
800009f4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:14
800009f8:	3c08fb26 	lui	t0,0xfb26
800009fc:	35083d10 	ori	t0,t0,0x3d10
80000a00:	3409ec96 	li	t1,0xec96
80000a04:	2510ec96 	addiu	s0,t0,-4970
80000a08:	3c12fb26 	lui	s2,0xfb26
80000a0c:	365229a6 	ori	s2,s2,0x29a6
80000a10:	16120004 	bne	s0,s2,80000a24 <inst_error>
80000a14:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:16
80000a18:	14400002 	bnez	v0,80000a24 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:17
80000a1c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:19
80000a20:	26730001 	addiu	s3,s3,1

80000a24 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:22
80000a24:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:23
80000a28:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:24
80000a2c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n4_addiu.S:25
80000a30:	00000000 	nop
inst_error():
80000a34:	00000000 	nop

80000a38 <n28_srlv_test>:
n28_srlv_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:11
80000a38:	3c041c00 	lui	a0,0x1c00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:12
80000a3c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:14
80000a40:	3c081f8f 	lui	t0,0x1f8f
80000a44:	35086000 	ori	t0,t0,0x6000
80000a48:	2409001c 	li	t1,28
80000a4c:	01288006 	srlv	s0,t0,t1
80000a50:	24120001 	li	s2,1
80000a54:	16120004 	bne	s0,s2,80000a68 <inst_error>
80000a58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:16
80000a5c:	14400002 	bnez	v0,80000a68 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:17
80000a60:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:19
80000a64:	26730001 	addiu	s3,s3,1

80000a68 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:22
80000a68:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:23
80000a6c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:24
80000a70:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n28_srlv.S:25
80000a74:	00000000 	nop

80000a78 <n2_addi_test>:
n2_addi_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:11
80000a78:	3c040200 	lui	a0,0x200
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:12
80000a7c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:14
80000a80:	3c080151 	lui	t0,0x151
80000a84:	3508e5c0 	ori	t0,t0,0xe5c0
80000a88:	3409b945 	li	t1,0xb945
80000a8c:	2110b945 	addi	s0,t0,-18107
80000a90:	3c120151 	lui	s2,0x151
80000a94:	36529f05 	ori	s2,s2,0x9f05
80000a98:	16120004 	bne	s0,s2,80000aac <inst_error>
80000a9c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:16
80000aa0:	14400002 	bnez	v0,80000aac <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:17
80000aa4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:19
80000aa8:	26730001 	addiu	s3,s3,1

80000aac <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:22
80000aac:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:23
80000ab0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:24
80000ab4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n2_addi.S:25
80000ab8:	00000000 	nop
inst_error():
80000abc:	00000000 	nop

80000ac0 <n42_mflo_test>:
n42_mflo_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:11
80000ac0:	3c042a00 	lui	a0,0x2a00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:12
80000ac4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:14
80000ac8:	3c0808fc 	lui	t0,0x8fc
80000acc:	01000013 	mtlo	t0
80000ad0:	00008012 	mflo	s0
80000ad4:	3c1208fc 	lui	s2,0x8fc
80000ad8:	16120004 	bne	s0,s2,80000aec <inst_error>
80000adc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:16
80000ae0:	14400002 	bnez	v0,80000aec <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:17
80000ae4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:19
80000ae8:	26730001 	addiu	s3,s3,1

80000aec <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:22
80000aec:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:23
80000af0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:24
80000af4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n42_mflo.S:25
80000af8:	00000000 	nop
inst_error():
80000afc:	00000000 	nop

80000b00 <n54_sw_test>:
n54_sw_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:11
80000b00:	3c043600 	lui	a0,0x3600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:12
80000b04:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:14
80000b08:	3c096175 	lui	t1,0x6175
80000b0c:	35294443 	ori	t1,t1,0x4443
80000b10:	3c088002 	lui	t0,0x8002
80000b14:	350877a0 	ori	t0,t0,0x77a0
80000b18:	240a7b14 	li	t2,31508
80000b1c:	240c7b14 	li	t4,31508
80000b20:	ad097b14 	sw	t1,31508(t0)
80000b24:	8d107b14 	lw	s0,31508(t0)
80000b28:	3c126175 	lui	s2,0x6175
80000b2c:	36524443 	ori	s2,s2,0x4443
80000b30:	16120004 	bne	s0,s2,80000b44 <inst_error>
80000b34:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:17
80000b38:	14400002 	bnez	v0,80000b44 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:18
80000b3c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:20
80000b40:	26730001 	addiu	s3,s3,1

80000b44 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:23
80000b44:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:24
80000b48:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:25
80000b4c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n54_sw.S:26
80000b50:	00000000 	nop
inst_error():
80000b54:	00000000 	nop

80000b58 <n33_blez_test>:
n33_blez_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:11
80000b58:	3c042100 	lui	a0,0x2100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:12
80000b5c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:14
80000b60:	3c0c6ad0 	lui	t4,0x6ad0
80000b64:	358ca0b8 	ori	t4,t4,0xa0b8
80000b68:	3c0d8f08 	lui	t5,0x8f08
80000b6c:	35addb03 	ori	t5,t5,0xdb03
80000b70:	24100000 	li	s0,0
80000b74:	24120000 	li	s2,0
80000b78:	10000011 	b	80000bc0 <n33_blez_test+0x68>
80000b7c:	00000000 	nop
80000b80:	3c106ad0 	lui	s0,0x6ad0
80000b84:	3610a0b8 	ori	s0,s0,0xa0b8
80000b88:	19000017 	blez	t0,80000be8 <n33_blez_test+0x90>
80000b8c:	00000000 	nop
80000b90:	10000017 	b	80000bf0 <n33_blez_test+0x98>
80000b94:	00000000 	nop
80000b98:	00000021 	move	zero,zero
80000b9c:	00000021 	move	zero,zero
80000ba0:	00000021 	move	zero,zero
80000ba4:	00000021 	move	zero,zero
80000ba8:	00000021 	move	zero,zero
80000bac:	00000021 	move	zero,zero
80000bb0:	00000021 	move	zero,zero
80000bb4:	00000021 	move	zero,zero
80000bb8:	00000021 	move	zero,zero
80000bbc:	00000021 	move	zero,zero
80000bc0:	3c0895b9 	lui	t0,0x95b9
80000bc4:	3508206f 	ori	t0,t0,0x206f
80000bc8:	1900ffed 	blez	t0,80000b80 <n33_blez_test+0x28>
80000bcc:	00000000 	nop
80000bd0:	10000007 	b	80000bf0 <n33_blez_test+0x98>
80000bd4:	00000000 	nop
80000bd8:	00000021 	move	zero,zero
80000bdc:	00000021 	move	zero,zero
80000be0:	00000021 	move	zero,zero
80000be4:	00000021 	move	zero,zero
80000be8:	3c128f08 	lui	s2,0x8f08
80000bec:	3652db03 	ori	s2,s2,0xdb03
80000bf0:	00000000 	nop
80000bf4:	3c146ad0 	lui	s4,0x6ad0
80000bf8:	3694a0b8 	ori	s4,s4,0xa0b8
80000bfc:	16140008 	bne	s0,s4,80000c20 <inst_error>
80000c00:	00000000 	nop
80000c04:	3c158f08 	lui	s5,0x8f08
80000c08:	36b5db03 	ori	s5,s5,0xdb03
80000c0c:	16550004 	bne	s2,s5,80000c20 <inst_error>
80000c10:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:16
80000c14:	14400002 	bnez	v0,80000c20 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:17
80000c18:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:19
80000c1c:	26730001 	addiu	s3,s3,1

80000c20 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:22
80000c20:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:23
80000c24:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:24
80000c28:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n33_blez.S:25
80000c2c:	00000000 	nop

80000c30 <n44_mtlo_test>:
n44_mtlo_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:11
80000c30:	3c042c00 	lui	a0,0x2c00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:12
80000c34:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:14
80000c38:	3c08c10d 	lui	t0,0xc10d
80000c3c:	350876f1 	ori	t0,t0,0x76f1
80000c40:	01000013 	mtlo	t0
80000c44:	00008012 	mflo	s0
80000c48:	3c12c10d 	lui	s2,0xc10d
80000c4c:	365276f1 	ori	s2,s2,0x76f1
80000c50:	16120004 	bne	s0,s2,80000c64 <inst_error>
80000c54:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:17
80000c58:	14400002 	bnez	v0,80000c64 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:18
80000c5c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:20
80000c60:	26730001 	addiu	s3,s3,1

80000c64 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:23
80000c64:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:24
80000c68:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:25
80000c6c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n44_mtlo.S:26
80000c70:	00000000 	nop
inst_error():
80000c74:	00000000 	nop

80000c78 <n3_addu_test>:
n3_addu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:11
80000c78:	3c040300 	lui	a0,0x300
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:12
80000c7c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:14
80000c80:	3c081ade 	lui	t0,0x1ade
80000c84:	3508f300 	ori	t0,t0,0xf300
80000c88:	3c0951dd 	lui	t1,0x51dd
80000c8c:	352958de 	ori	t1,t1,0x58de
80000c90:	01098021 	addu	s0,t0,t1
80000c94:	3c126cbc 	lui	s2,0x6cbc
80000c98:	36524bde 	ori	s2,s2,0x4bde
80000c9c:	16120004 	bne	s0,s2,80000cb0 <inst_error>
80000ca0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:16
80000ca4:	14400002 	bnez	v0,80000cb0 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:17
80000ca8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:19
80000cac:	26730001 	addiu	s3,s3,1

80000cb0 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:22
80000cb0:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:23
80000cb4:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:24
80000cb8:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n3_addu.S:25
80000cbc:	00000000 	nop

80000cc0 <n40_jalr_test>:
n40_jalr_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:11
80000cc0:	3c042800 	lui	a0,0x2800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:12
80000cc4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:14
80000cc8:	001fb021 	addu	s6,zero,ra
80000ccc:	3c0c6e6b 	lui	t4,0x6e6b
80000cd0:	358c362a 	ori	t4,t4,0x362a
80000cd4:	3c0d240b 	lui	t5,0x240b
80000cd8:	35adaf26 	ori	t5,t5,0xaf26
80000cdc:	24100000 	li	s0,0
80000ce0:	3c088000 	lui	t0,0x8000
80000ce4:	25080cfc 	addiu	t0,t0,3324
80000ce8:	3c098000 	lui	t1,0x8000
80000cec:	25290d54 	addiu	t1,t1,3412
80000cf0:	24120000 	li	s2,0
80000cf4:	10000011 	b	80000d3c <n40_jalr_test+0x7c>
80000cf8:	00000000 	nop
80000cfc:	3c106e6b 	lui	s0,0x6e6b
80000d00:	3610362a 	ori	s0,s0,0x362a
80000d04:	0120f809 	jalr	t1
80000d08:	00000000 	nop
80000d0c:	10000013 	b	80000d5c <n40_jalr_test+0x9c>
80000d10:	00000000 	nop
80000d14:	00000021 	move	zero,zero
80000d18:	00000021 	move	zero,zero
80000d1c:	00000021 	move	zero,zero
80000d20:	00000021 	move	zero,zero
80000d24:	00000021 	move	zero,zero
80000d28:	00000021 	move	zero,zero
80000d2c:	00000021 	move	zero,zero
80000d30:	00000021 	move	zero,zero
80000d34:	00000021 	move	zero,zero
80000d38:	00000021 	move	zero,zero
80000d3c:	0100f809 	jalr	t0
80000d40:	00000000 	nop
80000d44:	10000005 	b	80000d5c <n40_jalr_test+0x9c>
80000d48:	00000000 	nop
80000d4c:	00000021 	move	zero,zero
80000d50:	00000021 	move	zero,zero
80000d54:	3c12240b 	lui	s2,0x240b
80000d58:	3652af26 	ori	s2,s2,0xaf26
80000d5c:	001fa021 	addu	s4,zero,ra
80000d60:	0016f821 	addu	ra,zero,s6
80000d64:	3c158000 	lui	s5,0x8000
80000d68:	26b50d04 	addiu	s5,s5,3332
80000d6c:	3c0d6e6b 	lui	t5,0x6e6b
80000d70:	35ad362a 	ori	t5,t5,0x362a
80000d74:	160d000b 	bne	s0,t5,80000da4 <inst_error>
80000d78:	00000000 	nop
80000d7c:	3c0c240b 	lui	t4,0x240b
80000d80:	358caf26 	ori	t4,t4,0xaf26
80000d84:	164c0007 	bne	s2,t4,80000da4 <inst_error>
80000d88:	00000000 	nop
80000d8c:	26b50008 	addiu	s5,s5,8
80000d90:	16950004 	bne	s4,s5,80000da4 <inst_error>
80000d94:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:16
80000d98:	14400002 	bnez	v0,80000da4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:17
80000d9c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:19
80000da0:	26730001 	addiu	s3,s3,1

80000da4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:22
80000da4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:23
80000da8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:24
80000dac:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n40_jalr.S:25
80000db0:	00000000 	nop
inst_error():
80000db4:	00000000 	nop

80000db8 <n46_syscall_test>:
n46_syscall_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:11
80000db8:	3c042e00 	lui	a0,0x2e00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:12
80000dbc:	24020001 	li	v0,1

80000dc0 <syscall_pc>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:16
80000dc0:	0000000c 	syscall
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:18
80000dc4:	3c1000ff 	lui	s0,0xff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:19
80000dc8:	14500002 	bne	v0,s0,80000dd4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:20
80000dcc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:22
80000dd0:	26730001 	addiu	s3,s3,1

80000dd4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:25
80000dd4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:26
80000dd8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:27
80000ddc:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n46_syscall.S:28
80000de0:	00000000 	nop
inst_error():
80000de4:	00000000 	nop

80000de8 <n37_j_test>:
n37_j_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:11
80000de8:	3c042500 	lui	a0,0x2500
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:12
80000dec:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:14
80000df0:	3c0c42ea 	lui	t4,0x42ea
80000df4:	358c6edf 	ori	t4,t4,0x6edf
80000df8:	3c0d2407 	lui	t5,0x2407
80000dfc:	35ad1ba8 	ori	t5,t5,0x1ba8
80000e00:	24100000 	li	s0,0
80000e04:	24120000 	li	s2,0
80000e08:	1000000a 	b	80000e34 <n37_j_test+0x4c>
80000e0c:	00000000 	nop
80000e10:	3c1042ea 	lui	s0,0x42ea
80000e14:	36106edf 	ori	s0,s0,0x6edf
80000e18:	08000398 	j	80000e60 <n37_j_test+0x78>
80000e1c:	00000000 	nop
80000e20:	10000011 	b	80000e68 <n37_j_test+0x80>
80000e24:	00000000 	nop
80000e28:	00000021 	move	zero,zero
80000e2c:	00000021 	move	zero,zero
80000e30:	00000021 	move	zero,zero
80000e34:	08000384 	j	80000e10 <n37_j_test+0x28>
80000e38:	00000000 	nop
80000e3c:	1000000a 	b	80000e68 <n37_j_test+0x80>
80000e40:	00000000 	nop
80000e44:	00000021 	move	zero,zero
80000e48:	00000021 	move	zero,zero
80000e4c:	00000021 	move	zero,zero
80000e50:	00000021 	move	zero,zero
80000e54:	00000021 	move	zero,zero
80000e58:	00000021 	move	zero,zero
80000e5c:	00000021 	move	zero,zero
80000e60:	3c122407 	lui	s2,0x2407
80000e64:	36521ba8 	ori	s2,s2,0x1ba8
80000e68:	00000000 	nop
80000e6c:	3c1442ea 	lui	s4,0x42ea
80000e70:	36946edf 	ori	s4,s4,0x6edf
80000e74:	16140008 	bne	s0,s4,80000e98 <inst_error>
80000e78:	00000000 	nop
80000e7c:	3c152407 	lui	s5,0x2407
80000e80:	36b51ba8 	ori	s5,s5,0x1ba8
80000e84:	16550004 	bne	s2,s5,80000e98 <inst_error>
80000e88:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:16
80000e8c:	14400002 	bnez	v0,80000e98 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:17
80000e90:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:19
80000e94:	26730001 	addiu	s3,s3,1

80000e98 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:22
80000e98:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:23
80000e9c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:24
80000ea0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n37_j.S:25
80000ea4:	00000000 	nop

80000ea8 <n27_srl_test>:
n27_srl_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:11
80000ea8:	3c041b00 	lui	a0,0x1b00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:12
80000eac:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:14
80000eb0:	3c088e8f 	lui	t0,0x8e8f
80000eb4:	3508fce0 	ori	t0,t0,0xfce0
80000eb8:	24090002 	li	t1,2
80000ebc:	00088082 	srl	s0,t0,0x2
80000ec0:	3c1223a3 	lui	s2,0x23a3
80000ec4:	3652ff38 	ori	s2,s2,0xff38
80000ec8:	16120004 	bne	s0,s2,80000edc <inst_error>
80000ecc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:16
80000ed0:	14400002 	bnez	v0,80000edc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:17
80000ed4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:19
80000ed8:	26730001 	addiu	s3,s3,1

80000edc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:22
80000edc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:23
80000ee0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:24
80000ee4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n27_srl.S:25
80000ee8:	00000000 	nop
inst_error():
80000eec:	00000000 	nop

80000ef0 <n34_bltz_test>:
n34_bltz_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:11
80000ef0:	3c042200 	lui	a0,0x2200
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:12
80000ef4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:14
80000ef8:	3c0c933a 	lui	t4,0x933a
80000efc:	358c7610 	ori	t4,t4,0x7610
80000f00:	3c0dee03 	lui	t5,0xee03
80000f04:	35ad4360 	ori	t5,t5,0x4360
80000f08:	24100000 	li	s0,0
80000f0c:	24120000 	li	s2,0
80000f10:	10000010 	b	80000f54 <n34_bltz_test+0x64>
80000f14:	00000000 	nop
80000f18:	3c10933a 	lui	s0,0x933a
80000f1c:	36107610 	ori	s0,s0,0x7610
80000f20:	0500001f 	bltz	t0,80000fa0 <n34_bltz_test+0xb0>
80000f24:	00000000 	nop
80000f28:	1000001f 	b	80000fa8 <n34_bltz_test+0xb8>
80000f2c:	00000000 	nop
80000f30:	00000021 	move	zero,zero
80000f34:	00000021 	move	zero,zero
80000f38:	00000021 	move	zero,zero
80000f3c:	00000021 	move	zero,zero
80000f40:	00000021 	move	zero,zero
80000f44:	00000021 	move	zero,zero
80000f48:	00000021 	move	zero,zero
80000f4c:	00000021 	move	zero,zero
80000f50:	00000021 	move	zero,zero
80000f54:	3c089e0d 	lui	t0,0x9e0d
80000f58:	35087d08 	ori	t0,t0,0x7d08
80000f5c:	0500ffee 	bltz	t0,80000f18 <n34_bltz_test+0x28>
80000f60:	00000000 	nop
80000f64:	10000010 	b	80000fa8 <n34_bltz_test+0xb8>
80000f68:	00000000 	nop
80000f6c:	00000021 	move	zero,zero
80000f70:	00000021 	move	zero,zero
80000f74:	00000021 	move	zero,zero
80000f78:	00000021 	move	zero,zero
80000f7c:	00000021 	move	zero,zero
80000f80:	00000021 	move	zero,zero
80000f84:	00000021 	move	zero,zero
80000f88:	00000021 	move	zero,zero
80000f8c:	00000021 	move	zero,zero
80000f90:	00000021 	move	zero,zero
80000f94:	00000021 	move	zero,zero
80000f98:	00000021 	move	zero,zero
80000f9c:	00000021 	move	zero,zero
80000fa0:	3c12ee03 	lui	s2,0xee03
80000fa4:	36524360 	ori	s2,s2,0x4360
80000fa8:	00000000 	nop
80000fac:	3c14933a 	lui	s4,0x933a
80000fb0:	36947610 	ori	s4,s4,0x7610
80000fb4:	16140008 	bne	s0,s4,80000fd8 <inst_error>
80000fb8:	00000000 	nop
80000fbc:	3c15ee03 	lui	s5,0xee03
80000fc0:	36b54360 	ori	s5,s5,0x4360
80000fc4:	16550004 	bne	s2,s5,80000fd8 <inst_error>
80000fc8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:16
80000fcc:	14400002 	bnez	v0,80000fd8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:17
80000fd0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:19
80000fd4:	26730001 	addiu	s3,s3,1

80000fd8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:22
80000fd8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:23
80000fdc:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:24
80000fe0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n34_bltz.S:25
80000fe4:	00000000 	nop

80000fe8 <n8_slti_test>:
n8_slti_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:11
80000fe8:	3c040800 	lui	a0,0x800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:12
80000fec:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:14
80000ff0:	3c08d9d1 	lui	t0,0xd9d1
80000ff4:	350829b5 	ori	t0,t0,0x29b5
80000ff8:	24090988 	li	t1,2440
80000ffc:	29100988 	slti	s0,t0,2440
80001000:	24120001 	li	s2,1
80001004:	16120004 	bne	s0,s2,80001018 <inst_error>
80001008:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:16
8000100c:	14400002 	bnez	v0,80001018 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:17
80001010:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:19
80001014:	26730001 	addiu	s3,s3,1

80001018 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:22
80001018:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:23
8000101c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:24
80001020:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n8_slti.S:25
80001024:	00000000 	nop

80001028 <n1_add_test>:
n1_add_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:11
80001028:	3c040100 	lui	a0,0x100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:12
8000102c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:14
80001030:	3c080480 	lui	t0,0x480
80001034:	3508ff04 	ori	t0,t0,0xff04
80001038:	3c094093 	lui	t1,0x4093
8000103c:	35293204 	ori	t1,t1,0x3204
80001040:	01098020 	add	s0,t0,t1
80001044:	3c124514 	lui	s2,0x4514
80001048:	36523108 	ori	s2,s2,0x3108
8000104c:	16120004 	bne	s0,s2,80001060 <inst_error>
80001050:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:16
80001054:	14400002 	bnez	v0,80001060 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:17
80001058:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:19
8000105c:	26730001 	addiu	s3,s3,1

80001060 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:22
80001060:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:23
80001064:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:24
80001068:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n1_add.S:25
8000106c:	00000000 	nop

80001070 <n5_sub_test>:
n5_sub_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:11
80001070:	3c040500 	lui	a0,0x500
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:12
80001074:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:14
80001078:	3c0814ff 	lui	t0,0x14ff
8000107c:	3508b0e6 	ori	t0,t0,0xb0e6
80001080:	3c09088c 	lui	t1,0x88c
80001084:	3529b248 	ori	t1,t1,0xb248
80001088:	01098022 	sub	s0,t0,t1
8000108c:	3c120c72 	lui	s2,0xc72
80001090:	3652fe9e 	ori	s2,s2,0xfe9e
80001094:	16120004 	bne	s0,s2,800010a8 <inst_error>
80001098:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:16
8000109c:	14400002 	bnez	v0,800010a8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:17
800010a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:19
800010a4:	26730001 	addiu	s3,s3,1

800010a8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:22
800010a8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:23
800010ac:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:24
800010b0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n5_sub.S:25
800010b4:	00000000 	nop

800010b8 <n10_sltiu_test>:
n10_sltiu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:11
800010b8:	3c040a00 	lui	a0,0xa00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:12
800010bc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:14
800010c0:	3c08c254 	lui	t0,0xc254
800010c4:	3508e3d8 	ori	t0,t0,0xe3d8
800010c8:	3409f469 	li	t1,0xf469
800010cc:	2d10f469 	sltiu	s0,t0,-2967
800010d0:	24120001 	li	s2,1
800010d4:	16120004 	bne	s0,s2,800010e8 <inst_error>
800010d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:16
800010dc:	14400002 	bnez	v0,800010e8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:17
800010e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:19
800010e4:	26730001 	addiu	s3,s3,1

800010e8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:22
800010e8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:23
800010ec:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:24
800010f0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n10_sltiu.S:25
800010f4:	00000000 	nop

800010f8 <n18_nor_test>:
n18_nor_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:11
800010f8:	3c041200 	lui	a0,0x1200
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:12
800010fc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:14
80001100:	3c08ad9c 	lui	t0,0xad9c
80001104:	3508c00e 	ori	t0,t0,0xc00e
80001108:	3c0938b7 	lui	t1,0x38b7
8000110c:	3529ec24 	ori	t1,t1,0xec24
80001110:	01098027 	nor	s0,t0,t1
80001114:	3c124240 	lui	s2,0x4240
80001118:	365213d1 	ori	s2,s2,0x13d1
8000111c:	16120004 	bne	s0,s2,80001130 <inst_error>
80001120:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:16
80001124:	14400002 	bnez	v0,80001130 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:17
80001128:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:19
8000112c:	26730001 	addiu	s3,s3,1

80001130 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:22
80001130:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:23
80001134:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:24
80001138:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n18_nor.S:25
8000113c:	00000000 	nop

80001140 <n55_eret_test>:
n55_eret_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:11
80001140:	3c043700 	lui	a0,0x3700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:12
80001144:	24020003 	li	v0,3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:14
80001148:	3c087fff 	lui	t0,0x7fff
8000114c:	3508ffff 	ori	t0,t0,0xffff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:15
80001150:	21087fff 	addi	t0,t0,32767
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:16
80001154:	3c021234 	lui	v0,0x1234
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:17
80001158:	3c028765 	lui	v0,0x8765
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:18
8000115c:	3c025678 	lui	v0,0x5678

80001160 <eret_ret_pc>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:21
80001160:	3c024321 	lui	v0,0x4321
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:23
80001164:	3c100f0f 	lui	s0,0xf0f
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:24
80001168:	14500002 	bne	v0,s0,80001174 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:25
8000116c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:27
80001170:	26730001 	addiu	s3,s3,1

80001174 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:30
80001174:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:31
80001178:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:32
8000117c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n55_eret.S:33
80001180:	00000000 	nop
inst_error():
80001184:	00000000 	nop

80001188 <n49_lh_test>:
n49_lh_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:11
80001188:	3c043100 	lui	a0,0x3100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:12
8000118c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:14
80001190:	3c095184 	lui	t1,0x5184
80001194:	35292560 	ori	t1,t1,0x2560
80001198:	3c088002 	lui	t0,0x8002
8000119c:	35082bc4 	ori	t0,t0,0x2bc4
800011a0:	240a127c 	li	t2,4732
800011a4:	240c127c 	li	t4,4732
800011a8:	ad09127c 	sw	t1,4732(t0)
800011ac:	8510127c 	lh	s0,4732(t0)
800011b0:	24122560 	li	s2,9568
800011b4:	16120401 	bne	s0,s2,800021bc <inst_error>
800011b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:15
800011bc:	3c092516 	lui	t1,0x2516
800011c0:	3529116e 	ori	t1,t1,0x116e
800011c4:	3c088002 	lui	t0,0x8002
800011c8:	35082220 	ori	t0,t0,0x2220
800011cc:	340aa890 	li	t2,0xa890
800011d0:	340ca890 	li	t4,0xa890
800011d4:	3c010001 	lui	at,0x1
800011d8:	00280821 	addu	at,at,t0
800011dc:	ac29a890 	sw	t1,-22384(at)
800011e0:	3c100001 	lui	s0,0x1
800011e4:	02088021 	addu	s0,s0,t0
800011e8:	8610a890 	lh	s0,-22384(s0)
800011ec:	2412116e 	li	s2,4462
800011f0:	161203f2 	bne	s0,s2,800021bc <inst_error>
800011f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:16
800011f8:	3c094932 	lui	t1,0x4932
800011fc:	3529330c 	ori	t1,t1,0x330c
80001200:	3c088002 	lui	t0,0x8002
80001204:	35083810 	ori	t0,t0,0x3810
80001208:	340a8526 	li	t2,0x8526
8000120c:	340c8524 	li	t4,0x8524
80001210:	3c010001 	lui	at,0x1
80001214:	00280821 	addu	at,at,t0
80001218:	ac298524 	sw	t1,-31452(at)
8000121c:	3c100001 	lui	s0,0x1
80001220:	02088021 	addu	s0,s0,t0
80001224:	86108526 	lh	s0,-31450(s0)
80001228:	24124932 	li	s2,18738
8000122c:	161203e3 	bne	s0,s2,800021bc <inst_error>
80001230:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:17
80001234:	3c09be4d 	lui	t1,0xbe4d
80001238:	35299ac8 	ori	t1,t1,0x9ac8
8000123c:	3c088002 	lui	t0,0x8002
80001240:	3508ac60 	ori	t0,t0,0xac60
80001244:	240a0092 	li	t2,146
80001248:	240c0090 	li	t4,144
8000124c:	ad090090 	sw	t1,144(t0)
80001250:	85100092 	lh	s0,146(t0)
80001254:	2412be4d 	li	s2,-16819
80001258:	161203d8 	bne	s0,s2,800021bc <inst_error>
8000125c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:18
80001260:	3c095f0c 	lui	t1,0x5f0c
80001264:	35290856 	ori	t1,t1,0x856
80001268:	3c088002 	lui	t0,0x8002
8000126c:	35081800 	ori	t0,t0,0x1800
80001270:	340a8964 	li	t2,0x8964
80001274:	340c8964 	li	t4,0x8964
80001278:	3c010001 	lui	at,0x1
8000127c:	00280821 	addu	at,at,t0
80001280:	ac298964 	sw	t1,-30364(at)
80001284:	3c100001 	lui	s0,0x1
80001288:	02088021 	addu	s0,s0,t0
8000128c:	86108964 	lh	s0,-30364(s0)
80001290:	24120856 	li	s2,2134
80001294:	161203c9 	bne	s0,s2,800021bc <inst_error>
80001298:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:19
8000129c:	3c09bfa5 	lui	t1,0xbfa5
800012a0:	3529bc80 	ori	t1,t1,0xbc80
800012a4:	3c088002 	lui	t0,0x8002
800012a8:	35089ca0 	ori	t0,t0,0x9ca0
800012ac:	240a2950 	li	t2,10576
800012b0:	240c2950 	li	t4,10576
800012b4:	ad092950 	sw	t1,10576(t0)
800012b8:	85102950 	lh	s0,10576(t0)
800012bc:	2412bc80 	li	s2,-17280
800012c0:	161203be 	bne	s0,s2,800021bc <inst_error>
800012c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:20
800012c8:	3c0967b0 	lui	t1,0x67b0
800012cc:	3529ca80 	ori	t1,t1,0xca80
800012d0:	3c088002 	lui	t0,0x8002
800012d4:	3508b258 	ori	t0,t0,0xb258
800012d8:	240a2f74 	li	t2,12148
800012dc:	240c2f74 	li	t4,12148
800012e0:	ad092f74 	sw	t1,12148(t0)
800012e4:	85102f74 	lh	s0,12148(t0)
800012e8:	2412ca80 	li	s2,-13696
800012ec:	161203b3 	bne	s0,s2,800021bc <inst_error>
800012f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:21
800012f4:	3c09b0c4 	lui	t1,0xb0c4
800012f8:	3529ee88 	ori	t1,t1,0xee88
800012fc:	3c088002 	lui	t0,0x8002
80001300:	35080a08 	ori	t0,t0,0xa08
80001304:	240a29d4 	li	t2,10708
80001308:	240c29d4 	li	t4,10708
8000130c:	ad0929d4 	sw	t1,10708(t0)
80001310:	851029d4 	lh	s0,10708(t0)
80001314:	2412ee88 	li	s2,-4472
80001318:	161203a8 	bne	s0,s2,800021bc <inst_error>
8000131c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:22
80001320:	3c09a28f 	lui	t1,0xa28f
80001324:	3529bedc 	ori	t1,t1,0xbedc
80001328:	3c088002 	lui	t0,0x8002
8000132c:	3508130c 	ori	t0,t0,0x130c
80001330:	340acf28 	li	t2,0xcf28
80001334:	340ccf28 	li	t4,0xcf28
80001338:	3c010001 	lui	at,0x1
8000133c:	00280821 	addu	at,at,t0
80001340:	ac29cf28 	sw	t1,-12504(at)
80001344:	3c100001 	lui	s0,0x1
80001348:	02088021 	addu	s0,s0,t0
8000134c:	8610cf28 	lh	s0,-12504(s0)
80001350:	2412bedc 	li	s2,-16676
80001354:	16120399 	bne	s0,s2,800021bc <inst_error>
80001358:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:23
8000135c:	3c090158 	lui	t1,0x158
80001360:	35299400 	ori	t1,t1,0x9400
80001364:	3c088002 	lui	t0,0x8002
80001368:	35083568 	ori	t0,t0,0x3568
8000136c:	340a9f36 	li	t2,0x9f36
80001370:	340c9f34 	li	t4,0x9f34
80001374:	3c010001 	lui	at,0x1
80001378:	00280821 	addu	at,at,t0
8000137c:	ac299f34 	sw	t1,-24780(at)
80001380:	3c100001 	lui	s0,0x1
80001384:	02088021 	addu	s0,s0,t0
80001388:	86109f36 	lh	s0,-24778(s0)
8000138c:	24120158 	li	s2,344
80001390:	1612038a 	bne	s0,s2,800021bc <inst_error>
80001394:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:24
80001398:	3c092048 	lui	t1,0x2048
8000139c:	35293e02 	ori	t1,t1,0x3e02
800013a0:	3c088002 	lui	t0,0x8002
800013a4:	3508d600 	ori	t0,t0,0xd600
800013a8:	240a1e7c 	li	t2,7804
800013ac:	240c1e7c 	li	t4,7804
800013b0:	ad091e7c 	sw	t1,7804(t0)
800013b4:	85101e7c 	lh	s0,7804(t0)
800013b8:	24123e02 	li	s2,15874
800013bc:	1612037f 	bne	s0,s2,800021bc <inst_error>
800013c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:25
800013c4:	3c096171 	lui	t1,0x6171
800013c8:	35298b00 	ori	t1,t1,0x8b00
800013cc:	3c088002 	lui	t0,0x8002
800013d0:	35088550 	ori	t0,t0,0x8550
800013d4:	240a24e0 	li	t2,9440
800013d8:	240c24e0 	li	t4,9440
800013dc:	ad0924e0 	sw	t1,9440(t0)
800013e0:	851024e0 	lh	s0,9440(t0)
800013e4:	24128b00 	li	s2,-29952
800013e8:	16120374 	bne	s0,s2,800021bc <inst_error>
800013ec:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:26
800013f0:	3c09b204 	lui	t1,0xb204
800013f4:	35294740 	ori	t1,t1,0x4740
800013f8:	3c088002 	lui	t0,0x8002
800013fc:	35081a30 	ori	t0,t0,0x1a30
80001400:	240a6d88 	li	t2,28040
80001404:	240c6d88 	li	t4,28040
80001408:	ad096d88 	sw	t1,28040(t0)
8000140c:	85106d88 	lh	s0,28040(t0)
80001410:	24124740 	li	s2,18240
80001414:	16120369 	bne	s0,s2,800021bc <inst_error>
80001418:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:27
8000141c:	3c096dbe 	lui	t1,0x6dbe
80001420:	352993b6 	ori	t1,t1,0x93b6
80001424:	3c088002 	lui	t0,0x8002
80001428:	35082a08 	ori	t0,t0,0x2a08
8000142c:	240a13e0 	li	t2,5088
80001430:	240c13e0 	li	t4,5088
80001434:	ad0913e0 	sw	t1,5088(t0)
80001438:	851013e0 	lh	s0,5088(t0)
8000143c:	241293b6 	li	s2,-27722
80001440:	1612035e 	bne	s0,s2,800021bc <inst_error>
80001444:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:28
80001448:	3c09e96e 	lui	t1,0xe96e
8000144c:	35297db0 	ori	t1,t1,0x7db0
80001450:	3c088002 	lui	t0,0x8002
80001454:	350825e8 	ori	t0,t0,0x25e8
80001458:	340ab50a 	li	t2,0xb50a
8000145c:	340cb508 	li	t4,0xb508
80001460:	3c010001 	lui	at,0x1
80001464:	00280821 	addu	at,at,t0
80001468:	ac29b508 	sw	t1,-19192(at)
8000146c:	3c100001 	lui	s0,0x1
80001470:	02088021 	addu	s0,s0,t0
80001474:	8610b50a 	lh	s0,-19190(s0)
80001478:	2412e96e 	li	s2,-5778
8000147c:	1612034f 	bne	s0,s2,800021bc <inst_error>
80001480:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:29
80001484:	3c096737 	lui	t1,0x6737
80001488:	3529a118 	ori	t1,t1,0xa118
8000148c:	3c088002 	lui	t0,0x8002
80001490:	35084f78 	ori	t0,t0,0x4f78
80001494:	240a4fae 	li	t2,20398
80001498:	240c4fac 	li	t4,20396
8000149c:	ad094fac 	sw	t1,20396(t0)
800014a0:	85104fae 	lh	s0,20398(t0)
800014a4:	24126737 	li	s2,26423
800014a8:	16120344 	bne	s0,s2,800021bc <inst_error>
800014ac:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:30
800014b0:	3c092fec 	lui	t1,0x2fec
800014b4:	35297a40 	ori	t1,t1,0x7a40
800014b8:	3c088002 	lui	t0,0x8002
800014bc:	35085228 	ori	t0,t0,0x5228
800014c0:	340aa466 	li	t2,0xa466
800014c4:	340ca464 	li	t4,0xa464
800014c8:	3c010001 	lui	at,0x1
800014cc:	00280821 	addu	at,at,t0
800014d0:	ac29a464 	sw	t1,-23452(at)
800014d4:	3c100001 	lui	s0,0x1
800014d8:	02088021 	addu	s0,s0,t0
800014dc:	8610a466 	lh	s0,-23450(s0)
800014e0:	24122fec 	li	s2,12268
800014e4:	16120335 	bne	s0,s2,800021bc <inst_error>
800014e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:31
800014ec:	3c095805 	lui	t1,0x5805
800014f0:	3529df3d 	ori	t1,t1,0xdf3d
800014f4:	3c088002 	lui	t0,0x8002
800014f8:	3508e870 	ori	t0,t0,0xe870
800014fc:	240a0454 	li	t2,1108
80001500:	240c0454 	li	t4,1108
80001504:	ad090454 	sw	t1,1108(t0)
80001508:	85100454 	lh	s0,1108(t0)
8000150c:	2412df3d 	li	s2,-8387
80001510:	1612032a 	bne	s0,s2,800021bc <inst_error>
80001514:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:32
80001518:	3c094ea0 	lui	t1,0x4ea0
8000151c:	3529d20c 	ori	t1,t1,0xd20c
80001520:	3c088002 	lui	t0,0x8002
80001524:	35082194 	ori	t0,t0,0x2194
80001528:	340ad7c8 	li	t2,0xd7c8
8000152c:	340cd7c8 	li	t4,0xd7c8
80001530:	3c010001 	lui	at,0x1
80001534:	00280821 	addu	at,at,t0
80001538:	ac29d7c8 	sw	t1,-10296(at)
8000153c:	3c100001 	lui	s0,0x1
80001540:	02088021 	addu	s0,s0,t0
80001544:	8610d7c8 	lh	s0,-10296(s0)
80001548:	2412d20c 	li	s2,-11764
8000154c:	1612031b 	bne	s0,s2,800021bc <inst_error>
80001550:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:33
80001554:	3c097bf8 	lui	t1,0x7bf8
80001558:	3529d942 	ori	t1,t1,0xd942
8000155c:	3c088002 	lui	t0,0x8002
80001560:	35085d50 	ori	t0,t0,0x5d50
80001564:	340aa000 	li	t2,0xa000
80001568:	340ca000 	li	t4,0xa000
8000156c:	3c010001 	lui	at,0x1
80001570:	00280821 	addu	at,at,t0
80001574:	ac29a000 	sw	t1,-24576(at)
80001578:	3c100001 	lui	s0,0x1
8000157c:	02088021 	addu	s0,s0,t0
80001580:	8610a000 	lh	s0,-24576(s0)
80001584:	2412d942 	li	s2,-9918
80001588:	1612030c 	bne	s0,s2,800021bc <inst_error>
8000158c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:34
80001590:	3c0937ee 	lui	t1,0x37ee
80001594:	3529910e 	ori	t1,t1,0x910e
80001598:	3c088002 	lui	t0,0x8002
8000159c:	350897f0 	ori	t0,t0,0x97f0
800015a0:	240a0174 	li	t2,372
800015a4:	240c0174 	li	t4,372
800015a8:	ad090174 	sw	t1,372(t0)
800015ac:	85100174 	lh	s0,372(t0)
800015b0:	2412910e 	li	s2,-28402
800015b4:	16120301 	bne	s0,s2,800021bc <inst_error>
800015b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:35
800015bc:	3c090259 	lui	t1,0x259
800015c0:	35293920 	ori	t1,t1,0x3920
800015c4:	3c088002 	lui	t0,0x8002
800015c8:	350823b8 	ori	t0,t0,0x23b8
800015cc:	340ab00c 	li	t2,0xb00c
800015d0:	340cb00c 	li	t4,0xb00c
800015d4:	3c010001 	lui	at,0x1
800015d8:	00280821 	addu	at,at,t0
800015dc:	ac29b00c 	sw	t1,-20468(at)
800015e0:	3c100001 	lui	s0,0x1
800015e4:	02088021 	addu	s0,s0,t0
800015e8:	8610b00c 	lh	s0,-20468(s0)
800015ec:	24123920 	li	s2,14624
800015f0:	161202f2 	bne	s0,s2,800021bc <inst_error>
800015f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:36
800015f8:	3c09b7e2 	lui	t1,0xb7e2
800015fc:	35291268 	ori	t1,t1,0x1268
80001600:	3c088002 	lui	t0,0x8002
80001604:	3508cba8 	ori	t0,t0,0xcba8
80001608:	240a221c 	li	t2,8732
8000160c:	240c221c 	li	t4,8732
80001610:	ad09221c 	sw	t1,8732(t0)
80001614:	8510221c 	lh	s0,8732(t0)
80001618:	24121268 	li	s2,4712
8000161c:	161202e7 	bne	s0,s2,800021bc <inst_error>
80001620:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:37
80001624:	3c090074 	lui	t1,0x74
80001628:	3529b9d0 	ori	t1,t1,0xb9d0
8000162c:	3c088002 	lui	t0,0x8002
80001630:	350817a8 	ori	t0,t0,0x17a8
80001634:	340ac28c 	li	t2,0xc28c
80001638:	340cc28c 	li	t4,0xc28c
8000163c:	3c010001 	lui	at,0x1
80001640:	00280821 	addu	at,at,t0
80001644:	ac29c28c 	sw	t1,-15732(at)
80001648:	3c100001 	lui	s0,0x1
8000164c:	02088021 	addu	s0,s0,t0
80001650:	8610c28c 	lh	s0,-15732(s0)
80001654:	2412b9d0 	li	s2,-17968
80001658:	161202d8 	bne	s0,s2,800021bc <inst_error>
8000165c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:38
80001660:	3c091326 	lui	t1,0x1326
80001664:	3529e800 	ori	t1,t1,0xe800
80001668:	3c088002 	lui	t0,0x8002
8000166c:	35080848 	ori	t0,t0,0x848
80001670:	340a816e 	li	t2,0x816e
80001674:	340c816c 	li	t4,0x816c
80001678:	3c010001 	lui	at,0x1
8000167c:	00280821 	addu	at,at,t0
80001680:	ac29816c 	sw	t1,-32404(at)
80001684:	3c100001 	lui	s0,0x1
80001688:	02088021 	addu	s0,s0,t0
8000168c:	8610816e 	lh	s0,-32402(s0)
80001690:	24121326 	li	s2,4902
80001694:	161202c9 	bne	s0,s2,800021bc <inst_error>
80001698:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:39
8000169c:	3c09b42e 	lui	t1,0xb42e
800016a0:	35295a40 	ori	t1,t1,0x5a40
800016a4:	3c088002 	lui	t0,0x8002
800016a8:	35083b34 	ori	t0,t0,0x3b34
800016ac:	240a14d8 	li	t2,5336
800016b0:	240c14d8 	li	t4,5336
800016b4:	ad0914d8 	sw	t1,5336(t0)
800016b8:	851014d8 	lh	s0,5336(t0)
800016bc:	24125a40 	li	s2,23104
800016c0:	161202be 	bne	s0,s2,800021bc <inst_error>
800016c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:40
800016c8:	3c09783e 	lui	t1,0x783e
800016cc:	35290a00 	ori	t1,t1,0xa00
800016d0:	3c088002 	lui	t0,0x8002
800016d4:	35087838 	ori	t0,t0,0x7838
800016d8:	240a2c3c 	li	t2,11324
800016dc:	240c2c3c 	li	t4,11324
800016e0:	ad092c3c 	sw	t1,11324(t0)
800016e4:	85102c3c 	lh	s0,11324(t0)
800016e8:	24120a00 	li	s2,2560
800016ec:	161202b3 	bne	s0,s2,800021bc <inst_error>
800016f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:41
800016f4:	3c09d694 	lui	t1,0xd694
800016f8:	35292958 	ori	t1,t1,0x2958
800016fc:	3c088002 	lui	t0,0x8002
80001700:	350853a8 	ori	t0,t0,0x53a8
80001704:	240a564a 	li	t2,22090
80001708:	240c5648 	li	t4,22088
8000170c:	ad095648 	sw	t1,22088(t0)
80001710:	8510564a 	lh	s0,22090(t0)
80001714:	2412d694 	li	s2,-10604
80001718:	161202a8 	bne	s0,s2,800021bc <inst_error>
8000171c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:42
80001720:	3c099d23 	lui	t1,0x9d23
80001724:	35297d60 	ori	t1,t1,0x7d60
80001728:	3c088002 	lui	t0,0x8002
8000172c:	35080600 	ori	t0,t0,0x600
80001730:	240a590c 	li	t2,22796
80001734:	240c590c 	li	t4,22796
80001738:	ad09590c 	sw	t1,22796(t0)
8000173c:	8510590c 	lh	s0,22796(t0)
80001740:	24127d60 	li	s2,32096
80001744:	1612029d 	bne	s0,s2,800021bc <inst_error>
80001748:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:43
8000174c:	3c09098f 	lui	t1,0x98f
80001750:	35292730 	ori	t1,t1,0x2730
80001754:	3c088002 	lui	t0,0x8002
80001758:	35081b58 	ori	t0,t0,0x1b58
8000175c:	340a88a8 	li	t2,0x88a8
80001760:	340c88a8 	li	t4,0x88a8
80001764:	3c010001 	lui	at,0x1
80001768:	00280821 	addu	at,at,t0
8000176c:	ac2988a8 	sw	t1,-30552(at)
80001770:	3c100001 	lui	s0,0x1
80001774:	02088021 	addu	s0,s0,t0
80001778:	861088a8 	lh	s0,-30552(s0)
8000177c:	24122730 	li	s2,10032
80001780:	1612028e 	bne	s0,s2,800021bc <inst_error>
80001784:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:44
80001788:	3c092ab8 	lui	t1,0x2ab8
8000178c:	3529ce90 	ori	t1,t1,0xce90
80001790:	3c088002 	lui	t0,0x8002
80001794:	350831ec 	ori	t0,t0,0x31ec
80001798:	240a38d0 	li	t2,14544
8000179c:	240c38d0 	li	t4,14544
800017a0:	ad0938d0 	sw	t1,14544(t0)
800017a4:	851038d0 	lh	s0,14544(t0)
800017a8:	2412ce90 	li	s2,-12656
800017ac:	16120283 	bne	s0,s2,800021bc <inst_error>
800017b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:45
800017b4:	3c0937fd 	lui	t1,0x37fd
800017b8:	3529bec8 	ori	t1,t1,0xbec8
800017bc:	3c088002 	lui	t0,0x8002
800017c0:	35084890 	ori	t0,t0,0x4890
800017c4:	240a5bd2 	li	t2,23506
800017c8:	240c5bd0 	li	t4,23504
800017cc:	ad095bd0 	sw	t1,23504(t0)
800017d0:	85105bd2 	lh	s0,23506(t0)
800017d4:	241237fd 	li	s2,14333
800017d8:	16120278 	bne	s0,s2,800021bc <inst_error>
800017dc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:46
800017e0:	3c0934fc 	lui	t1,0x34fc
800017e4:	352933ac 	ori	t1,t1,0x33ac
800017e8:	3c088002 	lui	t0,0x8002
800017ec:	35085448 	ori	t0,t0,0x5448
800017f0:	240a16d2 	li	t2,5842
800017f4:	240c16d0 	li	t4,5840
800017f8:	ad0916d0 	sw	t1,5840(t0)
800017fc:	851016d2 	lh	s0,5842(t0)
80001800:	241234fc 	li	s2,13564
80001804:	1612026d 	bne	s0,s2,800021bc <inst_error>
80001808:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:47
8000180c:	3c09dcc1 	lui	t1,0xdcc1
80001810:	352944c8 	ori	t1,t1,0x44c8
80001814:	3c088002 	lui	t0,0x8002
80001818:	35086940 	ori	t0,t0,0x6940
8000181c:	240a673c 	li	t2,26428
80001820:	240c673c 	li	t4,26428
80001824:	ad09673c 	sw	t1,26428(t0)
80001828:	8510673c 	lh	s0,26428(t0)
8000182c:	241244c8 	li	s2,17608
80001830:	16120262 	bne	s0,s2,800021bc <inst_error>
80001834:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:48
80001838:	3c093354 	lui	t1,0x3354
8000183c:	3529e5b4 	ori	t1,t1,0xe5b4
80001840:	3c088002 	lui	t0,0x8002
80001844:	35085834 	ori	t0,t0,0x5834
80001848:	240a3926 	li	t2,14630
8000184c:	240c3924 	li	t4,14628
80001850:	ad093924 	sw	t1,14628(t0)
80001854:	85103926 	lh	s0,14630(t0)
80001858:	24123354 	li	s2,13140
8000185c:	16120257 	bne	s0,s2,800021bc <inst_error>
80001860:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:49
80001864:	3c09b5e7 	lui	t1,0xb5e7
80001868:	3529da8e 	ori	t1,t1,0xda8e
8000186c:	3c088002 	lui	t0,0x8002
80001870:	3508cc78 	ori	t0,t0,0xcc78
80001874:	240a0800 	li	t2,2048
80001878:	240c0800 	li	t4,2048
8000187c:	ad090800 	sw	t1,2048(t0)
80001880:	85100800 	lh	s0,2048(t0)
80001884:	2412da8e 	li	s2,-9586
80001888:	1612024c 	bne	s0,s2,800021bc <inst_error>
8000188c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:50
80001890:	3c098c87 	lui	t1,0x8c87
80001894:	3529a650 	ori	t1,t1,0xa650
80001898:	3c088002 	lui	t0,0x8002
8000189c:	35082d9c 	ori	t0,t0,0x2d9c
800018a0:	240a6440 	li	t2,25664
800018a4:	240c6440 	li	t4,25664
800018a8:	ad096440 	sw	t1,25664(t0)
800018ac:	85106440 	lh	s0,25664(t0)
800018b0:	2412a650 	li	s2,-22960
800018b4:	16120241 	bne	s0,s2,800021bc <inst_error>
800018b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:51
800018bc:	3c093df2 	lui	t1,0x3df2
800018c0:	35299bc0 	ori	t1,t1,0x9bc0
800018c4:	3c088003 	lui	t0,0x8003
800018c8:	340a834e 	li	t2,0x834e
800018cc:	340c834c 	li	t4,0x834c
800018d0:	3c010001 	lui	at,0x1
800018d4:	00280821 	addu	at,at,t0
800018d8:	ac29834c 	sw	t1,-31924(at)
800018dc:	3c100001 	lui	s0,0x1
800018e0:	02088021 	addu	s0,s0,t0
800018e4:	8610834e 	lh	s0,-31922(s0)
800018e8:	24123df2 	li	s2,15858
800018ec:	16120233 	bne	s0,s2,800021bc <inst_error>
800018f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:52
800018f4:	3c09975c 	lui	t1,0x975c
800018f8:	35293a5c 	ori	t1,t1,0x3a5c
800018fc:	3c088003 	lui	t0,0x8003
80001900:	340ae8cc 	li	t2,0xe8cc
80001904:	340ce8cc 	li	t4,0xe8cc
80001908:	3c010001 	lui	at,0x1
8000190c:	00280821 	addu	at,at,t0
80001910:	ac29e8cc 	sw	t1,-5940(at)
80001914:	3c100001 	lui	s0,0x1
80001918:	02088021 	addu	s0,s0,t0
8000191c:	8610e8cc 	lh	s0,-5940(s0)
80001920:	24123a5c 	li	s2,14940
80001924:	16120225 	bne	s0,s2,800021bc <inst_error>
80001928:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:53
8000192c:	3c0929ab 	lui	t1,0x29ab
80001930:	352953d6 	ori	t1,t1,0x53d6
80001934:	3c088003 	lui	t0,0x8003
80001938:	340a89e8 	li	t2,0x89e8
8000193c:	340c89e8 	li	t4,0x89e8
80001940:	3c010001 	lui	at,0x1
80001944:	00280821 	addu	at,at,t0
80001948:	ac2989e8 	sw	t1,-30232(at)
8000194c:	3c100001 	lui	s0,0x1
80001950:	02088021 	addu	s0,s0,t0
80001954:	861089e8 	lh	s0,-30232(s0)
80001958:	241253d6 	li	s2,21462
8000195c:	16120217 	bne	s0,s2,800021bc <inst_error>
80001960:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:54
80001964:	3c09763b 	lui	t1,0x763b
80001968:	35292600 	ori	t1,t1,0x2600
8000196c:	3c088003 	lui	t0,0x8003
80001970:	240a3e7c 	li	t2,15996
80001974:	240c3e7c 	li	t4,15996
80001978:	ad093e7c 	sw	t1,15996(t0)
8000197c:	85103e7c 	lh	s0,15996(t0)
80001980:	24122600 	li	s2,9728
80001984:	1612020d 	bne	s0,s2,800021bc <inst_error>
80001988:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:55
8000198c:	3c09774e 	lui	t1,0x774e
80001990:	3529d370 	ori	t1,t1,0xd370
80001994:	3c088003 	lui	t0,0x8003
80001998:	340aa760 	li	t2,0xa760
8000199c:	340ca760 	li	t4,0xa760
800019a0:	3c010001 	lui	at,0x1
800019a4:	00280821 	addu	at,at,t0
800019a8:	ac29a760 	sw	t1,-22688(at)
800019ac:	3c100001 	lui	s0,0x1
800019b0:	02088021 	addu	s0,s0,t0
800019b4:	8610a760 	lh	s0,-22688(s0)
800019b8:	2412d370 	li	s2,-11408
800019bc:	161201ff 	bne	s0,s2,800021bc <inst_error>
800019c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:56
800019c4:	3c098e24 	lui	t1,0x8e24
800019c8:	3529d680 	ori	t1,t1,0xd680
800019cc:	3c088003 	lui	t0,0x8003
800019d0:	340affe0 	li	t2,0xffe0
800019d4:	340cffe0 	li	t4,0xffe0
800019d8:	3c010001 	lui	at,0x1
800019dc:	00280821 	addu	at,at,t0
800019e0:	ac29ffe0 	sw	t1,-32(at)
800019e4:	3c100001 	lui	s0,0x1
800019e8:	02088021 	addu	s0,s0,t0
800019ec:	8610ffe0 	lh	s0,-32(s0)
800019f0:	2412d680 	li	s2,-10624
800019f4:	161201f1 	bne	s0,s2,800021bc <inst_error>
800019f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:57
800019fc:	3c09fe39 	lui	t1,0xfe39
80001a00:	352936cb 	ori	t1,t1,0x36cb
80001a04:	3c088003 	lui	t0,0x8003
80001a08:	240a17b0 	li	t2,6064
80001a0c:	240c17b0 	li	t4,6064
80001a10:	ad0917b0 	sw	t1,6064(t0)
80001a14:	851017b0 	lh	s0,6064(t0)
80001a18:	241236cb 	li	s2,14027
80001a1c:	161201e7 	bne	s0,s2,800021bc <inst_error>
80001a20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:58
80001a24:	3c090b89 	lui	t1,0xb89
80001a28:	35292a40 	ori	t1,t1,0x2a40
80001a2c:	3c088003 	lui	t0,0x8003
80001a30:	340ab03a 	li	t2,0xb03a
80001a34:	340cb038 	li	t4,0xb038
80001a38:	3c010001 	lui	at,0x1
80001a3c:	00280821 	addu	at,at,t0
80001a40:	ac29b038 	sw	t1,-20424(at)
80001a44:	3c100001 	lui	s0,0x1
80001a48:	02088021 	addu	s0,s0,t0
80001a4c:	8610b03a 	lh	s0,-20422(s0)
80001a50:	24120b89 	li	s2,2953
80001a54:	161201d9 	bne	s0,s2,800021bc <inst_error>
80001a58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:59
80001a5c:	3c09d92f 	lui	t1,0xd92f
80001a60:	3529e108 	ori	t1,t1,0xe108
80001a64:	3c088003 	lui	t0,0x8003
80001a68:	240a5d48 	li	t2,23880
80001a6c:	240c5d48 	li	t4,23880
80001a70:	ad095d48 	sw	t1,23880(t0)
80001a74:	85105d48 	lh	s0,23880(t0)
80001a78:	2412e108 	li	s2,-7928
80001a7c:	161201cf 	bne	s0,s2,800021bc <inst_error>
80001a80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:60
80001a84:	3c094c4b 	lui	t1,0x4c4b
80001a88:	3529c954 	ori	t1,t1,0xc954
80001a8c:	3c088003 	lui	t0,0x8003
80001a90:	240a2258 	li	t2,8792
80001a94:	240c2258 	li	t4,8792
80001a98:	ad092258 	sw	t1,8792(t0)
80001a9c:	85102258 	lh	s0,8792(t0)
80001aa0:	2412c954 	li	s2,-13996
80001aa4:	161201c5 	bne	s0,s2,800021bc <inst_error>
80001aa8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:61
80001aac:	3c09b7ba 	lui	t1,0xb7ba
80001ab0:	3529ba40 	ori	t1,t1,0xba40
80001ab4:	3c088003 	lui	t0,0x8003
80001ab8:	340aa106 	li	t2,0xa106
80001abc:	340ca104 	li	t4,0xa104
80001ac0:	3c010001 	lui	at,0x1
80001ac4:	00280821 	addu	at,at,t0
80001ac8:	ac29a104 	sw	t1,-24316(at)
80001acc:	3c100001 	lui	s0,0x1
80001ad0:	02088021 	addu	s0,s0,t0
80001ad4:	8610a106 	lh	s0,-24314(s0)
80001ad8:	2412b7ba 	li	s2,-18502
80001adc:	161201b7 	bne	s0,s2,800021bc <inst_error>
80001ae0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:62
80001ae4:	3c098a75 	lui	t1,0x8a75
80001ae8:	35294a34 	ori	t1,t1,0x4a34
80001aec:	3c088003 	lui	t0,0x8003
80001af0:	240a53a8 	li	t2,21416
80001af4:	240c53a8 	li	t4,21416
80001af8:	ad0953a8 	sw	t1,21416(t0)
80001afc:	851053a8 	lh	s0,21416(t0)
80001b00:	24124a34 	li	s2,18996
80001b04:	161201ad 	bne	s0,s2,800021bc <inst_error>
80001b08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:63
80001b0c:	3c09062c 	lui	t1,0x62c
80001b10:	35290990 	ori	t1,t1,0x990
80001b14:	3c088003 	lui	t0,0x8003
80001b18:	340ab7c0 	li	t2,0xb7c0
80001b1c:	340cb7c0 	li	t4,0xb7c0
80001b20:	3c010001 	lui	at,0x1
80001b24:	00280821 	addu	at,at,t0
80001b28:	ac29b7c0 	sw	t1,-18496(at)
80001b2c:	3c100001 	lui	s0,0x1
80001b30:	02088021 	addu	s0,s0,t0
80001b34:	8610b7c0 	lh	s0,-18496(s0)
80001b38:	24120990 	li	s2,2448
80001b3c:	1612019f 	bne	s0,s2,800021bc <inst_error>
80001b40:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:64
80001b44:	3c09f3c0 	lui	t1,0xf3c0
80001b48:	3529fc50 	ori	t1,t1,0xfc50
80001b4c:	3c088003 	lui	t0,0x8003
80001b50:	340ae692 	li	t2,0xe692
80001b54:	340ce690 	li	t4,0xe690
80001b58:	3c010001 	lui	at,0x1
80001b5c:	00280821 	addu	at,at,t0
80001b60:	ac29e690 	sw	t1,-6512(at)
80001b64:	3c100001 	lui	s0,0x1
80001b68:	02088021 	addu	s0,s0,t0
80001b6c:	8610e692 	lh	s0,-6510(s0)
80001b70:	2412f3c0 	li	s2,-3136
80001b74:	16120191 	bne	s0,s2,800021bc <inst_error>
80001b78:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:65
80001b7c:	3c09941e 	lui	t1,0x941e
80001b80:	35291b70 	ori	t1,t1,0x1b70
80001b84:	3c088003 	lui	t0,0x8003
80001b88:	340a9544 	li	t2,0x9544
80001b8c:	340c9544 	li	t4,0x9544
80001b90:	3c010001 	lui	at,0x1
80001b94:	00280821 	addu	at,at,t0
80001b98:	ac299544 	sw	t1,-27324(at)
80001b9c:	3c100001 	lui	s0,0x1
80001ba0:	02088021 	addu	s0,s0,t0
80001ba4:	86109544 	lh	s0,-27324(s0)
80001ba8:	24121b70 	li	s2,7024
80001bac:	16120183 	bne	s0,s2,800021bc <inst_error>
80001bb0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:66
80001bb4:	3c0906a8 	lui	t1,0x6a8
80001bb8:	3529f600 	ori	t1,t1,0xf600
80001bbc:	3c088003 	lui	t0,0x8003
80001bc0:	340ac14e 	li	t2,0xc14e
80001bc4:	340cc14c 	li	t4,0xc14c
80001bc8:	3c010001 	lui	at,0x1
80001bcc:	00280821 	addu	at,at,t0
80001bd0:	ac29c14c 	sw	t1,-16052(at)
80001bd4:	3c100001 	lui	s0,0x1
80001bd8:	02088021 	addu	s0,s0,t0
80001bdc:	8610c14e 	lh	s0,-16050(s0)
80001be0:	241206a8 	li	s2,1704
80001be4:	16120175 	bne	s0,s2,800021bc <inst_error>
80001be8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:67
80001bec:	3c09f0c9 	lui	t1,0xf0c9
80001bf0:	3529f8c0 	ori	t1,t1,0xf8c0
80001bf4:	3c088003 	lui	t0,0x8003
80001bf8:	240a4156 	li	t2,16726
80001bfc:	240c4154 	li	t4,16724
80001c00:	ad094154 	sw	t1,16724(t0)
80001c04:	85104156 	lh	s0,16726(t0)
80001c08:	2412f0c9 	li	s2,-3895
80001c0c:	1612016b 	bne	s0,s2,800021bc <inst_error>
80001c10:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:68
80001c14:	3c096d67 	lui	t1,0x6d67
80001c18:	3529df7c 	ori	t1,t1,0xdf7c
80001c1c:	3c088003 	lui	t0,0x8003
80001c20:	240a1ce6 	li	t2,7398
80001c24:	240c1ce4 	li	t4,7396
80001c28:	ad091ce4 	sw	t1,7396(t0)
80001c2c:	85101ce6 	lh	s0,7398(t0)
80001c30:	24126d67 	li	s2,28007
80001c34:	16120161 	bne	s0,s2,800021bc <inst_error>
80001c38:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:69
80001c3c:	3c097b5c 	lui	t1,0x7b5c
80001c40:	35298c40 	ori	t1,t1,0x8c40
80001c44:	3c088003 	lui	t0,0x8003
80001c48:	340aa170 	li	t2,0xa170
80001c4c:	340ca170 	li	t4,0xa170
80001c50:	3c010001 	lui	at,0x1
80001c54:	00280821 	addu	at,at,t0
80001c58:	ac29a170 	sw	t1,-24208(at)
80001c5c:	3c100001 	lui	s0,0x1
80001c60:	02088021 	addu	s0,s0,t0
80001c64:	8610a170 	lh	s0,-24208(s0)
80001c68:	24128c40 	li	s2,-29632
80001c6c:	16120153 	bne	s0,s2,800021bc <inst_error>
80001c70:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:70
80001c74:	3c09a01d 	lui	t1,0xa01d
80001c78:	352988d6 	ori	t1,t1,0x88d6
80001c7c:	3c088003 	lui	t0,0x8003
80001c80:	340af236 	li	t2,0xf236
80001c84:	340cf234 	li	t4,0xf234
80001c88:	3c010001 	lui	at,0x1
80001c8c:	00280821 	addu	at,at,t0
80001c90:	ac29f234 	sw	t1,-3532(at)
80001c94:	3c100001 	lui	s0,0x1
80001c98:	02088021 	addu	s0,s0,t0
80001c9c:	8610f236 	lh	s0,-3530(s0)
80001ca0:	2412a01d 	li	s2,-24547
80001ca4:	16120145 	bne	s0,s2,800021bc <inst_error>
80001ca8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:71
80001cac:	3c09bb91 	lui	t1,0xbb91
80001cb0:	3529715e 	ori	t1,t1,0x715e
80001cb4:	3c088003 	lui	t0,0x8003
80001cb8:	340aea5e 	li	t2,0xea5e
80001cbc:	340cea5c 	li	t4,0xea5c
80001cc0:	3c010001 	lui	at,0x1
80001cc4:	00280821 	addu	at,at,t0
80001cc8:	ac29ea5c 	sw	t1,-5540(at)
80001ccc:	3c100001 	lui	s0,0x1
80001cd0:	02088021 	addu	s0,s0,t0
80001cd4:	8610ea5e 	lh	s0,-5538(s0)
80001cd8:	2412bb91 	li	s2,-17519
80001cdc:	16120137 	bne	s0,s2,800021bc <inst_error>
80001ce0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:72
80001ce4:	3c09a208 	lui	t1,0xa208
80001ce8:	35296268 	ori	t1,t1,0x6268
80001cec:	3c088003 	lui	t0,0x8003
80001cf0:	340aae6c 	li	t2,0xae6c
80001cf4:	340cae6c 	li	t4,0xae6c
80001cf8:	3c010001 	lui	at,0x1
80001cfc:	00280821 	addu	at,at,t0
80001d00:	ac29ae6c 	sw	t1,-20884(at)
80001d04:	3c100001 	lui	s0,0x1
80001d08:	02088021 	addu	s0,s0,t0
80001d0c:	8610ae6c 	lh	s0,-20884(s0)
80001d10:	24126268 	li	s2,25192
80001d14:	16120129 	bne	s0,s2,800021bc <inst_error>
80001d18:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:73
80001d1c:	3c09c16e 	lui	t1,0xc16e
80001d20:	35297fd2 	ori	t1,t1,0x7fd2
80001d24:	3c088003 	lui	t0,0x8003
80001d28:	240a10e4 	li	t2,4324
80001d2c:	240c10e4 	li	t4,4324
80001d30:	ad0910e4 	sw	t1,4324(t0)
80001d34:	851010e4 	lh	s0,4324(t0)
80001d38:	24127fd2 	li	s2,32722
80001d3c:	1612011f 	bne	s0,s2,800021bc <inst_error>
80001d40:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:74
80001d44:	3c09f26f 	lui	t1,0xf26f
80001d48:	35290540 	ori	t1,t1,0x540
80001d4c:	3c088003 	lui	t0,0x8003
80001d50:	240a7fb8 	li	t2,32696
80001d54:	240c7fb8 	li	t4,32696
80001d58:	ad097fb8 	sw	t1,32696(t0)
80001d5c:	85107fb8 	lh	s0,32696(t0)
80001d60:	24120540 	li	s2,1344
80001d64:	16120115 	bne	s0,s2,800021bc <inst_error>
80001d68:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:75
80001d6c:	3c095df5 	lui	t1,0x5df5
80001d70:	3529b227 	ori	t1,t1,0xb227
80001d74:	3c088003 	lui	t0,0x8003
80001d78:	240a2b56 	li	t2,11094
80001d7c:	240c2b54 	li	t4,11092
80001d80:	ad092b54 	sw	t1,11092(t0)
80001d84:	85102b56 	lh	s0,11094(t0)
80001d88:	24125df5 	li	s2,24053
80001d8c:	1612010b 	bne	s0,s2,800021bc <inst_error>
80001d90:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:76
80001d94:	3c0917cb 	lui	t1,0x17cb
80001d98:	35292286 	ori	t1,t1,0x2286
80001d9c:	3c088003 	lui	t0,0x8003
80001da0:	340aa610 	li	t2,0xa610
80001da4:	340ca610 	li	t4,0xa610
80001da8:	3c010001 	lui	at,0x1
80001dac:	00280821 	addu	at,at,t0
80001db0:	ac29a610 	sw	t1,-23024(at)
80001db4:	3c100001 	lui	s0,0x1
80001db8:	02088021 	addu	s0,s0,t0
80001dbc:	8610a610 	lh	s0,-23024(s0)
80001dc0:	24122286 	li	s2,8838
80001dc4:	161200fd 	bne	s0,s2,800021bc <inst_error>
80001dc8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:77
80001dcc:	3c09cc5b 	lui	t1,0xcc5b
80001dd0:	35292bee 	ori	t1,t1,0x2bee
80001dd4:	3c088003 	lui	t0,0x8003
80001dd8:	340aba32 	li	t2,0xba32
80001ddc:	340cba30 	li	t4,0xba30
80001de0:	3c010001 	lui	at,0x1
80001de4:	00280821 	addu	at,at,t0
80001de8:	ac29ba30 	sw	t1,-17872(at)
80001dec:	3c100001 	lui	s0,0x1
80001df0:	02088021 	addu	s0,s0,t0
80001df4:	8610ba32 	lh	s0,-17870(s0)
80001df8:	2412cc5b 	li	s2,-13221
80001dfc:	161200ef 	bne	s0,s2,800021bc <inst_error>
80001e00:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:78
80001e04:	3c09f148 	lui	t1,0xf148
80001e08:	3529bba0 	ori	t1,t1,0xbba0
80001e0c:	3c088003 	lui	t0,0x8003
80001e10:	340aa0d2 	li	t2,0xa0d2
80001e14:	340ca0d0 	li	t4,0xa0d0
80001e18:	3c010001 	lui	at,0x1
80001e1c:	00280821 	addu	at,at,t0
80001e20:	ac29a0d0 	sw	t1,-24368(at)
80001e24:	3c100001 	lui	s0,0x1
80001e28:	02088021 	addu	s0,s0,t0
80001e2c:	8610a0d2 	lh	s0,-24366(s0)
80001e30:	2412f148 	li	s2,-3768
80001e34:	161200e1 	bne	s0,s2,800021bc <inst_error>
80001e38:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:79
80001e3c:	3c093377 	lui	t1,0x3377
80001e40:	352925a6 	ori	t1,t1,0x25a6
80001e44:	3c088003 	lui	t0,0x8003
80001e48:	240a762e 	li	t2,30254
80001e4c:	240c762c 	li	t4,30252
80001e50:	ad09762c 	sw	t1,30252(t0)
80001e54:	8510762e 	lh	s0,30254(t0)
80001e58:	24123377 	li	s2,13175
80001e5c:	161200d7 	bne	s0,s2,800021bc <inst_error>
80001e60:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:80
80001e64:	3c092982 	lui	t1,0x2982
80001e68:	3529116c 	ori	t1,t1,0x116c
80001e6c:	3c088003 	lui	t0,0x8003
80001e70:	340ab980 	li	t2,0xb980
80001e74:	340cb980 	li	t4,0xb980
80001e78:	3c010001 	lui	at,0x1
80001e7c:	00280821 	addu	at,at,t0
80001e80:	ac29b980 	sw	t1,-18048(at)
80001e84:	3c100001 	lui	s0,0x1
80001e88:	02088021 	addu	s0,s0,t0
80001e8c:	8610b980 	lh	s0,-18048(s0)
80001e90:	2412116c 	li	s2,4460
80001e94:	161200c9 	bne	s0,s2,800021bc <inst_error>
80001e98:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:81
80001e9c:	3c09f335 	lui	t1,0xf335
80001ea0:	3529ae26 	ori	t1,t1,0xae26
80001ea4:	3c088003 	lui	t0,0x8003
80001ea8:	340ade14 	li	t2,0xde14
80001eac:	340cde14 	li	t4,0xde14
80001eb0:	3c010001 	lui	at,0x1
80001eb4:	00280821 	addu	at,at,t0
80001eb8:	ac29de14 	sw	t1,-8684(at)
80001ebc:	3c100001 	lui	s0,0x1
80001ec0:	02088021 	addu	s0,s0,t0
80001ec4:	8610de14 	lh	s0,-8684(s0)
80001ec8:	2412ae26 	li	s2,-20954
80001ecc:	161200bb 	bne	s0,s2,800021bc <inst_error>
80001ed0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:82
80001ed4:	3c091cea 	lui	t1,0x1cea
80001ed8:	35293011 	ori	t1,t1,0x3011
80001edc:	3c088003 	lui	t0,0x8003
80001ee0:	240a4610 	li	t2,17936
80001ee4:	240c4610 	li	t4,17936
80001ee8:	ad094610 	sw	t1,17936(t0)
80001eec:	85104610 	lh	s0,17936(t0)
80001ef0:	24123011 	li	s2,12305
80001ef4:	161200b1 	bne	s0,s2,800021bc <inst_error>
80001ef8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:83
80001efc:	3c095288 	lui	t1,0x5288
80001f00:	3529a4be 	ori	t1,t1,0xa4be
80001f04:	3c088003 	lui	t0,0x8003
80001f08:	240a20e0 	li	t2,8416
80001f0c:	240c20e0 	li	t4,8416
80001f10:	ad0920e0 	sw	t1,8416(t0)
80001f14:	851020e0 	lh	s0,8416(t0)
80001f18:	2412a4be 	li	s2,-23362
80001f1c:	161200a7 	bne	s0,s2,800021bc <inst_error>
80001f20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:84
80001f24:	3c09aba5 	lui	t1,0xaba5
80001f28:	35298c80 	ori	t1,t1,0x8c80
80001f2c:	3c088003 	lui	t0,0x8003
80001f30:	340acecc 	li	t2,0xcecc
80001f34:	340ccecc 	li	t4,0xcecc
80001f38:	3c010001 	lui	at,0x1
80001f3c:	00280821 	addu	at,at,t0
80001f40:	ac29cecc 	sw	t1,-12596(at)
80001f44:	3c100001 	lui	s0,0x1
80001f48:	02088021 	addu	s0,s0,t0
80001f4c:	8610cecc 	lh	s0,-12596(s0)
80001f50:	24128c80 	li	s2,-29568
80001f54:	16120099 	bne	s0,s2,800021bc <inst_error>
80001f58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:85
80001f5c:	3c098780 	lui	t1,0x8780
80001f60:	352918c0 	ori	t1,t1,0x18c0
80001f64:	3c088003 	lui	t0,0x8003
80001f68:	240a1a08 	li	t2,6664
80001f6c:	240c1a08 	li	t4,6664
80001f70:	ad091a08 	sw	t1,6664(t0)
80001f74:	85101a08 	lh	s0,6664(t0)
80001f78:	241218c0 	li	s2,6336
80001f7c:	1612008f 	bne	s0,s2,800021bc <inst_error>
80001f80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:86
80001f84:	3c09dcfe 	lui	t1,0xdcfe
80001f88:	35297908 	ori	t1,t1,0x7908
80001f8c:	3c088003 	lui	t0,0x8003
80001f90:	240a0002 	li	t2,2
80001f94:	240c0000 	li	t4,0
80001f98:	ad090000 	sw	t1,0(t0)
80001f9c:	85100002 	lh	s0,2(t0)
80001fa0:	2412dcfe 	li	s2,-8962
80001fa4:	16120085 	bne	s0,s2,800021bc <inst_error>
80001fa8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:87
80001fac:	3c09ca7e 	lui	t1,0xca7e
80001fb0:	35292534 	ori	t1,t1,0x2534
80001fb4:	3c088003 	lui	t0,0x8003
80001fb8:	240a0000 	li	t2,0
80001fbc:	240c0000 	li	t4,0
80001fc0:	ad090000 	sw	t1,0(t0)
80001fc4:	85100000 	lh	s0,0(t0)
80001fc8:	24122534 	li	s2,9524
80001fcc:	1612007b 	bne	s0,s2,800021bc <inst_error>
80001fd0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:88
80001fd4:	3c093a5f 	lui	t1,0x3a5f
80001fd8:	35295000 	ori	t1,t1,0x5000
80001fdc:	3c088003 	lui	t0,0x8003
80001fe0:	240a0000 	li	t2,0
80001fe4:	240c0000 	li	t4,0
80001fe8:	ad090000 	sw	t1,0(t0)
80001fec:	85100000 	lh	s0,0(t0)
80001ff0:	24125000 	li	s2,20480
80001ff4:	16120071 	bne	s0,s2,800021bc <inst_error>
80001ff8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:89
80001ffc:	3c09c087 	lui	t1,0xc087
80002000:	3529931c 	ori	t1,t1,0x931c
80002004:	3c088003 	lui	t0,0x8003
80002008:	240a0000 	li	t2,0
8000200c:	240c0000 	li	t4,0
80002010:	ad090000 	sw	t1,0(t0)
80002014:	85100000 	lh	s0,0(t0)
80002018:	2412931c 	li	s2,-27876
8000201c:	16120067 	bne	s0,s2,800021bc <inst_error>
80002020:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:90
80002024:	3c090352 	lui	t1,0x352
80002028:	3529c2b4 	ori	t1,t1,0xc2b4
8000202c:	3c088003 	lui	t0,0x8003
80002030:	240a0002 	li	t2,2
80002034:	240c0000 	li	t4,0
80002038:	ad090000 	sw	t1,0(t0)
8000203c:	85100002 	lh	s0,2(t0)
80002040:	24120352 	li	s2,850
80002044:	1612005d 	bne	s0,s2,800021bc <inst_error>
80002048:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:91
8000204c:	3c096742 	lui	t1,0x6742
80002050:	352936b0 	ori	t1,t1,0x36b0
80002054:	3c088003 	lui	t0,0x8003
80002058:	240a0000 	li	t2,0
8000205c:	240c0000 	li	t4,0
80002060:	ad090000 	sw	t1,0(t0)
80002064:	85100000 	lh	s0,0(t0)
80002068:	241236b0 	li	s2,14000
8000206c:	16120053 	bne	s0,s2,800021bc <inst_error>
80002070:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:92
80002074:	3c09b800 	lui	t1,0xb800
80002078:	35298adc 	ori	t1,t1,0x8adc
8000207c:	3c088003 	lui	t0,0x8003
80002080:	240a0002 	li	t2,2
80002084:	240c0000 	li	t4,0
80002088:	ad090000 	sw	t1,0(t0)
8000208c:	85100002 	lh	s0,2(t0)
80002090:	2412b800 	li	s2,-18432
80002094:	16120049 	bne	s0,s2,800021bc <inst_error>
80002098:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:93
8000209c:	3c099368 	lui	t1,0x9368
800020a0:	3529c576 	ori	t1,t1,0xc576
800020a4:	3c088003 	lui	t0,0x8003
800020a8:	240a0000 	li	t2,0
800020ac:	240c0000 	li	t4,0
800020b0:	ad090000 	sw	t1,0(t0)
800020b4:	85100000 	lh	s0,0(t0)
800020b8:	2412c576 	li	s2,-14986
800020bc:	1612003f 	bne	s0,s2,800021bc <inst_error>
800020c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:94
800020c4:	3c09fba1 	lui	t1,0xfba1
800020c8:	3529ce40 	ori	t1,t1,0xce40
800020cc:	3c088003 	lui	t0,0x8003
800020d0:	240a0000 	li	t2,0
800020d4:	240c0000 	li	t4,0
800020d8:	ad090000 	sw	t1,0(t0)
800020dc:	85100000 	lh	s0,0(t0)
800020e0:	2412ce40 	li	s2,-12736
800020e4:	16120035 	bne	s0,s2,800021bc <inst_error>
800020e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:95
800020ec:	3c09585c 	lui	t1,0x585c
800020f0:	35295e30 	ori	t1,t1,0x5e30
800020f4:	3c088003 	lui	t0,0x8003
800020f8:	240a0000 	li	t2,0
800020fc:	240c0000 	li	t4,0
80002100:	ad090000 	sw	t1,0(t0)
80002104:	85100000 	lh	s0,0(t0)
80002108:	24125e30 	li	s2,24112
8000210c:	1612002b 	bne	s0,s2,800021bc <inst_error>
80002110:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:96
80002114:	3c099915 	lui	t1,0x9915
80002118:	3529f89c 	ori	t1,t1,0xf89c
8000211c:	3c088003 	lui	t0,0x8003
80002120:	240a0000 	li	t2,0
80002124:	240c0000 	li	t4,0
80002128:	ad090000 	sw	t1,0(t0)
8000212c:	85100000 	lh	s0,0(t0)
80002130:	2412f89c 	li	s2,-1892
80002134:	16120021 	bne	s0,s2,800021bc <inst_error>
80002138:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:97
8000213c:	3c098aef 	lui	t1,0x8aef
80002140:	3529a220 	ori	t1,t1,0xa220
80002144:	3c088003 	lui	t0,0x8003
80002148:	240a0002 	li	t2,2
8000214c:	240c0000 	li	t4,0
80002150:	ad090000 	sw	t1,0(t0)
80002154:	85100002 	lh	s0,2(t0)
80002158:	24128aef 	li	s2,-29969
8000215c:	16120017 	bne	s0,s2,800021bc <inst_error>
80002160:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:98
80002164:	3c0942cc 	lui	t1,0x42cc
80002168:	3529ca62 	ori	t1,t1,0xca62
8000216c:	3c088003 	lui	t0,0x8003
80002170:	240a0000 	li	t2,0
80002174:	240c0000 	li	t4,0
80002178:	ad090000 	sw	t1,0(t0)
8000217c:	85100000 	lh	s0,0(t0)
80002180:	2412ca62 	li	s2,-13726
80002184:	1612000d 	bne	s0,s2,800021bc <inst_error>
80002188:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:99
8000218c:	24090000 	li	t1,0
80002190:	3c088003 	lui	t0,0x8003
80002194:	240a0000 	li	t2,0
80002198:	240c0000 	li	t4,0
8000219c:	ad090000 	sw	t1,0(t0)
800021a0:	85100000 	lh	s0,0(t0)
800021a4:	24120000 	li	s2,0
800021a8:	16120004 	bne	s0,s2,800021bc <inst_error>
800021ac:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:101
800021b0:	14400002 	bnez	v0,800021bc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:102
800021b4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:104
800021b8:	26730001 	addiu	s3,s3,1

800021bc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:107
800021bc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:108
800021c0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:109
800021c4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n49_lh.S:110
800021c8:	00000000 	nop
inst_error():
800021cc:	00000000 	nop

800021d0 <n30_bne_test>:
n30_bne_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:11
800021d0:	3c041e00 	lui	a0,0x1e00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:12
800021d4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:14
800021d8:	3c0c235f 	lui	t4,0x235f
800021dc:	358cde00 	ori	t4,t4,0xde00
800021e0:	3c0ddd59 	lui	t5,0xdd59
800021e4:	35ad7dde 	ori	t5,t5,0x7dde
800021e8:	24100000 	li	s0,0
800021ec:	24120000 	li	s2,0
800021f0:	10000015 	b	80002248 <n30_bne_test+0x78>
800021f4:	00000000 	nop
800021f8:	3c10235f 	lui	s0,0x235f
800021fc:	3610de00 	ori	s0,s0,0xde00
80002200:	15280021 	bne	t1,t0,80002288 <n30_bne_test+0xb8>
80002204:	00000000 	nop
80002208:	10000021 	b	80002290 <n30_bne_test+0xc0>
8000220c:	00000000 	nop
80002210:	00000021 	move	zero,zero
80002214:	00000021 	move	zero,zero
80002218:	00000021 	move	zero,zero
8000221c:	00000021 	move	zero,zero
80002220:	00000021 	move	zero,zero
80002224:	00000021 	move	zero,zero
80002228:	00000021 	move	zero,zero
8000222c:	00000021 	move	zero,zero
80002230:	00000021 	move	zero,zero
80002234:	00000021 	move	zero,zero
80002238:	00000021 	move	zero,zero
8000223c:	00000021 	move	zero,zero
80002240:	00000021 	move	zero,zero
80002244:	00000021 	move	zero,zero
80002248:	3c08bcaa 	lui	t0,0xbcaa
8000224c:	3508bd27 	ori	t0,t0,0xbd27
80002250:	3c0982a7 	lui	t1,0x82a7
80002254:	35297a9d 	ori	t1,t1,0x7a9d
80002258:	1509ffe7 	bne	t0,t1,800021f8 <n30_bne_test+0x28>
8000225c:	00000000 	nop
80002260:	1000000b 	b	80002290 <n30_bne_test+0xc0>
80002264:	00000000 	nop
80002268:	00000021 	move	zero,zero
8000226c:	00000021 	move	zero,zero
80002270:	00000021 	move	zero,zero
80002274:	00000021 	move	zero,zero
80002278:	00000021 	move	zero,zero
8000227c:	00000021 	move	zero,zero
80002280:	00000021 	move	zero,zero
80002284:	00000021 	move	zero,zero
80002288:	3c12dd59 	lui	s2,0xdd59
8000228c:	36527dde 	ori	s2,s2,0x7dde
80002290:	00000000 	nop
80002294:	3c14235f 	lui	s4,0x235f
80002298:	3694de00 	ori	s4,s4,0xde00
8000229c:	16140008 	bne	s0,s4,800022c0 <inst_error>
800022a0:	00000000 	nop
800022a4:	3c15dd59 	lui	s5,0xdd59
800022a8:	36b57dde 	ori	s5,s5,0x7dde
800022ac:	16550004 	bne	s2,s5,800022c0 <inst_error>
800022b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:16
800022b4:	14400002 	bnez	v0,800022c0 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:17
800022b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:19
800022bc:	26730001 	addiu	s3,s3,1

800022c0 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:22
800022c0:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:23
800022c4:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:24
800022c8:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n30_bne.S:25
800022cc:	00000000 	nop

800022d0 <n6_subu_test>:
n6_subu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:11
800022d0:	3c040600 	lui	a0,0x600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:12
800022d4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:14
800022d8:	3c08d6fc 	lui	t0,0xd6fc
800022dc:	35080584 	ori	t0,t0,0x584
800022e0:	3c095f97 	lui	t1,0x5f97
800022e4:	352965a8 	ori	t1,t1,0x65a8
800022e8:	01098023 	subu	s0,t0,t1
800022ec:	3c127764 	lui	s2,0x7764
800022f0:	36529fdc 	ori	s2,s2,0x9fdc
800022f4:	16120004 	bne	s0,s2,80002308 <inst_error>
800022f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:16
800022fc:	14400002 	bnez	v0,80002308 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:17
80002300:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:19
80002304:	26730001 	addiu	s3,s3,1

80002308 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:22
80002308:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:23
8000230c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:24
80002310:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n6_subu.S:25
80002314:	00000000 	nop

80002318 <n45_break_test>:
n45_break_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:11
80002318:	3c042d00 	lui	a0,0x2d00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:12
8000231c:	24020002 	li	v0,2

80002320 <break_pc>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:16
80002320:	0000000d 	break
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:18
80002324:	3c10ff00 	lui	s0,0xff00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:19
80002328:	14500002 	bne	v0,s0,80002334 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:20
8000232c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:22
80002330:	26730001 	addiu	s3,s3,1

80002334 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:25
80002334:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:26
80002338:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:27
8000233c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n45_break.S:28
80002340:	00000000 	nop
inst_error():
80002344:	00000000 	nop

80002348 <n52_sb_test>:
n52_sb_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:11
80002348:	3c043400 	lui	a0,0x3400
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:12
8000234c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:14
80002350:	3c097955 	lui	t1,0x7955
80002354:	3529c40a 	ori	t1,t1,0xc40a
80002358:	3c088002 	lui	t0,0x8002
8000235c:	350816ec 	ori	t0,t0,0x16ec
80002360:	240a61ec 	li	t2,25068
80002364:	240c61ec 	li	t4,25068
80002368:	3c0db4f0 	lui	t5,0xb4f0
8000236c:	35ad0930 	ori	t5,t5,0x930
80002370:	ad0d61ec 	sw	t5,25068(t0)
80002374:	a10961ec 	sb	t1,25068(t0)
80002378:	8d1061ec 	lw	s0,25068(t0)
8000237c:	3c12b4f0 	lui	s2,0xb4f0
80002380:	3652090a 	ori	s2,s2,0x90a
80002384:	16120004 	bne	s0,s2,80002398 <inst_error>
80002388:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:16
8000238c:	14400002 	bnez	v0,80002398 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:17
80002390:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:19
80002394:	26730001 	addiu	s3,s3,1

80002398 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:22
80002398:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:23
8000239c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:24
800023a0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n52_sb.S:25
800023a4:	00000000 	nop

800023a8 <n24_sllv_test>:
n24_sllv_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:11
800023a8:	3c041800 	lui	a0,0x1800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:12
800023ac:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:14
800023b0:	3c0879db 	lui	t0,0x79db
800023b4:	3508db34 	ori	t0,t0,0xdb34
800023b8:	24090007 	li	t1,7
800023bc:	01288004 	sllv	s0,t0,t1
800023c0:	3c12eded 	lui	s2,0xeded
800023c4:	36529a00 	ori	s2,s2,0x9a00
800023c8:	16120004 	bne	s0,s2,800023dc <inst_error>
800023cc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:16
800023d0:	14400002 	bnez	v0,800023dc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:17
800023d4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:19
800023d8:	26730001 	addiu	s3,s3,1

800023dc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:22
800023dc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:23
800023e0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:24
800023e4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n24_sllv.S:25
800023e8:	00000000 	nop
inst_error():
800023ec:	00000000 	nop

800023f0 <n19_or_test>:
n19_or_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:11
800023f0:	3c041300 	lui	a0,0x1300
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:12
800023f4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:14
800023f8:	3c0850e4 	lui	t0,0x50e4
800023fc:	35081484 	ori	t0,t0,0x1484
80002400:	3c09ad35 	lui	t1,0xad35
80002404:	3529ea94 	ori	t1,t1,0xea94
80002408:	01098025 	or	s0,t0,t1
8000240c:	3c12fdf5 	lui	s2,0xfdf5
80002410:	3652fe94 	ori	s2,s2,0xfe94
80002414:	16120004 	bne	s0,s2,80002428 <inst_error>
80002418:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:16
8000241c:	14400002 	bnez	v0,80002428 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:17
80002420:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:19
80002424:	26730001 	addiu	s3,s3,1

80002428 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:22
80002428:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:23
8000242c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:24
80002430:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n19_or.S:25
80002434:	00000000 	nop

80002438 <n9_sltu_test>:
n9_sltu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:11
80002438:	3c040900 	lui	a0,0x900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:12
8000243c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:14
80002440:	3c08158f 	lui	t0,0x158f
80002444:	35082b29 	ori	t0,t0,0x2b29
80002448:	3c09421c 	lui	t1,0x421c
8000244c:	35290a42 	ori	t1,t1,0xa42
80002450:	0109802b 	sltu	s0,t0,t1
80002454:	24120001 	li	s2,1
80002458:	16120004 	bne	s0,s2,8000246c <inst_error>
8000245c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:16
80002460:	14400002 	bnez	v0,8000246c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:17
80002464:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:19
80002468:	26730001 	addiu	s3,s3,1

8000246c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:22
8000246c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:23
80002470:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:24
80002474:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n9_sltu.S:25
80002478:	00000000 	nop
inst_error():
8000247c:	00000000 	nop

80002480 <n56_mfc0_test>:
n56_mfc0_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:11
80002480:	3c043800 	lui	a0,0x3800
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:12
80002484:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:14
80002488:	3c08bfc0 	lui	t0,0xbfc0
8000248c:	3508ffff 	ori	t0,t0,0xffff
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:17
80002490:	40094000 	mfc0	t1,c0_badvaddr
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:24
80002494:	40096000 	mfc0	t1,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:25
80002498:	40896000 	mtc0	t1,c0_status
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:27
8000249c:	40096800 	mfc0	t1,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:28
800024a0:	40896800 	mtc0	t1,c0_cause
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:30
800024a4:	40097000 	mfc0	t1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:31
800024a8:	40887000 	mtc0	t0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:32
800024ac:	40107000 	mfc0	s0,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:33
800024b0:	40897000 	mtc0	t1,c0_epc
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:34
800024b4:	15100004 	bne	t0,s0,800024c8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:35
800024b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:37
800024bc:	14400002 	bnez	v0,800024c8 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:38
800024c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:40
800024c4:	26730001 	addiu	s3,s3,1

800024c8 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:43
800024c8:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:44
800024cc:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:45
800024d0:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n56_mfc0.S:46
800024d4:	00000000 	nop

800024d8 <n38_jal_test>:
n38_jal_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:11
800024d8:	3c042600 	lui	a0,0x2600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:12
800024dc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:14
800024e0:	001fb021 	addu	s6,zero,ra
800024e4:	3c0c8c3e 	lui	t4,0x8c3e
800024e8:	358c1efa 	ori	t4,t4,0x1efa
800024ec:	3c0deb2b 	lui	t5,0xeb2b
800024f0:	35add57c 	ori	t5,t5,0xd57c
800024f4:	24100000 	li	s0,0
800024f8:	24120000 	li	s2,0
800024fc:	1000000b 	b	8000252c <n38_jal_test+0x54>
80002500:	00000000 	nop
80002504:	3c108c3e 	lui	s0,0x8c3e
80002508:	36101efa 	ori	s0,s0,0x1efa
8000250c:	0c000950 	jal	80002540 <n38_jal_test+0x68>
80002510:	00000000 	nop
80002514:	1000000c 	b	80002548 <n38_jal_test+0x70>
80002518:	00000000 	nop
8000251c:	00000021 	move	zero,zero
80002520:	00000021 	move	zero,zero
80002524:	00000021 	move	zero,zero
80002528:	00000021 	move	zero,zero
8000252c:	0c000941 	jal	80002504 <n38_jal_test+0x2c>
80002530:	00000000 	nop
80002534:	10000004 	b	80002548 <n38_jal_test+0x70>
80002538:	00000000 	nop
8000253c:	00000021 	move	zero,zero
80002540:	3c12eb2b 	lui	s2,0xeb2b
80002544:	3652d57c 	ori	s2,s2,0xd57c
80002548:	001fa021 	addu	s4,zero,ra
8000254c:	0016f821 	addu	ra,zero,s6
80002550:	3c158000 	lui	s5,0x8000
80002554:	26b5250c 	addiu	s5,s5,9484
80002558:	3c0d8c3e 	lui	t5,0x8c3e
8000255c:	35ad1efa 	ori	t5,t5,0x1efa
80002560:	160d000b 	bne	s0,t5,80002590 <inst_error>
80002564:	00000000 	nop
80002568:	3c0ceb2b 	lui	t4,0xeb2b
8000256c:	358cd57c 	ori	t4,t4,0xd57c
80002570:	164c0007 	bne	s2,t4,80002590 <inst_error>
80002574:	00000000 	nop
80002578:	26b50008 	addiu	s5,s5,8
8000257c:	16950004 	bne	s4,s5,80002590 <inst_error>
80002580:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:16
80002584:	14400002 	bnez	v0,80002590 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:17
80002588:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:19
8000258c:	26730001 	addiu	s3,s3,1

80002590 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:22
80002590:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:23
80002594:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:24
80002598:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n38_jal.S:25
8000259c:	00000000 	nop

800025a0 <n43_mthi_test>:
n43_mthi_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:11
800025a0:	3c042b00 	lui	a0,0x2b00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:12
800025a4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:14
800025a8:	3c08a0fd 	lui	t0,0xa0fd
800025ac:	350856b0 	ori	t0,t0,0x56b0
800025b0:	01000011 	mthi	t0
800025b4:	00008010 	mfhi	s0
800025b8:	3c12a0fd 	lui	s2,0xa0fd
800025bc:	365256b0 	ori	s2,s2,0x56b0
800025c0:	16120004 	bne	s0,s2,800025d4 <inst_error>
800025c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:16
800025c8:	14400002 	bnez	v0,800025d4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:17
800025cc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:19
800025d0:	26730001 	addiu	s3,s3,1

800025d4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:22
800025d4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:23
800025d8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:24
800025dc:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n43_mthi.S:25
800025e0:	00000000 	nop
inst_error():
800025e4:	00000000 	nop

800025e8 <n21_xor_test>:
n21_xor_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:11
800025e8:	3c041500 	lui	a0,0x1500
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:12
800025ec:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:14
800025f0:	3c081773 	lui	t0,0x1773
800025f4:	3508df80 	ori	t0,t0,0xdf80
800025f8:	3c09b5af 	lui	t1,0xb5af
800025fc:	352951d2 	ori	t1,t1,0x51d2
80002600:	01098026 	xor	s0,t0,t1
80002604:	3c12a2dc 	lui	s2,0xa2dc
80002608:	36528e52 	ori	s2,s2,0x8e52
8000260c:	16120004 	bne	s0,s2,80002620 <inst_error>
80002610:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:16
80002614:	14400002 	bnez	v0,80002620 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:17
80002618:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:19
8000261c:	26730001 	addiu	s3,s3,1

80002620 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:22
80002620:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:23
80002624:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:24
80002628:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n21_xor.S:25
8000262c:	00000000 	nop

80002630 <n48_lbu_test>:
n48_lbu_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:11
80002630:	3c043000 	lui	a0,0x3000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:12
80002634:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:14
80002638:	3c0979db 	lui	t1,0x79db
8000263c:	3529f0ff 	ori	t1,t1,0xf0ff
80002640:	3c088002 	lui	t0,0x8002
80002644:	35085498 	ori	t0,t0,0x5498
80002648:	240a1408 	li	t2,5128
8000264c:	240c1408 	li	t4,5128
80002650:	ad091408 	sw	t1,5128(t0)
80002654:	91101408 	lbu	s0,5128(t0)
80002658:	241200ff 	li	s2,255
8000265c:	161206bd 	bne	s0,s2,80004154 <inst_error>
80002660:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:15
80002664:	3c099b5b 	lui	t1,0x9b5b
80002668:	3529ab6c 	ori	t1,t1,0xab6c
8000266c:	3c088002 	lui	t0,0x8002
80002670:	35084430 	ori	t0,t0,0x4430
80002674:	240a252e 	li	t2,9518
80002678:	240c252c 	li	t4,9516
8000267c:	ad09252c 	sw	t1,9516(t0)
80002680:	9110252e 	lbu	s0,9518(t0)
80002684:	2412005b 	li	s2,91
80002688:	161206b2 	bne	s0,s2,80004154 <inst_error>
8000268c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:16
80002690:	3c09d156 	lui	t1,0xd156
80002694:	3529f470 	ori	t1,t1,0xf470
80002698:	3c088002 	lui	t0,0x8002
8000269c:	350845d8 	ori	t0,t0,0x45d8
800026a0:	240a760b 	li	t2,30219
800026a4:	240c7608 	li	t4,30216
800026a8:	ad097608 	sw	t1,30216(t0)
800026ac:	9110760b 	lbu	s0,30219(t0)
800026b0:	241200d1 	li	s2,209
800026b4:	161206a7 	bne	s0,s2,80004154 <inst_error>
800026b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:17
800026bc:	3c094d85 	lui	t1,0x4d85
800026c0:	352964c0 	ori	t1,t1,0x64c0
800026c4:	3c088002 	lui	t0,0x8002
800026c8:	3508abac 	ori	t0,t0,0xabac
800026cc:	240a5180 	li	t2,20864
800026d0:	240c5180 	li	t4,20864
800026d4:	ad095180 	sw	t1,20864(t0)
800026d8:	91105180 	lbu	s0,20864(t0)
800026dc:	241200c0 	li	s2,192
800026e0:	1612069c 	bne	s0,s2,80004154 <inst_error>
800026e4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:18
800026e8:	3c09927c 	lui	t1,0x927c
800026ec:	35299930 	ori	t1,t1,0x9930
800026f0:	3c088002 	lui	t0,0x8002
800026f4:	3508ae00 	ori	t0,t0,0xae00
800026f8:	240a4a28 	li	t2,18984
800026fc:	240c4a28 	li	t4,18984
80002700:	ad094a28 	sw	t1,18984(t0)
80002704:	91104a28 	lbu	s0,18984(t0)
80002708:	24120030 	li	s2,48
8000270c:	16120691 	bne	s0,s2,80004154 <inst_error>
80002710:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:19
80002714:	3c099ec5 	lui	t1,0x9ec5
80002718:	3529966a 	ori	t1,t1,0x966a
8000271c:	3c088002 	lui	t0,0x8002
80002720:	350872b8 	ori	t0,t0,0x72b8
80002724:	240a1e9c 	li	t2,7836
80002728:	240c1e9c 	li	t4,7836
8000272c:	ad091e9c 	sw	t1,7836(t0)
80002730:	91101e9c 	lbu	s0,7836(t0)
80002734:	2412006a 	li	s2,106
80002738:	16120686 	bne	s0,s2,80004154 <inst_error>
8000273c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:20
80002740:	3c0913f9 	lui	t1,0x13f9
80002744:	35291e58 	ori	t1,t1,0x1e58
80002748:	3c088002 	lui	t0,0x8002
8000274c:	35081f30 	ori	t0,t0,0x1f30
80002750:	340ab600 	li	t2,0xb600
80002754:	340cb600 	li	t4,0xb600
80002758:	3c010001 	lui	at,0x1
8000275c:	00280821 	addu	at,at,t0
80002760:	ac29b600 	sw	t1,-18944(at)
80002764:	3c100001 	lui	s0,0x1
80002768:	02088021 	addu	s0,s0,t0
8000276c:	9210b600 	lbu	s0,-18944(s0)
80002770:	24120058 	li	s2,88
80002774:	16120677 	bne	s0,s2,80004154 <inst_error>
80002778:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:21
8000277c:	3c090249 	lui	t1,0x249
80002780:	3529eebd 	ori	t1,t1,0xeebd
80002784:	3c088002 	lui	t0,0x8002
80002788:	35083d28 	ori	t0,t0,0x3d28
8000278c:	240a7e74 	li	t2,32372
80002790:	240c7e74 	li	t4,32372
80002794:	ad097e74 	sw	t1,32372(t0)
80002798:	91107e74 	lbu	s0,32372(t0)
8000279c:	241200bd 	li	s2,189
800027a0:	1612066c 	bne	s0,s2,80004154 <inst_error>
800027a4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:22
800027a8:	3c094d40 	lui	t1,0x4d40
800027ac:	3529dd0e 	ori	t1,t1,0xdd0e
800027b0:	3c088002 	lui	t0,0x8002
800027b4:	35082c50 	ori	t0,t0,0x2c50
800027b8:	340ac2d2 	li	t2,0xc2d2
800027bc:	340cc2d0 	li	t4,0xc2d0
800027c0:	3c010001 	lui	at,0x1
800027c4:	00280821 	addu	at,at,t0
800027c8:	ac29c2d0 	sw	t1,-15664(at)
800027cc:	3c100001 	lui	s0,0x1
800027d0:	02088021 	addu	s0,s0,t0
800027d4:	9210c2d2 	lbu	s0,-15662(s0)
800027d8:	24120040 	li	s2,64
800027dc:	1612065d 	bne	s0,s2,80004154 <inst_error>
800027e0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:23
800027e4:	3c091dd0 	lui	t1,0x1dd0
800027e8:	352943a8 	ori	t1,t1,0x43a8
800027ec:	3c088002 	lui	t0,0x8002
800027f0:	35086a7c 	ori	t0,t0,0x6a7c
800027f4:	240a30f8 	li	t2,12536
800027f8:	240c30f8 	li	t4,12536
800027fc:	ad0930f8 	sw	t1,12536(t0)
80002800:	911030f8 	lbu	s0,12536(t0)
80002804:	241200a8 	li	s2,168
80002808:	16120652 	bne	s0,s2,80004154 <inst_error>
8000280c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:24
80002810:	3c09ed11 	lui	t1,0xed11
80002814:	35291118 	ori	t1,t1,0x1118
80002818:	3c088002 	lui	t0,0x8002
8000281c:	350842b4 	ori	t0,t0,0x42b4
80002820:	240a2b60 	li	t2,11104
80002824:	240c2b60 	li	t4,11104
80002828:	ad092b60 	sw	t1,11104(t0)
8000282c:	91102b60 	lbu	s0,11104(t0)
80002830:	24120018 	li	s2,24
80002834:	16120647 	bne	s0,s2,80004154 <inst_error>
80002838:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:25
8000283c:	3c096937 	lui	t1,0x6937
80002840:	3529c000 	ori	t1,t1,0xc000
80002844:	3c088002 	lui	t0,0x8002
80002848:	3508e7f0 	ori	t0,t0,0xe7f0
8000284c:	240a0749 	li	t2,1865
80002850:	240c0748 	li	t4,1864
80002854:	ad090748 	sw	t1,1864(t0)
80002858:	91100749 	lbu	s0,1865(t0)
8000285c:	241200c0 	li	s2,192
80002860:	1612063c 	bne	s0,s2,80004154 <inst_error>
80002864:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:26
80002868:	3c09e4f7 	lui	t1,0xe4f7
8000286c:	35296a00 	ori	t1,t1,0x6a00
80002870:	3c088002 	lui	t0,0x8002
80002874:	3508a130 	ori	t0,t0,0xa130
80002878:	240a0768 	li	t2,1896
8000287c:	240c0768 	li	t4,1896
80002880:	ad090768 	sw	t1,1896(t0)
80002884:	91100768 	lbu	s0,1896(t0)
80002888:	24120000 	li	s2,0
8000288c:	16120631 	bne	s0,s2,80004154 <inst_error>
80002890:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:27
80002894:	3c09ee33 	lui	t1,0xee33
80002898:	3529dcd0 	ori	t1,t1,0xdcd0
8000289c:	3c088002 	lui	t0,0x8002
800028a0:	3508bc2c 	ori	t0,t0,0xbc2c
800028a4:	240a1868 	li	t2,6248
800028a8:	240c1868 	li	t4,6248
800028ac:	ad091868 	sw	t1,6248(t0)
800028b0:	91101868 	lbu	s0,6248(t0)
800028b4:	241200d0 	li	s2,208
800028b8:	16120626 	bne	s0,s2,80004154 <inst_error>
800028bc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:28
800028c0:	3c09a6a6 	lui	t1,0xa6a6
800028c4:	35297232 	ori	t1,t1,0x7232
800028c8:	3c088002 	lui	t0,0x8002
800028cc:	35088b40 	ori	t0,t0,0x8b40
800028d0:	240a2f07 	li	t2,12039
800028d4:	240c2f04 	li	t4,12036
800028d8:	ad092f04 	sw	t1,12036(t0)
800028dc:	91102f07 	lbu	s0,12039(t0)
800028e0:	241200a6 	li	s2,166
800028e4:	1612061b 	bne	s0,s2,80004154 <inst_error>
800028e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:29
800028ec:	3c092c62 	lui	t1,0x2c62
800028f0:	3529e6d4 	ori	t1,t1,0xe6d4
800028f4:	3c088002 	lui	t0,0x8002
800028f8:	35083cd4 	ori	t0,t0,0x3cd4
800028fc:	240a0270 	li	t2,624
80002900:	240c0270 	li	t4,624
80002904:	ad090270 	sw	t1,624(t0)
80002908:	91100270 	lbu	s0,624(t0)
8000290c:	241200d4 	li	s2,212
80002910:	16120610 	bne	s0,s2,80004154 <inst_error>
80002914:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:30
80002918:	3c09dbe7 	lui	t1,0xdbe7
8000291c:	35295a30 	ori	t1,t1,0x5a30
80002920:	3c088002 	lui	t0,0x8002
80002924:	35082854 	ori	t0,t0,0x2854
80002928:	240a0666 	li	t2,1638
8000292c:	240c0664 	li	t4,1636
80002930:	ad090664 	sw	t1,1636(t0)
80002934:	91100666 	lbu	s0,1638(t0)
80002938:	241200e7 	li	s2,231
8000293c:	16120605 	bne	s0,s2,80004154 <inst_error>
80002940:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:31
80002944:	3c09d220 	lui	t1,0xd220
80002948:	35291348 	ori	t1,t1,0x1348
8000294c:	3c088002 	lui	t0,0x8002
80002950:	35088b40 	ori	t0,t0,0x8b40
80002954:	240a2bc1 	li	t2,11201
80002958:	240c2bc0 	li	t4,11200
8000295c:	ad092bc0 	sw	t1,11200(t0)
80002960:	91102bc1 	lbu	s0,11201(t0)
80002964:	24120013 	li	s2,19
80002968:	161205fa 	bne	s0,s2,80004154 <inst_error>
8000296c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:32
80002970:	3c09bc50 	lui	t1,0xbc50
80002974:	35299f3c 	ori	t1,t1,0x9f3c
80002978:	3c088002 	lui	t0,0x8002
8000297c:	35080910 	ori	t0,t0,0x910
80002980:	340a81c3 	li	t2,0x81c3
80002984:	340c81c0 	li	t4,0x81c0
80002988:	3c010001 	lui	at,0x1
8000298c:	00280821 	addu	at,at,t0
80002990:	ac2981c0 	sw	t1,-32320(at)
80002994:	3c100001 	lui	s0,0x1
80002998:	02088021 	addu	s0,s0,t0
8000299c:	921081c3 	lbu	s0,-32317(s0)
800029a0:	241200bc 	li	s2,188
800029a4:	161205eb 	bne	s0,s2,80004154 <inst_error>
800029a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:33
800029ac:	3c09d03b 	lui	t1,0xd03b
800029b0:	3529b99a 	ori	t1,t1,0xb99a
800029b4:	3c088002 	lui	t0,0x8002
800029b8:	35082a84 	ori	t0,t0,0x2a84
800029bc:	240a3780 	li	t2,14208
800029c0:	240c3780 	li	t4,14208
800029c4:	ad093780 	sw	t1,14208(t0)
800029c8:	91103780 	lbu	s0,14208(t0)
800029cc:	2412009a 	li	s2,154
800029d0:	161205e0 	bne	s0,s2,80004154 <inst_error>
800029d4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:34
800029d8:	3c09c1da 	lui	t1,0xc1da
800029dc:	35293a60 	ori	t1,t1,0x3a60
800029e0:	3c088002 	lui	t0,0x8002
800029e4:	350891c0 	ori	t0,t0,0x91c0
800029e8:	240a54d0 	li	t2,21712
800029ec:	240c54d0 	li	t4,21712
800029f0:	ad0954d0 	sw	t1,21712(t0)
800029f4:	911054d0 	lbu	s0,21712(t0)
800029f8:	24120060 	li	s2,96
800029fc:	161205d5 	bne	s0,s2,80004154 <inst_error>
80002a00:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:35
80002a04:	3c092c56 	lui	t1,0x2c56
80002a08:	3529dcf0 	ori	t1,t1,0xdcf0
80002a0c:	3c088002 	lui	t0,0x8002
80002a10:	35086094 	ori	t0,t0,0x6094
80002a14:	240a4c86 	li	t2,19590
80002a18:	240c4c84 	li	t4,19588
80002a1c:	ad094c84 	sw	t1,19588(t0)
80002a20:	91104c86 	lbu	s0,19590(t0)
80002a24:	24120056 	li	s2,86
80002a28:	161205ca 	bne	s0,s2,80004154 <inst_error>
80002a2c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:36
80002a30:	3c09f4a5 	lui	t1,0xf4a5
80002a34:	35293d22 	ori	t1,t1,0x3d22
80002a38:	3c088002 	lui	t0,0x8002
80002a3c:	35080384 	ori	t0,t0,0x384
80002a40:	240a5326 	li	t2,21286
80002a44:	240c5324 	li	t4,21284
80002a48:	ad095324 	sw	t1,21284(t0)
80002a4c:	91105326 	lbu	s0,21286(t0)
80002a50:	241200a5 	li	s2,165
80002a54:	161205bf 	bne	s0,s2,80004154 <inst_error>
80002a58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:37
80002a5c:	3c0944b6 	lui	t1,0x44b6
80002a60:	35296444 	ori	t1,t1,0x6444
80002a64:	3c088002 	lui	t0,0x8002
80002a68:	35089c48 	ori	t0,t0,0x9c48
80002a6c:	240a3580 	li	t2,13696
80002a70:	240c3580 	li	t4,13696
80002a74:	ad093580 	sw	t1,13696(t0)
80002a78:	91103580 	lbu	s0,13696(t0)
80002a7c:	24120044 	li	s2,68
80002a80:	161205b4 	bne	s0,s2,80004154 <inst_error>
80002a84:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:38
80002a88:	3c092982 	lui	t1,0x2982
80002a8c:	3529f7ac 	ori	t1,t1,0xf7ac
80002a90:	3c088002 	lui	t0,0x8002
80002a94:	35080a18 	ori	t0,t0,0xa18
80002a98:	240a1208 	li	t2,4616
80002a9c:	240c1208 	li	t4,4616
80002aa0:	ad091208 	sw	t1,4616(t0)
80002aa4:	91101208 	lbu	s0,4616(t0)
80002aa8:	241200ac 	li	s2,172
80002aac:	161205a9 	bne	s0,s2,80004154 <inst_error>
80002ab0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:39
80002ab4:	3c099089 	lui	t1,0x9089
80002ab8:	35295498 	ori	t1,t1,0x5498
80002abc:	3c088002 	lui	t0,0x8002
80002ac0:	35086210 	ori	t0,t0,0x6210
80002ac4:	240a759c 	li	t2,30108
80002ac8:	240c759c 	li	t4,30108
80002acc:	ad09759c 	sw	t1,30108(t0)
80002ad0:	9110759c 	lbu	s0,30108(t0)
80002ad4:	24120098 	li	s2,152
80002ad8:	1612059e 	bne	s0,s2,80004154 <inst_error>
80002adc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:40
80002ae0:	3c0971d0 	lui	t1,0x71d0
80002ae4:	35294400 	ori	t1,t1,0x4400
80002ae8:	3c088002 	lui	t0,0x8002
80002aec:	35081d08 	ori	t0,t0,0x1d08
80002af0:	240a6faf 	li	t2,28591
80002af4:	240c6fac 	li	t4,28588
80002af8:	ad096fac 	sw	t1,28588(t0)
80002afc:	91106faf 	lbu	s0,28591(t0)
80002b00:	24120071 	li	s2,113
80002b04:	16120593 	bne	s0,s2,80004154 <inst_error>
80002b08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:41
80002b0c:	3c09244f 	lui	t1,0x244f
80002b10:	35292870 	ori	t1,t1,0x2870
80002b14:	3c088002 	lui	t0,0x8002
80002b18:	35081f50 	ori	t0,t0,0x1f50
80002b1c:	340aa4c9 	li	t2,0xa4c9
80002b20:	340ca4c8 	li	t4,0xa4c8
80002b24:	3c010001 	lui	at,0x1
80002b28:	00280821 	addu	at,at,t0
80002b2c:	ac29a4c8 	sw	t1,-23352(at)
80002b30:	3c100001 	lui	s0,0x1
80002b34:	02088021 	addu	s0,s0,t0
80002b38:	9210a4c9 	lbu	s0,-23351(s0)
80002b3c:	24120028 	li	s2,40
80002b40:	16120584 	bne	s0,s2,80004154 <inst_error>
80002b44:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:42
80002b48:	3c0960bd 	lui	t1,0x60bd
80002b4c:	3529b8c0 	ori	t1,t1,0xb8c0
80002b50:	3c088002 	lui	t0,0x8002
80002b54:	350860e0 	ori	t0,t0,0x60e0
80002b58:	340a9944 	li	t2,0x9944
80002b5c:	340c9944 	li	t4,0x9944
80002b60:	3c010001 	lui	at,0x1
80002b64:	00280821 	addu	at,at,t0
80002b68:	ac299944 	sw	t1,-26300(at)
80002b6c:	3c100001 	lui	s0,0x1
80002b70:	02088021 	addu	s0,s0,t0
80002b74:	92109944 	lbu	s0,-26300(s0)
80002b78:	241200c0 	li	s2,192
80002b7c:	16120575 	bne	s0,s2,80004154 <inst_error>
80002b80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:43
80002b84:	3c09952b 	lui	t1,0x952b
80002b88:	3529094a 	ori	t1,t1,0x94a
80002b8c:	3c088002 	lui	t0,0x8002
80002b90:	35084a94 	ori	t0,t0,0x4a94
80002b94:	240a5700 	li	t2,22272
80002b98:	240c5700 	li	t4,22272
80002b9c:	ad095700 	sw	t1,22272(t0)
80002ba0:	91105700 	lbu	s0,22272(t0)
80002ba4:	2412004a 	li	s2,74
80002ba8:	1612056a 	bne	s0,s2,80004154 <inst_error>
80002bac:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:44
80002bb0:	3c09407a 	lui	t1,0x407a
80002bb4:	35298b80 	ori	t1,t1,0x8b80
80002bb8:	3c088002 	lui	t0,0x8002
80002bbc:	3508bb68 	ori	t0,t0,0xbb68
80002bc0:	240a3d78 	li	t2,15736
80002bc4:	240c3d78 	li	t4,15736
80002bc8:	ad093d78 	sw	t1,15736(t0)
80002bcc:	91103d78 	lbu	s0,15736(t0)
80002bd0:	24120080 	li	s2,128
80002bd4:	1612055f 	bne	s0,s2,80004154 <inst_error>
80002bd8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:45
80002bdc:	3c091ca9 	lui	t1,0x1ca9
80002be0:	35293e6d 	ori	t1,t1,0x3e6d
80002be4:	3c088002 	lui	t0,0x8002
80002be8:	35080c60 	ori	t0,t0,0xc60
80002bec:	240a7e14 	li	t2,32276
80002bf0:	240c7e14 	li	t4,32276
80002bf4:	ad097e14 	sw	t1,32276(t0)
80002bf8:	91107e14 	lbu	s0,32276(t0)
80002bfc:	2412006d 	li	s2,109
80002c00:	16120554 	bne	s0,s2,80004154 <inst_error>
80002c04:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:46
80002c08:	3c09cbb3 	lui	t1,0xcbb3
80002c0c:	35295de0 	ori	t1,t1,0x5de0
80002c10:	3c088002 	lui	t0,0x8002
80002c14:	35082358 	ori	t0,t0,0x2358
80002c18:	240a24e0 	li	t2,9440
80002c1c:	240c24e0 	li	t4,9440
80002c20:	ad0924e0 	sw	t1,9440(t0)
80002c24:	911024e0 	lbu	s0,9440(t0)
80002c28:	241200e0 	li	s2,224
80002c2c:	16120549 	bne	s0,s2,80004154 <inst_error>
80002c30:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:47
80002c34:	3c098bc6 	lui	t1,0x8bc6
80002c38:	35290e3a 	ori	t1,t1,0xe3a
80002c3c:	3c088002 	lui	t0,0x8002
80002c40:	35082aa0 	ori	t0,t0,0x2aa0
80002c44:	240a354a 	li	t2,13642
80002c48:	240c3548 	li	t4,13640
80002c4c:	ad093548 	sw	t1,13640(t0)
80002c50:	9110354a 	lbu	s0,13642(t0)
80002c54:	241200c6 	li	s2,198
80002c58:	1612053e 	bne	s0,s2,80004154 <inst_error>
80002c5c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:48
80002c60:	3c099502 	lui	t1,0x9502
80002c64:	35290f1e 	ori	t1,t1,0xf1e
80002c68:	3c088002 	lui	t0,0x8002
80002c6c:	35082008 	ori	t0,t0,0x2008
80002c70:	240a320d 	li	t2,12813
80002c74:	240c320c 	li	t4,12812
80002c78:	ad09320c 	sw	t1,12812(t0)
80002c7c:	9110320d 	lbu	s0,12813(t0)
80002c80:	2412000f 	li	s2,15
80002c84:	16120533 	bne	s0,s2,80004154 <inst_error>
80002c88:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:49
80002c8c:	3c094c60 	lui	t1,0x4c60
80002c90:	352982f4 	ori	t1,t1,0x82f4
80002c94:	3c088002 	lui	t0,0x8002
80002c98:	350829e8 	ori	t0,t0,0x29e8
80002c9c:	240a59ec 	li	t2,23020
80002ca0:	240c59ec 	li	t4,23020
80002ca4:	ad0959ec 	sw	t1,23020(t0)
80002ca8:	911059ec 	lbu	s0,23020(t0)
80002cac:	241200f4 	li	s2,244
80002cb0:	16120528 	bne	s0,s2,80004154 <inst_error>
80002cb4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:50
80002cb8:	3c09e8c2 	lui	t1,0xe8c2
80002cbc:	35299c44 	ori	t1,t1,0x9c44
80002cc0:	3c088002 	lui	t0,0x8002
80002cc4:	350841e4 	ori	t0,t0,0x41e4
80002cc8:	240a30ca 	li	t2,12490
80002ccc:	240c30c8 	li	t4,12488
80002cd0:	ad0930c8 	sw	t1,12488(t0)
80002cd4:	911030ca 	lbu	s0,12490(t0)
80002cd8:	241200c2 	li	s2,194
80002cdc:	1612051d 	bne	s0,s2,80004154 <inst_error>
80002ce0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:51
80002ce4:	3c097dd8 	lui	t1,0x7dd8
80002ce8:	35299185 	ori	t1,t1,0x9185
80002cec:	3c088002 	lui	t0,0x8002
80002cf0:	3508c0a8 	ori	t0,t0,0xc0a8
80002cf4:	240a3184 	li	t2,12676
80002cf8:	240c3184 	li	t4,12676
80002cfc:	ad093184 	sw	t1,12676(t0)
80002d00:	91103184 	lbu	s0,12676(t0)
80002d04:	24120085 	li	s2,133
80002d08:	16120512 	bne	s0,s2,80004154 <inst_error>
80002d0c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:52
80002d10:	3c09f2ef 	lui	t1,0xf2ef
80002d14:	35292428 	ori	t1,t1,0x2428
80002d18:	3c088002 	lui	t0,0x8002
80002d1c:	35084478 	ori	t0,t0,0x4478
80002d20:	340ab5bc 	li	t2,0xb5bc
80002d24:	340cb5bc 	li	t4,0xb5bc
80002d28:	3c010001 	lui	at,0x1
80002d2c:	00280821 	addu	at,at,t0
80002d30:	ac29b5bc 	sw	t1,-19012(at)
80002d34:	3c100001 	lui	s0,0x1
80002d38:	02088021 	addu	s0,s0,t0
80002d3c:	9210b5bc 	lbu	s0,-19012(s0)
80002d40:	24120028 	li	s2,40
80002d44:	16120503 	bne	s0,s2,80004154 <inst_error>
80002d48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:53
80002d4c:	3c092789 	lui	t1,0x2789
80002d50:	3529e735 	ori	t1,t1,0xe735
80002d54:	3c088002 	lui	t0,0x8002
80002d58:	35088088 	ori	t0,t0,0x8088
80002d5c:	240a187c 	li	t2,6268
80002d60:	240c187c 	li	t4,6268
80002d64:	ad09187c 	sw	t1,6268(t0)
80002d68:	9110187c 	lbu	s0,6268(t0)
80002d6c:	24120035 	li	s2,53
80002d70:	161204f8 	bne	s0,s2,80004154 <inst_error>
80002d74:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:54
80002d78:	3c095761 	lui	t1,0x5761
80002d7c:	35293900 	ori	t1,t1,0x3900
80002d80:	3c088002 	lui	t0,0x8002
80002d84:	35086434 	ori	t0,t0,0x6434
80002d88:	340a80c8 	li	t2,0x80c8
80002d8c:	340c80c8 	li	t4,0x80c8
80002d90:	3c010001 	lui	at,0x1
80002d94:	00280821 	addu	at,at,t0
80002d98:	ac2980c8 	sw	t1,-32568(at)
80002d9c:	3c100001 	lui	s0,0x1
80002da0:	02088021 	addu	s0,s0,t0
80002da4:	921080c8 	lbu	s0,-32568(s0)
80002da8:	24120000 	li	s2,0
80002dac:	161204e9 	bne	s0,s2,80004154 <inst_error>
80002db0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:55
80002db4:	3c09f831 	lui	t1,0xf831
80002db8:	3529d258 	ori	t1,t1,0xd258
80002dbc:	3c088002 	lui	t0,0x8002
80002dc0:	3508b5f0 	ori	t0,t0,0xb5f0
80002dc4:	240a12cc 	li	t2,4812
80002dc8:	240c12cc 	li	t4,4812
80002dcc:	ad0912cc 	sw	t1,4812(t0)
80002dd0:	911012cc 	lbu	s0,4812(t0)
80002dd4:	24120058 	li	s2,88
80002dd8:	161204de 	bne	s0,s2,80004154 <inst_error>
80002ddc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:56
80002de0:	3c099476 	lui	t1,0x9476
80002de4:	35298ba0 	ori	t1,t1,0x8ba0
80002de8:	3c088002 	lui	t0,0x8002
80002dec:	35089ef8 	ori	t0,t0,0x9ef8
80002df0:	240a3d84 	li	t2,15748
80002df4:	240c3d84 	li	t4,15748
80002df8:	ad093d84 	sw	t1,15748(t0)
80002dfc:	91103d84 	lbu	s0,15748(t0)
80002e00:	241200a0 	li	s2,160
80002e04:	161204d3 	bne	s0,s2,80004154 <inst_error>
80002e08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:57
80002e0c:	3c096f5a 	lui	t1,0x6f5a
80002e10:	3529b393 	ori	t1,t1,0xb393
80002e14:	3c088002 	lui	t0,0x8002
80002e18:	350823d0 	ori	t0,t0,0x23d0
80002e1c:	240a61b8 	li	t2,25016
80002e20:	240c61b8 	li	t4,25016
80002e24:	ad0961b8 	sw	t1,25016(t0)
80002e28:	911061b8 	lbu	s0,25016(t0)
80002e2c:	24120093 	li	s2,147
80002e30:	161204c8 	bne	s0,s2,80004154 <inst_error>
80002e34:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:58
80002e38:	3c09d734 	lui	t1,0xd734
80002e3c:	352983da 	ori	t1,t1,0x83da
80002e40:	3c088002 	lui	t0,0x8002
80002e44:	35087a70 	ori	t0,t0,0x7a70
80002e48:	240a5009 	li	t2,20489
80002e4c:	240c5008 	li	t4,20488
80002e50:	ad095008 	sw	t1,20488(t0)
80002e54:	91105009 	lbu	s0,20489(t0)
80002e58:	24120083 	li	s2,131
80002e5c:	161204bd 	bne	s0,s2,80004154 <inst_error>
80002e60:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:59
80002e64:	3c094ab1 	lui	t1,0x4ab1
80002e68:	3529c5a6 	ori	t1,t1,0xc5a6
80002e6c:	3c088002 	lui	t0,0x8002
80002e70:	35086ea8 	ori	t0,t0,0x6ea8
80002e74:	240a61a0 	li	t2,24992
80002e78:	240c61a0 	li	t4,24992
80002e7c:	ad0961a0 	sw	t1,24992(t0)
80002e80:	911061a0 	lbu	s0,24992(t0)
80002e84:	241200a6 	li	s2,166
80002e88:	161204b2 	bne	s0,s2,80004154 <inst_error>
80002e8c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:60
80002e90:	3c09d4b6 	lui	t1,0xd4b6
80002e94:	3529c948 	ori	t1,t1,0xc948
80002e98:	3c088002 	lui	t0,0x8002
80002e9c:	35085864 	ori	t0,t0,0x5864
80002ea0:	240a6d0f 	li	t2,27919
80002ea4:	240c6d0c 	li	t4,27916
80002ea8:	ad096d0c 	sw	t1,27916(t0)
80002eac:	91106d0f 	lbu	s0,27919(t0)
80002eb0:	241200d4 	li	s2,212
80002eb4:	161204a7 	bne	s0,s2,80004154 <inst_error>
80002eb8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:61
80002ebc:	3c091b18 	lui	t1,0x1b18
80002ec0:	35299c1c 	ori	t1,t1,0x9c1c
80002ec4:	3c088002 	lui	t0,0x8002
80002ec8:	35082564 	ori	t0,t0,0x2564
80002ecc:	240a317e 	li	t2,12670
80002ed0:	240c317c 	li	t4,12668
80002ed4:	ad09317c 	sw	t1,12668(t0)
80002ed8:	9110317e 	lbu	s0,12670(t0)
80002edc:	24120018 	li	s2,24
80002ee0:	1612049c 	bne	s0,s2,80004154 <inst_error>
80002ee4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:62
80002ee8:	3c09861b 	lui	t1,0x861b
80002eec:	35293d98 	ori	t1,t1,0x3d98
80002ef0:	3c088002 	lui	t0,0x8002
80002ef4:	35085df8 	ori	t0,t0,0x5df8
80002ef8:	340a89a0 	li	t2,0x89a0
80002efc:	340c89a0 	li	t4,0x89a0
80002f00:	3c010001 	lui	at,0x1
80002f04:	00280821 	addu	at,at,t0
80002f08:	ac2989a0 	sw	t1,-30304(at)
80002f0c:	3c100001 	lui	s0,0x1
80002f10:	02088021 	addu	s0,s0,t0
80002f14:	921089a0 	lbu	s0,-30304(s0)
80002f18:	24120098 	li	s2,152
80002f1c:	1612048d 	bne	s0,s2,80004154 <inst_error>
80002f20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:63
80002f24:	3c091f87 	lui	t1,0x1f87
80002f28:	35296f58 	ori	t1,t1,0x6f58
80002f2c:	3c088002 	lui	t0,0x8002
80002f30:	350810e0 	ori	t0,t0,0x10e0
80002f34:	240a46bc 	li	t2,18108
80002f38:	240c46bc 	li	t4,18108
80002f3c:	ad0946bc 	sw	t1,18108(t0)
80002f40:	911046bc 	lbu	s0,18108(t0)
80002f44:	24120058 	li	s2,88
80002f48:	16120482 	bne	s0,s2,80004154 <inst_error>
80002f4c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:64
80002f50:	3c093b20 	lui	t1,0x3b20
80002f54:	35297858 	ori	t1,t1,0x7858
80002f58:	3c088002 	lui	t0,0x8002
80002f5c:	350814a4 	ori	t0,t0,0x14a4
80002f60:	240a1cf6 	li	t2,7414
80002f64:	240c1cf4 	li	t4,7412
80002f68:	ad091cf4 	sw	t1,7412(t0)
80002f6c:	91101cf6 	lbu	s0,7414(t0)
80002f70:	24120020 	li	s2,32
80002f74:	16120477 	bne	s0,s2,80004154 <inst_error>
80002f78:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:65
80002f7c:	3c0967c1 	lui	t1,0x67c1
80002f80:	3529dd18 	ori	t1,t1,0xdd18
80002f84:	3c088002 	lui	t0,0x8002
80002f88:	3508d370 	ori	t0,t0,0xd370
80002f8c:	240a2326 	li	t2,8998
80002f90:	240c2324 	li	t4,8996
80002f94:	ad092324 	sw	t1,8996(t0)
80002f98:	91102326 	lbu	s0,8998(t0)
80002f9c:	241200c1 	li	s2,193
80002fa0:	1612046c 	bne	s0,s2,80004154 <inst_error>
80002fa4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:66
80002fa8:	3c097066 	lui	t1,0x7066
80002fac:	352969a8 	ori	t1,t1,0x69a8
80002fb0:	3c088002 	lui	t0,0x8002
80002fb4:	350823dc 	ori	t0,t0,0x23dc
80002fb8:	240a3fb0 	li	t2,16304
80002fbc:	240c3fb0 	li	t4,16304
80002fc0:	ad093fb0 	sw	t1,16304(t0)
80002fc4:	91103fb0 	lbu	s0,16304(t0)
80002fc8:	241200a8 	li	s2,168
80002fcc:	16120461 	bne	s0,s2,80004154 <inst_error>
80002fd0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:67
80002fd4:	3c090e43 	lui	t1,0xe43
80002fd8:	352983c0 	ori	t1,t1,0x83c0
80002fdc:	3c088003 	lui	t0,0x8003
80002fe0:	240a44a9 	li	t2,17577
80002fe4:	240c44a8 	li	t4,17576
80002fe8:	ad0944a8 	sw	t1,17576(t0)
80002fec:	911044a9 	lbu	s0,17577(t0)
80002ff0:	24120083 	li	s2,131
80002ff4:	16120457 	bne	s0,s2,80004154 <inst_error>
80002ff8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:68
80002ffc:	3c09d9c8 	lui	t1,0xd9c8
80003000:	352961cc 	ori	t1,t1,0x61cc
80003004:	3c088003 	lui	t0,0x8003
80003008:	240a5d3e 	li	t2,23870
8000300c:	240c5d3c 	li	t4,23868
80003010:	ad095d3c 	sw	t1,23868(t0)
80003014:	91105d3e 	lbu	s0,23870(t0)
80003018:	241200c8 	li	s2,200
8000301c:	1612044d 	bne	s0,s2,80004154 <inst_error>
80003020:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:69
80003024:	3c09fecf 	lui	t1,0xfecf
80003028:	352979cc 	ori	t1,t1,0x79cc
8000302c:	3c088003 	lui	t0,0x8003
80003030:	240a6c20 	li	t2,27680
80003034:	240c6c20 	li	t4,27680
80003038:	ad096c20 	sw	t1,27680(t0)
8000303c:	91106c20 	lbu	s0,27680(t0)
80003040:	241200cc 	li	s2,204
80003044:	16120443 	bne	s0,s2,80004154 <inst_error>
80003048:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:70
8000304c:	3c0962ea 	lui	t1,0x62ea
80003050:	3529b940 	ori	t1,t1,0xb940
80003054:	3c088003 	lui	t0,0x8003
80003058:	340acfe1 	li	t2,0xcfe1
8000305c:	340ccfe0 	li	t4,0xcfe0
80003060:	3c010001 	lui	at,0x1
80003064:	00280821 	addu	at,at,t0
80003068:	ac29cfe0 	sw	t1,-12320(at)
8000306c:	3c100001 	lui	s0,0x1
80003070:	02088021 	addu	s0,s0,t0
80003074:	9210cfe1 	lbu	s0,-12319(s0)
80003078:	241200b9 	li	s2,185
8000307c:	16120435 	bne	s0,s2,80004154 <inst_error>
80003080:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:71
80003084:	3c09c5f7 	lui	t1,0xc5f7
80003088:	35291c93 	ori	t1,t1,0x1c93
8000308c:	3c088003 	lui	t0,0x8003
80003090:	240a03ac 	li	t2,940
80003094:	240c03ac 	li	t4,940
80003098:	ad0903ac 	sw	t1,940(t0)
8000309c:	911003ac 	lbu	s0,940(t0)
800030a0:	24120093 	li	s2,147
800030a4:	1612042b 	bne	s0,s2,80004154 <inst_error>
800030a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:72
800030ac:	3c09dc99 	lui	t1,0xdc99
800030b0:	35290bc0 	ori	t1,t1,0xbc0
800030b4:	3c088003 	lui	t0,0x8003
800030b8:	240a4632 	li	t2,17970
800030bc:	240c4630 	li	t4,17968
800030c0:	ad094630 	sw	t1,17968(t0)
800030c4:	91104632 	lbu	s0,17970(t0)
800030c8:	24120099 	li	s2,153
800030cc:	16120421 	bne	s0,s2,80004154 <inst_error>
800030d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:73
800030d4:	3c09ffa8 	lui	t1,0xffa8
800030d8:	352921b0 	ori	t1,t1,0x21b0
800030dc:	3c088003 	lui	t0,0x8003
800030e0:	240a047a 	li	t2,1146
800030e4:	240c0478 	li	t4,1144
800030e8:	ad090478 	sw	t1,1144(t0)
800030ec:	9110047a 	lbu	s0,1146(t0)
800030f0:	241200a8 	li	s2,168
800030f4:	16120417 	bne	s0,s2,80004154 <inst_error>
800030f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:74
800030fc:	3c09669c 	lui	t1,0x669c
80003100:	3529b8f8 	ori	t1,t1,0xb8f8
80003104:	3c088003 	lui	t0,0x8003
80003108:	240a5dc8 	li	t2,24008
8000310c:	240c5dc8 	li	t4,24008
80003110:	ad095dc8 	sw	t1,24008(t0)
80003114:	91105dc8 	lbu	s0,24008(t0)
80003118:	241200f8 	li	s2,248
8000311c:	1612040d 	bne	s0,s2,80004154 <inst_error>
80003120:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:75
80003124:	3c09d965 	lui	t1,0xd965
80003128:	35290b98 	ori	t1,t1,0xb98
8000312c:	3c088003 	lui	t0,0x8003
80003130:	340ad202 	li	t2,0xd202
80003134:	340cd200 	li	t4,0xd200
80003138:	3c010001 	lui	at,0x1
8000313c:	00280821 	addu	at,at,t0
80003140:	ac29d200 	sw	t1,-11776(at)
80003144:	3c100001 	lui	s0,0x1
80003148:	02088021 	addu	s0,s0,t0
8000314c:	9210d202 	lbu	s0,-11774(s0)
80003150:	24120065 	li	s2,101
80003154:	161203ff 	bne	s0,s2,80004154 <inst_error>
80003158:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:76
8000315c:	3c09845c 	lui	t1,0x845c
80003160:	352979fc 	ori	t1,t1,0x79fc
80003164:	3c088003 	lui	t0,0x8003
80003168:	340af504 	li	t2,0xf504
8000316c:	340cf504 	li	t4,0xf504
80003170:	3c010001 	lui	at,0x1
80003174:	00280821 	addu	at,at,t0
80003178:	ac29f504 	sw	t1,-2812(at)
8000317c:	3c100001 	lui	s0,0x1
80003180:	02088021 	addu	s0,s0,t0
80003184:	9210f504 	lbu	s0,-2812(s0)
80003188:	241200fc 	li	s2,252
8000318c:	161203f1 	bne	s0,s2,80004154 <inst_error>
80003190:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:77
80003194:	3c09a7ed 	lui	t1,0xa7ed
80003198:	35299420 	ori	t1,t1,0x9420
8000319c:	3c088003 	lui	t0,0x8003
800031a0:	340ae5e8 	li	t2,0xe5e8
800031a4:	340ce5e8 	li	t4,0xe5e8
800031a8:	3c010001 	lui	at,0x1
800031ac:	00280821 	addu	at,at,t0
800031b0:	ac29e5e8 	sw	t1,-6680(at)
800031b4:	3c100001 	lui	s0,0x1
800031b8:	02088021 	addu	s0,s0,t0
800031bc:	9210e5e8 	lbu	s0,-6680(s0)
800031c0:	24120020 	li	s2,32
800031c4:	161203e3 	bne	s0,s2,80004154 <inst_error>
800031c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:78
800031cc:	3c09a458 	lui	t1,0xa458
800031d0:	3529f1f2 	ori	t1,t1,0xf1f2
800031d4:	3c088003 	lui	t0,0x8003
800031d8:	340a9125 	li	t2,0x9125
800031dc:	340c9124 	li	t4,0x9124
800031e0:	3c010001 	lui	at,0x1
800031e4:	00280821 	addu	at,at,t0
800031e8:	ac299124 	sw	t1,-28380(at)
800031ec:	3c100001 	lui	s0,0x1
800031f0:	02088021 	addu	s0,s0,t0
800031f4:	92109125 	lbu	s0,-28379(s0)
800031f8:	241200f1 	li	s2,241
800031fc:	161203d5 	bne	s0,s2,80004154 <inst_error>
80003200:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:79
80003204:	3c09ad33 	lui	t1,0xad33
80003208:	3529ad20 	ori	t1,t1,0xad20
8000320c:	3c088003 	lui	t0,0x8003
80003210:	340adb1a 	li	t2,0xdb1a
80003214:	340cdb18 	li	t4,0xdb18
80003218:	3c010001 	lui	at,0x1
8000321c:	00280821 	addu	at,at,t0
80003220:	ac29db18 	sw	t1,-9448(at)
80003224:	3c100001 	lui	s0,0x1
80003228:	02088021 	addu	s0,s0,t0
8000322c:	9210db1a 	lbu	s0,-9446(s0)
80003230:	24120033 	li	s2,51
80003234:	161203c7 	bne	s0,s2,80004154 <inst_error>
80003238:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:80
8000323c:	3c09bd74 	lui	t1,0xbd74
80003240:	35293318 	ori	t1,t1,0x3318
80003244:	3c088003 	lui	t0,0x8003
80003248:	340ac2f8 	li	t2,0xc2f8
8000324c:	340cc2f8 	li	t4,0xc2f8
80003250:	3c010001 	lui	at,0x1
80003254:	00280821 	addu	at,at,t0
80003258:	ac29c2f8 	sw	t1,-15624(at)
8000325c:	3c100001 	lui	s0,0x1
80003260:	02088021 	addu	s0,s0,t0
80003264:	9210c2f8 	lbu	s0,-15624(s0)
80003268:	24120018 	li	s2,24
8000326c:	161203b9 	bne	s0,s2,80004154 <inst_error>
80003270:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:81
80003274:	3c09ec31 	lui	t1,0xec31
80003278:	35295702 	ori	t1,t1,0x5702
8000327c:	3c088003 	lui	t0,0x8003
80003280:	240a0230 	li	t2,560
80003284:	240c0230 	li	t4,560
80003288:	ad090230 	sw	t1,560(t0)
8000328c:	91100230 	lbu	s0,560(t0)
80003290:	24120002 	li	s2,2
80003294:	161203af 	bne	s0,s2,80004154 <inst_error>
80003298:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:82
8000329c:	3c097b43 	lui	t1,0x7b43
800032a0:	35293429 	ori	t1,t1,0x3429
800032a4:	3c088003 	lui	t0,0x8003
800032a8:	240a0ae0 	li	t2,2784
800032ac:	240c0ae0 	li	t4,2784
800032b0:	ad090ae0 	sw	t1,2784(t0)
800032b4:	91100ae0 	lbu	s0,2784(t0)
800032b8:	24120029 	li	s2,41
800032bc:	161203a5 	bne	s0,s2,80004154 <inst_error>
800032c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:83
800032c4:	3c093455 	lui	t1,0x3455
800032c8:	352992f0 	ori	t1,t1,0x92f0
800032cc:	3c088003 	lui	t0,0x8003
800032d0:	340ad080 	li	t2,0xd080
800032d4:	340cd080 	li	t4,0xd080
800032d8:	3c010001 	lui	at,0x1
800032dc:	00280821 	addu	at,at,t0
800032e0:	ac29d080 	sw	t1,-12160(at)
800032e4:	3c100001 	lui	s0,0x1
800032e8:	02088021 	addu	s0,s0,t0
800032ec:	9210d080 	lbu	s0,-12160(s0)
800032f0:	241200f0 	li	s2,240
800032f4:	16120397 	bne	s0,s2,80004154 <inst_error>
800032f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:84
800032fc:	3c0915fe 	lui	t1,0x15fe
80003300:	3529c970 	ori	t1,t1,0xc970
80003304:	3c088003 	lui	t0,0x8003
80003308:	340aa6d0 	li	t2,0xa6d0
8000330c:	340ca6d0 	li	t4,0xa6d0
80003310:	3c010001 	lui	at,0x1
80003314:	00280821 	addu	at,at,t0
80003318:	ac29a6d0 	sw	t1,-22832(at)
8000331c:	3c100001 	lui	s0,0x1
80003320:	02088021 	addu	s0,s0,t0
80003324:	9210a6d0 	lbu	s0,-22832(s0)
80003328:	24120070 	li	s2,112
8000332c:	16120389 	bne	s0,s2,80004154 <inst_error>
80003330:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:85
80003334:	3c09483e 	lui	t1,0x483e
80003338:	3529c7ee 	ori	t1,t1,0xc7ee
8000333c:	3c088003 	lui	t0,0x8003
80003340:	340a8570 	li	t2,0x8570
80003344:	340c8570 	li	t4,0x8570
80003348:	3c010001 	lui	at,0x1
8000334c:	00280821 	addu	at,at,t0
80003350:	ac298570 	sw	t1,-31376(at)
80003354:	3c100001 	lui	s0,0x1
80003358:	02088021 	addu	s0,s0,t0
8000335c:	92108570 	lbu	s0,-31376(s0)
80003360:	241200ee 	li	s2,238
80003364:	1612037b 	bne	s0,s2,80004154 <inst_error>
80003368:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:86
8000336c:	3c09ca82 	lui	t1,0xca82
80003370:	3529fc00 	ori	t1,t1,0xfc00
80003374:	3c088003 	lui	t0,0x8003
80003378:	240a5cfe 	li	t2,23806
8000337c:	240c5cfc 	li	t4,23804
80003380:	ad095cfc 	sw	t1,23804(t0)
80003384:	91105cfe 	lbu	s0,23806(t0)
80003388:	24120082 	li	s2,130
8000338c:	16120371 	bne	s0,s2,80004154 <inst_error>
80003390:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:87
80003394:	3c092595 	lui	t1,0x2595
80003398:	35293f20 	ori	t1,t1,0x3f20
8000339c:	3c088003 	lui	t0,0x8003
800033a0:	340ad0c3 	li	t2,0xd0c3
800033a4:	340cd0c0 	li	t4,0xd0c0
800033a8:	3c010001 	lui	at,0x1
800033ac:	00280821 	addu	at,at,t0
800033b0:	ac29d0c0 	sw	t1,-12096(at)
800033b4:	3c100001 	lui	s0,0x1
800033b8:	02088021 	addu	s0,s0,t0
800033bc:	9210d0c3 	lbu	s0,-12093(s0)
800033c0:	24120025 	li	s2,37
800033c4:	16120363 	bne	s0,s2,80004154 <inst_error>
800033c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:88
800033cc:	3c09c718 	lui	t1,0xc718
800033d0:	35294dde 	ori	t1,t1,0x4dde
800033d4:	3c088003 	lui	t0,0x8003
800033d8:	240a5558 	li	t2,21848
800033dc:	240c5558 	li	t4,21848
800033e0:	ad095558 	sw	t1,21848(t0)
800033e4:	91105558 	lbu	s0,21848(t0)
800033e8:	241200de 	li	s2,222
800033ec:	16120359 	bne	s0,s2,80004154 <inst_error>
800033f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:89
800033f4:	3c09899b 	lui	t1,0x899b
800033f8:	3529e100 	ori	t1,t1,0xe100
800033fc:	3c088003 	lui	t0,0x8003
80003400:	340af0c4 	li	t2,0xf0c4
80003404:	340cf0c4 	li	t4,0xf0c4
80003408:	3c010001 	lui	at,0x1
8000340c:	00280821 	addu	at,at,t0
80003410:	ac29f0c4 	sw	t1,-3900(at)
80003414:	3c100001 	lui	s0,0x1
80003418:	02088021 	addu	s0,s0,t0
8000341c:	9210f0c4 	lbu	s0,-3900(s0)
80003420:	24120000 	li	s2,0
80003424:	1612034b 	bne	s0,s2,80004154 <inst_error>
80003428:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:90
8000342c:	3c094629 	lui	t1,0x4629
80003430:	3529ad14 	ori	t1,t1,0xad14
80003434:	3c088003 	lui	t0,0x8003
80003438:	340af550 	li	t2,0xf550
8000343c:	340cf550 	li	t4,0xf550
80003440:	3c010001 	lui	at,0x1
80003444:	00280821 	addu	at,at,t0
80003448:	ac29f550 	sw	t1,-2736(at)
8000344c:	3c100001 	lui	s0,0x1
80003450:	02088021 	addu	s0,s0,t0
80003454:	9210f550 	lbu	s0,-2736(s0)
80003458:	24120014 	li	s2,20
8000345c:	1612033d 	bne	s0,s2,80004154 <inst_error>
80003460:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:91
80003464:	3c09b741 	lui	t1,0xb741
80003468:	3529c3b2 	ori	t1,t1,0xc3b2
8000346c:	3c088003 	lui	t0,0x8003
80003470:	340a9370 	li	t2,0x9370
80003474:	340c9370 	li	t4,0x9370
80003478:	3c010001 	lui	at,0x1
8000347c:	00280821 	addu	at,at,t0
80003480:	ac299370 	sw	t1,-27792(at)
80003484:	3c100001 	lui	s0,0x1
80003488:	02088021 	addu	s0,s0,t0
8000348c:	92109370 	lbu	s0,-27792(s0)
80003490:	241200b2 	li	s2,178
80003494:	1612032f 	bne	s0,s2,80004154 <inst_error>
80003498:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:92
8000349c:	3c093b7a 	lui	t1,0x3b7a
800034a0:	35298198 	ori	t1,t1,0x8198
800034a4:	3c088003 	lui	t0,0x8003
800034a8:	240a2dc5 	li	t2,11717
800034ac:	240c2dc4 	li	t4,11716
800034b0:	ad092dc4 	sw	t1,11716(t0)
800034b4:	91102dc5 	lbu	s0,11717(t0)
800034b8:	24120081 	li	s2,129
800034bc:	16120325 	bne	s0,s2,80004154 <inst_error>
800034c0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:93
800034c4:	3c09c5e5 	lui	t1,0xc5e5
800034c8:	352941f6 	ori	t1,t1,0x41f6
800034cc:	3c088003 	lui	t0,0x8003
800034d0:	240a3560 	li	t2,13664
800034d4:	240c3560 	li	t4,13664
800034d8:	ad093560 	sw	t1,13664(t0)
800034dc:	91103560 	lbu	s0,13664(t0)
800034e0:	241200f6 	li	s2,246
800034e4:	1612031b 	bne	s0,s2,80004154 <inst_error>
800034e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:94
800034ec:	3c09df5b 	lui	t1,0xdf5b
800034f0:	35291a0a 	ori	t1,t1,0x1a0a
800034f4:	3c088003 	lui	t0,0x8003
800034f8:	340ad8c0 	li	t2,0xd8c0
800034fc:	340cd8c0 	li	t4,0xd8c0
80003500:	3c010001 	lui	at,0x1
80003504:	00280821 	addu	at,at,t0
80003508:	ac29d8c0 	sw	t1,-10048(at)
8000350c:	3c100001 	lui	s0,0x1
80003510:	02088021 	addu	s0,s0,t0
80003514:	9210d8c0 	lbu	s0,-10048(s0)
80003518:	2412000a 	li	s2,10
8000351c:	1612030d 	bne	s0,s2,80004154 <inst_error>
80003520:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:95
80003524:	3c099e06 	lui	t1,0x9e06
80003528:	3529fab8 	ori	t1,t1,0xfab8
8000352c:	3c088003 	lui	t0,0x8003
80003530:	240a04ca 	li	t2,1226
80003534:	240c04c8 	li	t4,1224
80003538:	ad0904c8 	sw	t1,1224(t0)
8000353c:	911004ca 	lbu	s0,1226(t0)
80003540:	24120006 	li	s2,6
80003544:	16120303 	bne	s0,s2,80004154 <inst_error>
80003548:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:96
8000354c:	3c0970df 	lui	t1,0x70df
80003550:	35295f2c 	ori	t1,t1,0x5f2c
80003554:	3c088003 	lui	t0,0x8003
80003558:	340ab6ba 	li	t2,0xb6ba
8000355c:	340cb6b8 	li	t4,0xb6b8
80003560:	3c010001 	lui	at,0x1
80003564:	00280821 	addu	at,at,t0
80003568:	ac29b6b8 	sw	t1,-18760(at)
8000356c:	3c100001 	lui	s0,0x1
80003570:	02088021 	addu	s0,s0,t0
80003574:	9210b6ba 	lbu	s0,-18758(s0)
80003578:	241200df 	li	s2,223
8000357c:	161202f5 	bne	s0,s2,80004154 <inst_error>
80003580:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:97
80003584:	3c095717 	lui	t1,0x5717
80003588:	3529a104 	ori	t1,t1,0xa104
8000358c:	3c088003 	lui	t0,0x8003
80003590:	340aedc2 	li	t2,0xedc2
80003594:	340cedc0 	li	t4,0xedc0
80003598:	3c010001 	lui	at,0x1
8000359c:	00280821 	addu	at,at,t0
800035a0:	ac29edc0 	sw	t1,-4672(at)
800035a4:	3c100001 	lui	s0,0x1
800035a8:	02088021 	addu	s0,s0,t0
800035ac:	9210edc2 	lbu	s0,-4670(s0)
800035b0:	24120017 	li	s2,23
800035b4:	161202e7 	bne	s0,s2,80004154 <inst_error>
800035b8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:98
800035bc:	3c0991f2 	lui	t1,0x91f2
800035c0:	3529f789 	ori	t1,t1,0xf789
800035c4:	3c088003 	lui	t0,0x8003
800035c8:	340acf86 	li	t2,0xcf86
800035cc:	340ccf84 	li	t4,0xcf84
800035d0:	3c010001 	lui	at,0x1
800035d4:	00280821 	addu	at,at,t0
800035d8:	ac29cf84 	sw	t1,-12412(at)
800035dc:	3c100001 	lui	s0,0x1
800035e0:	02088021 	addu	s0,s0,t0
800035e4:	9210cf86 	lbu	s0,-12410(s0)
800035e8:	241200f2 	li	s2,242
800035ec:	161202d9 	bne	s0,s2,80004154 <inst_error>
800035f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:99
800035f4:	3c0948f3 	lui	t1,0x48f3
800035f8:	3529e380 	ori	t1,t1,0xe380
800035fc:	3c088003 	lui	t0,0x8003
80003600:	240a7b7c 	li	t2,31612
80003604:	240c7b7c 	li	t4,31612
80003608:	ad097b7c 	sw	t1,31612(t0)
8000360c:	91107b7c 	lbu	s0,31612(t0)
80003610:	24120080 	li	s2,128
80003614:	161202cf 	bne	s0,s2,80004154 <inst_error>
80003618:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:100
8000361c:	3c09804e 	lui	t1,0x804e
80003620:	35290100 	ori	t1,t1,0x100
80003624:	3c088003 	lui	t0,0x8003
80003628:	340ace00 	li	t2,0xce00
8000362c:	340cce00 	li	t4,0xce00
80003630:	3c010001 	lui	at,0x1
80003634:	00280821 	addu	at,at,t0
80003638:	ac29ce00 	sw	t1,-12800(at)
8000363c:	3c100001 	lui	s0,0x1
80003640:	02088021 	addu	s0,s0,t0
80003644:	9210ce00 	lbu	s0,-12800(s0)
80003648:	24120000 	li	s2,0
8000364c:	161202c1 	bne	s0,s2,80004154 <inst_error>
80003650:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:101
80003654:	3c092763 	lui	t1,0x2763
80003658:	35295fe4 	ori	t1,t1,0x5fe4
8000365c:	3c088003 	lui	t0,0x8003
80003660:	340af2e0 	li	t2,0xf2e0
80003664:	340cf2e0 	li	t4,0xf2e0
80003668:	3c010001 	lui	at,0x1
8000366c:	00280821 	addu	at,at,t0
80003670:	ac29f2e0 	sw	t1,-3360(at)
80003674:	3c100001 	lui	s0,0x1
80003678:	02088021 	addu	s0,s0,t0
8000367c:	9210f2e0 	lbu	s0,-3360(s0)
80003680:	241200e4 	li	s2,228
80003684:	161202b3 	bne	s0,s2,80004154 <inst_error>
80003688:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:102
8000368c:	3c09ffcb 	lui	t1,0xffcb
80003690:	3529e970 	ori	t1,t1,0xe970
80003694:	3c088003 	lui	t0,0x8003
80003698:	240a59ae 	li	t2,22958
8000369c:	240c59ac 	li	t4,22956
800036a0:	ad0959ac 	sw	t1,22956(t0)
800036a4:	911059ae 	lbu	s0,22958(t0)
800036a8:	241200cb 	li	s2,203
800036ac:	161202a9 	bne	s0,s2,80004154 <inst_error>
800036b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:103
800036b4:	3c095a3c 	lui	t1,0x5a3c
800036b8:	3529ef6e 	ori	t1,t1,0xef6e
800036bc:	3c088003 	lui	t0,0x8003
800036c0:	340aa605 	li	t2,0xa605
800036c4:	340ca604 	li	t4,0xa604
800036c8:	3c010001 	lui	at,0x1
800036cc:	00280821 	addu	at,at,t0
800036d0:	ac29a604 	sw	t1,-23036(at)
800036d4:	3c100001 	lui	s0,0x1
800036d8:	02088021 	addu	s0,s0,t0
800036dc:	9210a605 	lbu	s0,-23035(s0)
800036e0:	241200ef 	li	s2,239
800036e4:	1612029b 	bne	s0,s2,80004154 <inst_error>
800036e8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:104
800036ec:	3c09ef7b 	lui	t1,0xef7b
800036f0:	35295e90 	ori	t1,t1,0x5e90
800036f4:	3c088003 	lui	t0,0x8003
800036f8:	340a8896 	li	t2,0x8896
800036fc:	340c8894 	li	t4,0x8894
80003700:	3c010001 	lui	at,0x1
80003704:	00280821 	addu	at,at,t0
80003708:	ac298894 	sw	t1,-30572(at)
8000370c:	3c100001 	lui	s0,0x1
80003710:	02088021 	addu	s0,s0,t0
80003714:	92108896 	lbu	s0,-30570(s0)
80003718:	2412007b 	li	s2,123
8000371c:	1612028d 	bne	s0,s2,80004154 <inst_error>
80003720:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:105
80003724:	3c09262a 	lui	t1,0x262a
80003728:	35295e90 	ori	t1,t1,0x5e90
8000372c:	3c088003 	lui	t0,0x8003
80003730:	340af96f 	li	t2,0xf96f
80003734:	340cf96c 	li	t4,0xf96c
80003738:	3c010001 	lui	at,0x1
8000373c:	00280821 	addu	at,at,t0
80003740:	ac29f96c 	sw	t1,-1684(at)
80003744:	3c100001 	lui	s0,0x1
80003748:	02088021 	addu	s0,s0,t0
8000374c:	9210f96f 	lbu	s0,-1681(s0)
80003750:	24120026 	li	s2,38
80003754:	1612027f 	bne	s0,s2,80004154 <inst_error>
80003758:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:106
8000375c:	3c09a267 	lui	t1,0xa267
80003760:	352901e8 	ori	t1,t1,0x1e8
80003764:	3c088003 	lui	t0,0x8003
80003768:	340a9399 	li	t2,0x9399
8000376c:	340c9398 	li	t4,0x9398
80003770:	3c010001 	lui	at,0x1
80003774:	00280821 	addu	at,at,t0
80003778:	ac299398 	sw	t1,-27752(at)
8000377c:	3c100001 	lui	s0,0x1
80003780:	02088021 	addu	s0,s0,t0
80003784:	92109399 	lbu	s0,-27751(s0)
80003788:	24120001 	li	s2,1
8000378c:	16120271 	bne	s0,s2,80004154 <inst_error>
80003790:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:107
80003794:	3c092f2f 	lui	t1,0x2f2f
80003798:	352973f0 	ori	t1,t1,0x73f0
8000379c:	3c088003 	lui	t0,0x8003
800037a0:	340aea14 	li	t2,0xea14
800037a4:	340cea14 	li	t4,0xea14
800037a8:	3c010001 	lui	at,0x1
800037ac:	00280821 	addu	at,at,t0
800037b0:	ac29ea14 	sw	t1,-5612(at)
800037b4:	3c100001 	lui	s0,0x1
800037b8:	02088021 	addu	s0,s0,t0
800037bc:	9210ea14 	lbu	s0,-5612(s0)
800037c0:	241200f0 	li	s2,240
800037c4:	16120263 	bne	s0,s2,80004154 <inst_error>
800037c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:108
800037cc:	3c0938ce 	lui	t1,0x38ce
800037d0:	35294640 	ori	t1,t1,0x4640
800037d4:	3c088003 	lui	t0,0x8003
800037d8:	240a5782 	li	t2,22402
800037dc:	240c5780 	li	t4,22400
800037e0:	ad095780 	sw	t1,22400(t0)
800037e4:	91105782 	lbu	s0,22402(t0)
800037e8:	241200ce 	li	s2,206
800037ec:	16120259 	bne	s0,s2,80004154 <inst_error>
800037f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:109
800037f4:	3c09bb69 	lui	t1,0xbb69
800037f8:	3529c800 	ori	t1,t1,0xc800
800037fc:	3c088003 	lui	t0,0x8003
80003800:	240a0b46 	li	t2,2886
80003804:	240c0b44 	li	t4,2884
80003808:	ad090b44 	sw	t1,2884(t0)
8000380c:	91100b46 	lbu	s0,2886(t0)
80003810:	24120069 	li	s2,105
80003814:	1612024f 	bne	s0,s2,80004154 <inst_error>
80003818:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:110
8000381c:	3c097b9d 	lui	t1,0x7b9d
80003820:	3529a800 	ori	t1,t1,0xa800
80003824:	3c088003 	lui	t0,0x8003
80003828:	340af04a 	li	t2,0xf04a
8000382c:	340cf048 	li	t4,0xf048
80003830:	3c010001 	lui	at,0x1
80003834:	00280821 	addu	at,at,t0
80003838:	ac29f048 	sw	t1,-4024(at)
8000383c:	3c100001 	lui	s0,0x1
80003840:	02088021 	addu	s0,s0,t0
80003844:	9210f04a 	lbu	s0,-4022(s0)
80003848:	2412009d 	li	s2,157
8000384c:	16120241 	bne	s0,s2,80004154 <inst_error>
80003850:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:111
80003854:	3c095568 	lui	t1,0x5568
80003858:	3529c260 	ori	t1,t1,0xc260
8000385c:	3c088003 	lui	t0,0x8003
80003860:	240a72e0 	li	t2,29408
80003864:	240c72e0 	li	t4,29408
80003868:	ad0972e0 	sw	t1,29408(t0)
8000386c:	911072e0 	lbu	s0,29408(t0)
80003870:	24120060 	li	s2,96
80003874:	16120237 	bne	s0,s2,80004154 <inst_error>
80003878:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:112
8000387c:	3c094bd9 	lui	t1,0x4bd9
80003880:	35293c80 	ori	t1,t1,0x3c80
80003884:	3c088003 	lui	t0,0x8003
80003888:	340aee30 	li	t2,0xee30
8000388c:	340cee30 	li	t4,0xee30
80003890:	3c010001 	lui	at,0x1
80003894:	00280821 	addu	at,at,t0
80003898:	ac29ee30 	sw	t1,-4560(at)
8000389c:	3c100001 	lui	s0,0x1
800038a0:	02088021 	addu	s0,s0,t0
800038a4:	9210ee30 	lbu	s0,-4560(s0)
800038a8:	24120080 	li	s2,128
800038ac:	16120229 	bne	s0,s2,80004154 <inst_error>
800038b0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:113
800038b4:	3c0923ad 	lui	t1,0x23ad
800038b8:	3529f432 	ori	t1,t1,0xf432
800038bc:	3c088003 	lui	t0,0x8003
800038c0:	240a6009 	li	t2,24585
800038c4:	240c6008 	li	t4,24584
800038c8:	ad096008 	sw	t1,24584(t0)
800038cc:	91106009 	lbu	s0,24585(t0)
800038d0:	241200f4 	li	s2,244
800038d4:	1612021f 	bne	s0,s2,80004154 <inst_error>
800038d8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:114
800038dc:	3c096187 	lui	t1,0x6187
800038e0:	3529f420 	ori	t1,t1,0xf420
800038e4:	3c088003 	lui	t0,0x8003
800038e8:	240a2fd4 	li	t2,12244
800038ec:	240c2fd4 	li	t4,12244
800038f0:	ad092fd4 	sw	t1,12244(t0)
800038f4:	91102fd4 	lbu	s0,12244(t0)
800038f8:	24120020 	li	s2,32
800038fc:	16120215 	bne	s0,s2,80004154 <inst_error>
80003900:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:115
80003904:	3c096836 	lui	t1,0x6836
80003908:	35293fa0 	ori	t1,t1,0x3fa0
8000390c:	3c088003 	lui	t0,0x8003
80003910:	240a3e68 	li	t2,15976
80003914:	240c3e68 	li	t4,15976
80003918:	ad093e68 	sw	t1,15976(t0)
8000391c:	91103e68 	lbu	s0,15976(t0)
80003920:	241200a0 	li	s2,160
80003924:	1612020b 	bne	s0,s2,80004154 <inst_error>
80003928:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:116
8000392c:	3c093723 	lui	t1,0x3723
80003930:	3529c7f3 	ori	t1,t1,0xc7f3
80003934:	3c088003 	lui	t0,0x8003
80003938:	240a43e0 	li	t2,17376
8000393c:	240c43e0 	li	t4,17376
80003940:	ad0943e0 	sw	t1,17376(t0)
80003944:	911043e0 	lbu	s0,17376(t0)
80003948:	241200f3 	li	s2,243
8000394c:	16120201 	bne	s0,s2,80004154 <inst_error>
80003950:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:117
80003954:	3c09d367 	lui	t1,0xd367
80003958:	3529e11a 	ori	t1,t1,0xe11a
8000395c:	3c088003 	lui	t0,0x8003
80003960:	240a0000 	li	t2,0
80003964:	240c0000 	li	t4,0
80003968:	ad090000 	sw	t1,0(t0)
8000396c:	91100000 	lbu	s0,0(t0)
80003970:	2412001a 	li	s2,26
80003974:	161201f7 	bne	s0,s2,80004154 <inst_error>
80003978:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:118
8000397c:	3c09ea1b 	lui	t1,0xea1b
80003980:	3529c1e0 	ori	t1,t1,0xc1e0
80003984:	3c088003 	lui	t0,0x8003
80003988:	240a0003 	li	t2,3
8000398c:	240c0000 	li	t4,0
80003990:	ad090000 	sw	t1,0(t0)
80003994:	91100003 	lbu	s0,3(t0)
80003998:	241200ea 	li	s2,234
8000399c:	161201ed 	bne	s0,s2,80004154 <inst_error>
800039a0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:119
800039a4:	3c090dbc 	lui	t1,0xdbc
800039a8:	3529d2ea 	ori	t1,t1,0xd2ea
800039ac:	3c088003 	lui	t0,0x8003
800039b0:	240a0001 	li	t2,1
800039b4:	240c0000 	li	t4,0
800039b8:	ad090000 	sw	t1,0(t0)
800039bc:	91100001 	lbu	s0,1(t0)
800039c0:	241200d2 	li	s2,210
800039c4:	161201e3 	bne	s0,s2,80004154 <inst_error>
800039c8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:120
800039cc:	3c092e83 	lui	t1,0x2e83
800039d0:	352977c6 	ori	t1,t1,0x77c6
800039d4:	3c088003 	lui	t0,0x8003
800039d8:	240a0000 	li	t2,0
800039dc:	240c0000 	li	t4,0
800039e0:	ad090000 	sw	t1,0(t0)
800039e4:	91100000 	lbu	s0,0(t0)
800039e8:	241200c6 	li	s2,198
800039ec:	161201d9 	bne	s0,s2,80004154 <inst_error>
800039f0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:121
800039f4:	3c0985d1 	lui	t1,0x85d1
800039f8:	3529767c 	ori	t1,t1,0x767c
800039fc:	3c088003 	lui	t0,0x8003
80003a00:	240a0001 	li	t2,1
80003a04:	240c0000 	li	t4,0
80003a08:	ad090000 	sw	t1,0(t0)
80003a0c:	91100001 	lbu	s0,1(t0)
80003a10:	24120076 	li	s2,118
80003a14:	161201cf 	bne	s0,s2,80004154 <inst_error>
80003a18:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:122
80003a1c:	3c092a80 	lui	t1,0x2a80
80003a20:	35297b6e 	ori	t1,t1,0x7b6e
80003a24:	3c088003 	lui	t0,0x8003
80003a28:	240a0000 	li	t2,0
80003a2c:	240c0000 	li	t4,0
80003a30:	ad090000 	sw	t1,0(t0)
80003a34:	91100000 	lbu	s0,0(t0)
80003a38:	2412006e 	li	s2,110
80003a3c:	161201c5 	bne	s0,s2,80004154 <inst_error>
80003a40:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:123
80003a44:	3c097c7e 	lui	t1,0x7c7e
80003a48:	3529468b 	ori	t1,t1,0x468b
80003a4c:	3c088003 	lui	t0,0x8003
80003a50:	240a0001 	li	t2,1
80003a54:	240c0000 	li	t4,0
80003a58:	ad090000 	sw	t1,0(t0)
80003a5c:	91100001 	lbu	s0,1(t0)
80003a60:	24120046 	li	s2,70
80003a64:	161201bb 	bne	s0,s2,80004154 <inst_error>
80003a68:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:124
80003a6c:	3c09766b 	lui	t1,0x766b
80003a70:	352930aa 	ori	t1,t1,0x30aa
80003a74:	3c088003 	lui	t0,0x8003
80003a78:	240a0000 	li	t2,0
80003a7c:	240c0000 	li	t4,0
80003a80:	ad090000 	sw	t1,0(t0)
80003a84:	91100000 	lbu	s0,0(t0)
80003a88:	241200aa 	li	s2,170
80003a8c:	161201b1 	bne	s0,s2,80004154 <inst_error>
80003a90:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:125
80003a94:	3c09f311 	lui	t1,0xf311
80003a98:	35292744 	ori	t1,t1,0x2744
80003a9c:	3c088003 	lui	t0,0x8003
80003aa0:	240a0003 	li	t2,3
80003aa4:	240c0000 	li	t4,0
80003aa8:	ad090000 	sw	t1,0(t0)
80003aac:	91100003 	lbu	s0,3(t0)
80003ab0:	241200f3 	li	s2,243
80003ab4:	161201a7 	bne	s0,s2,80004154 <inst_error>
80003ab8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:126
80003abc:	3c0924da 	lui	t1,0x24da
80003ac0:	3529377c 	ori	t1,t1,0x377c
80003ac4:	3c088003 	lui	t0,0x8003
80003ac8:	240a0001 	li	t2,1
80003acc:	240c0000 	li	t4,0
80003ad0:	ad090000 	sw	t1,0(t0)
80003ad4:	91100001 	lbu	s0,1(t0)
80003ad8:	24120037 	li	s2,55
80003adc:	1612019d 	bne	s0,s2,80004154 <inst_error>
80003ae0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:127
80003ae4:	3c099eda 	lui	t1,0x9eda
80003ae8:	35291a30 	ori	t1,t1,0x1a30
80003aec:	3c088003 	lui	t0,0x8003
80003af0:	240a0001 	li	t2,1
80003af4:	240c0000 	li	t4,0
80003af8:	ad090000 	sw	t1,0(t0)
80003afc:	91100001 	lbu	s0,1(t0)
80003b00:	2412001a 	li	s2,26
80003b04:	16120193 	bne	s0,s2,80004154 <inst_error>
80003b08:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:128
80003b0c:	3c091e77 	lui	t1,0x1e77
80003b10:	352930fe 	ori	t1,t1,0x30fe
80003b14:	3c088003 	lui	t0,0x8003
80003b18:	240a0000 	li	t2,0
80003b1c:	240c0000 	li	t4,0
80003b20:	ad090000 	sw	t1,0(t0)
80003b24:	91100000 	lbu	s0,0(t0)
80003b28:	241200fe 	li	s2,254
80003b2c:	16120189 	bne	s0,s2,80004154 <inst_error>
80003b30:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:129
80003b34:	3c094acf 	lui	t1,0x4acf
80003b38:	3529dea0 	ori	t1,t1,0xdea0
80003b3c:	3c088003 	lui	t0,0x8003
80003b40:	240a0001 	li	t2,1
80003b44:	240c0000 	li	t4,0
80003b48:	ad090000 	sw	t1,0(t0)
80003b4c:	91100001 	lbu	s0,1(t0)
80003b50:	241200de 	li	s2,222
80003b54:	1612017f 	bne	s0,s2,80004154 <inst_error>
80003b58:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:130
80003b5c:	3c0984b7 	lui	t1,0x84b7
80003b60:	35290109 	ori	t1,t1,0x109
80003b64:	3c088003 	lui	t0,0x8003
80003b68:	240a0003 	li	t2,3
80003b6c:	240c0000 	li	t4,0
80003b70:	ad090000 	sw	t1,0(t0)
80003b74:	91100003 	lbu	s0,3(t0)
80003b78:	24120084 	li	s2,132
80003b7c:	16120175 	bne	s0,s2,80004154 <inst_error>
80003b80:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:131
80003b84:	3c09e4fb 	lui	t1,0xe4fb
80003b88:	35293fe0 	ori	t1,t1,0x3fe0
80003b8c:	3c088003 	lui	t0,0x8003
80003b90:	240a0002 	li	t2,2
80003b94:	240c0000 	li	t4,0
80003b98:	ad090000 	sw	t1,0(t0)
80003b9c:	91100002 	lbu	s0,2(t0)
80003ba0:	241200fb 	li	s2,251
80003ba4:	1612016b 	bne	s0,s2,80004154 <inst_error>
80003ba8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:132
80003bac:	3c095a32 	lui	t1,0x5a32
80003bb0:	35291c70 	ori	t1,t1,0x1c70
80003bb4:	3c088003 	lui	t0,0x8003
80003bb8:	240a0003 	li	t2,3
80003bbc:	240c0000 	li	t4,0
80003bc0:	ad090000 	sw	t1,0(t0)
80003bc4:	91100003 	lbu	s0,3(t0)
80003bc8:	2412005a 	li	s2,90
80003bcc:	16120161 	bne	s0,s2,80004154 <inst_error>
80003bd0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:133
80003bd4:	3c092d4b 	lui	t1,0x2d4b
80003bd8:	3529afb8 	ori	t1,t1,0xafb8
80003bdc:	3c088003 	lui	t0,0x8003
80003be0:	240a0000 	li	t2,0
80003be4:	240c0000 	li	t4,0
80003be8:	ad090000 	sw	t1,0(t0)
80003bec:	91100000 	lbu	s0,0(t0)
80003bf0:	241200b8 	li	s2,184
80003bf4:	16120157 	bne	s0,s2,80004154 <inst_error>
80003bf8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:134
80003bfc:	3c093b25 	lui	t1,0x3b25
80003c00:	35290b23 	ori	t1,t1,0xb23
80003c04:	3c088003 	lui	t0,0x8003
80003c08:	240a0001 	li	t2,1
80003c0c:	240c0000 	li	t4,0
80003c10:	ad090000 	sw	t1,0(t0)
80003c14:	91100001 	lbu	s0,1(t0)
80003c18:	2412000b 	li	s2,11
80003c1c:	1612014d 	bne	s0,s2,80004154 <inst_error>
80003c20:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:135
80003c24:	3c095f9c 	lui	t1,0x5f9c
80003c28:	352975e8 	ori	t1,t1,0x75e8
80003c2c:	3c088003 	lui	t0,0x8003
80003c30:	240a0000 	li	t2,0
80003c34:	240c0000 	li	t4,0
80003c38:	ad090000 	sw	t1,0(t0)
80003c3c:	91100000 	lbu	s0,0(t0)
80003c40:	241200e8 	li	s2,232
80003c44:	16120143 	bne	s0,s2,80004154 <inst_error>
80003c48:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:136
80003c4c:	3c09c37b 	lui	t1,0xc37b
80003c50:	352966a0 	ori	t1,t1,0x66a0
80003c54:	3c088003 	lui	t0,0x8003
80003c58:	240a0002 	li	t2,2
80003c5c:	240c0000 	li	t4,0
80003c60:	ad090000 	sw	t1,0(t0)
80003c64:	91100002 	lbu	s0,2(t0)
80003c68:	2412007b 	li	s2,123
80003c6c:	16120139 	bne	s0,s2,80004154 <inst_error>
80003c70:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:137
80003c74:	3c099beb 	lui	t1,0x9beb
80003c78:	352924a0 	ori	t1,t1,0x24a0
80003c7c:	3c088003 	lui	t0,0x8003
80003c80:	240a0000 	li	t2,0
80003c84:	240c0000 	li	t4,0
80003c88:	ad090000 	sw	t1,0(t0)
80003c8c:	91100000 	lbu	s0,0(t0)
80003c90:	241200a0 	li	s2,160
80003c94:	1612012f 	bne	s0,s2,80004154 <inst_error>
80003c98:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:138
80003c9c:	3c0910fd 	lui	t1,0x10fd
80003ca0:	3529c3f6 	ori	t1,t1,0xc3f6
80003ca4:	3c088003 	lui	t0,0x8003
80003ca8:	240a0003 	li	t2,3
80003cac:	240c0000 	li	t4,0
80003cb0:	ad090000 	sw	t1,0(t0)
80003cb4:	91100003 	lbu	s0,3(t0)
80003cb8:	24120010 	li	s2,16
80003cbc:	16120125 	bne	s0,s2,80004154 <inst_error>
80003cc0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:139
80003cc4:	3c0958cf 	lui	t1,0x58cf
80003cc8:	35291c72 	ori	t1,t1,0x1c72
80003ccc:	3c088003 	lui	t0,0x8003
80003cd0:	240a0002 	li	t2,2
80003cd4:	240c0000 	li	t4,0
80003cd8:	ad090000 	sw	t1,0(t0)
80003cdc:	91100002 	lbu	s0,2(t0)
80003ce0:	241200cf 	li	s2,207
80003ce4:	1612011b 	bne	s0,s2,80004154 <inst_error>
80003ce8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:140
80003cec:	3c0901e4 	lui	t1,0x1e4
80003cf0:	3529337c 	ori	t1,t1,0x337c
80003cf4:	3c088003 	lui	t0,0x8003
80003cf8:	240a0002 	li	t2,2
80003cfc:	240c0000 	li	t4,0
80003d00:	ad090000 	sw	t1,0(t0)
80003d04:	91100002 	lbu	s0,2(t0)
80003d08:	241200e4 	li	s2,228
80003d0c:	16120111 	bne	s0,s2,80004154 <inst_error>
80003d10:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:141
80003d14:	3c09cadc 	lui	t1,0xcadc
80003d18:	3529a1a0 	ori	t1,t1,0xa1a0
80003d1c:	3c088003 	lui	t0,0x8003
80003d20:	240a0001 	li	t2,1
80003d24:	240c0000 	li	t4,0
80003d28:	ad090000 	sw	t1,0(t0)
80003d2c:	91100001 	lbu	s0,1(t0)
80003d30:	241200a1 	li	s2,161
80003d34:	16120107 	bne	s0,s2,80004154 <inst_error>
80003d38:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:142
80003d3c:	3c09e439 	lui	t1,0xe439
80003d40:	3529bcca 	ori	t1,t1,0xbcca
80003d44:	3c088003 	lui	t0,0x8003
80003d48:	240a0002 	li	t2,2
80003d4c:	240c0000 	li	t4,0
80003d50:	ad090000 	sw	t1,0(t0)
80003d54:	91100002 	lbu	s0,2(t0)
80003d58:	24120039 	li	s2,57
80003d5c:	161200fd 	bne	s0,s2,80004154 <inst_error>
80003d60:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:143
80003d64:	3c09cac5 	lui	t1,0xcac5
80003d68:	35298484 	ori	t1,t1,0x8484
80003d6c:	3c088003 	lui	t0,0x8003
80003d70:	240a0002 	li	t2,2
80003d74:	240c0000 	li	t4,0
80003d78:	ad090000 	sw	t1,0(t0)
80003d7c:	91100002 	lbu	s0,2(t0)
80003d80:	241200c5 	li	s2,197
80003d84:	161200f3 	bne	s0,s2,80004154 <inst_error>
80003d88:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:144
80003d8c:	3c09d6fd 	lui	t1,0xd6fd
80003d90:	35295b64 	ori	t1,t1,0x5b64
80003d94:	3c088003 	lui	t0,0x8003
80003d98:	240a0000 	li	t2,0
80003d9c:	240c0000 	li	t4,0
80003da0:	ad090000 	sw	t1,0(t0)
80003da4:	91100000 	lbu	s0,0(t0)
80003da8:	24120064 	li	s2,100
80003dac:	161200e9 	bne	s0,s2,80004154 <inst_error>
80003db0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:145
80003db4:	3c090b32 	lui	t1,0xb32
80003db8:	352979d8 	ori	t1,t1,0x79d8
80003dbc:	3c088003 	lui	t0,0x8003
80003dc0:	240a0003 	li	t2,3
80003dc4:	240c0000 	li	t4,0
80003dc8:	ad090000 	sw	t1,0(t0)
80003dcc:	91100003 	lbu	s0,3(t0)
80003dd0:	2412000b 	li	s2,11
80003dd4:	161200df 	bne	s0,s2,80004154 <inst_error>
80003dd8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:146
80003ddc:	3c096307 	lui	t1,0x6307
80003de0:	35294a44 	ori	t1,t1,0x4a44
80003de4:	3c088003 	lui	t0,0x8003
80003de8:	240a0001 	li	t2,1
80003dec:	240c0000 	li	t4,0
80003df0:	ad090000 	sw	t1,0(t0)
80003df4:	91100001 	lbu	s0,1(t0)
80003df8:	2412004a 	li	s2,74
80003dfc:	161200d5 	bne	s0,s2,80004154 <inst_error>
80003e00:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:147
80003e04:	3c09d84c 	lui	t1,0xd84c
80003e08:	35298078 	ori	t1,t1,0x8078
80003e0c:	3c088003 	lui	t0,0x8003
80003e10:	240a0003 	li	t2,3
80003e14:	240c0000 	li	t4,0
80003e18:	ad090000 	sw	t1,0(t0)
80003e1c:	91100003 	lbu	s0,3(t0)
80003e20:	241200d8 	li	s2,216
80003e24:	161200cb 	bne	s0,s2,80004154 <inst_error>
80003e28:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:148
80003e2c:	3c09f9e9 	lui	t1,0xf9e9
80003e30:	3529931a 	ori	t1,t1,0x931a
80003e34:	3c088003 	lui	t0,0x8003
80003e38:	240a0003 	li	t2,3
80003e3c:	240c0000 	li	t4,0
80003e40:	ad090000 	sw	t1,0(t0)
80003e44:	91100003 	lbu	s0,3(t0)
80003e48:	241200f9 	li	s2,249
80003e4c:	161200c1 	bne	s0,s2,80004154 <inst_error>
80003e50:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:149
80003e54:	3c091e1d 	lui	t1,0x1e1d
80003e58:	352911d0 	ori	t1,t1,0x11d0
80003e5c:	3c088003 	lui	t0,0x8003
80003e60:	240a0003 	li	t2,3
80003e64:	240c0000 	li	t4,0
80003e68:	ad090000 	sw	t1,0(t0)
80003e6c:	91100003 	lbu	s0,3(t0)
80003e70:	2412001e 	li	s2,30
80003e74:	161200b7 	bne	s0,s2,80004154 <inst_error>
80003e78:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:150
80003e7c:	3c09d4be 	lui	t1,0xd4be
80003e80:	35290052 	ori	t1,t1,0x52
80003e84:	3c088003 	lui	t0,0x8003
80003e88:	240a0003 	li	t2,3
80003e8c:	240c0000 	li	t4,0
80003e90:	ad090000 	sw	t1,0(t0)
80003e94:	91100003 	lbu	s0,3(t0)
80003e98:	241200d4 	li	s2,212
80003e9c:	161200ad 	bne	s0,s2,80004154 <inst_error>
80003ea0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:151
80003ea4:	3c09c1d5 	lui	t1,0xc1d5
80003ea8:	3529e430 	ori	t1,t1,0xe430
80003eac:	3c088003 	lui	t0,0x8003
80003eb0:	240a0001 	li	t2,1
80003eb4:	240c0000 	li	t4,0
80003eb8:	ad090000 	sw	t1,0(t0)
80003ebc:	91100001 	lbu	s0,1(t0)
80003ec0:	241200e4 	li	s2,228
80003ec4:	161200a3 	bne	s0,s2,80004154 <inst_error>
80003ec8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:152
80003ecc:	3c09f4fd 	lui	t1,0xf4fd
80003ed0:	352959b0 	ori	t1,t1,0x59b0
80003ed4:	3c088003 	lui	t0,0x8003
80003ed8:	240a0000 	li	t2,0
80003edc:	240c0000 	li	t4,0
80003ee0:	ad090000 	sw	t1,0(t0)
80003ee4:	91100000 	lbu	s0,0(t0)
80003ee8:	241200b0 	li	s2,176
80003eec:	16120099 	bne	s0,s2,80004154 <inst_error>
80003ef0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:153
80003ef4:	3c09dd4f 	lui	t1,0xdd4f
80003ef8:	35293800 	ori	t1,t1,0x3800
80003efc:	3c088003 	lui	t0,0x8003
80003f00:	240a0002 	li	t2,2
80003f04:	240c0000 	li	t4,0
80003f08:	ad090000 	sw	t1,0(t0)
80003f0c:	91100002 	lbu	s0,2(t0)
80003f10:	2412004f 	li	s2,79
80003f14:	1612008f 	bne	s0,s2,80004154 <inst_error>
80003f18:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:154
80003f1c:	3c099b0f 	lui	t1,0x9b0f
80003f20:	35291ecc 	ori	t1,t1,0x1ecc
80003f24:	3c088003 	lui	t0,0x8003
80003f28:	240a0003 	li	t2,3
80003f2c:	240c0000 	li	t4,0
80003f30:	ad090000 	sw	t1,0(t0)
80003f34:	91100003 	lbu	s0,3(t0)
80003f38:	2412009b 	li	s2,155
80003f3c:	16120085 	bne	s0,s2,80004154 <inst_error>
80003f40:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:155
80003f44:	3c09b3f1 	lui	t1,0xb3f1
80003f48:	35290774 	ori	t1,t1,0x774
80003f4c:	3c088003 	lui	t0,0x8003
80003f50:	240a0001 	li	t2,1
80003f54:	240c0000 	li	t4,0
80003f58:	ad090000 	sw	t1,0(t0)
80003f5c:	91100001 	lbu	s0,1(t0)
80003f60:	24120007 	li	s2,7
80003f64:	1612007b 	bne	s0,s2,80004154 <inst_error>
80003f68:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:156
80003f6c:	3c0987ec 	lui	t1,0x87ec
80003f70:	352925fc 	ori	t1,t1,0x25fc
80003f74:	3c088003 	lui	t0,0x8003
80003f78:	240a0001 	li	t2,1
80003f7c:	240c0000 	li	t4,0
80003f80:	ad090000 	sw	t1,0(t0)
80003f84:	91100001 	lbu	s0,1(t0)
80003f88:	24120025 	li	s2,37
80003f8c:	16120071 	bne	s0,s2,80004154 <inst_error>
80003f90:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:157
80003f94:	3c0907e1 	lui	t1,0x7e1
80003f98:	3529f300 	ori	t1,t1,0xf300
80003f9c:	3c088003 	lui	t0,0x8003
80003fa0:	240a0000 	li	t2,0
80003fa4:	240c0000 	li	t4,0
80003fa8:	ad090000 	sw	t1,0(t0)
80003fac:	91100000 	lbu	s0,0(t0)
80003fb0:	24120000 	li	s2,0
80003fb4:	16120067 	bne	s0,s2,80004154 <inst_error>
80003fb8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:158
80003fbc:	3c09933c 	lui	t1,0x933c
80003fc0:	3529b3e0 	ori	t1,t1,0xb3e0
80003fc4:	3c088003 	lui	t0,0x8003
80003fc8:	240a0003 	li	t2,3
80003fcc:	240c0000 	li	t4,0
80003fd0:	ad090000 	sw	t1,0(t0)
80003fd4:	91100003 	lbu	s0,3(t0)
80003fd8:	24120093 	li	s2,147
80003fdc:	1612005d 	bne	s0,s2,80004154 <inst_error>
80003fe0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:159
80003fe4:	3c09ace9 	lui	t1,0xace9
80003fe8:	3529f794 	ori	t1,t1,0xf794
80003fec:	3c088003 	lui	t0,0x8003
80003ff0:	240a0000 	li	t2,0
80003ff4:	240c0000 	li	t4,0
80003ff8:	ad090000 	sw	t1,0(t0)
80003ffc:	91100000 	lbu	s0,0(t0)
80004000:	24120094 	li	s2,148
80004004:	16120053 	bne	s0,s2,80004154 <inst_error>
80004008:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:160
8000400c:	3c0960a3 	lui	t1,0x60a3
80004010:	3529b6d8 	ori	t1,t1,0xb6d8
80004014:	3c088003 	lui	t0,0x8003
80004018:	240a0001 	li	t2,1
8000401c:	240c0000 	li	t4,0
80004020:	ad090000 	sw	t1,0(t0)
80004024:	91100001 	lbu	s0,1(t0)
80004028:	241200b6 	li	s2,182
8000402c:	16120049 	bne	s0,s2,80004154 <inst_error>
80004030:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:161
80004034:	3c09954e 	lui	t1,0x954e
80004038:	3529b5ee 	ori	t1,t1,0xb5ee
8000403c:	3c088003 	lui	t0,0x8003
80004040:	240a0001 	li	t2,1
80004044:	240c0000 	li	t4,0
80004048:	ad090000 	sw	t1,0(t0)
8000404c:	91100001 	lbu	s0,1(t0)
80004050:	241200b5 	li	s2,181
80004054:	1612003f 	bne	s0,s2,80004154 <inst_error>
80004058:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:162
8000405c:	3c0995ff 	lui	t1,0x95ff
80004060:	3529cf80 	ori	t1,t1,0xcf80
80004064:	3c088003 	lui	t0,0x8003
80004068:	240a0003 	li	t2,3
8000406c:	240c0000 	li	t4,0
80004070:	ad090000 	sw	t1,0(t0)
80004074:	91100003 	lbu	s0,3(t0)
80004078:	24120095 	li	s2,149
8000407c:	16120035 	bne	s0,s2,80004154 <inst_error>
80004080:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:163
80004084:	3c09e20e 	lui	t1,0xe20e
80004088:	3529fe40 	ori	t1,t1,0xfe40
8000408c:	3c088003 	lui	t0,0x8003
80004090:	240a0000 	li	t2,0
80004094:	240c0000 	li	t4,0
80004098:	ad090000 	sw	t1,0(t0)
8000409c:	91100000 	lbu	s0,0(t0)
800040a0:	24120040 	li	s2,64
800040a4:	1612002b 	bne	s0,s2,80004154 <inst_error>
800040a8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:164
800040ac:	3c09826e 	lui	t1,0x826e
800040b0:	35290c40 	ori	t1,t1,0xc40
800040b4:	3c088003 	lui	t0,0x8003
800040b8:	240a0003 	li	t2,3
800040bc:	240c0000 	li	t4,0
800040c0:	ad090000 	sw	t1,0(t0)
800040c4:	91100003 	lbu	s0,3(t0)
800040c8:	24120082 	li	s2,130
800040cc:	16120021 	bne	s0,s2,80004154 <inst_error>
800040d0:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:165
800040d4:	3c093c7f 	lui	t1,0x3c7f
800040d8:	35293796 	ori	t1,t1,0x3796
800040dc:	3c088003 	lui	t0,0x8003
800040e0:	240a0003 	li	t2,3
800040e4:	240c0000 	li	t4,0
800040e8:	ad090000 	sw	t1,0(t0)
800040ec:	91100003 	lbu	s0,3(t0)
800040f0:	2412003c 	li	s2,60
800040f4:	16120017 	bne	s0,s2,80004154 <inst_error>
800040f8:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:166
800040fc:	3c09d82d 	lui	t1,0xd82d
80004100:	35294498 	ori	t1,t1,0x4498
80004104:	3c088003 	lui	t0,0x8003
80004108:	240a0002 	li	t2,2
8000410c:	240c0000 	li	t4,0
80004110:	ad090000 	sw	t1,0(t0)
80004114:	91100002 	lbu	s0,2(t0)
80004118:	2412002d 	li	s2,45
8000411c:	1612000d 	bne	s0,s2,80004154 <inst_error>
80004120:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:167
80004124:	24090000 	li	t1,0
80004128:	3c088003 	lui	t0,0x8003
8000412c:	240a0000 	li	t2,0
80004130:	240c0000 	li	t4,0
80004134:	ad090000 	sw	t1,0(t0)
80004138:	91100000 	lbu	s0,0(t0)
8000413c:	24120000 	li	s2,0
80004140:	16120004 	bne	s0,s2,80004154 <inst_error>
80004144:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:169
80004148:	14400002 	bnez	v0,80004154 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:170
8000414c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:172
80004150:	26730001 	addiu	s3,s3,1

80004154 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:175
80004154:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:176
80004158:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:177
8000415c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n48_lbu.S:178
80004160:	00000000 	nop
inst_error():
80004164:	00000000 	nop

80004168 <n29_beq_test>:
n29_beq_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:11
80004168:	3c041d00 	lui	a0,0x1d00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:12
8000416c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:14
80004170:	3c0c0fb1 	lui	t4,0xfb1
80004174:	358c6a80 	ori	t4,t4,0x6a80
80004178:	3c0ddf22 	lui	t5,0xdf22
8000417c:	35ad5ddc 	ori	t5,t5,0x5ddc
80004180:	24100000 	li	s0,0
80004184:	24120000 	li	s2,0
80004188:	1000000d 	b	800041c0 <n29_beq_test+0x58>
8000418c:	00000000 	nop
80004190:	3c100fb1 	lui	s0,0xfb1
80004194:	36106a80 	ori	s0,s0,0x6a80
80004198:	1128001a 	beq	t1,t0,80004204 <n29_beq_test+0x9c>
8000419c:	00000000 	nop
800041a0:	1000001a 	b	8000420c <n29_beq_test+0xa4>
800041a4:	00000000 	nop
800041a8:	00000021 	move	zero,zero
800041ac:	00000021 	move	zero,zero
800041b0:	00000021 	move	zero,zero
800041b4:	00000021 	move	zero,zero
800041b8:	00000021 	move	zero,zero
800041bc:	00000021 	move	zero,zero
800041c0:	3c085291 	lui	t0,0x5291
800041c4:	35089078 	ori	t0,t0,0x9078
800041c8:	3c098146 	lui	t1,0x8146
800041cc:	35298400 	ori	t1,t1,0x8400
800041d0:	1109ffef 	beq	t0,t1,80004190 <n29_beq_test+0x28>
800041d4:	00000000 	nop
800041d8:	1000000c 	b	8000420c <n29_beq_test+0xa4>
800041dc:	00000000 	nop
800041e0:	00000021 	move	zero,zero
800041e4:	00000021 	move	zero,zero
800041e8:	00000021 	move	zero,zero
800041ec:	00000021 	move	zero,zero
800041f0:	00000021 	move	zero,zero
800041f4:	00000021 	move	zero,zero
800041f8:	00000021 	move	zero,zero
800041fc:	00000021 	move	zero,zero
80004200:	00000021 	move	zero,zero
80004204:	3c12df22 	lui	s2,0xdf22
80004208:	36525ddc 	ori	s2,s2,0x5ddc
8000420c:	00000000 	nop
80004210:	24140000 	li	s4,0
80004214:	16140007 	bne	s0,s4,80004234 <inst_error>
80004218:	00000000 	nop
8000421c:	24150000 	li	s5,0
80004220:	16550004 	bne	s2,s5,80004234 <inst_error>
80004224:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:16
80004228:	14400002 	bnez	v0,80004234 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:17
8000422c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:19
80004230:	26730001 	addiu	s3,s3,1

80004234 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:22
80004234:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:23
80004238:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:24
8000423c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n29_beq.S:25
80004240:	00000000 	nop
inst_error():
80004244:	00000000 	nop

80004248 <n22_xori_test>:
n22_xori_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:11
80004248:	3c041600 	lui	a0,0x1600
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:12
8000424c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:14
80004250:	3c084406 	lui	t0,0x4406
80004254:	3508a500 	ori	t0,t0,0xa500
80004258:	240914bf 	li	t1,5311
8000425c:	391014bf 	xori	s0,t0,0x14bf
80004260:	3c124406 	lui	s2,0x4406
80004264:	3652b1bf 	ori	s2,s2,0xb1bf
80004268:	16120004 	bne	s0,s2,8000427c <inst_error>
8000426c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:16
80004270:	14400002 	bnez	v0,8000427c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:17
80004274:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:19
80004278:	26730001 	addiu	s3,s3,1

8000427c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:22
8000427c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:23
80004280:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:24
80004284:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n22_xori.S:25
80004288:	00000000 	nop
inst_error():
8000428c:	00000000 	nop

80004290 <n31_bgez_test>:
n31_bgez_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:11
80004290:	3c041f00 	lui	a0,0x1f00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:12
80004294:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:14
80004298:	3c0cbe6e 	lui	t4,0xbe6e
8000429c:	358c1670 	ori	t4,t4,0x1670
800042a0:	3c0d28b8 	lui	t5,0x28b8
800042a4:	35ad50c0 	ori	t5,t5,0x50c0
800042a8:	24100000 	li	s0,0
800042ac:	24120000 	li	s2,0
800042b0:	1000000d 	b	800042e8 <n31_bgez_test+0x58>
800042b4:	00000000 	nop
800042b8:	3c10be6e 	lui	s0,0xbe6e
800042bc:	36101670 	ori	s0,s0,0x1670
800042c0:	05010010 	bgez	t0,80004304 <n31_bgez_test+0x74>
800042c4:	00000000 	nop
800042c8:	10000010 	b	8000430c <n31_bgez_test+0x7c>
800042cc:	00000000 	nop
800042d0:	00000021 	move	zero,zero
800042d4:	00000021 	move	zero,zero
800042d8:	00000021 	move	zero,zero
800042dc:	00000021 	move	zero,zero
800042e0:	00000021 	move	zero,zero
800042e4:	00000021 	move	zero,zero
800042e8:	3c08dd4f 	lui	t0,0xdd4f
800042ec:	35081370 	ori	t0,t0,0x1370
800042f0:	0501fff1 	bgez	t0,800042b8 <n31_bgez_test+0x28>
800042f4:	00000000 	nop
800042f8:	10000004 	b	8000430c <n31_bgez_test+0x7c>
800042fc:	00000000 	nop
80004300:	00000021 	move	zero,zero
80004304:	3c1228b8 	lui	s2,0x28b8
80004308:	365250c0 	ori	s2,s2,0x50c0
8000430c:	00000000 	nop
80004310:	24140000 	li	s4,0
80004314:	16140007 	bne	s0,s4,80004334 <inst_error>
80004318:	00000000 	nop
8000431c:	24150000 	li	s5,0
80004320:	16550004 	bne	s2,s5,80004334 <inst_error>
80004324:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:16
80004328:	14400002 	bnez	v0,80004334 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:17
8000432c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:19
80004330:	26730001 	addiu	s3,s3,1

80004334 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:22
80004334:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:23
80004338:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:24
8000433c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n31_bgez.S:25
80004340:	00000000 	nop
inst_error():
80004344:	00000000 	nop

80004348 <n16_andi_test>:
n16_andi_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:11
80004348:	3c041000 	lui	a0,0x1000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:12
8000434c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:14
80004350:	3c084c23 	lui	t0,0x4c23
80004354:	3508cdd4 	ori	t0,t0,0xcdd4
80004358:	24095e89 	li	t1,24201
8000435c:	31105e89 	andi	s0,t0,0x5e89
80004360:	24124c80 	li	s2,19584
80004364:	16120004 	bne	s0,s2,80004378 <inst_error>
80004368:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:16
8000436c:	14400002 	bnez	v0,80004378 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:17
80004370:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:19
80004374:	26730001 	addiu	s3,s3,1

80004378 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:22
80004378:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:23
8000437c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:24
80004380:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n16_andi.S:25
80004384:	00000000 	nop

80004388 <n23_sll_test>:
n23_sll_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:11
80004388:	3c041700 	lui	a0,0x1700
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:12
8000438c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:14
80004390:	3c084799 	lui	t0,0x4799
80004394:	35084e5e 	ori	t0,t0,0x4e5e
80004398:	24090001 	li	t1,1
8000439c:	00088040 	sll	s0,t0,0x1
800043a0:	3c128f32 	lui	s2,0x8f32
800043a4:	36529cbc 	ori	s2,s2,0x9cbc
800043a8:	16120004 	bne	s0,s2,800043bc <inst_error>
800043ac:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:16
800043b0:	14400002 	bnez	v0,800043bc <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:17
800043b4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:19
800043b8:	26730001 	addiu	s3,s3,1

800043bc <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:22
800043bc:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:23
800043c0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:24
800043c4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n23_sll.S:25
800043c8:	00000000 	nop
inst_error():
800043cc:	00000000 	nop

800043d0 <n26_srav_test>:
n26_srav_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:11
800043d0:	3c041a00 	lui	a0,0x1a00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:12
800043d4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:14
800043d8:	3c083e59 	lui	t0,0x3e59
800043dc:	35084300 	ori	t0,t0,0x4300
800043e0:	24090003 	li	t1,3
800043e4:	01288007 	srav	s0,t0,t1
800043e8:	3c1207cb 	lui	s2,0x7cb
800043ec:	36522860 	ori	s2,s2,0x2860
800043f0:	16120004 	bne	s0,s2,80004404 <inst_error>
800043f4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:16
800043f8:	14400002 	bnez	v0,80004404 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:17
800043fc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:19
80004400:	26730001 	addiu	s3,s3,1

80004404 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:22
80004404:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:23
80004408:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:24
8000440c:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n26_srav.S:25
80004410:	00000000 	nop
inst_error():
80004414:	00000000 	nop

80004418 <n51_lw_test>:
n51_lw_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:11
80004418:	3c043300 	lui	a0,0x3300
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:12
8000441c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:14
80004420:	3c09c822 	lui	t1,0xc822
80004424:	3529c7e8 	ori	t1,t1,0xc7e8
80004428:	3c088002 	lui	t0,0x8002
8000442c:	350834c0 	ori	t0,t0,0x34c0
80004430:	240a66a8 	li	t2,26280
80004434:	240c66a8 	li	t4,26280
80004438:	ad0966a8 	sw	t1,26280(t0)
8000443c:	8d1066a8 	lw	s0,26280(t0)
80004440:	3c12c822 	lui	s2,0xc822
80004444:	3652c7e8 	ori	s2,s2,0xc7e8
80004448:	16120004 	bne	s0,s2,8000445c <inst_error>
8000444c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:17
80004450:	14400002 	bnez	v0,8000445c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:18
80004454:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:20
80004458:	26730001 	addiu	s3,s3,1

8000445c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:23
8000445c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:24
80004460:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:25
80004464:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n51_lw.S:26
80004468:	00000000 	nop
inst_error():
8000446c:	00000000 	nop

80004470 <n41_mfhi_test>:
n41_mfhi_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:11
80004470:	3c042900 	lui	a0,0x2900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:12
80004474:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:14
80004478:	3c08bd59 	lui	t0,0xbd59
8000447c:	350872d1 	ori	t0,t0,0x72d1
80004480:	01000011 	mthi	t0
80004484:	00008010 	mfhi	s0
80004488:	3c12bd59 	lui	s2,0xbd59
8000448c:	365272d1 	ori	s2,s2,0x72d1
80004490:	16120004 	bne	s0,s2,800044a4 <inst_error>
80004494:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:17
80004498:	14400002 	bnez	v0,800044a4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:18
8000449c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:20
800044a0:	26730001 	addiu	s3,s3,1

800044a4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:23
800044a4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:24
800044a8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:25
800044ac:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n41_mfhi.S:26
800044b0:	00000000 	nop
inst_error():
800044b4:	00000000 	nop

800044b8 <n32_bgtz_test>:
n32_bgtz_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:11
800044b8:	3c042000 	lui	a0,0x2000
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:12
800044bc:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:14
800044c0:	3c0c40b4 	lui	t4,0x40b4
800044c4:	358c0d40 	ori	t4,t4,0xd40
800044c8:	3c0d45eb 	lui	t5,0x45eb
800044cc:	35ad9450 	ori	t5,t5,0x9450
800044d0:	24100000 	li	s0,0
800044d4:	24120000 	li	s2,0
800044d8:	10000015 	b	80004530 <n32_bgtz_test+0x78>
800044dc:	00000000 	nop
800044e0:	3c1040b4 	lui	s0,0x40b4
800044e4:	36100d40 	ori	s0,s0,0xd40
800044e8:	1d00001c 	bgtz	t0,8000455c <n32_bgtz_test+0xa4>
800044ec:	00000000 	nop
800044f0:	1000001c 	b	80004564 <n32_bgtz_test+0xac>
800044f4:	00000000 	nop
800044f8:	00000021 	move	zero,zero
800044fc:	00000021 	move	zero,zero
80004500:	00000021 	move	zero,zero
80004504:	00000021 	move	zero,zero
80004508:	00000021 	move	zero,zero
8000450c:	00000021 	move	zero,zero
80004510:	00000021 	move	zero,zero
80004514:	00000021 	move	zero,zero
80004518:	00000021 	move	zero,zero
8000451c:	00000021 	move	zero,zero
80004520:	00000021 	move	zero,zero
80004524:	00000021 	move	zero,zero
80004528:	00000021 	move	zero,zero
8000452c:	00000021 	move	zero,zero
80004530:	3c08cc73 	lui	t0,0xcc73
80004534:	35088190 	ori	t0,t0,0x8190
80004538:	1d00ffe9 	bgtz	t0,800044e0 <n32_bgtz_test+0x28>
8000453c:	00000000 	nop
80004540:	10000008 	b	80004564 <n32_bgtz_test+0xac>
80004544:	00000000 	nop
80004548:	00000021 	move	zero,zero
8000454c:	00000021 	move	zero,zero
80004550:	00000021 	move	zero,zero
80004554:	00000021 	move	zero,zero
80004558:	00000021 	move	zero,zero
8000455c:	3c1245eb 	lui	s2,0x45eb
80004560:	36529450 	ori	s2,s2,0x9450
80004564:	00000000 	nop
80004568:	24140000 	li	s4,0
8000456c:	16140007 	bne	s0,s4,8000458c <inst_error>
80004570:	00000000 	nop
80004574:	24150000 	li	s5,0
80004578:	16550004 	bne	s2,s5,8000458c <inst_error>
8000457c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:17
80004580:	14400002 	bnez	v0,8000458c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:18
80004584:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:20
80004588:	26730001 	addiu	s3,s3,1

8000458c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:23
8000458c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:24
80004590:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:25
80004594:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n32_bgtz.S:26
80004598:	00000000 	nop
inst_error():
8000459c:	00000000 	nop

800045a0 <n20_ori_test>:
n20_ori_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:11
800045a0:	3c041400 	lui	a0,0x1400
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:12
800045a4:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:14
800045a8:	3c080d48 	lui	t0,0xd48
800045ac:	3508918a 	ori	t0,t0,0x918a
800045b0:	24097fe6 	li	t1,32742
800045b4:	35107fe6 	ori	s0,t0,0x7fe6
800045b8:	3c120d48 	lui	s2,0xd48
800045bc:	3652ffee 	ori	s2,s2,0xffee
800045c0:	16120004 	bne	s0,s2,800045d4 <inst_error>
800045c4:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:16
800045c8:	14400002 	bnez	v0,800045d4 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:17
800045cc:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:19
800045d0:	26730001 	addiu	s3,s3,1

800045d4 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:22
800045d4:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:23
800045d8:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:24
800045dc:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n20_ori.S:25
800045e0:	00000000 	nop
inst_error():
800045e4:	00000000 	nop

800045e8 <n25_sra_test>:
n25_sra_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:11
800045e8:	3c041900 	lui	a0,0x1900
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:12
800045ec:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:14
800045f0:	3c087e00 	lui	t0,0x7e00
800045f4:	350883f0 	ori	t0,t0,0x83f0
800045f8:	24090009 	li	t1,9
800045fc:	00088243 	sra	s0,t0,0x9
80004600:	3c12003f 	lui	s2,0x3f
80004604:	36520041 	ori	s2,s2,0x41
80004608:	16120004 	bne	s0,s2,8000461c <inst_error>
8000460c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:16
80004610:	14400002 	bnez	v0,8000461c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:17
80004614:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:19
80004618:	26730001 	addiu	s3,s3,1

8000461c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:22
8000461c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:23
80004620:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:24
80004624:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n25_sra.S:25
80004628:	00000000 	nop
inst_error():
8000462c:	00000000 	nop

80004630 <n15_and_test>:
n15_and_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:11
80004630:	3c040f00 	lui	a0,0xf00
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:12
80004634:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:14
80004638:	3c085c95 	lui	t0,0x5c95
8000463c:	3508951a 	ori	t0,t0,0x951a
80004640:	3c09ca00 	lui	t1,0xca00
80004644:	3529c414 	ori	t1,t1,0xc414
80004648:	01098024 	and	s0,t0,t1
8000464c:	3c124800 	lui	s2,0x4800
80004650:	36528410 	ori	s2,s2,0x8410
80004654:	16120004 	bne	s0,s2,80004668 <inst_error>
80004658:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:16
8000465c:	14400002 	bnez	v0,80004668 <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:17
80004660:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:19
80004664:	26730001 	addiu	s3,s3,1

80004668 <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:22
80004668:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:23
8000466c:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:24
80004670:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n15_and.S:25
80004674:	00000000 	nop

80004678 <n17_lui_test>:
n17_lui_test():
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:11
80004678:	3c041100 	lui	a0,0x1100
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:12
8000467c:	24020000 	li	v0,0
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:14
80004680:	3c085f00 	lui	t0,0x5f00
80004684:	3c105f00 	lui	s0,0x5f00
80004688:	15100004 	bne	t0,s0,8000469c <inst_error>
8000468c:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:16
80004690:	14400002 	bnez	v0,8000469c <inst_error>
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:17
80004694:	00000000 	nop
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:19
80004698:	26730001 	addiu	s3,s3,1

8000469c <inst_error>:
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:22
8000469c:	00934025 	or	t0,a0,s3
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:23
800046a0:	ae280000 	sw	t0,0(s1)
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:24
800046a4:	03e00008 	jr	ra
/home/zhanghuimeng/Computer_Architecture/functiontest/src/inst/n17_lui.S:25
800046a8:	00000000 	nop
inst_error():
800046ac:	00000000 	nop
800046b0:	bd0a03dc 	cache	0xa,988(t0)
	...

Disassembly of section .data:

800046c8 <__CTOR_LIST__>:
	...

800046d0 <__CTOR_END__>:
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x1c
   4:	00020000 	sll	zero,v0,0x0
   8:	00000400 	sll	zero,zero,0x10
   c:	00000000 	nop
  10:	80000000 	lb	zero,0(zero)
  14:	00000814 	0x814
	...
  20:	0000001c 	0x1c
  24:	00020000 	sll	zero,v0,0x0
  28:	006b0400 	0x6b0400
  2c:	00000000 	nop
  30:	80000818 	lb	zero,2072(zero)
  34:	00000054 	0x54
	...
  40:	0000001c 	0x1c
  44:	00020000 	sll	zero,v0,0x0
  48:	00de0400 	0xde0400
  4c:	00000000 	nop
  50:	80000870 	lb	zero,2160(zero)
  54:	000000e8 	0xe8
	...
  60:	0000001c 	0x1c
  64:	00020000 	sll	zero,v0,0x0
  68:	014f0400 	0x14f0400
  6c:	00000000 	nop
  70:	80000958 	lb	zero,2392(zero)
  74:	00000044 	0x44
	...
  80:	0000001c 	0x1c
  84:	00020000 	sll	zero,v0,0x0
  88:	01c00400 	0x1c00400
  8c:	00000000 	nop
  90:	800009a0 	lb	zero,2464(zero)
  94:	00000050 	0x50
	...
  a0:	0000001c 	0x1c
  a4:	00020000 	sll	zero,v0,0x0
  a8:	02310400 	0x2310400
  ac:	00000000 	nop
  b0:	800009f0 	lb	zero,2544(zero)
  b4:	00000044 	0x44
	...
  c0:	0000001c 	0x1c
  c4:	00020000 	sll	zero,v0,0x0
  c8:	02a40400 	0x2a40400
  cc:	00000000 	nop
  d0:	80000a38 	lb	zero,2616(zero)
  d4:	00000040 	ssnop
	...
  e0:	0000001c 	0x1c
  e4:	00020000 	sll	zero,v0,0x0
  e8:	03170400 	0x3170400
  ec:	00000000 	nop
  f0:	80000a78 	lb	zero,2680(zero)
  f4:	00000044 	0x44
	...
 100:	0000001c 	0x1c
 104:	00020000 	sll	zero,v0,0x0
 108:	03890400 	0x3890400
 10c:	00000000 	nop
 110:	80000ac0 	lb	zero,2752(zero)
 114:	0000003c 	0x3c
	...
 120:	0000001c 	0x1c
 124:	00020000 	sll	zero,v0,0x0
 128:	03fc0400 	0x3fc0400
 12c:	00000000 	nop
 130:	80000b00 	lb	zero,2816(zero)
 134:	00000054 	0x54
	...
 140:	0000001c 	0x1c
 144:	00020000 	sll	zero,v0,0x0
 148:	046d0400 	0x46d0400
 14c:	00000000 	nop
 150:	80000b58 	lb	zero,2904(zero)
 154:	000000d8 	0xd8
	...
 160:	0000001c 	0x1c
 164:	00020000 	sll	zero,v0,0x0
 168:	04e00400 	bltz	a3,116c <data_size+0x115c>
 16c:	00000000 	nop
 170:	80000c30 	lb	zero,3120(zero)
 174:	00000044 	0x44
	...
 180:	0000001c 	0x1c
 184:	00020000 	sll	zero,v0,0x0
 188:	05530400 	bgezall	t2,118c <data_size+0x117c>
 18c:	00000000 	nop
 190:	80000c78 	lb	zero,3192(zero)
 194:	00000048 	0x48
	...
 1a0:	0000001c 	0x1c
 1a4:	00020000 	sll	zero,v0,0x0
 1a8:	05c50400 	0x5c50400
 1ac:	00000000 	nop
 1b0:	80000cc0 	lb	zero,3264(zero)
 1b4:	000000f4 	teq	zero,zero,0x3
	...
 1c0:	0000001c 	0x1c
 1c4:	00020000 	sll	zero,v0,0x0
 1c8:	06380400 	0x6380400
 1cc:	00000000 	nop
 1d0:	80000db8 	lb	zero,3512(zero)
 1d4:	0000002c 	0x2c
	...
 1e0:	0000001c 	0x1c
 1e4:	00020000 	sll	zero,v0,0x0
 1e8:	06ae0400 	tnei	s5,1024
 1ec:	00000000 	nop
 1f0:	80000de8 	lb	zero,3560(zero)
 1f4:	000000c0 	ehb
	...
 200:	0000001c 	0x1c
 204:	00020000 	sll	zero,v0,0x0
 208:	071e0400 	0x71e0400
 20c:	00000000 	nop
 210:	80000ea8 	lb	zero,3752(zero)
 214:	00000044 	0x44
	...
 220:	0000001c 	0x1c
 224:	00020000 	sll	zero,v0,0x0
 228:	07900400 	bltzal	gp,122c <data_size+0x121c>
 22c:	00000000 	nop
 230:	80000ef0 	lb	zero,3824(zero)
 234:	000000f8 	0xf8
	...
 240:	0000001c 	0x1c
 244:	00020000 	sll	zero,v0,0x0
 248:	08030400 	j	c1000 <data_size+0xc0ff0>
 24c:	00000000 	nop
 250:	80000fe8 	lb	zero,4072(zero)
 254:	00000040 	ssnop
	...
 260:	0000001c 	0x1c
 264:	00020000 	sll	zero,v0,0x0
 268:	08750400 	j	1d41000 <data_size+0x1d40ff0>
 26c:	00000000 	nop
 270:	80001028 	lb	zero,4136(zero)
 274:	00000048 	0x48
	...
 280:	0000001c 	0x1c
 284:	00020000 	sll	zero,v0,0x0
 288:	08e60400 	j	3981000 <data_size+0x3980ff0>
 28c:	00000000 	nop
 290:	80001070 	lb	zero,4208(zero)
 294:	00000048 	0x48
	...
 2a0:	0000001c 	0x1c
 2a4:	00020000 	sll	zero,v0,0x0
 2a8:	09570400 	j	55c1000 <data_size+0x55c0ff0>
 2ac:	00000000 	nop
 2b0:	800010b8 	lb	zero,4280(zero)
 2b4:	00000040 	ssnop
	...
 2c0:	0000001c 	0x1c
 2c4:	00020000 	sll	zero,v0,0x0
 2c8:	09cb0400 	j	72c1000 <data_size+0x72c0ff0>
 2cc:	00000000 	nop
 2d0:	800010f8 	lb	zero,4344(zero)
 2d4:	00000048 	0x48
	...
 2e0:	0000001c 	0x1c
 2e4:	00020000 	sll	zero,v0,0x0
 2e8:	0a3d0400 	j	8f41000 <data_size+0x8f40ff0>
 2ec:	00000000 	nop
 2f0:	80001140 	lb	zero,4416(zero)
 2f4:	00000044 	0x44
	...
 300:	0000001c 	0x1c
 304:	00020000 	sll	zero,v0,0x0
 308:	0ab00400 	j	ac01000 <data_size+0xac00ff0>
 30c:	00000000 	nop
 310:	80001188 	lb	zero,4488(zero)
 314:	00001044 	0x1044
	...
 320:	0000001c 	0x1c
 324:	00020000 	sll	zero,v0,0x0
 328:	0b210400 	j	c841000 <data_size+0xc840ff0>
 32c:	00000000 	nop
 330:	800021d0 	lb	zero,8656(zero)
 334:	00000100 	sll	zero,zero,0x4
	...
 340:	0000001c 	0x1c
 344:	00020000 	sll	zero,v0,0x0
 348:	0b930400 	j	e4c1000 <data_size+0xe4c0ff0>
 34c:	00000000 	nop
 350:	800022d0 	lb	zero,8912(zero)
 354:	00000048 	0x48
	...
 360:	0000001c 	0x1c
 364:	00020000 	sll	zero,v0,0x0
 368:	0c050400 	jal	141000 <data_size+0x140ff0>
 36c:	00000000 	nop
 370:	80002318 	lb	zero,8984(zero)
 374:	0000002c 	0x2c
	...
 380:	0000001c 	0x1c
 384:	00020000 	sll	zero,v0,0x0
 388:	0c790400 	jal	1e41000 <data_size+0x1e40ff0>
 38c:	00000000 	nop
 390:	80002348 	lb	zero,9032(zero)
 394:	00000060 	0x60
	...
 3a0:	0000001c 	0x1c
 3a4:	00020000 	sll	zero,v0,0x0
 3a8:	0cea0400 	jal	3a81000 <data_size+0x3a80ff0>
 3ac:	00000000 	nop
 3b0:	800023a8 	lb	zero,9128(zero)
 3b4:	00000044 	0x44
	...
 3c0:	0000001c 	0x1c
 3c4:	00020000 	sll	zero,v0,0x0
 3c8:	0d5d0400 	jal	5741000 <data_size+0x5740ff0>
 3cc:	00000000 	nop
 3d0:	800023f0 	lb	zero,9200(zero)
 3d4:	00000048 	0x48
	...
 3e0:	0000001c 	0x1c
 3e4:	00020000 	sll	zero,v0,0x0
 3e8:	0dce0400 	jal	7381000 <data_size+0x7380ff0>
 3ec:	00000000 	nop
 3f0:	80002438 	lb	zero,9272(zero)
 3f4:	00000044 	0x44
	...
 400:	0000001c 	0x1c
 404:	00020000 	sll	zero,v0,0x0
 408:	0e400400 	jal	9001000 <data_size+0x9000ff0>
 40c:	00000000 	nop
 410:	80002480 	lb	zero,9344(zero)
 414:	00000058 	0x58
	...
 420:	0000001c 	0x1c
 424:	00020000 	sll	zero,v0,0x0
 428:	0eb30400 	jal	acc1000 <data_size+0xacc0ff0>
 42c:	00000000 	nop
 430:	800024d8 	lb	zero,9432(zero)
 434:	000000c8 	0xc8
	...
 440:	0000001c 	0x1c
 444:	00020000 	sll	zero,v0,0x0
 448:	0f250400 	jal	c941000 <data_size+0xc940ff0>
 44c:	00000000 	nop
 450:	800025a0 	lb	zero,9632(zero)
 454:	00000044 	0x44
	...
 460:	0000001c 	0x1c
 464:	00020000 	sll	zero,v0,0x0
 468:	0f980400 	jal	e601000 <data_size+0xe600ff0>
 46c:	00000000 	nop
 470:	800025e8 	lb	zero,9704(zero)
 474:	00000048 	0x48
	...
 480:	0000001c 	0x1c
 484:	00020000 	sll	zero,v0,0x0
 488:	100a0400 	beq	zero,t2,148c <data_size+0x147c>
 48c:	00000000 	nop
 490:	80002630 	lb	zero,9776(zero)
 494:	00001b34 	teq	zero,zero,0x6c
	...
 4a0:	0000001c 	0x1c
 4a4:	00020000 	sll	zero,v0,0x0
 4a8:	107c0400 	beq	v1,gp,14ac <data_size+0x149c>
 4ac:	00000000 	nop
 4b0:	80004168 	lb	zero,16744(zero)
 4b4:	000000dc 	0xdc
	...
 4c0:	0000001c 	0x1c
 4c4:	00020000 	sll	zero,v0,0x0
 4c8:	10ee0400 	beq	a3,t6,14cc <data_size+0x14bc>
 4cc:	00000000 	nop
 4d0:	80004248 	lb	zero,16968(zero)
 4d4:	00000044 	0x44
	...
 4e0:	0000001c 	0x1c
 4e4:	00020000 	sll	zero,v0,0x0
 4e8:	11610400 	beq	t3,at,14ec <data_size+0x14dc>
 4ec:	00000000 	nop
 4f0:	80004290 	lb	zero,17040(zero)
 4f4:	000000b4 	teq	zero,zero,0x2
	...
 500:	0000001c 	0x1c
 504:	00020000 	sll	zero,v0,0x0
 508:	11d40400 	beq	t6,s4,150c <data_size+0x14fc>
 50c:	00000000 	nop
 510:	80004348 	lb	zero,17224(zero)
 514:	00000040 	ssnop
	...
 520:	0000001c 	0x1c
 524:	00020000 	sll	zero,v0,0x0
 528:	12470400 	beq	s2,a3,152c <data_size+0x151c>
 52c:	00000000 	nop
 530:	80004388 	lb	zero,17288(zero)
 534:	00000044 	0x44
	...
 540:	0000001c 	0x1c
 544:	00020000 	sll	zero,v0,0x0
 548:	12b90400 	beq	s5,t9,154c <data_size+0x153c>
 54c:	00000000 	nop
 550:	800043d0 	lb	zero,17360(zero)
 554:	00000044 	0x44
	...
 560:	0000001c 	0x1c
 564:	00020000 	sll	zero,v0,0x0
 568:	132c0400 	beq	t9,t4,156c <data_size+0x155c>
 56c:	00000000 	nop
 570:	80004418 	lb	zero,17432(zero)
 574:	00000054 	0x54
	...
 580:	0000001c 	0x1c
 584:	00020000 	sll	zero,v0,0x0
 588:	139d0400 	beq	gp,sp,158c <data_size+0x157c>
 58c:	00000000 	nop
 590:	80004470 	lb	zero,17520(zero)
 594:	00000044 	0x44
	...
 5a0:	0000001c 	0x1c
 5a4:	00020000 	sll	zero,v0,0x0
 5a8:	14100400 	bne	zero,s0,15ac <data_size+0x159c>
 5ac:	00000000 	nop
 5b0:	800044b8 	lb	zero,17592(zero)
 5b4:	000000e4 	0xe4
	...
 5c0:	0000001c 	0x1c
 5c4:	00020000 	sll	zero,v0,0x0
 5c8:	14830400 	bne	a0,v1,15cc <data_size+0x15bc>
 5cc:	00000000 	nop
 5d0:	800045a0 	lb	zero,17824(zero)
 5d4:	00000044 	0x44
	...
 5e0:	0000001c 	0x1c
 5e4:	00020000 	sll	zero,v0,0x0
 5e8:	14f50400 	bne	a3,s5,15ec <data_size+0x15dc>
 5ec:	00000000 	nop
 5f0:	800045e8 	lb	zero,17896(zero)
 5f4:	00000044 	0x44
	...
 600:	0000001c 	0x1c
 604:	00020000 	sll	zero,v0,0x0
 608:	15670400 	bne	t3,a3,160c <data_size+0x15fc>
 60c:	00000000 	nop
 610:	80004630 	lb	zero,17968(zero)
 614:	00000048 	0x48
	...
 620:	0000001c 	0x1c
 624:	00020000 	sll	zero,v0,0x0
 628:	15d90400 	bne	t6,t9,162c <data_size+0x161c>
 62c:	00000000 	nop
 630:	80004678 	lb	zero,18040(zero)
 634:	00000034 	teq	zero,zero
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	80000818 	lb	zero,2072(zero)
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	80000870 	lb	zero,2160(zero)
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	80000958 	lb	zero,2392(zero)
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	800009a0 	lb	zero,2464(zero)
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	800009f0 	lb	zero,2544(zero)
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	80000a38 	lb	zero,2616(zero)
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	80000a78 	lb	zero,2680(zero)
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	80000ac0 	lb	zero,2752(zero)
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	80000b00 	lb	zero,2816(zero)
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	80000b58 	lb	zero,2904(zero)
	...
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f
 140:	80000c30 	lb	zero,3120(zero)
	...
 158:	0000001d 	0x1d
 15c:	0000001f 	0x1f
 160:	80000c78 	lb	zero,3192(zero)
	...
 178:	0000001d 	0x1d
 17c:	0000001f 	0x1f
 180:	80000cc0 	lb	zero,3264(zero)
	...
 198:	0000001d 	0x1d
 19c:	0000001f 	0x1f
 1a0:	80000db8 	lb	zero,3512(zero)
	...
 1b8:	0000001d 	0x1d
 1bc:	0000001f 	0x1f
 1c0:	80000de8 	lb	zero,3560(zero)
	...
 1d8:	0000001d 	0x1d
 1dc:	0000001f 	0x1f
 1e0:	80000ea8 	lb	zero,3752(zero)
	...
 1f8:	0000001d 	0x1d
 1fc:	0000001f 	0x1f
 200:	80000ef0 	lb	zero,3824(zero)
	...
 218:	0000001d 	0x1d
 21c:	0000001f 	0x1f
 220:	80000fe8 	lb	zero,4072(zero)
	...
 238:	0000001d 	0x1d
 23c:	0000001f 	0x1f
 240:	80001028 	lb	zero,4136(zero)
	...
 258:	0000001d 	0x1d
 25c:	0000001f 	0x1f
 260:	80001070 	lb	zero,4208(zero)
	...
 278:	0000001d 	0x1d
 27c:	0000001f 	0x1f
 280:	800010b8 	lb	zero,4280(zero)
	...
 298:	0000001d 	0x1d
 29c:	0000001f 	0x1f
 2a0:	800010f8 	lb	zero,4344(zero)
	...
 2b8:	0000001d 	0x1d
 2bc:	0000001f 	0x1f
 2c0:	80001140 	lb	zero,4416(zero)
	...
 2d8:	0000001d 	0x1d
 2dc:	0000001f 	0x1f
 2e0:	80001188 	lb	zero,4488(zero)
	...
 2f8:	0000001d 	0x1d
 2fc:	0000001f 	0x1f
 300:	800021d0 	lb	zero,8656(zero)
	...
 318:	0000001d 	0x1d
 31c:	0000001f 	0x1f
 320:	800022d0 	lb	zero,8912(zero)
	...
 338:	0000001d 	0x1d
 33c:	0000001f 	0x1f
 340:	80002318 	lb	zero,8984(zero)
	...
 358:	0000001d 	0x1d
 35c:	0000001f 	0x1f
 360:	80002348 	lb	zero,9032(zero)
	...
 378:	0000001d 	0x1d
 37c:	0000001f 	0x1f
 380:	800023a8 	lb	zero,9128(zero)
	...
 398:	0000001d 	0x1d
 39c:	0000001f 	0x1f
 3a0:	800023f0 	lb	zero,9200(zero)
	...
 3b8:	0000001d 	0x1d
 3bc:	0000001f 	0x1f
 3c0:	80002438 	lb	zero,9272(zero)
	...
 3d8:	0000001d 	0x1d
 3dc:	0000001f 	0x1f
 3e0:	80002480 	lb	zero,9344(zero)
	...
 3f8:	0000001d 	0x1d
 3fc:	0000001f 	0x1f
 400:	800024d8 	lb	zero,9432(zero)
	...
 418:	0000001d 	0x1d
 41c:	0000001f 	0x1f
 420:	800025a0 	lb	zero,9632(zero)
	...
 438:	0000001d 	0x1d
 43c:	0000001f 	0x1f
 440:	800025e8 	lb	zero,9704(zero)
	...
 458:	0000001d 	0x1d
 45c:	0000001f 	0x1f
 460:	80002630 	lb	zero,9776(zero)
	...
 478:	0000001d 	0x1d
 47c:	0000001f 	0x1f
 480:	80004168 	lb	zero,16744(zero)
	...
 498:	0000001d 	0x1d
 49c:	0000001f 	0x1f
 4a0:	80004248 	lb	zero,16968(zero)
	...
 4b8:	0000001d 	0x1d
 4bc:	0000001f 	0x1f
 4c0:	80004290 	lb	zero,17040(zero)
	...
 4d8:	0000001d 	0x1d
 4dc:	0000001f 	0x1f
 4e0:	80004348 	lb	zero,17224(zero)
	...
 4f8:	0000001d 	0x1d
 4fc:	0000001f 	0x1f
 500:	80004388 	lb	zero,17288(zero)
	...
 518:	0000001d 	0x1d
 51c:	0000001f 	0x1f
 520:	800043d0 	lb	zero,17360(zero)
	...
 538:	0000001d 	0x1d
 53c:	0000001f 	0x1f
 540:	80004418 	lb	zero,17432(zero)
	...
 558:	0000001d 	0x1d
 55c:	0000001f 	0x1f
 560:	80004470 	lb	zero,17520(zero)
	...
 578:	0000001d 	0x1d
 57c:	0000001f 	0x1f
 580:	800044b8 	lb	zero,17592(zero)
	...
 598:	0000001d 	0x1d
 59c:	0000001f 	0x1f
 5a0:	800045a0 	lb	zero,17824(zero)
	...
 5b8:	0000001d 	0x1d
 5bc:	0000001f 	0x1f
 5c0:	800045e8 	lb	zero,17896(zero)
	...
 5d8:	0000001d 	0x1d
 5dc:	0000001f 	0x1f
 5e0:	80004630 	lb	zero,17968(zero)
	...
 5f8:	0000001d 	0x1d
 5fc:	0000001f 	0x1f
 600:	80004678 	lb	zero,18040(zero)
	...
 618:	0000001d 	0x1d
 61c:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	0000016a 	0x16a
       4:	00020000 	sll	zero,v0,0x0
       8:	001e0101 	0x1e0101
       c:	fb0e0d00 	sdc2	$14,3328(t8)
      10:	01010101 	0x1010101
      14:	00000001 	movf	zero,zero,$fcc0
      18:	00000100 	sll	zero,zero,0x4
      1c:	73746172 	0x73746172
      20:	742e5300 	jalx	b94c00 <data_size+0xb94bf0>
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
      e4:	504b834c 	beql	v0,t3,fffe0e18 <_stack+0x7fddc770>
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
     148:	514b030b 	beql	t2,t3,d78 <data_size+0xd68>
     14c:	4a4b4b4b 	c2	0x4b4b4b
     150:	4b4b4b4b 	c2	0x14b4b4b
     154:	4b4b4b4b 	c2	0x14b4b4b
     158:	03374a4b 	0x3374a4b
     15c:	4b4c4b4d 	c2	0x14c4b4d
     160:	834c4b4e 	lb	t4,19278(k0)
     164:	4c4b4b4b 	0x4c4b4b4b
     168:	4b020400 	c2	0x1020400
     16c:	01010000 	0x1010000
     170:	004b0002 	0x4b0002
     174:	00000021 	move	zero,zero
     178:	0101fb0e 	0x101fb0e
     17c:	0d000101 	jal	4000404 <data_size+0x40003f4>
     180:	01010000 	0x1010000
     184:	00010000 	sll	zero,at,0x0
     188:	01006e35 	0x1006e35
     18c:	375f6d74 	ori	ra,k0,0x6d74
     190:	63302e53 	0x63302e53
     194:	00000000 	nop
     198:	00000502 	srl	zero,zero,0x14
     19c:	80000818 	lb	zero,2072(zero)
     1a0:	030a014b 	0x30a014b
     1a4:	4c030982 	0x4c030982
     1a8:	4b4c4b4c 	c2	0x14c4b4c
     1ac:	4b4b4b4b 	c2	0x14b4b4b
     1b0:	4b4c4b4c 	c2	0x14c4b4c
     1b4:	4d4b4b4b 	0x4d4b4b4b
     1b8:	02040001 	movf	zero,s0,$fcc1
     1bc:	01000000 	0x1000000
     1c0:	40000200 	0x40000200
     1c4:	00001f01 	0x1f01
     1c8:	01fb0e0d 	break	0x1fb,0x38
     1cc:	00010101 	0x10101
     1d0:	01000000 	0x1000000
     1d4:	01000001 	movf	zero,t0,$fcc0
     1d8:	006e3339 	0x6e3339
     1dc:	5f6a722e 	0x5f6a722e
     1e0:	53000000 	beqzl	t8,1e4 <data_size+0x1d4>
     1e4:	00000005 	0x5
     1e8:	02800008 	jr	s4
     1ec:	70030a01 	0x70030a01
     1f0:	4b4c02c4 	c2	0x14c02c4
     1f4:	01144b4c 	syscall	0x4512d
     1f8:	4d4b4b4b 	0x4d4b4b4b
     1fc:	02040001 	movf	zero,s0,$fcc1
     200:	01000000 	0x1000000
     204:	3e000200 	0x3e000200
     208:	00001f01 	0x1f01
     20c:	01fb0e0d 	break	0x1fb,0x38
     210:	00010101 	0x10101
     214:	01000000 	0x1000000
     218:	01000001 	movf	zero,t0,$fcc0
     21c:	006e375f 	0x6e375f
     220:	736c742e 	0x736c742e
     224:	53000000 	beqzl	t8,228 <data_size+0x218>
     228:	00000005 	0x5
     22c:	02800009 	jalr	zero,s4
     230:	58030a01 	0x58030a01
     234:	4b4c08e6 	c2	0x14c08e6
     238:	4b4c4d4b 	c2	0x14c4d4b
     23c:	4b4b0204 	c2	0x14b0204
     240:	00010100 	sll	zero,at,0x4
     244:	00003f00 	sll	a3,zero,0x1c
     248:	02000000 	0x2000000
     24c:	1f0101fb 	0x1f0101fb
     250:	0e0d0001 	jal	8340004 <data_size+0x833fff4>
     254:	01010100 	0x1010100
     258:	00000100 	sll	zero,zero,0x4
     25c:	0001006e 	0x1006e
     260:	34375f6c 	ori	s7,at,0x5f6c
     264:	622e5300 	0x622e5300
     268:	00000000 	nop
     26c:	00050280 	sll	zero,a1,0xa
     270:	0009a003 	sra	s4,t1,0x0
     274:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     278:	022c144b 	0x22c144b
     27c:	4c4d4b4b 	0x4c4d4b4b
     280:	4b020400 	c2	0x1020400
     284:	01010000 	0x1010000
     288:	00400002 	0x400002
     28c:	00000021 	move	zero,zero
     290:	0101fb0e 	0x101fb0e
     294:	0d000101 	jal	4000404 <data_size+0x40003f4>
     298:	01010000 	0x1010000
     29c:	00010000 	sll	zero,at,0x0
     2a0:	01006e34 	teq	t0,zero,0x1b8
     2a4:	5f616464 	0x5f616464
     2a8:	69752e53 	0x69752e53
     2ac:	00000000 	nop
     2b0:	00000502 	srl	zero,zero,0x14
     2b4:	800009f0 	lb	zero,2544(zero)
     2b8:	030a014b 	0x30a014b
     2bc:	4c08e64b 	0x4c08e64b
     2c0:	4c4d4b4b 	0x4c4d4b4b
     2c4:	4b020400 	c2	0x1020400
     2c8:	01010000 	0x1010000
     2cc:	00400002 	0x400002
     2d0:	00000021 	move	zero,zero
     2d4:	0101fb0e 	0x101fb0e
     2d8:	0d000101 	jal	4000404 <data_size+0x40003f4>
     2dc:	01010000 	0x1010000
     2e0:	00010000 	sll	zero,at,0x0
     2e4:	01006e32 	tlt	t0,zero,0x1b8
     2e8:	385f7372 	xori	ra,v0,0x7372
     2ec:	6c762e53 	0x6c762e53
     2f0:	00000000 	nop
     2f4:	00000502 	srl	zero,zero,0x14
     2f8:	80000a38 	lb	zero,2616(zero)
     2fc:	030a014b 	0x30a014b
     300:	4c08ae4b 	0x4c08ae4b
     304:	4c4d4b4b 	0x4c4d4b4b
     308:	4b020400 	c2	0x1020400
     30c:	01010000 	0x1010000
     310:	003f0002 	ror	zero,ra,0x0
     314:	00000020 	add	zero,zero,zero
     318:	0101fb0e 	0x101fb0e
     31c:	0d000101 	jal	4000404 <data_size+0x40003f4>
     320:	01010000 	0x1010000
     324:	00010000 	sll	zero,at,0x0
     328:	01006e32 	tlt	t0,zero,0x1b8
     32c:	5f616464 	0x5f616464
     330:	692e5300 	0x692e5300
     334:	00000000 	nop
     338:	00050280 	sll	zero,a1,0xa
     33c:	000a7803 	sra	t7,t2,0x0
     340:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     344:	08e64b4c 	j	3992d30 <data_size+0x3992d20>
     348:	4d4b4b4b 	0x4d4b4b4b
     34c:	02040001 	movf	zero,s0,$fcc1
     350:	01000000 	0x1000000
     354:	40000200 	0x40000200
     358:	00002101 	0x2101
     35c:	01fb0e0d 	break	0x1fb,0x38
     360:	00010101 	0x10101
     364:	01000000 	0x1000000
     368:	01000001 	movf	zero,t0,$fcc0
     36c:	006e3432 	tlt	v1,t6,0xd0
     370:	5f6d666c 	0x5f6d666c
     374:	6f2e5300 	0x6f2e5300
     378:	00000000 	nop
     37c:	00050280 	sll	zero,a1,0xa
     380:	000ac003 	sra	t8,t2,0x0
     384:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     388:	08764b4c 	j	1d92d30 <data_size+0x1d92d20>
     38c:	4d4b4b4b 	0x4d4b4b4b
     390:	02040001 	movf	zero,s0,$fcc1
     394:	01000000 	0x1000000
     398:	3f000200 	0x3f000200
     39c:	00001f01 	0x1f01
     3a0:	01fb0e0d 	break	0x1fb,0x38
     3a4:	00010101 	0x10101
     3a8:	01000000 	0x1000000
     3ac:	01000001 	movf	zero,t0,$fcc0
     3b0:	006e3534 	teq	v1,t6,0xd4
     3b4:	5f73772e 	0x5f73772e
     3b8:	53000000 	beqzl	t8,3bc <data_size+0x3ac>
     3bc:	00000005 	0x5
     3c0:	0280000b 	movn	zero,s4,zero
     3c4:	00030a01 	0x30a01
     3c8:	4b4c0230 	c2	0x14c0230
     3cc:	154b4c4d 	bne	t2,t3,13504 <data_size+0x134f4>
     3d0:	4b4b4b02 	c2	0x14b4b02
     3d4:	04000101 	bltz	zero,7dc <data_size+0x7cc>
     3d8:	00000042 	srl	zero,zero,0x1
     3dc:	00020000 	sll	zero,v0,0x0
     3e0:	00210101 	0x210101
     3e4:	fb0e0d00 	sdc2	$14,3328(t8)
     3e8:	01010101 	0x1010101
     3ec:	00000001 	movf	zero,zero,$fcc0
     3f0:	00000100 	sll	zero,zero,0x4
     3f4:	6e33335f 	0x6e33335f
     3f8:	626c657a 	0x626c657a
     3fc:	2e530000 	sltiu	s3,s2,0
     400:	00000000 	nop
     404:	05028000 	bltzl	t0,fffe0408 <_stack+0x7fddbd60>
     408:	0b58030a 	j	d600c28 <data_size+0xd600c18>
     40c:	014b4c02 	0x14b4c02
     410:	b401144b 	0xb401144b
     414:	4c4d4b4b 	0x4c4d4b4b
     418:	4b020400 	c2	0x1020400
     41c:	01010000 	0x1010000
     420:	00400002 	0x400002
     424:	00000021 	move	zero,zero
     428:	0101fb0e 	0x101fb0e
     42c:	0d000101 	jal	4000404 <data_size+0x40003f4>
     430:	01010000 	0x1010000
     434:	00010000 	sll	zero,at,0x0
     438:	01006e34 	teq	t0,zero,0x1b8
     43c:	345f6d74 	ori	ra,v0,0x6d74
     440:	6c6f2e53 	0x6c6f2e53
     444:	00000000 	nop
     448:	00000502 	srl	zero,zero,0x14
     44c:	80000c30 	lb	zero,3120(zero)
     450:	030a014b 	0x30a014b
     454:	4c08e74b 	0x4c08e74b
     458:	4c4d4b4b 	0x4c4d4b4b
     45c:	4b020400 	c2	0x1020400
     460:	01010000 	0x1010000
     464:	00400002 	0x400002
     468:	00000020 	add	zero,zero,zero
     46c:	0101fb0e 	0x101fb0e
     470:	0d000101 	jal	4000404 <data_size+0x40003f4>
     474:	01010000 	0x1010000
     478:	00010000 	sll	zero,at,0x0
     47c:	01006e33 	tltu	t0,zero,0x1b8
     480:	5f616464 	0x5f616464
     484:	752e5300 	jalx	4b94c00 <data_size+0x4b94bf0>
     488:	00000000 	nop
     48c:	00050280 	sll	zero,a1,0xa
     490:	000c7803 	sra	t7,t4,0x0
     494:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     498:	0224144b 	0x224144b
     49c:	4c4d4b4b 	0x4c4d4b4b
     4a0:	4b020400 	c2	0x1020400
     4a4:	01010000 	0x1010000
     4a8:	00420002 	0x420002
     4ac:	00000021 	move	zero,zero
     4b0:	0101fb0e 	0x101fb0e
     4b4:	0d000101 	jal	4000404 <data_size+0x40003f4>
     4b8:	01010000 	0x1010000
     4bc:	00010000 	sll	zero,at,0x0
     4c0:	01006e34 	teq	t0,zero,0x1b8
     4c4:	305f6a61 	andi	ra,v0,0x6a61
     4c8:	6c722e53 	0x6c722e53
     4cc:	00000000 	nop
     4d0:	00000502 	srl	zero,zero,0x14
     4d4:	80000cc0 	lb	zero,3264(zero)
     4d8:	030a014b 	0x30a014b
     4dc:	4c02d001 	mfc3	v0,$26,1
     4e0:	144b4c4d 	bne	v0,t3,13618 <data_size+0x13608>
     4e4:	4b4b4b02 	c2	0x14b4b02
     4e8:	04000101 	bltz	zero,8f0 <data_size+0x8e0>
     4ec:	00000043 	sra	zero,zero,0x1
     4f0:	00020000 	sll	zero,v0,0x0
     4f4:	00240101 	0x240101
     4f8:	fb0e0d00 	sdc2	$14,3328(t8)
     4fc:	01010101 	0x1010101
     500:	00000001 	movf	zero,zero,$fcc0
     504:	00000100 	sll	zero,zero,0x4
     508:	6e34365f 	0x6e34365f
     50c:	73797363 	0x73797363
     510:	616c6c2e 	0x616c6c2e
     514:	53000000 	beqzl	t8,518 <data_size+0x508>
     518:	00000005 	0x5
     51c:	0280000d 	break	0x280
     520:	b8030a01 	swr	v1,2561(zero)
     524:	4b4e4c4b 	c2	0x14e4c4b
     528:	4b4c4d4b 	c2	0x14c4d4b
     52c:	4b4b0204 	c2	0x14b0204
     530:	00010100 	sll	zero,at,0x4
     534:	00003f00 	sll	a3,zero,0x1c
     538:	02000000 	0x2000000
     53c:	1e0101fb 	0x1e0101fb
     540:	0e0d0001 	jal	8340004 <data_size+0x833fff4>
     544:	01010100 	0x1010100
     548:	00000100 	sll	zero,zero,0x4
     54c:	0001006e 	0x1006e
     550:	33375f6a 	andi	s7,t9,0x5f6a
     554:	2e530000 	sltiu	s3,s2,0
     558:	00000000 	nop
     55c:	05028000 	bltzl	t0,fffe0560 <_stack+0x7fddbeb8>
     560:	0de8030a 	jal	7a00c28 <data_size+0x7a00c18>
     564:	014b4c02 	0x14b4c02
     568:	9c01144b 	0x9c01144b
     56c:	4c4d4b4b 	0x4c4d4b4b
     570:	4b020400 	c2	0x1020400
     574:	01010000 	0x1010000
     578:	003f0002 	ror	zero,ra,0x0
     57c:	00000020 	add	zero,zero,zero
     580:	0101fb0e 	0x101fb0e
     584:	0d000101 	jal	4000404 <data_size+0x40003f4>
     588:	01010000 	0x1010000
     58c:	00010000 	sll	zero,at,0x0
     590:	01006e32 	tlt	t0,zero,0x1b8
     594:	375f7372 	ori	ra,k0,0x7372
     598:	6c2e5300 	0x6c2e5300
     59c:	00000000 	nop
     5a0:	00050280 	sll	zero,a1,0xa
     5a4:	000ea803 	sra	s5,t6,0x0
     5a8:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     5ac:	08e64b4c 	j	3992d30 <data_size+0x3992d20>
     5b0:	4d4b4b4b 	0x4d4b4b4b
     5b4:	02040001 	movf	zero,s0,$fcc1
     5b8:	01000000 	0x1000000
     5bc:	42000200 	c0	0x200
     5c0:	00002101 	0x2101
     5c4:	01fb0e0d 	break	0x1fb,0x38
     5c8:	00010101 	0x10101
     5cc:	01000000 	0x1000000
     5d0:	01000001 	movf	zero,t0,$fcc0
     5d4:	006e3334 	teq	v1,t6,0xcc
     5d8:	5f626c74 	0x5f626c74
     5dc:	7a2e5300 	0x7a2e5300
     5e0:	00000000 	nop
     5e4:	00050280 	sll	zero,a1,0xa
     5e8:	000ef003 	sra	s8,t6,0x0
     5ec:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     5f0:	02d40114 	0x2d40114
     5f4:	4b4c4d4b 	c2	0x14c4d4b
     5f8:	4b4b0204 	c2	0x14b0204
     5fc:	00010100 	sll	zero,at,0x4
     600:	00003f00 	sll	a3,zero,0x1c
     604:	02000000 	0x2000000
     608:	200101fb 	addi	at,zero,507
     60c:	0e0d0001 	jal	8340004 <data_size+0x833fff4>
     610:	01010100 	0x1010100
     614:	00000100 	sll	zero,zero,0x4
     618:	0001006e 	0x1006e
     61c:	385f736c 	xori	ra,v0,0x736c
     620:	74692e53 	jalx	1a4b94c <data_size+0x1a4b93c>
     624:	00000000 	nop
     628:	00000502 	srl	zero,zero,0x14
     62c:	80000fe8 	lb	zero,4072(zero)
     630:	030a014b 	0x30a014b
     634:	4c08ae4b 	0x4c08ae4b
     638:	4c4d4b4b 	0x4c4d4b4b
     63c:	4b020400 	c2	0x1020400
     640:	01010000 	0x1010000
     644:	003f0002 	ror	zero,ra,0x0
     648:	0000001f 	0x1f
     64c:	0101fb0e 	0x101fb0e
     650:	0d000101 	jal	4000404 <data_size+0x40003f4>
     654:	01010000 	0x1010000
     658:	00010000 	sll	zero,at,0x0
     65c:	01006e31 	tgeu	t0,zero,0x1b8
     660:	5f616464 	0x5f616464
     664:	2e530000 	sltiu	s3,s2,0
     668:	00000000 	nop
     66c:	05028000 	bltzl	t0,fffe0670 <_stack+0x7fddbfc8>
     670:	1028030a 	beq	at,t0,129c <data_size+0x128c>
     674:	014b4c02 	0x14b4c02
     678:	24144b4c 	li	s4,19276
     67c:	4d4b4b4b 	0x4d4b4b4b
     680:	02040001 	movf	zero,s0,$fcc1
     684:	01000000 	0x1000000
     688:	3f000200 	0x3f000200
     68c:	00001f01 	0x1f01
     690:	01fb0e0d 	break	0x1fb,0x38
     694:	00010101 	0x10101
     698:	01000000 	0x1000000
     69c:	01000001 	movf	zero,t0,$fcc0
     6a0:	006e355f 	0x6e355f
     6a4:	7375622e 	0x7375622e
     6a8:	53000000 	beqzl	t8,6ac <data_size+0x69c>
     6ac:	00000005 	0x5
     6b0:	02800010 	0x2800010
     6b4:	70030a01 	0x70030a01
     6b8:	4b4c0224 	c2	0x14c0224
     6bc:	144b4c4d 	bne	v0,t3,137f4 <data_size+0x137e4>
     6c0:	4b4b4b02 	c2	0x14b4b02
     6c4:	04000101 	bltz	zero,acc <data_size+0xabc>
     6c8:	00000041 	0x41
     6cc:	00020000 	sll	zero,v0,0x0
     6d0:	00220101 	0x220101
     6d4:	fb0e0d00 	sdc2	$14,3328(t8)
     6d8:	01010101 	0x1010101
     6dc:	00000001 	movf	zero,zero,$fcc0
     6e0:	00000100 	sll	zero,zero,0x4
     6e4:	6e31305f 	0x6e31305f
     6e8:	736c7469 	0x736c7469
     6ec:	752e5300 	jalx	4b94c00 <data_size+0x4b94bf0>
     6f0:	00000000 	nop
     6f4:	00050280 	sll	zero,a1,0xa
     6f8:	0010b803 	sra	s7,s0,0x0
     6fc:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     700:	08ae4b4c 	j	2b92d30 <data_size+0x2b92d20>
     704:	4d4b4b4b 	0x4d4b4b4b
     708:	02040001 	movf	zero,s0,$fcc1
     70c:	01000000 	0x1000000
     710:	40000200 	0x40000200
     714:	00002001 	movf	a0,zero,$fcc0
     718:	01fb0e0d 	break	0x1fb,0x38
     71c:	00010101 	0x10101
     720:	01000000 	0x1000000
     724:	01000001 	movf	zero,t0,$fcc0
     728:	006e3138 	0x6e3138
     72c:	5f6e6f72 	0x5f6e6f72
     730:	2e530000 	sltiu	s3,s2,0
     734:	00000000 	nop
     738:	05028000 	bltzl	t0,fffe073c <_stack+0x7fddc094>
     73c:	10f8030a 	beq	a3,t8,1368 <data_size+0x1358>
     740:	014b4c02 	0x14b4c02
     744:	24144b4c 	li	s4,19276
     748:	4d4b4b4b 	0x4d4b4b4b
     74c:	02040001 	movf	zero,s0,$fcc1
     750:	01000000 	0x1000000
     754:	45000200 	bc1f	f58 <data_size+0xf48>
     758:	00002101 	0x2101
     75c:	01fb0e0d 	break	0x1fb,0x38
     760:	00010101 	0x10101
     764:	01000000 	0x1000000
     768:	01000001 	movf	zero,t0,$fcc0
     76c:	006e3535 	0x6e3535
     770:	5f657265 	0x5f657265
     774:	742e5300 	jalx	b94c00 <data_size+0xb94bf0>
     778:	00000000 	nop
     77c:	00050280 	sll	zero,a1,0xa
     780:	00114003 	sra	t0,s1,0x0
     784:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     788:	834b4b4b 	lb	t3,19275(k0)
     78c:	4d4c4b4b 	0x4d4c4b4b
     790:	4c4d4b4b 	0x4c4d4b4b
     794:	4b020400 	c2	0x1020400
     798:	01010000 	0x1010000
     79c:	013e0002 	0x13e0002
     7a0:	0000001f 	0x1f
     7a4:	0101fb0e 	0x101fb0e
     7a8:	0d000101 	jal	4000404 <data_size+0x40003f4>
     7ac:	01010000 	0x1010000
     7b0:	00010000 	sll	zero,at,0x0
     7b4:	01006e34 	teq	t0,zero,0x1b8
     7b8:	395f6c68 	xori	ra,t2,0x6c68
     7bc:	2e530000 	sltiu	s3,s2,0
     7c0:	00000000 	nop
     7c4:	05028000 	bltzl	t0,fffe07c8 <_stack+0x7fddc120>
     7c8:	1188030a 	beq	t4,t0,13f4 <data_size+0x13e4>
     7cc:	014b4c02 	0x14b4c02
     7d0:	2c13023c 	sltiu	s3,zero,572
     7d4:	13023c13 	beq	t8,v0,f824 <data_size+0xf814>
     7d8:	022c1302 	0x22c1302
     7dc:	3c13022c 	lui	s3,0x22c
     7e0:	13022c13 	beq	t8,v0,b830 <data_size+0xb820>
     7e4:	022c1302 	0x22c1302
     7e8:	3c13023c 	lui	s3,0x23c
     7ec:	13022c13 	beq	t8,v0,b83c <data_size+0xb82c>
     7f0:	022c1302 	0x22c1302
     7f4:	2c13022c 	sltiu	s3,zero,556
     7f8:	13023c13 	beq	t8,v0,f848 <data_size+0xf838>
     7fc:	022c1302 	0x22c1302
     800:	3c13022c 	lui	s3,0x22c
     804:	13023c13 	beq	t8,v0,f854 <data_size+0xf844>
     808:	023c1302 	0x23c1302
     80c:	2c13023c 	sltiu	s3,zero,572
     810:	13022c13 	beq	t8,v0,b860 <data_size+0xb850>
     814:	023c1302 	0x23c1302
     818:	3c13022c 	lui	s3,0x22c
     81c:	13022c13 	beq	t8,v0,b86c <data_size+0xb85c>
     820:	022c1302 	0x22c1302
     824:	2c13023c 	sltiu	s3,zero,572
     828:	13022c13 	beq	t8,v0,b878 <data_size+0xb868>
     82c:	022c1302 	0x22c1302
     830:	2c13022c 	sltiu	s3,zero,556
     834:	13022c13 	beq	t8,v0,b884 <data_size+0xb874>
     838:	022c1302 	0x22c1302
     83c:	2c130238 	sltiu	s3,zero,568
     840:	13023813 	beq	t8,v0,e890 <data_size+0xe880>
     844:	02381302 	0x2381302
     848:	28130238 	slti	s3,zero,568
     84c:	13023813 	beq	t8,v0,e89c <data_size+0xe88c>
     850:	02281302 	0x2281302
     854:	38130228 	xori	s3,zero,0x228
     858:	13022813 	beq	t8,v0,a8a8 <data_size+0xa898>
     85c:	02381302 	0x2381302
     860:	28130238 	slti	s3,zero,568
     864:	13023813 	beq	t8,v0,e8b4 <data_size+0xe8a4>
     868:	02381302 	0x2381302
     86c:	38130228 	xori	s3,zero,0x228
     870:	13022813 	beq	t8,v0,a8c0 <data_size+0xa8b0>
     874:	02381302 	0x2381302
     878:	38130238 	xori	s3,zero,0x238
     87c:	13023813 	beq	t8,v0,e8cc <data_size+0xe8bc>
     880:	02281302 	0x2281302
     884:	28130228 	slti	s3,zero,552
     888:	13023813 	beq	t8,v0,e8d8 <data_size+0xe8c8>
     88c:	02381302 	0x2381302
     890:	38130228 	xori	s3,zero,0x228
     894:	13023813 	beq	t8,v0,e8e4 <data_size+0xe8d4>
     898:	02381302 	0x2381302
     89c:	28130228 	slti	s3,zero,552
     8a0:	13023813 	beq	t8,v0,e8f0 <data_size+0xe8e0>
     8a4:	02281302 	0x2281302
     8a8:	28130228 	slti	s3,zero,552
     8ac:	13022813 	beq	t8,v0,a8fc <data_size+0xa8ec>
     8b0:	02281302 	0x2281302
     8b4:	28130228 	slti	s3,zero,552
     8b8:	13022813 	beq	t8,v0,a908 <data_size+0xa8f8>
     8bc:	02281302 	0x2281302
     8c0:	28130228 	slti	s3,zero,552
     8c4:	13022813 	beq	t8,v0,a914 <data_size+0xa904>
     8c8:	02281302 	0x2281302
     8cc:	28130224 	slti	s3,zero,548
     8d0:	144b4c4d 	bne	v0,t3,13a08 <data_size+0x139f8>
     8d4:	4b4b4b02 	c2	0x14b4b02
     8d8:	04000101 	bltz	zero,ce0 <data_size+0xcd0>
     8dc:	00000041 	0x41
     8e0:	00020000 	sll	zero,v0,0x0
     8e4:	00200101 	0x200101
     8e8:	fb0e0d00 	sdc2	$14,3328(t8)
     8ec:	01010101 	0x1010101
     8f0:	00000001 	movf	zero,zero,$fcc0
     8f4:	00000100 	sll	zero,zero,0x4
     8f8:	6e33305f 	0x6e33305f
     8fc:	626e652e 	0x626e652e
     900:	53000000 	beqzl	t8,904 <data_size+0x8f4>
     904:	00000005 	0x5
     908:	02800021 	move	zero,s4
     90c:	d0030a01 	0xd0030a01
     910:	4b4c02dc 	c2	0x14c02dc
     914:	01144b4c 	syscall	0x4512d
     918:	4d4b4b4b 	0x4d4b4b4b
     91c:	02040001 	movf	zero,s0,$fcc1
     920:	01000000 	0x1000000
     924:	40000200 	0x40000200
     928:	00002001 	movf	a0,zero,$fcc0
     92c:	01fb0e0d 	break	0x1fb,0x38
     930:	00010101 	0x10101
     934:	01000000 	0x1000000
     938:	01000001 	movf	zero,t0,$fcc0
     93c:	006e365f 	0x6e365f
     940:	73756275 	0x73756275
     944:	2e530000 	sltiu	s3,s2,0
     948:	00000000 	nop
     94c:	05028000 	bltzl	t0,fffe0950 <_stack+0x7fddc2a8>
     950:	22d0030a 	addi	s0,s6,778
     954:	014b4c02 	0x14b4c02
     958:	24144b4c 	li	s4,19276
     95c:	4d4b4b4b 	0x4d4b4b4b
     960:	02040001 	movf	zero,s0,$fcc1
     964:	01000000 	0x1000000
     968:	41000200 	bc0f	116c <data_size+0x115c>
     96c:	00002201 	0x2201
     970:	01fb0e0d 	break	0x1fb,0x38
     974:	00010101 	0x10101
     978:	01000000 	0x1000000
     97c:	01000001 	movf	zero,t0,$fcc0
     980:	006e3435 	0x6e3435
     984:	5f627265 	0x5f627265
     988:	616b2e53 	0x616b2e53
     98c:	00000000 	nop
     990:	00000502 	srl	zero,zero,0x14
     994:	80002318 	lb	zero,8984(zero)
     998:	030a014b 	0x30a014b
     99c:	4e4c4b4b 	c3	0x4c4b4b
     9a0:	4c4d4b4b 	0x4c4d4b4b
     9a4:	4b020400 	c2	0x1020400
     9a8:	01010000 	0x1010000
     9ac:	003f0002 	ror	zero,ra,0x0
     9b0:	0000001f 	0x1f
     9b4:	0101fb0e 	0x101fb0e
     9b8:	0d000101 	jal	4000404 <data_size+0x40003f4>
     9bc:	01010000 	0x1010000
     9c0:	00010000 	sll	zero,at,0x0
     9c4:	01006e35 	0x1006e35
     9c8:	325f7362 	andi	ra,s2,0x7362
     9cc:	2e530000 	sltiu	s3,s2,0
     9d0:	00000000 	nop
     9d4:	05028000 	bltzl	t0,fffe09d8 <_stack+0x7fddc330>
     9d8:	2348030a 	addi	t0,k0,778
     9dc:	014b4c02 	0x14b4c02
     9e0:	3c144b4c 	lui	s4,0x4b4c
     9e4:	4d4b4b4b 	0x4d4b4b4b
     9e8:	02040001 	movf	zero,s0,$fcc1
     9ec:	01000000 	0x1000000
     9f0:	40000200 	0x40000200
     9f4:	00002101 	0x2101
     9f8:	01fb0e0d 	break	0x1fb,0x38
     9fc:	00010101 	0x10101
     a00:	01000000 	0x1000000
     a04:	01000001 	movf	zero,t0,$fcc0
     a08:	006e3234 	teq	v1,t6,0xc8
     a0c:	5f736c6c 	0x5f736c6c
     a10:	762e5300 	jalx	8b94c00 <data_size+0x8b94bf0>
     a14:	00000000 	nop
     a18:	00050280 	sll	zero,a1,0xa
     a1c:	0023a803 	0x23a803
     a20:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     a24:	08e64b4c 	j	3992d30 <data_size+0x3992d20>
     a28:	4d4b4b4b 	0x4d4b4b4b
     a2c:	02040001 	movf	zero,s0,$fcc1
     a30:	01000000 	0x1000000
     a34:	3f000200 	0x3f000200
     a38:	00001f01 	0x1f01
     a3c:	01fb0e0d 	break	0x1fb,0x38
     a40:	00010101 	0x10101
     a44:	01000000 	0x1000000
     a48:	01000001 	movf	zero,t0,$fcc0
     a4c:	006e3139 	0x6e3139
     a50:	5f6f722e 	0x5f6f722e
     a54:	53000000 	beqzl	t8,a58 <data_size+0xa48>
     a58:	00000005 	0x5
     a5c:	02800023 	subu	zero,s4,zero
     a60:	f0030a01 	0xf0030a01
     a64:	4b4c0224 	c2	0x14c0224
     a68:	144b4c4d 	bne	v0,t3,13ba0 <data_size+0x13b90>
     a6c:	4b4b4b02 	c2	0x14b4b02
     a70:	04000101 	bltz	zero,e78 <data_size+0xe68>
     a74:	0000003f 	0x3f
     a78:	00020000 	sll	zero,v0,0x0
     a7c:	00200101 	0x200101
     a80:	fb0e0d00 	sdc2	$14,3328(t8)
     a84:	01010101 	0x1010101
     a88:	00000001 	movf	zero,zero,$fcc0
     a8c:	00000100 	sll	zero,zero,0x4
     a90:	6e395f73 	0x6e395f73
     a94:	6c74752e 	0x6c74752e
     a98:	53000000 	beqzl	t8,a9c <data_size+0xa8c>
     a9c:	00000005 	0x5
     aa0:	02800024 	and	zero,s4,zero
     aa4:	38030a01 	xori	v1,zero,0xa01
     aa8:	4b4c08e6 	c2	0x14c08e6
     aac:	4b4c4d4b 	c2	0x14c4d4b
     ab0:	4b4b0204 	c2	0x14b0204
     ab4:	00010100 	sll	zero,at,0x4
     ab8:	00004a00 	sll	t1,zero,0x8
     abc:	02000000 	0x2000000
     ac0:	210101fb 	addi	at,t0,507
     ac4:	0e0d0001 	jal	8340004 <data_size+0x833fff4>
     ac8:	01010100 	0x1010100
     acc:	00000100 	sll	zero,zero,0x4
     ad0:	0001006e 	0x1006e
     ad4:	35365f6d 	ori	s6,t1,0x5f6d
     ad8:	6663302e 	0x6663302e
     adc:	53000000 	beqzl	t8,ae0 <data_size+0xad0>
     ae0:	00000005 	0x5
     ae4:	02800024 	and	zero,s4,zero
     ae8:	80030a01 	lb	v1,2561(zero)
     aec:	4b4c8551 	c2	0x14c8551
     af0:	4b4c4b4c 	c2	0x14c4b4c
     af4:	4b4b4b4b 	c2	0x14b4b4b
     af8:	4b4c4b4c 	c2	0x14c4b4c
     afc:	4d4b4b4b 	0x4d4b4b4b
     b00:	02040001 	movf	zero,s0,$fcc1
     b04:	01000000 	0x1000000
     b08:	41000200 	bc0f	130c <data_size+0x12fc>
     b0c:	00002001 	movf	a0,zero,$fcc0
     b10:	01fb0e0d 	break	0x1fb,0x38
     b14:	00010101 	0x10101
     b18:	01000000 	0x1000000
     b1c:	01000001 	movf	zero,t0,$fcc0
     b20:	006e3338 	0x6e3338
     b24:	5f6a616c 	0x5f6a616c
     b28:	2e530000 	sltiu	s3,s2,0
     b2c:	00000000 	nop
     b30:	05028000 	bltzl	t0,fffe0b34 <_stack+0x7fddc48c>
     b34:	24d8030a 	addiu	t8,a2,778
     b38:	014b4c02 	0x14b4c02
     b3c:	a401144b 	sh	at,5195(zero)
     b40:	4c4d4b4b 	0x4c4d4b4b
     b44:	4b020400 	c2	0x1020400
     b48:	01010000 	0x1010000
     b4c:	00400002 	0x400002
     b50:	00000021 	move	zero,zero
     b54:	0101fb0e 	0x101fb0e
     b58:	0d000101 	jal	4000404 <data_size+0x40003f4>
     b5c:	01010000 	0x1010000
     b60:	00010000 	sll	zero,at,0x0
     b64:	01006e34 	teq	t0,zero,0x1b8
     b68:	335f6d74 	andi	ra,k0,0x6d74
     b6c:	68692e53 	0x68692e53
     b70:	00000000 	nop
     b74:	00000502 	srl	zero,zero,0x14
     b78:	800025a0 	lb	zero,9632(zero)
     b7c:	030a014b 	0x30a014b
     b80:	4c08e64b 	0x4c08e64b
     b84:	4c4d4b4b 	0x4c4d4b4b
     b88:	4b020400 	c2	0x1020400
     b8c:	01010000 	0x1010000
     b90:	00400002 	0x400002
     b94:	00000020 	add	zero,zero,zero
     b98:	0101fb0e 	0x101fb0e
     b9c:	0d000101 	jal	4000404 <data_size+0x40003f4>
     ba0:	01010000 	0x1010000
     ba4:	00010000 	sll	zero,at,0x0
     ba8:	01006e32 	tlt	t0,zero,0x1b8
     bac:	315f786f 	andi	ra,t2,0x786f
     bb0:	722e5300 	0x722e5300
     bb4:	00000000 	nop
     bb8:	00050280 	sll	zero,a1,0xa
     bbc:	0025e803 	0x25e803
     bc0:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     bc4:	0224144b 	0x224144b
     bc8:	4c4d4b4b 	0x4c4d4b4b
     bcc:	4b020400 	c2	0x1020400
     bd0:	01010000 	0x1010000
     bd4:	020b0002 	0x20b0002
     bd8:	00000020 	add	zero,zero,zero
     bdc:	0101fb0e 	0x101fb0e
     be0:	0d000101 	jal	4000404 <data_size+0x40003f4>
     be4:	01010000 	0x1010000
     be8:	00010000 	sll	zero,at,0x0
     bec:	01006e34 	teq	t0,zero,0x1b8
     bf0:	385f6c62 	xori	ra,v0,0x6c62
     bf4:	752e5300 	jalx	4b94c00 <data_size+0x4b94bf0>
     bf8:	00000000 	nop
     bfc:	00050280 	sll	zero,a1,0xa
     c00:	00263003 	0x263003
     c04:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     c08:	022c1302 	0x22c1302
     c0c:	2c13022c 	sltiu	s3,zero,556
     c10:	13022c13 	beq	t8,v0,bc60 <data_size+0xbc50>
     c14:	022c1302 	0x22c1302
     c18:	2c13023c 	sltiu	s3,zero,572
     c1c:	13022c13 	beq	t8,v0,bc6c <data_size+0xbc5c>
     c20:	023c1302 	0x23c1302
     c24:	2c13022c 	sltiu	s3,zero,556
     c28:	13022c13 	beq	t8,v0,bc78 <data_size+0xbc68>
     c2c:	022c1302 	0x22c1302
     c30:	2c13022c 	sltiu	s3,zero,556
     c34:	13022c13 	beq	t8,v0,bc84 <data_size+0xbc74>
     c38:	022c1302 	0x22c1302
     c3c:	2c13023c 	sltiu	s3,zero,572
     c40:	13022c13 	beq	t8,v0,bc90 <data_size+0xbc80>
     c44:	022c1302 	0x22c1302
     c48:	2c13022c 	sltiu	s3,zero,556
     c4c:	13022c13 	beq	t8,v0,bc9c <data_size+0xbc8c>
     c50:	022c1302 	0x22c1302
     c54:	2c13022c 	sltiu	s3,zero,556
     c58:	13023c13 	beq	t8,v0,fca8 <data_size+0xfc98>
     c5c:	023c1302 	0x23c1302
     c60:	2c13022c 	sltiu	s3,zero,556
     c64:	13022c13 	beq	t8,v0,bcb4 <data_size+0xbca4>
     c68:	022c1302 	0x22c1302
     c6c:	2c13022c 	sltiu	s3,zero,556
     c70:	13022c13 	beq	t8,v0,bcc0 <data_size+0xbcb0>
     c74:	022c1302 	0x22c1302
     c78:	2c13023c 	sltiu	s3,zero,572
     c7c:	13022c13 	beq	t8,v0,bccc <data_size+0xbcbc>
     c80:	023c1302 	0x23c1302
     c84:	2c13022c 	sltiu	s3,zero,556
     c88:	13022c13 	beq	t8,v0,bcd8 <data_size+0xbcc8>
     c8c:	022c1302 	0x22c1302
     c90:	2c13022c 	sltiu	s3,zero,556
     c94:	13022c13 	beq	t8,v0,bce4 <data_size+0xbcd4>
     c98:	023c1302 	0x23c1302
     c9c:	2c13022c 	sltiu	s3,zero,556
     ca0:	13022c13 	beq	t8,v0,bcf0 <data_size+0xbce0>
     ca4:	022c1302 	0x22c1302
     ca8:	28130228 	slti	s3,zero,552
     cac:	13022813 	beq	t8,v0,acfc <data_size+0xacec>
     cb0:	02381302 	0x2381302
     cb4:	28130228 	slti	s3,zero,552
     cb8:	13022813 	beq	t8,v0,ad08 <data_size+0xacf8>
     cbc:	02281302 	0x2281302
     cc0:	38130238 	xori	s3,zero,0x238
     cc4:	13023813 	beq	t8,v0,ed14 <data_size+0xed04>
     cc8:	02381302 	0x2381302
     ccc:	38130238 	xori	s3,zero,0x238
     cd0:	13022813 	beq	t8,v0,ad20 <data_size+0xad10>
     cd4:	02281302 	0x2281302
     cd8:	38130238 	xori	s3,zero,0x238
     cdc:	13023813 	beq	t8,v0,ed2c <data_size+0xed1c>
     ce0:	02281302 	0x2281302
     ce4:	38130228 	xori	s3,zero,0x228
     ce8:	13023813 	beq	t8,v0,ed38 <data_size+0xed28>
     cec:	02381302 	0x2381302
     cf0:	38130228 	xori	s3,zero,0x228
     cf4:	13022813 	beq	t8,v0,ad44 <data_size+0xad34>
     cf8:	02381302 	0x2381302
     cfc:	28130238 	slti	s3,zero,568
     d00:	13023813 	beq	t8,v0,ed50 <data_size+0xed40>
     d04:	02381302 	0x2381302
     d08:	28130238 	slti	s3,zero,568
     d0c:	13023813 	beq	t8,v0,ed5c <data_size+0xed4c>
     d10:	02281302 	0x2281302
     d14:	38130238 	xori	s3,zero,0x238
     d18:	13023813 	beq	t8,v0,ed68 <data_size+0xed58>
     d1c:	02381302 	0x2381302
     d20:	38130228 	xori	s3,zero,0x228
     d24:	13022813 	beq	t8,v0,ad74 <data_size+0xad64>
     d28:	02381302 	0x2381302
     d2c:	28130238 	slti	s3,zero,568
     d30:	13022813 	beq	t8,v0,ad80 <data_size+0xad70>
     d34:	02281302 	0x2281302
     d38:	28130228 	slti	s3,zero,552
     d3c:	13022813 	beq	t8,v0,ad8c <data_size+0xad7c>
     d40:	02281302 	0x2281302
     d44:	28130228 	slti	s3,zero,552
     d48:	13022813 	beq	t8,v0,ad98 <data_size+0xad88>
     d4c:	02281302 	0x2281302
     d50:	28130228 	slti	s3,zero,552
     d54:	13022813 	beq	t8,v0,ada4 <data_size+0xad94>
     d58:	02281302 	0x2281302
     d5c:	28130228 	slti	s3,zero,552
     d60:	13022813 	beq	t8,v0,adb0 <data_size+0xada0>
     d64:	02281302 	0x2281302
     d68:	28130228 	slti	s3,zero,552
     d6c:	13022813 	beq	t8,v0,adbc <data_size+0xadac>
     d70:	02281302 	0x2281302
     d74:	28130228 	slti	s3,zero,552
     d78:	13022813 	beq	t8,v0,adc8 <data_size+0xadb8>
     d7c:	02281302 	0x2281302
     d80:	28130228 	slti	s3,zero,552
     d84:	13022813 	beq	t8,v0,add4 <data_size+0xadc4>
     d88:	02281302 	0x2281302
     d8c:	28130228 	slti	s3,zero,552
     d90:	13022813 	beq	t8,v0,ade0 <data_size+0xadd0>
     d94:	02281302 	0x2281302
     d98:	28130228 	slti	s3,zero,552
     d9c:	13022813 	beq	t8,v0,adec <data_size+0xaddc>
     da0:	02281302 	0x2281302
     da4:	28130228 	slti	s3,zero,552
     da8:	13022813 	beq	t8,v0,adf8 <data_size+0xade8>
     dac:	02281302 	0x2281302
     db0:	28130228 	slti	s3,zero,552
     db4:	13022813 	beq	t8,v0,ae04 <data_size+0xadf4>
     db8:	02281302 	0x2281302
     dbc:	28130228 	slti	s3,zero,552
     dc0:	13022813 	beq	t8,v0,ae10 <data_size+0xae00>
     dc4:	02281302 	0x2281302
     dc8:	28130228 	slti	s3,zero,552
     dcc:	13022813 	beq	t8,v0,ae1c <data_size+0xae0c>
     dd0:	02281302 	0x2281302
     dd4:	24144b4c 	li	s4,19276
     dd8:	4d4b4b4b 	0x4d4b4b4b
     ddc:	02040001 	movf	zero,s0,$fcc1
     de0:	01000000 	0x1000000
     de4:	41000200 	bc0f	15e8 <data_size+0x15d8>
     de8:	00002001 	movf	a0,zero,$fcc0
     dec:	01fb0e0d 	break	0x1fb,0x38
     df0:	00010101 	0x10101
     df4:	01000000 	0x1000000
     df8:	01000001 	movf	zero,t0,$fcc0
     dfc:	006e3239 	0x6e3239
     e00:	5f626571 	0x5f626571
     e04:	2e530000 	sltiu	s3,s2,0
     e08:	00000000 	nop
     e0c:	05028000 	bltzl	t0,fffe0e10 <_stack+0x7fddc768>
     e10:	4168030a 	0x4168030a
     e14:	014b4c02 	0x14b4c02
     e18:	b801144b 	swr	at,5195(zero)
     e1c:	4c4d4b4b 	0x4c4d4b4b
     e20:	4b020400 	c2	0x1020400
     e24:	01010000 	0x1010000
     e28:	00400002 	0x400002
     e2c:	00000021 	move	zero,zero
     e30:	0101fb0e 	0x101fb0e
     e34:	0d000101 	jal	4000404 <data_size+0x40003f4>
     e38:	01010000 	0x1010000
     e3c:	00010000 	sll	zero,at,0x0
     e40:	01006e32 	tlt	t0,zero,0x1b8
     e44:	325f786f 	andi	ra,s2,0x786f
     e48:	72692e53 	0x72692e53
     e4c:	00000000 	nop
     e50:	00000502 	srl	zero,zero,0x14
     e54:	80004248 	lb	zero,16968(zero)
     e58:	030a014b 	0x30a014b
     e5c:	4c08e64b 	0x4c08e64b
     e60:	4c4d4b4b 	0x4c4d4b4b
     e64:	4b020400 	c2	0x1020400
     e68:	01010000 	0x1010000
     e6c:	00420002 	0x420002
     e70:	00000021 	move	zero,zero
     e74:	0101fb0e 	0x101fb0e
     e78:	0d000101 	jal	4000404 <data_size+0x40003f4>
     e7c:	01010000 	0x1010000
     e80:	00010000 	sll	zero,at,0x0
     e84:	01006e33 	tltu	t0,zero,0x1b8
     e88:	315f6267 	andi	ra,t2,0x6267
     e8c:	657a2e53 	0x657a2e53
     e90:	00000000 	nop
     e94:	00000502 	srl	zero,zero,0x14
     e98:	80004290 	lb	zero,17040(zero)
     e9c:	030a014b 	0x30a014b
     ea0:	4c029001 	mfc3	v0,$18,1
     ea4:	144b4c4d 	bne	v0,t3,13fdc <data_size+0x13fcc>
     ea8:	4b4b4b02 	c2	0x14b4b02
     eac:	04000101 	bltz	zero,12b4 <data_size+0x12a4>
     eb0:	00000040 	ssnop
     eb4:	00020000 	sll	zero,v0,0x0
     eb8:	00210101 	0x210101
     ebc:	fb0e0d00 	sdc2	$14,3328(t8)
     ec0:	01010101 	0x1010101
     ec4:	00000001 	movf	zero,zero,$fcc0
     ec8:	00000100 	sll	zero,zero,0x4
     ecc:	6e31365f 	0x6e31365f
     ed0:	616e6469 	0x616e6469
     ed4:	2e530000 	sltiu	s3,s2,0
     ed8:	00000000 	nop
     edc:	05028000 	bltzl	t0,fffe0ee0 <_stack+0x7fddc838>
     ee0:	4348030a 	c0	0x148030a
     ee4:	014b4c08 	0x14b4c08
     ee8:	ae4b4c4d 	sw	t3,19533(s2)
     eec:	4b4b4b02 	c2	0x14b4b02
     ef0:	04000101 	bltz	zero,12f8 <data_size+0x12e8>
     ef4:	0000003f 	0x3f
     ef8:	00020000 	sll	zero,v0,0x0
     efc:	00200101 	0x200101
     f00:	fb0e0d00 	sdc2	$14,3328(t8)
     f04:	01010101 	0x1010101
     f08:	00000001 	movf	zero,zero,$fcc0
     f0c:	00000100 	sll	zero,zero,0x4
     f10:	6e32335f 	0x6e32335f
     f14:	736c6c2e 	0x736c6c2e
     f18:	53000000 	beqzl	t8,f1c <data_size+0xf0c>
     f1c:	00000005 	0x5
     f20:	02800043 	0x2800043
     f24:	88030a01 	lwl	v1,2561(zero)
     f28:	4b4c08e6 	c2	0x14c08e6
     f2c:	4b4c4d4b 	c2	0x14c4d4b
     f30:	4b4b0204 	c2	0x14b0204
     f34:	00010100 	sll	zero,at,0x4
     f38:	00004000 	sll	t0,zero,0x0
     f3c:	02000000 	0x2000000
     f40:	210101fb 	addi	at,t0,507
     f44:	0e0d0001 	jal	8340004 <data_size+0x833fff4>
     f48:	01010100 	0x1010100
     f4c:	00000100 	sll	zero,zero,0x4
     f50:	0001006e 	0x1006e
     f54:	32365f73 	andi	s6,s1,0x5f73
     f58:	7261762e 	0x7261762e
     f5c:	53000000 	beqzl	t8,f60 <data_size+0xf50>
     f60:	00000005 	0x5
     f64:	02800043 	0x2800043
     f68:	d0030a01 	0xd0030a01
     f6c:	4b4c08e6 	c2	0x14c08e6
     f70:	4b4c4d4b 	c2	0x14c4d4b
     f74:	4b4b0204 	c2	0x14b0204
     f78:	00010100 	sll	zero,at,0x4
     f7c:	00003f00 	sll	a3,zero,0x1c
     f80:	02000000 	0x2000000
     f84:	1f0101fb 	0x1f0101fb
     f88:	0e0d0001 	jal	8340004 <data_size+0x833fff4>
     f8c:	01010100 	0x1010100
     f90:	00000100 	sll	zero,zero,0x4
     f94:	0001006e 	0x1006e
     f98:	35315f6c 	ori	s1,t1,0x5f6c
     f9c:	772e5300 	jalx	cb94c00 <data_size+0xcb94bf0>
     fa0:	00000000 	nop
     fa4:	00050280 	sll	zero,a1,0xa
     fa8:	00441803 	0x441803
     fac:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
     fb0:	0230154b 	0x230154b
     fb4:	4c4d4b4b 	0x4c4d4b4b
     fb8:	4b020400 	c2	0x1020400
     fbc:	01010000 	0x1010000
     fc0:	00400002 	0x400002
     fc4:	00000021 	move	zero,zero
     fc8:	0101fb0e 	0x101fb0e
     fcc:	0d000101 	jal	4000404 <data_size+0x40003f4>
     fd0:	01010000 	0x1010000
     fd4:	00010000 	sll	zero,at,0x0
     fd8:	01006e34 	teq	t0,zero,0x1b8
     fdc:	315f6d66 	andi	ra,t2,0x6d66
     fe0:	68692e53 	0x68692e53
     fe4:	00000000 	nop
     fe8:	00000502 	srl	zero,zero,0x14
     fec:	80004470 	lb	zero,17520(zero)
     ff0:	030a014b 	0x30a014b
     ff4:	4c08e74b 	0x4c08e74b
     ff8:	4c4d4b4b 	0x4c4d4b4b
     ffc:	4b020400 	c2	0x1020400
    1000:	01010000 	0x1010000
    1004:	00420002 	0x420002
    1008:	00000021 	move	zero,zero
    100c:	0101fb0e 	0x101fb0e
    1010:	0d000101 	jal	4000404 <data_size+0x40003f4>
    1014:	01010000 	0x1010000
    1018:	00010000 	sll	zero,at,0x0
    101c:	01006e33 	tltu	t0,zero,0x1b8
    1020:	325f6267 	andi	ra,s2,0x6267
    1024:	747a2e53 	jalx	1e8b94c <data_size+0x1e8b93c>
    1028:	00000000 	nop
    102c:	00000502 	srl	zero,zero,0x14
    1030:	800044b8 	lb	zero,17592(zero)
    1034:	030a014b 	0x30a014b
    1038:	4c02c001 	mfc3	v0,$24,1
    103c:	154b4c4d 	bne	t2,t3,14174 <data_size+0x14164>
    1040:	4b4b4b02 	c2	0x14b4b02
    1044:	04000101 	bltz	zero,144c <data_size+0x143c>
    1048:	0000003f 	0x3f
    104c:	00020000 	sll	zero,v0,0x0
    1050:	00200101 	0x200101
    1054:	fb0e0d00 	sdc2	$14,3328(t8)
    1058:	01010101 	0x1010101
    105c:	00000001 	movf	zero,zero,$fcc0
    1060:	00000100 	sll	zero,zero,0x4
    1064:	6e32305f 	0x6e32305f
    1068:	6f72692e 	0x6f72692e
    106c:	53000000 	beqzl	t8,1070 <data_size+0x1060>
    1070:	00000005 	0x5
    1074:	02800045 	0x2800045
    1078:	a0030a01 	sb	v1,2561(zero)
    107c:	4b4c08e6 	c2	0x14c08e6
    1080:	4b4c4d4b 	c2	0x14c4d4b
    1084:	4b4b0204 	c2	0x14b0204
    1088:	00010100 	sll	zero,at,0x4
    108c:	00003f00 	sll	a3,zero,0x1c
    1090:	02000000 	0x2000000
    1094:	200101fb 	addi	at,zero,507
    1098:	0e0d0001 	jal	8340004 <data_size+0x833fff4>
    109c:	01010100 	0x1010100
    10a0:	00000100 	sll	zero,zero,0x4
    10a4:	0001006e 	0x1006e
    10a8:	32355f73 	andi	s5,s1,0x5f73
    10ac:	72612e53 	0x72612e53
    10b0:	00000000 	nop
    10b4:	00000502 	srl	zero,zero,0x14
    10b8:	800045e8 	lb	zero,17896(zero)
    10bc:	030a014b 	0x30a014b
    10c0:	4c08e64b 	0x4c08e64b
    10c4:	4c4d4b4b 	0x4c4d4b4b
    10c8:	4b020400 	c2	0x1020400
    10cc:	01010000 	0x1010000
    10d0:	00400002 	0x400002
    10d4:	00000020 	add	zero,zero,zero
    10d8:	0101fb0e 	0x101fb0e
    10dc:	0d000101 	jal	4000404 <data_size+0x40003f4>
    10e0:	01010000 	0x1010000
    10e4:	00010000 	sll	zero,at,0x0
    10e8:	01006e31 	tgeu	t0,zero,0x1b8
    10ec:	355f616e 	ori	ra,t2,0x616e
    10f0:	642e5300 	0x642e5300
    10f4:	00000000 	nop
    10f8:	00050280 	sll	zero,a1,0xa
    10fc:	00463003 	0x463003
    1100:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
    1104:	0224144b 	0x224144b
    1108:	4c4d4b4b 	0x4c4d4b4b
    110c:	4b020400 	c2	0x1020400
    1110:	01010000 	0x1010000
    1114:	003e0002 	ror	zero,s8,0x0
    1118:	00000020 	add	zero,zero,zero
    111c:	0101fb0e 	0x101fb0e
    1120:	0d000101 	jal	4000404 <data_size+0x40003f4>
    1124:	01010000 	0x1010000
    1128:	00010000 	sll	zero,at,0x0
    112c:	01006e31 	tgeu	t0,zero,0x1b8
    1130:	375f6c75 	ori	ra,k0,0x6c75
    1134:	692e5300 	0x692e5300
    1138:	00000000 	nop
    113c:	00050280 	sll	zero,a1,0xa
    1140:	00467803 	0x467803
    1144:	0a014b4c 	j	8052d30 <data_size+0x8052d20>
    1148:	f44b4c4d 	sdc1	$f11,19533(v0)
    114c:	4b4b4b02 	c2	0x14b4b02
    1150:	04000101 	bltz	zero,1558 <data_size+0x1548>

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000067 	0x67
       4:	00020000 	sll	zero,v0,0x0
       8:	00000401 	0x401
       c:	00000000 	nop
      10:	80000000 	lb	zero,0(zero)
      14:	80000814 	lb	zero,2068(zero)
      18:	73746172 	0x73746172
      1c:	742e5300 	jalx	b94c00 <data_size+0xb94bf0>
      20:	2f686f6d 	sltiu	t0,k1,28525
      24:	652f7a68 	0x652f7a68
      28:	616e6768 	0x616e6768
      2c:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
      30:	6e672f43 	0x6e672f43
      34:	6f6d7075 	0x6f6d7075
      38:	7465725f 	jalx	195c97c <data_size+0x195c96c>
      3c:	41726368 	0x41726368
      40:	69746563 	0x69746563
      44:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
      48:	2f66756e 	sltiu	a2,k1,30062
      4c:	6374696f 	0x6374696f
      50:	6e746573 	0x6e746573
      54:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
      58:	6300474e 	0x6300474e
      5c:	55204153 	bnezl	t1,105ac <data_size+0x1059c>
      60:	20322e32 	addi	s2,at,11826
      64:	342e3531 	ori	t6,at,0x3531
      68:	00800100 	0x800100
      6c:	00006f00 	sll	t5,zero,0x1c
      70:	02000000 	0x2000000
      74:	14040100 	bne	zero,a0,478 <data_size+0x468>
      78:	00016e80 	sll	t5,at,0x1a
      7c:	00081880 	sll	v1,t0,0x2
      80:	00086c6e 	0x86c6e
      84:	35375f6d 	ori	s7,t1,0x5f6d
      88:	7463302e 	jalx	18cc0b8 <data_size+0x18cc0a8>
      8c:	53002f68 	beqzl	t8,be30 <data_size+0xbe20>
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
      b8:	756e6374 	jalx	5b98dd0 <data_size+0x5b98dc0>
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
      e8:	04010000 	b	ec <data_size+0xdc>
      ec:	01bd8000 	0x1bd8000
      f0:	08708000 	j	1c20000 <data_size+0x1c1fff0>
      f4:	09586e33 	j	561b8cc <data_size+0x561b8bc>
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
     120:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
     124:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
     128:	66756e63 	0x66756e63
     12c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
     130:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
     134:	2f737263 	sltiu	s3,k1,29283
     138:	2f696e73 	sltiu	t1,k1,28275
     13c:	7400474e 	jalx	11d38 <data_size+0x11d28>
     140:	55204153 	bnezl	t1,10690 <data_size+0x10680>
     144:	20322e32 	addi	s2,at,11826
     148:	342e3531 	ori	t6,at,0x3531
     14c:	00800100 	0x800100
     150:	00006d00 	sll	t5,zero,0x14
     154:	02000000 	0x2000000
     158:	3c040100 	lui	a0,0x100
     15c:	00020180 	sll	zero,v0,0x6
     160:	00095880 	sll	t3,t1,0x2
     164:	00099c6e 	0x99c6e
     168:	375f736c 	ori	ra,k0,0x736c
     16c:	742e5300 	jalx	b94c00 <data_size+0xb94bf0>
     170:	2f686f6d 	sltiu	t0,k1,28525
     174:	652f7a68 	0x652f7a68
     178:	616e6768 	0x616e6768
     17c:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     180:	6e672f43 	0x6e672f43
     184:	6f6d7075 	0x6f6d7075
     188:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     18c:	41726368 	0x41726368
     190:	69746563 	0x69746563
     194:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     198:	2f66756e 	sltiu	a2,k1,30062
     19c:	6374696f 	0x6374696f
     1a0:	6e746573 	0x6e746573
     1a4:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     1a8:	632f696e 	0x632f696e
     1ac:	73740047 	0x73740047
     1b0:	4e552041 	c3	0x552041
     1b4:	5320322e 	beqzl	t9,ca70 <data_size+0xca60>
     1b8:	32342e35 	andi	s4,s1,0x2e35
     1bc:	31008001 	andi	zero,t0,0x8001
     1c0:	0000006d 	0x6d
     1c4:	00020000 	sll	zero,v0,0x0
     1c8:	00500401 	0x500401
     1cc:	00000243 	sra	zero,zero,0x9
     1d0:	800009a0 	lb	zero,2464(zero)
     1d4:	800009f0 	lb	zero,2544(zero)
     1d8:	6e34375f 	0x6e34375f
     1dc:	6c622e53 	0x6c622e53
     1e0:	002f686f 	0x2f686f
     1e4:	6d652f7a 	0x6d652f7a
     1e8:	68616e67 	0x68616e67
     1ec:	6875696d 	0x6875696d
     1f0:	656e672f 	0x656e672f
     1f4:	436f6d70 	c0	0x16f6d70
     1f8:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
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
     234:	6f000200 	0x6f000200
     238:	00006404 	0x6404
     23c:	01000002 	0x1000002
     240:	86800009 	lh	zero,9(s4)
     244:	f080000a 	0xf080000a
     248:	346e345f 	ori	t6,v1,0x345f
     24c:	61646469 	0x61646469
     250:	752e5300 	jalx	4b94c00 <data_size+0x4b94bf0>
     254:	2f686f6d 	sltiu	t0,k1,28525
     258:	652f7a68 	0x652f7a68
     25c:	616e6768 	0x616e6768
     260:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     264:	6e672f43 	0x6e672f43
     268:	6f6d7075 	0x6f6d7075
     26c:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     270:	41726368 	0x41726368
     274:	69746563 	0x69746563
     278:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     27c:	2f66756e 	sltiu	a2,k1,30062
     280:	6374696f 	0x6374696f
     284:	6e746573 	0x6e746573
     288:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     28c:	632f696e 	0x632f696e
     290:	73740047 	0x73740047
     294:	4e552041 	c3	0x552041
     298:	5320322e 	beqzl	t9,cb54 <data_size+0xcb44>
     29c:	32342e35 	andi	s4,s1,0x2e35
     2a0:	31008001 	andi	zero,t0,0x8001
     2a4:	0000006f 	0x6f
     2a8:	00020000 	sll	zero,v0,0x0
     2ac:	00780401 	0x780401
     2b0:	000002ca 	0x2ca
     2b4:	80000a38 	lb	zero,2616(zero)
     2b8:	80000a78 	lb	zero,2680(zero)
     2bc:	6e32385f 	0x6e32385f
     2c0:	73726c76 	0x73726c76
     2c4:	2e53002f 	sltiu	s3,s2,47
     2c8:	686f6d65 	0x686f6d65
     2cc:	2f7a6861 	sltiu	k0,k1,26721
     2d0:	6e676875 	0x6e676875
     2d4:	696d656e 	0x696d656e
     2d8:	672f436f 	0x672f436f
     2dc:	6d707574 	0x6d707574
     2e0:	65725f41 	0x65725f41
     2e4:	72636869 	0x72636869
     2e8:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
     2ec:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
     2f0:	66756e63 	0x66756e63
     2f4:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
     2f8:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
     2fc:	2f737263 	sltiu	s3,k1,29283
     300:	2f696e73 	sltiu	t1,k1,28275
     304:	7400474e 	jalx	11d38 <data_size+0x11d28>
     308:	55204153 	bnezl	t1,10858 <data_size+0x10848>
     30c:	20322e32 	addi	s2,at,11826
     310:	342e3531 	ori	t6,at,0x3531
     314:	00800100 	0x800100
     318:	00006e00 	sll	t5,zero,0x18
     31c:	02000000 	0x2000000
     320:	8c040100 	lw	a0,256(zero)
     324:	00030e80 	sll	at,v1,0x1a
     328:	000a7880 	sll	t7,t2,0x2
     32c:	000abc6e 	0xabc6e
     330:	325f6164 	andi	ra,s2,0x6164
     334:	64692e53 	0x64692e53
     338:	002f686f 	0x2f686f
     33c:	6d652f7a 	0x6d652f7a
     340:	68616e67 	0x68616e67
     344:	6875696d 	0x6875696d
     348:	656e672f 	0x656e672f
     34c:	436f6d70 	c0	0x16f6d70
     350:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     354:	5f417263 	0x5f417263
     358:	68697465 	0x68697465
     35c:	63747572 	0x63747572
     360:	652f6675 	0x652f6675
     364:	6e637469 	0x6e637469
     368:	6f6e7465 	0x6f6e7465
     36c:	73742f73 	0x73742f73
     370:	72632f69 	0x72632f69
     374:	6e737400 	0x6e737400
     378:	474e5520 	c1	0x14e5520
     37c:	41532032 	0x41532032
     380:	2e32342e 	sltiu	s2,s1,13358
     384:	35310080 	ori	s1,t1,0x80
     388:	01000000 	0x1000000
     38c:	6f000200 	0x6f000200
     390:	0000a004 	sllv	s4,zero,zero
     394:	01000003 	0x1000003
     398:	5180000a 	beqzl	t4,3c4 <data_size+0x3b4>
     39c:	c080000a 	ll	zero,10(a0)
     3a0:	fc6e3432 	sdc3	$14,13362(v1)
     3a4:	5f6d666c 	0x5f6d666c
     3a8:	6f2e5300 	0x6f2e5300
     3ac:	2f686f6d 	sltiu	t0,k1,28525
     3b0:	652f7a68 	0x652f7a68
     3b4:	616e6768 	0x616e6768
     3b8:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     3bc:	6e672f43 	0x6e672f43
     3c0:	6f6d7075 	0x6f6d7075
     3c4:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     3c8:	41726368 	0x41726368
     3cc:	69746563 	0x69746563
     3d0:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     3d4:	2f66756e 	sltiu	a2,k1,30062
     3d8:	6374696f 	0x6374696f
     3dc:	6e746573 	0x6e746573
     3e0:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     3e4:	632f696e 	0x632f696e
     3e8:	73740047 	0x73740047
     3ec:	4e552041 	c3	0x552041
     3f0:	5320322e 	beqzl	t9,ccac <data_size+0xcc9c>
     3f4:	32342e35 	andi	s4,s1,0x2e35
     3f8:	31008001 	andi	zero,t0,0x8001
     3fc:	0000006d 	0x6d
     400:	00020000 	sll	zero,v0,0x0
     404:	00b40401 	0xb40401
     408:	00000395 	0x395
     40c:	80000b00 	lb	zero,2816(zero)
     410:	80000b54 	lb	zero,2900(zero)
     414:	6e35345f 	0x6e35345f
     418:	73772e53 	0x73772e53
     41c:	002f686f 	0x2f686f
     420:	6d652f7a 	0x6d652f7a
     424:	68616e67 	0x68616e67
     428:	6875696d 	0x6875696d
     42c:	656e672f 	0x656e672f
     430:	436f6d70 	c0	0x16f6d70
     434:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     438:	5f417263 	0x5f417263
     43c:	68697465 	0x68697465
     440:	63747572 	0x63747572
     444:	652f6675 	0x652f6675
     448:	6e637469 	0x6e637469
     44c:	6f6e7465 	0x6f6e7465
     450:	73742f73 	0x73742f73
     454:	72632f69 	0x72632f69
     458:	6e737400 	0x6e737400
     45c:	474e5520 	c1	0x14e5520
     460:	41532032 	0x41532032
     464:	2e32342e 	sltiu	s2,s1,13358
     468:	35310080 	ori	s1,t1,0x80
     46c:	01000000 	0x1000000
     470:	6f000200 	0x6f000200
     474:	0000c804 	sllv	t9,zero,zero
     478:	01000003 	0x1000003
     47c:	d880000b 	ldc2	$0,11(a0)
     480:	5880000c 	blezl	a0,4b4 <data_size+0x4a4>
     484:	306e3333 	andi	t6,v1,0x3333
     488:	5f626c65 	0x5f626c65
     48c:	7a2e5300 	0x7a2e5300
     490:	2f686f6d 	sltiu	t0,k1,28525
     494:	652f7a68 	0x652f7a68
     498:	616e6768 	0x616e6768
     49c:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     4a0:	6e672f43 	0x6e672f43
     4a4:	6f6d7075 	0x6f6d7075
     4a8:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     4ac:	41726368 	0x41726368
     4b0:	69746563 	0x69746563
     4b4:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     4b8:	2f66756e 	sltiu	a2,k1,30062
     4bc:	6374696f 	0x6374696f
     4c0:	6e746573 	0x6e746573
     4c4:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     4c8:	632f696e 	0x632f696e
     4cc:	73740047 	0x73740047
     4d0:	4e552041 	c3	0x552041
     4d4:	5320322e 	beqzl	t9,cd90 <data_size+0xcd80>
     4d8:	32342e35 	andi	s4,s1,0x2e35
     4dc:	31008001 	andi	zero,t0,0x8001
     4e0:	0000006f 	0x6f
     4e4:	00020000 	sll	zero,v0,0x0
     4e8:	00dc0401 	0xdc0401
     4ec:	0000041e 	0x41e
     4f0:	80000c30 	lb	zero,3120(zero)
     4f4:	80000c74 	lb	zero,3188(zero)
     4f8:	6e34345f 	0x6e34345f
     4fc:	6d746c6f 	0x6d746c6f
     500:	2e53002f 	sltiu	s3,s2,47
     504:	686f6d65 	0x686f6d65
     508:	2f7a6861 	sltiu	k0,k1,26721
     50c:	6e676875 	0x6e676875
     510:	696d656e 	0x696d656e
     514:	672f436f 	0x672f436f
     518:	6d707574 	0x6d707574
     51c:	65725f41 	0x65725f41
     520:	72636869 	0x72636869
     524:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
     528:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
     52c:	66756e63 	0x66756e63
     530:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
     534:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
     538:	2f737263 	sltiu	s3,k1,29283
     53c:	2f696e73 	sltiu	t1,k1,28275
     540:	7400474e 	jalx	11d38 <data_size+0x11d28>
     544:	55204153 	bnezl	t1,10a94 <data_size+0x10a84>
     548:	20322e32 	addi	s2,at,11826
     54c:	342e3531 	ori	t6,at,0x3531
     550:	00800100 	0x800100
     554:	00006e00 	sll	t5,zero,0x18
     558:	02000000 	0x2000000
     55c:	f0040100 	0xf0040100
     560:	00046280 	sll	t4,a0,0xa
     564:	000c7880 	sll	t7,t4,0x2
     568:	000cc06e 	0xcc06e
     56c:	335f6164 	andi	ra,k0,0x6164
     570:	64752e53 	0x64752e53
     574:	002f686f 	0x2f686f
     578:	6d652f7a 	0x6d652f7a
     57c:	68616e67 	0x68616e67
     580:	6875696d 	0x6875696d
     584:	656e672f 	0x656e672f
     588:	436f6d70 	c0	0x16f6d70
     58c:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     590:	5f417263 	0x5f417263
     594:	68697465 	0x68697465
     598:	63747572 	0x63747572
     59c:	652f6675 	0x652f6675
     5a0:	6e637469 	0x6e637469
     5a4:	6f6e7465 	0x6f6e7465
     5a8:	73742f73 	0x73742f73
     5ac:	72632f69 	0x72632f69
     5b0:	6e737400 	0x6e737400
     5b4:	474e5520 	c1	0x14e5520
     5b8:	41532032 	0x41532032
     5bc:	2e32342e 	sltiu	s2,s1,13358
     5c0:	35310080 	ori	s1,t1,0x80
     5c4:	01000000 	0x1000000
     5c8:	6f000200 	0x6f000200
     5cc:	00010404 	0x10404
     5d0:	01000004 	sllv	zero,zero,t0
     5d4:	a680000c 	sh	zero,12(s4)
     5d8:	c080000d 	ll	zero,13(a0)
     5dc:	b46e3430 	0xb46e3430
     5e0:	5f6a616c 	0x5f6a616c
     5e4:	722e5300 	0x722e5300
     5e8:	2f686f6d 	sltiu	t0,k1,28525
     5ec:	652f7a68 	0x652f7a68
     5f0:	616e6768 	0x616e6768
     5f4:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     5f8:	6e672f43 	0x6e672f43
     5fc:	6f6d7075 	0x6f6d7075
     600:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     604:	41726368 	0x41726368
     608:	69746563 	0x69746563
     60c:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     610:	2f66756e 	sltiu	a2,k1,30062
     614:	6374696f 	0x6374696f
     618:	6e746573 	0x6e746573
     61c:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     620:	632f696e 	0x632f696e
     624:	73740047 	0x73740047
     628:	4e552041 	c3	0x552041
     62c:	5320322e 	beqzl	t9,cee8 <data_size+0xced8>
     630:	32342e35 	andi	s4,s1,0x2e35
     634:	31008001 	andi	zero,t0,0x8001
     638:	00000072 	tlt	zero,zero,0x1
     63c:	00020000 	sll	zero,v0,0x0
     640:	01180401 	0x1180401
     644:	000004ec 	0x4ec
     648:	80000db8 	lb	zero,3512(zero)
     64c:	80000de4 	lb	zero,3556(zero)
     650:	6e34365f 	0x6e34365f
     654:	73797363 	0x73797363
     658:	616c6c2e 	0x616c6c2e
     65c:	53002f68 	beqzl	t8,c400 <data_size+0xc3f0>
     660:	6f6d652f 	0x6f6d652f
     664:	7a68616e 	0x7a68616e
     668:	67687569 	0x67687569
     66c:	6d656e67 	0x6d656e67
     670:	2f436f6d 	sltiu	v1,k0,28525
     674:	70757465 	0x70757465
     678:	725f4172 	0x725f4172
     67c:	63686974 	0x63686974
     680:	65637475 	0x65637475
     684:	72652f66 	0x72652f66
     688:	756e6374 	jalx	5b98dd0 <data_size+0x5b98dc0>
     68c:	696f6e74 	0x696f6e74
     690:	6573742f 	0x6573742f
     694:	7372632f 	0x7372632f
     698:	696e7374 	0x696e7374
     69c:	00474e55 	0x474e55
     6a0:	20415320 	addi	at,v0,21280
     6a4:	322e3234 	andi	t6,s1,0x3234
     6a8:	2e353100 	sltiu	s5,s1,12544
     6ac:	80010000 	lb	at,0(zero)
     6b0:	006c0002 	0x6c0002
     6b4:	0000012c 	0x12c
     6b8:	04010000 	b	6bc <data_size+0x6ac>
     6bc:	05338000 	bgezall	t1,fffe06c0 <_stack+0x7fddc018>
     6c0:	0de88000 	jal	7a20000 <data_size+0x7a1fff0>
     6c4:	0ea86e33 	jal	aa1b8cc <data_size+0xaa1b8bc>
     6c8:	375f6a2e 	ori	ra,k0,0x6a2e
     6cc:	53002f68 	beqzl	t8,c470 <data_size+0xc460>
     6d0:	6f6d652f 	0x6f6d652f
     6d4:	7a68616e 	0x7a68616e
     6d8:	67687569 	0x67687569
     6dc:	6d656e67 	0x6d656e67
     6e0:	2f436f6d 	sltiu	v1,k0,28525
     6e4:	70757465 	0x70757465
     6e8:	725f4172 	0x725f4172
     6ec:	63686974 	0x63686974
     6f0:	65637475 	0x65637475
     6f4:	72652f66 	0x72652f66
     6f8:	756e6374 	jalx	5b98dd0 <data_size+0x5b98dc0>
     6fc:	696f6e74 	0x696f6e74
     700:	6573742f 	0x6573742f
     704:	7372632f 	0x7372632f
     708:	696e7374 	0x696e7374
     70c:	00474e55 	0x474e55
     710:	20415320 	addi	at,v0,21280
     714:	322e3234 	andi	t6,s1,0x3234
     718:	2e353100 	sltiu	s5,s1,12544
     71c:	80010000 	lb	at,0(zero)
     720:	006e0002 	0x6e0002
     724:	00000140 	sll	zero,zero,0x5
     728:	04010000 	b	72c <data_size+0x71c>
     72c:	05768000 	0x5768000
     730:	0ea88000 	jal	aa20000 <data_size+0xaa1fff0>
     734:	0eec6e32 	jal	bb1b8c8 <data_size+0xbb1b8b8>
     738:	375f7372 	ori	ra,k0,0x7372
     73c:	6c2e5300 	0x6c2e5300
     740:	2f686f6d 	sltiu	t0,k1,28525
     744:	652f7a68 	0x652f7a68
     748:	616e6768 	0x616e6768
     74c:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     750:	6e672f43 	0x6e672f43
     754:	6f6d7075 	0x6f6d7075
     758:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     75c:	41726368 	0x41726368
     760:	69746563 	0x69746563
     764:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     768:	2f66756e 	sltiu	a2,k1,30062
     76c:	6374696f 	0x6374696f
     770:	6e746573 	0x6e746573
     774:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     778:	632f696e 	0x632f696e
     77c:	73740047 	0x73740047
     780:	4e552041 	c3	0x552041
     784:	5320322e 	beqzl	t9,d040 <data_size+0xd030>
     788:	32342e35 	andi	s4,s1,0x2e35
     78c:	31008001 	andi	zero,t0,0x8001
     790:	0000006f 	0x6f
     794:	00020000 	sll	zero,v0,0x0
     798:	01540401 	0x1540401
     79c:	000005b9 	0x5b9
     7a0:	80000ef0 	lb	zero,3824(zero)
     7a4:	80000fe8 	lb	zero,4072(zero)
     7a8:	6e33345f 	0x6e33345f
     7ac:	626c747a 	0x626c747a
     7b0:	2e53002f 	sltiu	s3,s2,47
     7b4:	686f6d65 	0x686f6d65
     7b8:	2f7a6861 	sltiu	k0,k1,26721
     7bc:	6e676875 	0x6e676875
     7c0:	696d656e 	0x696d656e
     7c4:	672f436f 	0x672f436f
     7c8:	6d707574 	0x6d707574
     7cc:	65725f41 	0x65725f41
     7d0:	72636869 	0x72636869
     7d4:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
     7d8:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
     7dc:	66756e63 	0x66756e63
     7e0:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
     7e4:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
     7e8:	2f737263 	sltiu	s3,k1,29283
     7ec:	2f696e73 	sltiu	t1,k1,28275
     7f0:	7400474e 	jalx	11d38 <data_size+0x11d28>
     7f4:	55204153 	bnezl	t1,10d44 <data_size+0x10d34>
     7f8:	20322e32 	addi	s2,at,11826
     7fc:	342e3531 	ori	t6,at,0x3531
     800:	00800100 	0x800100
     804:	00006e00 	sll	t5,zero,0x18
     808:	02000001 	movf	zero,s0,$fcc0
     80c:	68040100 	0x68040100
     810:	0005ff80 	sll	ra,a1,0x1e
     814:	000fe880 	sll	sp,t7,0x2
     818:	0010286e 	0x10286e
     81c:	385f736c 	xori	ra,v0,0x736c
     820:	74692e53 	jalx	1a4b94c <data_size+0x1a4b93c>
     824:	002f686f 	0x2f686f
     828:	6d652f7a 	0x6d652f7a
     82c:	68616e67 	0x68616e67
     830:	6875696d 	0x6875696d
     834:	656e672f 	0x656e672f
     838:	436f6d70 	c0	0x16f6d70
     83c:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     840:	5f417263 	0x5f417263
     844:	68697465 	0x68697465
     848:	63747572 	0x63747572
     84c:	652f6675 	0x652f6675
     850:	6e637469 	0x6e637469
     854:	6f6e7465 	0x6f6e7465
     858:	73742f73 	0x73742f73
     85c:	72632f69 	0x72632f69
     860:	6e737400 	0x6e737400
     864:	474e5520 	c1	0x14e5520
     868:	41532032 	0x41532032
     86c:	2e32342e 	sltiu	s2,s1,13358
     870:	35310080 	ori	s1,t1,0x80
     874:	01000000 	0x1000000
     878:	6d000200 	0x6d000200
     87c:	00017c04 	0x17c04
     880:	01000006 	srlv	zero,zero,t0
     884:	42800010 	c0	0x800010
     888:	28800010 	slti	zero,a0,16
     88c:	706e315f 	0x706e315f
     890:	6164642e 	0x6164642e
     894:	53002f68 	beqzl	t8,c638 <data_size+0xc628>
     898:	6f6d652f 	0x6f6d652f
     89c:	7a68616e 	0x7a68616e
     8a0:	67687569 	0x67687569
     8a4:	6d656e67 	0x6d656e67
     8a8:	2f436f6d 	sltiu	v1,k0,28525
     8ac:	70757465 	0x70757465
     8b0:	725f4172 	0x725f4172
     8b4:	63686974 	0x63686974
     8b8:	65637475 	0x65637475
     8bc:	72652f66 	0x72652f66
     8c0:	756e6374 	jalx	5b98dd0 <data_size+0x5b98dc0>
     8c4:	696f6e74 	0x696f6e74
     8c8:	6573742f 	0x6573742f
     8cc:	7372632f 	0x7372632f
     8d0:	696e7374 	0x696e7374
     8d4:	00474e55 	0x474e55
     8d8:	20415320 	addi	at,v0,21280
     8dc:	322e3234 	andi	t6,s1,0x3234
     8e0:	2e353100 	sltiu	s5,s1,12544
     8e4:	80010000 	lb	at,0(zero)
     8e8:	006d0002 	0x6d0002
     8ec:	00000190 	0x190
     8f0:	04010000 	b	8f4 <data_size+0x8e4>
     8f4:	06858000 	0x6858000
     8f8:	10708000 	beq	v1,s0,fffe08fc <_stack+0x7fddc254>
     8fc:	10b86e35 	beq	a1,t8,1c1d4 <data_size+0x1c1c4>
     900:	5f737562 	0x5f737562
     904:	2e53002f 	sltiu	s3,s2,47
     908:	686f6d65 	0x686f6d65
     90c:	2f7a6861 	sltiu	k0,k1,26721
     910:	6e676875 	0x6e676875
     914:	696d656e 	0x696d656e
     918:	672f436f 	0x672f436f
     91c:	6d707574 	0x6d707574
     920:	65725f41 	0x65725f41
     924:	72636869 	0x72636869
     928:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
     92c:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
     930:	66756e63 	0x66756e63
     934:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
     938:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
     93c:	2f737263 	sltiu	s3,k1,29283
     940:	2f696e73 	sltiu	t1,k1,28275
     944:	7400474e 	jalx	11d38 <data_size+0x11d28>
     948:	55204153 	bnezl	t1,10e98 <data_size+0x10e88>
     94c:	20322e32 	addi	s2,at,11826
     950:	342e3531 	ori	t6,at,0x3531
     954:	00800100 	0x800100
     958:	00007000 	sll	t6,zero,0x0
     95c:	02000001 	movf	zero,s0,$fcc0
     960:	a4040100 	sh	a0,256(zero)
     964:	0006c880 	sll	t9,a2,0x2
     968:	0010b880 	sll	s7,s0,0x2
     96c:	0010f86e 	0x10f86e
     970:	31305f73 	andi	s0,t1,0x5f73
     974:	6c746975 	0x6c746975
     978:	2e53002f 	sltiu	s3,s2,47
     97c:	686f6d65 	0x686f6d65
     980:	2f7a6861 	sltiu	k0,k1,26721
     984:	6e676875 	0x6e676875
     988:	696d656e 	0x696d656e
     98c:	672f436f 	0x672f436f
     990:	6d707574 	0x6d707574
     994:	65725f41 	0x65725f41
     998:	72636869 	0x72636869
     99c:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
     9a0:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
     9a4:	66756e63 	0x66756e63
     9a8:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
     9ac:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
     9b0:	2f737263 	sltiu	s3,k1,29283
     9b4:	2f696e73 	sltiu	t1,k1,28275
     9b8:	7400474e 	jalx	11d38 <data_size+0x11d28>
     9bc:	55204153 	bnezl	t1,10f0c <data_size+0x10efc>
     9c0:	20322e32 	addi	s2,at,11826
     9c4:	342e3531 	ori	t6,at,0x3531
     9c8:	00800100 	0x800100
     9cc:	00006e00 	sll	t5,zero,0x18
     9d0:	02000001 	movf	zero,s0,$fcc0
     9d4:	b8040100 	swr	a0,256(zero)
     9d8:	00070d80 	sll	at,a3,0x16
     9dc:	0010f880 	sll	ra,s0,0x2
     9e0:	0011406e 	0x11406e
     9e4:	31385f6e 	andi	t8,t1,0x5f6e
     9e8:	6f722e53 	0x6f722e53
     9ec:	002f686f 	0x2f686f
     9f0:	6d652f7a 	0x6d652f7a
     9f4:	68616e67 	0x68616e67
     9f8:	6875696d 	0x6875696d
     9fc:	656e672f 	0x656e672f
     a00:	436f6d70 	c0	0x16f6d70
     a04:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     a08:	5f417263 	0x5f417263
     a0c:	68697465 	0x68697465
     a10:	63747572 	0x63747572
     a14:	652f6675 	0x652f6675
     a18:	6e637469 	0x6e637469
     a1c:	6f6e7465 	0x6f6e7465
     a20:	73742f73 	0x73742f73
     a24:	72632f69 	0x72632f69
     a28:	6e737400 	0x6e737400
     a2c:	474e5520 	c1	0x14e5520
     a30:	41532032 	0x41532032
     a34:	2e32342e 	sltiu	s2,s1,13358
     a38:	35310080 	ori	s1,t1,0x80
     a3c:	01000000 	0x1000000
     a40:	6f000200 	0x6f000200
     a44:	0001cc04 	0x1cc04
     a48:	01000007 	srav	zero,zero,t0
     a4c:	51800011 	beqzl	t4,a94 <data_size+0xa84>
     a50:	40800011 	0x40800011
     a54:	846e3535 	lh	t6,13621(v1)
     a58:	5f657265 	0x5f657265
     a5c:	742e5300 	jalx	b94c00 <data_size+0xb94bf0>
     a60:	2f686f6d 	sltiu	t0,k1,28525
     a64:	652f7a68 	0x652f7a68
     a68:	616e6768 	0x616e6768
     a6c:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     a70:	6e672f43 	0x6e672f43
     a74:	6f6d7075 	0x6f6d7075
     a78:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     a7c:	41726368 	0x41726368
     a80:	69746563 	0x69746563
     a84:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     a88:	2f66756e 	sltiu	a2,k1,30062
     a8c:	6374696f 	0x6374696f
     a90:	6e746573 	0x6e746573
     a94:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     a98:	632f696e 	0x632f696e
     a9c:	73740047 	0x73740047
     aa0:	4e552041 	c3	0x552041
     aa4:	5320322e 	beqzl	t9,d360 <data_size+0xd350>
     aa8:	32342e35 	andi	s4,s1,0x2e35
     aac:	31008001 	andi	zero,t0,0x8001
     ab0:	0000006d 	0x6d
     ab4:	00020000 	sll	zero,v0,0x0
     ab8:	01e00401 	0x1e00401
     abc:	0000079a 	0x79a
     ac0:	80001188 	lb	zero,4488(zero)
     ac4:	800021cc 	lb	zero,8652(zero)
     ac8:	6e34395f 	0x6e34395f
     acc:	6c682e53 	0x6c682e53
     ad0:	002f686f 	0x2f686f
     ad4:	6d652f7a 	0x6d652f7a
     ad8:	68616e67 	0x68616e67
     adc:	6875696d 	0x6875696d
     ae0:	656e672f 	0x656e672f
     ae4:	436f6d70 	c0	0x16f6d70
     ae8:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     aec:	5f417263 	0x5f417263
     af0:	68697465 	0x68697465
     af4:	63747572 	0x63747572
     af8:	652f6675 	0x652f6675
     afc:	6e637469 	0x6e637469
     b00:	6f6e7465 	0x6f6e7465
     b04:	73742f73 	0x73742f73
     b08:	72632f69 	0x72632f69
     b0c:	6e737400 	0x6e737400
     b10:	474e5520 	c1	0x14e5520
     b14:	41532032 	0x41532032
     b18:	2e32342e 	sltiu	s2,s1,13358
     b1c:	35310080 	ori	s1,t1,0x80
     b20:	01000000 	0x1000000
     b24:	6e000200 	0x6e000200
     b28:	0001f404 	0x1f404
     b2c:	01000008 	jr	t0
     b30:	dc800021 	ldc3	$0,33(a0)
     b34:	d0800022 	0xd0800022
     b38:	d06e3330 	0xd06e3330
     b3c:	5f626e65 	0x5f626e65
     b40:	2e53002f 	sltiu	s3,s2,47
     b44:	686f6d65 	0x686f6d65
     b48:	2f7a6861 	sltiu	k0,k1,26721
     b4c:	6e676875 	0x6e676875
     b50:	696d656e 	0x696d656e
     b54:	672f436f 	0x672f436f
     b58:	6d707574 	0x6d707574
     b5c:	65725f41 	0x65725f41
     b60:	72636869 	0x72636869
     b64:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
     b68:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
     b6c:	66756e63 	0x66756e63
     b70:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
     b74:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
     b78:	2f737263 	sltiu	s3,k1,29283
     b7c:	2f696e73 	sltiu	t1,k1,28275
     b80:	7400474e 	jalx	11d38 <data_size+0x11d28>
     b84:	55204153 	bnezl	t1,110d4 <data_size+0x110c4>
     b88:	20322e32 	addi	s2,at,11826
     b8c:	342e3531 	ori	t6,at,0x3531
     b90:	00800100 	0x800100
     b94:	00006e00 	sll	t5,zero,0x18
     b98:	02000002 	0x2000002
     b9c:	08040100 	j	100400 <data_size+0x1003f0>
     ba0:	00092180 	sll	a0,t1,0x6
     ba4:	0022d080 	0x22d080
     ba8:	0023186e 	0x23186e
     bac:	365f7375 	ori	ra,s2,0x7375
     bb0:	62752e53 	0x62752e53
     bb4:	002f686f 	0x2f686f
     bb8:	6d652f7a 	0x6d652f7a
     bbc:	68616e67 	0x68616e67
     bc0:	6875696d 	0x6875696d
     bc4:	656e672f 	0x656e672f
     bc8:	436f6d70 	c0	0x16f6d70
     bcc:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     bd0:	5f417263 	0x5f417263
     bd4:	68697465 	0x68697465
     bd8:	63747572 	0x63747572
     bdc:	652f6675 	0x652f6675
     be0:	6e637469 	0x6e637469
     be4:	6f6e7465 	0x6f6e7465
     be8:	73742f73 	0x73742f73
     bec:	72632f69 	0x72632f69
     bf0:	6e737400 	0x6e737400
     bf4:	474e5520 	c1	0x14e5520
     bf8:	41532032 	0x41532032
     bfc:	2e32342e 	sltiu	s2,s1,13358
     c00:	35310080 	ori	s1,t1,0x80
     c04:	01000000 	0x1000000
     c08:	70000200 	0x70000200
     c0c:	00021c04 	0x21c04
     c10:	01000009 	jalr	zero,t0
     c14:	65800023 	0x65800023
     c18:	18800023 	blez	a0,ca8 <data_size+0xc98>
     c1c:	446e3435 	0x446e3435
     c20:	5f627265 	0x5f627265
     c24:	616b2e53 	0x616b2e53
     c28:	002f686f 	0x2f686f
     c2c:	6d652f7a 	0x6d652f7a
     c30:	68616e67 	0x68616e67
     c34:	6875696d 	0x6875696d
     c38:	656e672f 	0x656e672f
     c3c:	436f6d70 	c0	0x16f6d70
     c40:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     c44:	5f417263 	0x5f417263
     c48:	68697465 	0x68697465
     c4c:	63747572 	0x63747572
     c50:	652f6675 	0x652f6675
     c54:	6e637469 	0x6e637469
     c58:	6f6e7465 	0x6f6e7465
     c5c:	73742f73 	0x73742f73
     c60:	72632f69 	0x72632f69
     c64:	6e737400 	0x6e737400
     c68:	474e5520 	c1	0x14e5520
     c6c:	41532032 	0x41532032
     c70:	2e32342e 	sltiu	s2,s1,13358
     c74:	35310080 	ori	s1,t1,0x80
     c78:	01000000 	0x1000000
     c7c:	6d000200 	0x6d000200
     c80:	00023004 	sllv	a2,v0,zero
     c84:	01000009 	jalr	zero,t0
     c88:	aa800023 	swl	zero,35(s4)
     c8c:	48800023 	0x48800023
     c90:	a86e3532 	swl	t6,13618(v1)
     c94:	5f73622e 	0x5f73622e
     c98:	53002f68 	beqzl	t8,ca3c <data_size+0xca2c>
     c9c:	6f6d652f 	0x6f6d652f
     ca0:	7a68616e 	0x7a68616e
     ca4:	67687569 	0x67687569
     ca8:	6d656e67 	0x6d656e67
     cac:	2f436f6d 	sltiu	v1,k0,28525
     cb0:	70757465 	0x70757465
     cb4:	725f4172 	0x725f4172
     cb8:	63686974 	0x63686974
     cbc:	65637475 	0x65637475
     cc0:	72652f66 	0x72652f66
     cc4:	756e6374 	jalx	5b98dd0 <data_size+0x5b98dc0>
     cc8:	696f6e74 	0x696f6e74
     ccc:	6573742f 	0x6573742f
     cd0:	7372632f 	0x7372632f
     cd4:	696e7374 	0x696e7374
     cd8:	00474e55 	0x474e55
     cdc:	20415320 	addi	at,v0,21280
     ce0:	322e3234 	andi	t6,s1,0x3234
     ce4:	2e353100 	sltiu	s5,s1,12544
     ce8:	80010000 	lb	at,0(zero)
     cec:	006f0002 	0x6f0002
     cf0:	00000244 	0x244
     cf4:	04010000 	b	cf8 <data_size+0xce8>
     cf8:	09ed8000 	j	7b60000 <data_size+0x7b5fff0>
     cfc:	23a88000 	addi	t0,sp,-32768
     d00:	23ec6e32 	addi	t4,ra,28210
     d04:	345f736c 	ori	ra,v0,0x736c
     d08:	6c762e53 	0x6c762e53
     d0c:	002f686f 	0x2f686f
     d10:	6d652f7a 	0x6d652f7a
     d14:	68616e67 	0x68616e67
     d18:	6875696d 	0x6875696d
     d1c:	656e672f 	0x656e672f
     d20:	436f6d70 	c0	0x16f6d70
     d24:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     d28:	5f417263 	0x5f417263
     d2c:	68697465 	0x68697465
     d30:	63747572 	0x63747572
     d34:	652f6675 	0x652f6675
     d38:	6e637469 	0x6e637469
     d3c:	6f6e7465 	0x6f6e7465
     d40:	73742f73 	0x73742f73
     d44:	72632f69 	0x72632f69
     d48:	6e737400 	0x6e737400
     d4c:	474e5520 	c1	0x14e5520
     d50:	41532032 	0x41532032
     d54:	2e32342e 	sltiu	s2,s1,13358
     d58:	35310080 	ori	s1,t1,0x80
     d5c:	01000000 	0x1000000
     d60:	6d000200 	0x6d000200
     d64:	00025804 	sllv	t3,v0,zero
     d68:	0100000a 	movz	zero,t0,zero
     d6c:	31800023 	andi	zero,t4,0x23
     d70:	f0800024 	0xf0800024
     d74:	386e3139 	xori	t6,v1,0x3139
     d78:	5f6f722e 	0x5f6f722e
     d7c:	53002f68 	beqzl	t8,cb20 <data_size+0xcb10>
     d80:	6f6d652f 	0x6f6d652f
     d84:	7a68616e 	0x7a68616e
     d88:	67687569 	0x67687569
     d8c:	6d656e67 	0x6d656e67
     d90:	2f436f6d 	sltiu	v1,k0,28525
     d94:	70757465 	0x70757465
     d98:	725f4172 	0x725f4172
     d9c:	63686974 	0x63686974
     da0:	65637475 	0x65637475
     da4:	72652f66 	0x72652f66
     da8:	756e6374 	jalx	5b98dd0 <data_size+0x5b98dc0>
     dac:	696f6e74 	0x696f6e74
     db0:	6573742f 	0x6573742f
     db4:	7372632f 	0x7372632f
     db8:	696e7374 	0x696e7374
     dbc:	00474e55 	0x474e55
     dc0:	20415320 	addi	at,v0,21280
     dc4:	322e3234 	andi	t6,s1,0x3234
     dc8:	2e353100 	sltiu	s5,s1,12544
     dcc:	80010000 	lb	at,0(zero)
     dd0:	006e0002 	0x6e0002
     dd4:	0000026c 	0x26c
     dd8:	04010000 	b	ddc <data_size+0xdcc>
     ddc:	0a748000 	j	9d20000 <data_size+0x9d1fff0>
     de0:	24388000 	addiu	t8,at,-32768
     de4:	247c6e39 	addiu	gp,v1,28217
     de8:	5f736c74 	0x5f736c74
     dec:	752e5300 	jalx	4b94c00 <data_size+0x4b94bf0>
     df0:	2f686f6d 	sltiu	t0,k1,28525
     df4:	652f7a68 	0x652f7a68
     df8:	616e6768 	0x616e6768
     dfc:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     e00:	6e672f43 	0x6e672f43
     e04:	6f6d7075 	0x6f6d7075
     e08:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     e0c:	41726368 	0x41726368
     e10:	69746563 	0x69746563
     e14:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     e18:	2f66756e 	sltiu	a2,k1,30062
     e1c:	6374696f 	0x6374696f
     e20:	6e746573 	0x6e746573
     e24:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     e28:	632f696e 	0x632f696e
     e2c:	73740047 	0x73740047
     e30:	4e552041 	c3	0x552041
     e34:	5320322e 	beqzl	t9,d6f0 <data_size+0xd6e0>
     e38:	32342e35 	andi	s4,s1,0x2e35
     e3c:	31008001 	andi	zero,t0,0x8001
     e40:	0000006f 	0x6f
     e44:	00020000 	sll	zero,v0,0x0
     e48:	02800401 	0x2800401
     e4c:	00000ab7 	0xab7
     e50:	80002480 	lb	zero,9344(zero)
     e54:	800024d8 	lb	zero,9432(zero)
     e58:	6e35365f 	0x6e35365f
     e5c:	6d666330 	0x6d666330
     e60:	2e53002f 	sltiu	s3,s2,47
     e64:	686f6d65 	0x686f6d65
     e68:	2f7a6861 	sltiu	k0,k1,26721
     e6c:	6e676875 	0x6e676875
     e70:	696d656e 	0x696d656e
     e74:	672f436f 	0x672f436f
     e78:	6d707574 	0x6d707574
     e7c:	65725f41 	0x65725f41
     e80:	72636869 	0x72636869
     e84:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
     e88:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
     e8c:	66756e63 	0x66756e63
     e90:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
     e94:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
     e98:	2f737263 	sltiu	s3,k1,29283
     e9c:	2f696e73 	sltiu	t1,k1,28275
     ea0:	7400474e 	jalx	11d38 <data_size+0x11d28>
     ea4:	55204153 	bnezl	t1,113f4 <data_size+0x113e4>
     ea8:	20322e32 	addi	s2,at,11826
     eac:	342e3531 	ori	t6,at,0x3531
     eb0:	00800100 	0x800100
     eb4:	00006e00 	sll	t5,zero,0x18
     eb8:	02000002 	0x2000002
     ebc:	94040100 	lhu	a0,256(zero)
     ec0:	000b0580 	sll	zero,t3,0x16
     ec4:	0024d880 	0x24d880
     ec8:	0025a06e 	0x25a06e
     ecc:	33385f6a 	andi	t8,t9,0x5f6a
     ed0:	616c2e53 	0x616c2e53
     ed4:	002f686f 	0x2f686f
     ed8:	6d652f7a 	0x6d652f7a
     edc:	68616e67 	0x68616e67
     ee0:	6875696d 	0x6875696d
     ee4:	656e672f 	0x656e672f
     ee8:	436f6d70 	c0	0x16f6d70
     eec:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
     ef0:	5f417263 	0x5f417263
     ef4:	68697465 	0x68697465
     ef8:	63747572 	0x63747572
     efc:	652f6675 	0x652f6675
     f00:	6e637469 	0x6e637469
     f04:	6f6e7465 	0x6f6e7465
     f08:	73742f73 	0x73742f73
     f0c:	72632f69 	0x72632f69
     f10:	6e737400 	0x6e737400
     f14:	474e5520 	c1	0x14e5520
     f18:	41532032 	0x41532032
     f1c:	2e32342e 	sltiu	s2,s1,13358
     f20:	35310080 	ori	s1,t1,0x80
     f24:	01000000 	0x1000000
     f28:	6f000200 	0x6f000200
     f2c:	0002a804 	sllv	s5,v0,zero
     f30:	0100000b 	movn	zero,t0,zero
     f34:	4a800025 	c2	0x800025
     f38:	a0800025 	sb	zero,37(a0)
     f3c:	e46e3433 	swc1	$f14,13363(v1)
     f40:	5f6d7468 	0x5f6d7468
     f44:	692e5300 	0x692e5300
     f48:	2f686f6d 	sltiu	t0,k1,28525
     f4c:	652f7a68 	0x652f7a68
     f50:	616e6768 	0x616e6768
     f54:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
     f58:	6e672f43 	0x6e672f43
     f5c:	6f6d7075 	0x6f6d7075
     f60:	7465725f 	jalx	195c97c <data_size+0x195c96c>
     f64:	41726368 	0x41726368
     f68:	69746563 	0x69746563
     f6c:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
     f70:	2f66756e 	sltiu	a2,k1,30062
     f74:	6374696f 	0x6374696f
     f78:	6e746573 	0x6e746573
     f7c:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
     f80:	632f696e 	0x632f696e
     f84:	73740047 	0x73740047
     f88:	4e552041 	c3	0x552041
     f8c:	5320322e 	beqzl	t9,d848 <data_size+0xd838>
     f90:	32342e35 	andi	s4,s1,0x2e35
     f94:	31008001 	andi	zero,t0,0x8001
     f98:	0000006e 	0x6e
     f9c:	00020000 	sll	zero,v0,0x0
     fa0:	02bc0401 	0x2bc0401
     fa4:	00000b8e 	0xb8e
     fa8:	800025e8 	lb	zero,9704(zero)
     fac:	80002630 	lb	zero,9776(zero)
     fb0:	6e32315f 	0x6e32315f
     fb4:	786f722e 	0x786f722e
     fb8:	53002f68 	beqzl	t8,cd5c <data_size+0xcd4c>
     fbc:	6f6d652f 	0x6f6d652f
     fc0:	7a68616e 	0x7a68616e
     fc4:	67687569 	0x67687569
     fc8:	6d656e67 	0x6d656e67
     fcc:	2f436f6d 	sltiu	v1,k0,28525
     fd0:	70757465 	0x70757465
     fd4:	725f4172 	0x725f4172
     fd8:	63686974 	0x63686974
     fdc:	65637475 	0x65637475
     fe0:	72652f66 	0x72652f66
     fe4:	756e6374 	jalx	5b98dd0 <data_size+0x5b98dc0>
     fe8:	696f6e74 	0x696f6e74
     fec:	6573742f 	0x6573742f
     ff0:	7372632f 	0x7372632f
     ff4:	696e7374 	0x696e7374
     ff8:	00474e55 	0x474e55
     ffc:	20415320 	addi	at,v0,21280
    1000:	322e3234 	andi	t6,s1,0x3234
    1004:	2e353100 	sltiu	s5,s1,12544
    1008:	80010000 	lb	at,0(zero)
    100c:	006e0002 	0x6e0002
    1010:	000002d0 	0x2d0
    1014:	04010000 	b	1018 <data_size+0x1008>
    1018:	0bd28000 	j	f4a0000 <data_size+0xf49fff0>
    101c:	26308000 	addiu	s0,s1,-32768
    1020:	41646e34 	0x41646e34
    1024:	385f6c62 	xori	ra,v0,0x6c62
    1028:	752e5300 	jalx	4b94c00 <data_size+0x4b94bf0>
    102c:	2f686f6d 	sltiu	t0,k1,28525
    1030:	652f7a68 	0x652f7a68
    1034:	616e6768 	0x616e6768
    1038:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
    103c:	6e672f43 	0x6e672f43
    1040:	6f6d7075 	0x6f6d7075
    1044:	7465725f 	jalx	195c97c <data_size+0x195c96c>
    1048:	41726368 	0x41726368
    104c:	69746563 	0x69746563
    1050:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
    1054:	2f66756e 	sltiu	a2,k1,30062
    1058:	6374696f 	0x6374696f
    105c:	6e746573 	0x6e746573
    1060:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
    1064:	632f696e 	0x632f696e
    1068:	73740047 	0x73740047
    106c:	4e552041 	c3	0x552041
    1070:	5320322e 	beqzl	t9,d92c <data_size+0xd91c>
    1074:	32342e35 	andi	s4,s1,0x2e35
    1078:	31008001 	andi	zero,t0,0x8001
    107c:	0000006e 	0x6e
    1080:	00020000 	sll	zero,v0,0x0
    1084:	02e40401 	0x2e40401
    1088:	00000de1 	0xde1
    108c:	80004168 	lb	zero,16744(zero)
    1090:	80004244 	lb	zero,16964(zero)
    1094:	6e32395f 	0x6e32395f
    1098:	6265712e 	0x6265712e
    109c:	53002f68 	beqzl	t8,ce40 <data_size+0xce30>
    10a0:	6f6d652f 	0x6f6d652f
    10a4:	7a68616e 	0x7a68616e
    10a8:	67687569 	0x67687569
    10ac:	6d656e67 	0x6d656e67
    10b0:	2f436f6d 	sltiu	v1,k0,28525
    10b4:	70757465 	0x70757465
    10b8:	725f4172 	0x725f4172
    10bc:	63686974 	0x63686974
    10c0:	65637475 	0x65637475
    10c4:	72652f66 	0x72652f66
    10c8:	756e6374 	jalx	5b98dd0 <data_size+0x5b98dc0>
    10cc:	696f6e74 	0x696f6e74
    10d0:	6573742f 	0x6573742f
    10d4:	7372632f 	0x7372632f
    10d8:	696e7374 	0x696e7374
    10dc:	00474e55 	0x474e55
    10e0:	20415320 	addi	at,v0,21280
    10e4:	322e3234 	andi	t6,s1,0x3234
    10e8:	2e353100 	sltiu	s5,s1,12544
    10ec:	80010000 	lb	at,0(zero)
    10f0:	006f0002 	0x6f0002
    10f4:	000002f8 	0x2f8
    10f8:	04010000 	b	10fc <data_size+0x10ec>
    10fc:	0e268000 	jal	89a0000 <data_size+0x899fff0>
    1100:	42488000 	c0	0x488000
    1104:	428c6e32 	c0	0x8c6e32
    1108:	325f786f 	andi	ra,s2,0x786f
    110c:	72692e53 	0x72692e53
    1110:	002f686f 	0x2f686f
    1114:	6d652f7a 	0x6d652f7a
    1118:	68616e67 	0x68616e67
    111c:	6875696d 	0x6875696d
    1120:	656e672f 	0x656e672f
    1124:	436f6d70 	c0	0x16f6d70
    1128:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
    112c:	5f417263 	0x5f417263
    1130:	68697465 	0x68697465
    1134:	63747572 	0x63747572
    1138:	652f6675 	0x652f6675
    113c:	6e637469 	0x6e637469
    1140:	6f6e7465 	0x6f6e7465
    1144:	73742f73 	0x73742f73
    1148:	72632f69 	0x72632f69
    114c:	6e737400 	0x6e737400
    1150:	474e5520 	c1	0x14e5520
    1154:	41532032 	0x41532032
    1158:	2e32342e 	sltiu	s2,s1,13358
    115c:	35310080 	ori	s1,t1,0x80
    1160:	01000000 	0x1000000
    1164:	6f000200 	0x6f000200
    1168:	00030c04 	0x30c04
    116c:	0100000e 	0x100000e
    1170:	6a800042 	0x6a800042
    1174:	90800043 	lbu	zero,67(a0)
    1178:	446e3331 	0x446e3331
    117c:	5f626765 	0x5f626765
    1180:	7a2e5300 	0x7a2e5300
    1184:	2f686f6d 	sltiu	t0,k1,28525
    1188:	652f7a68 	0x652f7a68
    118c:	616e6768 	0x616e6768
    1190:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
    1194:	6e672f43 	0x6e672f43
    1198:	6f6d7075 	0x6f6d7075
    119c:	7465725f 	jalx	195c97c <data_size+0x195c96c>
    11a0:	41726368 	0x41726368
    11a4:	69746563 	0x69746563
    11a8:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
    11ac:	2f66756e 	sltiu	a2,k1,30062
    11b0:	6374696f 	0x6374696f
    11b4:	6e746573 	0x6e746573
    11b8:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
    11bc:	632f696e 	0x632f696e
    11c0:	73740047 	0x73740047
    11c4:	4e552041 	c3	0x552041
    11c8:	5320322e 	beqzl	t9,da84 <data_size+0xda74>
    11cc:	32342e35 	andi	s4,s1,0x2e35
    11d0:	31008001 	andi	zero,t0,0x8001
    11d4:	0000006f 	0x6f
    11d8:	00020000 	sll	zero,v0,0x0
    11dc:	03200401 	0x3200401
    11e0:	00000eb0 	tge	zero,zero,0x3a
    11e4:	80004348 	lb	zero,17224(zero)
    11e8:	80004388 	lb	zero,17288(zero)
    11ec:	6e31365f 	0x6e31365f
    11f0:	616e6469 	0x616e6469
    11f4:	2e53002f 	sltiu	s3,s2,47
    11f8:	686f6d65 	0x686f6d65
    11fc:	2f7a6861 	sltiu	k0,k1,26721
    1200:	6e676875 	0x6e676875
    1204:	696d656e 	0x696d656e
    1208:	672f436f 	0x672f436f
    120c:	6d707574 	0x6d707574
    1210:	65725f41 	0x65725f41
    1214:	72636869 	0x72636869
    1218:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
    121c:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
    1220:	66756e63 	0x66756e63
    1224:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
    1228:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
    122c:	2f737263 	sltiu	s3,k1,29283
    1230:	2f696e73 	sltiu	t1,k1,28275
    1234:	7400474e 	jalx	11d38 <data_size+0x11d28>
    1238:	55204153 	bnezl	t1,11788 <data_size+0x11778>
    123c:	20322e32 	addi	s2,at,11826
    1240:	342e3531 	ori	t6,at,0x3531
    1244:	00800100 	0x800100
    1248:	00006e00 	sll	t5,zero,0x18
    124c:	02000003 	0x2000003
    1250:	34040100 	li	a0,0x100
    1254:	000ef480 	sll	s8,t6,0x12
    1258:	00438880 	0x438880
    125c:	0043cc6e 	0x43cc6e
    1260:	32335f73 	andi	s3,s1,0x5f73
    1264:	6c6c2e53 	0x6c6c2e53
    1268:	002f686f 	0x2f686f
    126c:	6d652f7a 	0x6d652f7a
    1270:	68616e67 	0x68616e67
    1274:	6875696d 	0x6875696d
    1278:	656e672f 	0x656e672f
    127c:	436f6d70 	c0	0x16f6d70
    1280:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
    1284:	5f417263 	0x5f417263
    1288:	68697465 	0x68697465
    128c:	63747572 	0x63747572
    1290:	652f6675 	0x652f6675
    1294:	6e637469 	0x6e637469
    1298:	6f6e7465 	0x6f6e7465
    129c:	73742f73 	0x73742f73
    12a0:	72632f69 	0x72632f69
    12a4:	6e737400 	0x6e737400
    12a8:	474e5520 	c1	0x14e5520
    12ac:	41532032 	0x41532032
    12b0:	2e32342e 	sltiu	s2,s1,13358
    12b4:	35310080 	ori	s1,t1,0x80
    12b8:	01000000 	0x1000000
    12bc:	6f000200 	0x6f000200
    12c0:	00034804 	sllv	t1,v1,zero
    12c4:	0100000f 	0x100000f
    12c8:	37800043 	ori	zero,gp,0x43
    12cc:	d0800044 	0xd0800044
    12d0:	146e3236 	bne	v1,t6,dbac <data_size+0xdb9c>
    12d4:	5f737261 	0x5f737261
    12d8:	762e5300 	jalx	8b94c00 <data_size+0x8b94bf0>
    12dc:	2f686f6d 	sltiu	t0,k1,28525
    12e0:	652f7a68 	0x652f7a68
    12e4:	616e6768 	0x616e6768
    12e8:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
    12ec:	6e672f43 	0x6e672f43
    12f0:	6f6d7075 	0x6f6d7075
    12f4:	7465725f 	jalx	195c97c <data_size+0x195c96c>
    12f8:	41726368 	0x41726368
    12fc:	69746563 	0x69746563
    1300:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
    1304:	2f66756e 	sltiu	a2,k1,30062
    1308:	6374696f 	0x6374696f
    130c:	6e746573 	0x6e746573
    1310:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
    1314:	632f696e 	0x632f696e
    1318:	73740047 	0x73740047
    131c:	4e552041 	c3	0x552041
    1320:	5320322e 	beqzl	t9,dbdc <data_size+0xdbcc>
    1324:	32342e35 	andi	s4,s1,0x2e35
    1328:	31008001 	andi	zero,t0,0x8001
    132c:	0000006d 	0x6d
    1330:	00020000 	sll	zero,v0,0x0
    1334:	035c0401 	0x35c0401
    1338:	00000f7b 	0xf7b
    133c:	80004418 	lb	zero,17432(zero)
    1340:	8000446c 	lb	zero,17516(zero)
    1344:	6e35315f 	0x6e35315f
    1348:	6c772e53 	0x6c772e53
    134c:	002f686f 	0x2f686f
    1350:	6d652f7a 	0x6d652f7a
    1354:	68616e67 	0x68616e67
    1358:	6875696d 	0x6875696d
    135c:	656e672f 	0x656e672f
    1360:	436f6d70 	c0	0x16f6d70
    1364:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
    1368:	5f417263 	0x5f417263
    136c:	68697465 	0x68697465
    1370:	63747572 	0x63747572
    1374:	652f6675 	0x652f6675
    1378:	6e637469 	0x6e637469
    137c:	6f6e7465 	0x6f6e7465
    1380:	73742f73 	0x73742f73
    1384:	72632f69 	0x72632f69
    1388:	6e737400 	0x6e737400
    138c:	474e5520 	c1	0x14e5520
    1390:	41532032 	0x41532032
    1394:	2e32342e 	sltiu	s2,s1,13358
    1398:	35310080 	ori	s1,t1,0x80
    139c:	01000000 	0x1000000
    13a0:	6f000200 	0x6f000200
    13a4:	00037004 	sllv	t6,v1,zero
    13a8:	0100000f 	0x100000f
    13ac:	be800044 	cache	0x0,68(s4)
    13b0:	70800044 	0x70800044
    13b4:	b46e3431 	0xb46e3431
    13b8:	5f6d6668 	0x5f6d6668
    13bc:	692e5300 	0x692e5300
    13c0:	2f686f6d 	sltiu	t0,k1,28525
    13c4:	652f7a68 	0x652f7a68
    13c8:	616e6768 	0x616e6768
    13cc:	75696d65 	jalx	5a5b594 <data_size+0x5a5b584>
    13d0:	6e672f43 	0x6e672f43
    13d4:	6f6d7075 	0x6f6d7075
    13d8:	7465725f 	jalx	195c97c <data_size+0x195c96c>
    13dc:	41726368 	0x41726368
    13e0:	69746563 	0x69746563
    13e4:	74757265 	jalx	1d5c994 <data_size+0x1d5c984>
    13e8:	2f66756e 	sltiu	a2,k1,30062
    13ec:	6374696f 	0x6374696f
    13f0:	6e746573 	0x6e746573
    13f4:	742f7372 	jalx	bdcdc8 <data_size+0xbdcdb8>
    13f8:	632f696e 	0x632f696e
    13fc:	73740047 	0x73740047
    1400:	4e552041 	c3	0x552041
    1404:	5320322e 	beqzl	t9,dcc0 <data_size+0xdcb0>
    1408:	32342e35 	andi	s4,s1,0x2e35
    140c:	31008001 	andi	zero,t0,0x8001
    1410:	0000006f 	0x6f
    1414:	00020000 	sll	zero,v0,0x0
    1418:	03840401 	0x3840401
    141c:	00001002 	srl	v0,zero,0x0
    1420:	800044b8 	lb	zero,17592(zero)
    1424:	8000459c 	lb	zero,17820(zero)
    1428:	6e33325f 	0x6e33325f
    142c:	6267747a 	0x6267747a
    1430:	2e53002f 	sltiu	s3,s2,47
    1434:	686f6d65 	0x686f6d65
    1438:	2f7a6861 	sltiu	k0,k1,26721
    143c:	6e676875 	0x6e676875
    1440:	696d656e 	0x696d656e
    1444:	672f436f 	0x672f436f
    1448:	6d707574 	0x6d707574
    144c:	65725f41 	0x65725f41
    1450:	72636869 	0x72636869
    1454:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
    1458:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
    145c:	66756e63 	0x66756e63
    1460:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
    1464:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
    1468:	2f737263 	sltiu	s3,k1,29283
    146c:	2f696e73 	sltiu	t1,k1,28275
    1470:	7400474e 	jalx	11d38 <data_size+0x11d28>
    1474:	55204153 	bnezl	t1,119c4 <data_size+0x119b4>
    1478:	20322e32 	addi	s2,at,11826
    147c:	342e3531 	ori	t6,at,0x3531
    1480:	00800100 	0x800100
    1484:	00006e00 	sll	t5,zero,0x18
    1488:	02000003 	0x2000003
    148c:	98040100 	lwr	a0,256(zero)
    1490:	00104880 	sll	t1,s0,0x2
    1494:	0045a080 	0x45a080
    1498:	0045e46e 	0x45e46e
    149c:	32305f6f 	andi	s0,s1,0x5f6f
    14a0:	72692e53 	0x72692e53
    14a4:	002f686f 	0x2f686f
    14a8:	6d652f7a 	0x6d652f7a
    14ac:	68616e67 	0x68616e67
    14b0:	6875696d 	0x6875696d
    14b4:	656e672f 	0x656e672f
    14b8:	436f6d70 	c0	0x16f6d70
    14bc:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
    14c0:	5f417263 	0x5f417263
    14c4:	68697465 	0x68697465
    14c8:	63747572 	0x63747572
    14cc:	652f6675 	0x652f6675
    14d0:	6e637469 	0x6e637469
    14d4:	6f6e7465 	0x6f6e7465
    14d8:	73742f73 	0x73742f73
    14dc:	72632f69 	0x72632f69
    14e0:	6e737400 	0x6e737400
    14e4:	474e5520 	c1	0x14e5520
    14e8:	41532032 	0x41532032
    14ec:	2e32342e 	sltiu	s2,s1,13358
    14f0:	35310080 	ori	s1,t1,0x80
    14f4:	01000000 	0x1000000
    14f8:	6e000200 	0x6e000200
    14fc:	0003ac04 	0x3ac04
    1500:	01000010 	0x1000010
    1504:	8b800045 	lwl	zero,69(gp)
    1508:	e8800046 	swc2	$0,70(a0)
    150c:	2c6e3235 	sltiu	t6,v1,12853
    1510:	5f737261 	0x5f737261
    1514:	2e53002f 	sltiu	s3,s2,47
    1518:	686f6d65 	0x686f6d65
    151c:	2f7a6861 	sltiu	k0,k1,26721
    1520:	6e676875 	0x6e676875
    1524:	696d656e 	0x696d656e
    1528:	672f436f 	0x672f436f
    152c:	6d707574 	0x6d707574
    1530:	65725f41 	0x65725f41
    1534:	72636869 	0x72636869
    1538:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
    153c:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
    1540:	66756e63 	0x66756e63
    1544:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
    1548:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
    154c:	2f737263 	sltiu	s3,k1,29283
    1550:	2f696e73 	sltiu	t1,k1,28275
    1554:	7400474e 	jalx	11d38 <data_size+0x11d28>
    1558:	55204153 	bnezl	t1,11aa8 <data_size+0x11a98>
    155c:	20322e32 	addi	s2,at,11826
    1560:	342e3531 	ori	t6,at,0x3531
    1564:	00800100 	0x800100
    1568:	00006e00 	sll	t5,zero,0x18
    156c:	02000003 	0x2000003
    1570:	c0040100 	ll	a0,256(zero)
    1574:	0010ce80 	sll	t9,s0,0x1a
    1578:	00463080 	0x463080
    157c:	0046786e 	0x46786e
    1580:	31355f61 	andi	s5,t1,0x5f61
    1584:	6e642e53 	0x6e642e53
    1588:	002f686f 	0x2f686f
    158c:	6d652f7a 	0x6d652f7a
    1590:	68616e67 	0x68616e67
    1594:	6875696d 	0x6875696d
    1598:	656e672f 	0x656e672f
    159c:	436f6d70 	c0	0x16f6d70
    15a0:	75746572 	jalx	5d195c8 <data_size+0x5d195b8>
    15a4:	5f417263 	0x5f417263
    15a8:	68697465 	0x68697465
    15ac:	63747572 	0x63747572
    15b0:	652f6675 	0x652f6675
    15b4:	6e637469 	0x6e637469
    15b8:	6f6e7465 	0x6f6e7465
    15bc:	73742f73 	0x73742f73
    15c0:	72632f69 	0x72632f69
    15c4:	6e737400 	0x6e737400
    15c8:	474e5520 	c1	0x14e5520
    15cc:	41532032 	0x41532032
    15d0:	2e32342e 	sltiu	s2,s1,13358
    15d4:	35310080 	ori	s1,t1,0x80
    15d8:	01000000 	0x1000000
    15dc:	6e000200 	0x6e000200
    15e0:	0003d404 	0x3d404
    15e4:	01000011 	mthi	t0
    15e8:	12800046 	beqz	s4,1704 <data_size+0x16f4>
    15ec:	78800046 	0x78800046
    15f0:	ac6e3137 	sw	t6,12599(v1)
    15f4:	5f6c7569 	0x5f6c7569
    15f8:	2e53002f 	sltiu	s3,s2,47
    15fc:	686f6d65 	0x686f6d65
    1600:	2f7a6861 	sltiu	k0,k1,26721
    1604:	6e676875 	0x6e676875
    1608:	696d656e 	0x696d656e
    160c:	672f436f 	0x672f436f
    1610:	6d707574 	0x6d707574
    1614:	65725f41 	0x65725f41
    1618:	72636869 	0x72636869
    161c:	74656374 	jalx	1958dd0 <data_size+0x1958dc0>
    1620:	7572652f 	jalx	5c994bc <data_size+0x5c994ac>
    1624:	66756e63 	0x66756e63
    1628:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a5bda8>
    162c:	74657374 	jalx	195cdd0 <data_size+0x195cdc0>
    1630:	2f737263 	sltiu	s3,k1,29283
    1634:	2f696e73 	sltiu	t1,k1,28275
    1638:	7400474e 	jalx	11d38 <data_size+0x11d28>
    163c:	55204153 	bnezl	t1,11b8c <data_size+0x11b7c>
    1640:	20322e32 	addi	s2,at,11826
    1644:	342e3531 	ori	t6,at,0x3531
    1648:	Address 0x0000000000001648 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01110010 	0x1110010
   4:	06110112 	bgezal	s0,450 <data_size+0x440>
   8:	0103081b 	0x103081b
   c:	08250813 	j	94204c <data_size+0x94203c>
  10:	05000000 	bltz	t0,14 <data_size+0x4>
  14:	01110010 	0x1110010
  18:	06110112 	bgezal	s0,464 <data_size+0x454>
  1c:	0103081b 	0x103081b
  20:	08250813 	j	94204c <data_size+0x94203c>
  24:	05000000 	bltz	t0,28 <data_size+0x18>
  28:	01110010 	0x1110010
  2c:	06110112 	bgezal	s0,478 <data_size+0x468>
  30:	0103081b 	0x103081b
  34:	08250813 	j	94204c <data_size+0x94203c>
  38:	05000000 	bltz	t0,3c <data_size+0x2c>
  3c:	01110010 	0x1110010
  40:	06110112 	bgezal	s0,48c <data_size+0x47c>
  44:	0103081b 	0x103081b
  48:	08250813 	j	94204c <data_size+0x94203c>
  4c:	05000000 	bltz	t0,50 <data_size+0x40>
  50:	01110010 	0x1110010
  54:	06110112 	bgezal	s0,4a0 <data_size+0x490>
  58:	0103081b 	0x103081b
  5c:	08250813 	j	94204c <data_size+0x94203c>
  60:	05000000 	bltz	t0,64 <data_size+0x54>
  64:	01110010 	0x1110010
  68:	06110112 	bgezal	s0,4b4 <data_size+0x4a4>
  6c:	0103081b 	0x103081b
  70:	08250813 	j	94204c <data_size+0x94203c>
  74:	05000000 	bltz	t0,78 <data_size+0x68>
  78:	01110010 	0x1110010
  7c:	06110112 	bgezal	s0,4c8 <data_size+0x4b8>
  80:	0103081b 	0x103081b
  84:	08250813 	j	94204c <data_size+0x94203c>
  88:	05000000 	bltz	t0,8c <data_size+0x7c>
  8c:	01110010 	0x1110010
  90:	06110112 	bgezal	s0,4dc <data_size+0x4cc>
  94:	0103081b 	0x103081b
  98:	08250813 	j	94204c <data_size+0x94203c>
  9c:	05000000 	bltz	t0,a0 <data_size+0x90>
  a0:	01110010 	0x1110010
  a4:	06110112 	bgezal	s0,4f0 <data_size+0x4e0>
  a8:	0103081b 	0x103081b
  ac:	08250813 	j	94204c <data_size+0x94203c>
  b0:	05000000 	bltz	t0,b4 <data_size+0xa4>
  b4:	01110010 	0x1110010
  b8:	06110112 	bgezal	s0,504 <data_size+0x4f4>
  bc:	0103081b 	0x103081b
  c0:	08250813 	j	94204c <data_size+0x94203c>
  c4:	05000000 	bltz	t0,c8 <data_size+0xb8>
  c8:	01110010 	0x1110010
  cc:	06110112 	bgezal	s0,518 <data_size+0x508>
  d0:	0103081b 	0x103081b
  d4:	08250813 	j	94204c <data_size+0x94203c>
  d8:	05000000 	bltz	t0,dc <data_size+0xcc>
  dc:	01110010 	0x1110010
  e0:	06110112 	bgezal	s0,52c <data_size+0x51c>
  e4:	0103081b 	0x103081b
  e8:	08250813 	j	94204c <data_size+0x94203c>
  ec:	05000000 	bltz	t0,f0 <data_size+0xe0>
  f0:	01110010 	0x1110010
  f4:	06110112 	bgezal	s0,540 <data_size+0x530>
  f8:	0103081b 	0x103081b
  fc:	08250813 	j	94204c <data_size+0x94203c>
 100:	05000000 	bltz	t0,104 <data_size+0xf4>
 104:	01110010 	0x1110010
 108:	06110112 	bgezal	s0,554 <data_size+0x544>
 10c:	0103081b 	0x103081b
 110:	08250813 	j	94204c <data_size+0x94203c>
 114:	05000000 	bltz	t0,118 <data_size+0x108>
 118:	01110010 	0x1110010
 11c:	06110112 	bgezal	s0,568 <data_size+0x558>
 120:	0103081b 	0x103081b
 124:	08250813 	j	94204c <data_size+0x94203c>
 128:	05000000 	bltz	t0,12c <data_size+0x11c>
 12c:	01110010 	0x1110010
 130:	06110112 	bgezal	s0,57c <data_size+0x56c>
 134:	0103081b 	0x103081b
 138:	08250813 	j	94204c <data_size+0x94203c>
 13c:	05000000 	bltz	t0,140 <data_size+0x130>
 140:	01110010 	0x1110010
 144:	06110112 	bgezal	s0,590 <data_size+0x580>
 148:	0103081b 	0x103081b
 14c:	08250813 	j	94204c <data_size+0x94203c>
 150:	05000000 	bltz	t0,154 <data_size+0x144>
 154:	01110010 	0x1110010
 158:	06110112 	bgezal	s0,5a4 <data_size+0x594>
 15c:	0103081b 	0x103081b
 160:	08250813 	j	94204c <data_size+0x94203c>
 164:	05000000 	bltz	t0,168 <data_size+0x158>
 168:	01110010 	0x1110010
 16c:	06110112 	bgezal	s0,5b8 <data_size+0x5a8>
 170:	0103081b 	0x103081b
 174:	08250813 	j	94204c <data_size+0x94203c>
 178:	05000000 	bltz	t0,17c <data_size+0x16c>
 17c:	01110010 	0x1110010
 180:	06110112 	bgezal	s0,5cc <data_size+0x5bc>
 184:	0103081b 	0x103081b
 188:	08250813 	j	94204c <data_size+0x94203c>
 18c:	05000000 	bltz	t0,190 <data_size+0x180>
 190:	01110010 	0x1110010
 194:	06110112 	bgezal	s0,5e0 <data_size+0x5d0>
 198:	0103081b 	0x103081b
 19c:	08250813 	j	94204c <data_size+0x94203c>
 1a0:	05000000 	bltz	t0,1a4 <data_size+0x194>
 1a4:	01110010 	0x1110010
 1a8:	06110112 	bgezal	s0,5f4 <data_size+0x5e4>
 1ac:	0103081b 	0x103081b
 1b0:	08250813 	j	94204c <data_size+0x94203c>
 1b4:	05000000 	bltz	t0,1b8 <data_size+0x1a8>
 1b8:	01110010 	0x1110010
 1bc:	06110112 	bgezal	s0,608 <data_size+0x5f8>
 1c0:	0103081b 	0x103081b
 1c4:	08250813 	j	94204c <data_size+0x94203c>
 1c8:	05000000 	bltz	t0,1cc <data_size+0x1bc>
 1cc:	01110010 	0x1110010
 1d0:	06110112 	bgezal	s0,61c <data_size+0x60c>
 1d4:	0103081b 	0x103081b
 1d8:	08250813 	j	94204c <data_size+0x94203c>
 1dc:	05000000 	bltz	t0,1e0 <data_size+0x1d0>
 1e0:	01110010 	0x1110010
 1e4:	06110112 	bgezal	s0,630 <data_size+0x620>
 1e8:	0103081b 	0x103081b
 1ec:	08250813 	j	94204c <data_size+0x94203c>
 1f0:	05000000 	bltz	t0,1f4 <data_size+0x1e4>
 1f4:	01110010 	0x1110010
 1f8:	06110112 	bgezal	s0,644 <data_size+0x634>
 1fc:	0103081b 	0x103081b
 200:	08250813 	j	94204c <data_size+0x94203c>
 204:	05000000 	bltz	t0,208 <data_size+0x1f8>
 208:	01110010 	0x1110010
 20c:	06110112 	bgezal	s0,658 <data_size+0x648>
 210:	0103081b 	0x103081b
 214:	08250813 	j	94204c <data_size+0x94203c>
 218:	05000000 	bltz	t0,21c <data_size+0x20c>
 21c:	01110010 	0x1110010
 220:	06110112 	bgezal	s0,66c <data_size+0x65c>
 224:	0103081b 	0x103081b
 228:	08250813 	j	94204c <data_size+0x94203c>
 22c:	05000000 	bltz	t0,230 <data_size+0x220>
 230:	01110010 	0x1110010
 234:	06110112 	bgezal	s0,680 <data_size+0x670>
 238:	0103081b 	0x103081b
 23c:	08250813 	j	94204c <data_size+0x94203c>
 240:	05000000 	bltz	t0,244 <data_size+0x234>
 244:	01110010 	0x1110010
 248:	06110112 	bgezal	s0,694 <data_size+0x684>
 24c:	0103081b 	0x103081b
 250:	08250813 	j	94204c <data_size+0x94203c>
 254:	05000000 	bltz	t0,258 <data_size+0x248>
 258:	01110010 	0x1110010
 25c:	06110112 	bgezal	s0,6a8 <data_size+0x698>
 260:	0103081b 	0x103081b
 264:	08250813 	j	94204c <data_size+0x94203c>
 268:	05000000 	bltz	t0,26c <data_size+0x25c>
 26c:	01110010 	0x1110010
 270:	06110112 	bgezal	s0,6bc <data_size+0x6ac>
 274:	0103081b 	0x103081b
 278:	08250813 	j	94204c <data_size+0x94203c>
 27c:	05000000 	bltz	t0,280 <data_size+0x270>
 280:	01110010 	0x1110010
 284:	06110112 	bgezal	s0,6d0 <data_size+0x6c0>
 288:	0103081b 	0x103081b
 28c:	08250813 	j	94204c <data_size+0x94203c>
 290:	05000000 	bltz	t0,294 <data_size+0x284>
 294:	01110010 	0x1110010
 298:	06110112 	bgezal	s0,6e4 <data_size+0x6d4>
 29c:	0103081b 	0x103081b
 2a0:	08250813 	j	94204c <data_size+0x94203c>
 2a4:	05000000 	bltz	t0,2a8 <data_size+0x298>
 2a8:	01110010 	0x1110010
 2ac:	06110112 	bgezal	s0,6f8 <data_size+0x6e8>
 2b0:	0103081b 	0x103081b
 2b4:	08250813 	j	94204c <data_size+0x94203c>
 2b8:	05000000 	bltz	t0,2bc <data_size+0x2ac>
 2bc:	01110010 	0x1110010
 2c0:	06110112 	bgezal	s0,70c <data_size+0x6fc>
 2c4:	0103081b 	0x103081b
 2c8:	08250813 	j	94204c <data_size+0x94203c>
 2cc:	05000000 	bltz	t0,2d0 <data_size+0x2c0>
 2d0:	01110010 	0x1110010
 2d4:	06110112 	bgezal	s0,720 <data_size+0x710>
 2d8:	0103081b 	0x103081b
 2dc:	08250813 	j	94204c <data_size+0x94203c>
 2e0:	05000000 	bltz	t0,2e4 <data_size+0x2d4>
 2e4:	01110010 	0x1110010
 2e8:	06110112 	bgezal	s0,734 <data_size+0x724>
 2ec:	0103081b 	0x103081b
 2f0:	08250813 	j	94204c <data_size+0x94203c>
 2f4:	05000000 	bltz	t0,2f8 <data_size+0x2e8>
 2f8:	01110010 	0x1110010
 2fc:	06110112 	bgezal	s0,748 <data_size+0x738>
 300:	0103081b 	0x103081b
 304:	08250813 	j	94204c <data_size+0x94203c>
 308:	05000000 	bltz	t0,30c <data_size+0x2fc>
 30c:	01110010 	0x1110010
 310:	06110112 	bgezal	s0,75c <data_size+0x74c>
 314:	0103081b 	0x103081b
 318:	08250813 	j	94204c <data_size+0x94203c>
 31c:	05000000 	bltz	t0,320 <data_size+0x310>
 320:	01110010 	0x1110010
 324:	06110112 	bgezal	s0,770 <data_size+0x760>
 328:	0103081b 	0x103081b
 32c:	08250813 	j	94204c <data_size+0x94203c>
 330:	05000000 	bltz	t0,334 <data_size+0x324>
 334:	01110010 	0x1110010
 338:	06110112 	bgezal	s0,784 <data_size+0x774>
 33c:	0103081b 	0x103081b
 340:	08250813 	j	94204c <data_size+0x94203c>
 344:	05000000 	bltz	t0,348 <data_size+0x338>
 348:	01110010 	0x1110010
 34c:	06110112 	bgezal	s0,798 <data_size+0x788>
 350:	0103081b 	0x103081b
 354:	08250813 	j	94204c <data_size+0x94203c>
 358:	05000000 	bltz	t0,35c <data_size+0x34c>
 35c:	01110010 	0x1110010
 360:	06110112 	bgezal	s0,7ac <data_size+0x79c>
 364:	0103081b 	0x103081b
 368:	08250813 	j	94204c <data_size+0x94203c>
 36c:	05000000 	bltz	t0,370 <data_size+0x360>
 370:	01110010 	0x1110010
 374:	06110112 	bgezal	s0,7c0 <data_size+0x7b0>
 378:	0103081b 	0x103081b
 37c:	08250813 	j	94204c <data_size+0x94203c>
 380:	05000000 	bltz	t0,384 <data_size+0x374>
 384:	01110010 	0x1110010
 388:	06110112 	bgezal	s0,7d4 <data_size+0x7c4>
 38c:	0103081b 	0x103081b
 390:	08250813 	j	94204c <data_size+0x94203c>
 394:	05000000 	bltz	t0,398 <data_size+0x388>
 398:	01110010 	0x1110010
 39c:	06110112 	bgezal	s0,7e8 <data_size+0x7d8>
 3a0:	0103081b 	0x103081b
 3a4:	08250813 	j	94204c <data_size+0x94203c>
 3a8:	05000000 	bltz	t0,3ac <data_size+0x39c>
 3ac:	01110010 	0x1110010
 3b0:	06110112 	bgezal	s0,7fc <data_size+0x7ec>
 3b4:	0103081b 	0x103081b
 3b8:	08250813 	j	94204c <data_size+0x94203c>
 3bc:	05000000 	bltz	t0,3c0 <data_size+0x3b0>
 3c0:	01110010 	0x1110010
 3c4:	06110112 	bgezal	s0,810 <data_size+0x800>
 3c8:	0103081b 	0x103081b
 3cc:	08250813 	j	94204c <data_size+0x94203c>
 3d0:	05000000 	bltz	t0,3d4 <data_size+0x3c4>
 3d4:	01110010 	0x1110010
 3d8:	06110112 	bgezal	s0,824 <data_size+0x814>
 3dc:	0103081b 	0x103081b
 3e0:	08250813 	j	94204c <data_size+0x94203c>
 3e4:	05000000 	bltz	t0,3e8 <data_size+0x3d8>
