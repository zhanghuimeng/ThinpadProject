<<<<<<< HEAD
# <center>功能测试</center>
功能测试程序集为 MIPS 汇编程序，用于测试 CPU 功能并在实验箱上显示。当CPU从内存中执行测试程序后，实验箱上的数码管和 LED 灯显示分数和测试通过情况。文档介绍了功能测试的使用方法和功能测试程序和环境。

## 功能测试程序
本小节介绍功能测试程序包含的内容，可以结合测试程序阅读。

功能测试的主程序位于 src/start.S，src/inst 目录下为测试 文件 `n1_add.S` ~ `n91_jalr_ex_ds.S`，每个测试文件对应一个功能测试点。功能测试程序集包含的功能测试点如下:

| 序号 | 测试程序 | 功能测试点| 实现 |
|:--- |:--- |:--- | :--- |
| 1 | ADD | 执行 ADD 指令是否产生正确的运算结果（未测试整型溢出例外的情况） | Y |
| 2 | ADDI | 执行 ADDI 指令是否产生正确的运算结果（未测试整型溢出例外的情况） | Y |
| 3 | ADDU | 执行 ADDU 指令是否产生正确的运算结果 | N |
| 4 | ADDIU | 执行 ADDIU 指令是否产生正确的运算结果 | N |
| 5 | SUB | 执行 SUB 指令是否产生正确的运算结果（未测试整型溢出例外的情况） | N |
| 6 | SUBU | 执行 SUBU 指令是否产生正确的运算结果 | N |
| 7 | SLT | 执行 SLT 指令是否产生正确的运算结果 | N |
| 8 | SLTI | 执行 SLTI 指令是否产生正确的运算结果 | N |
| 9 | SLTU | 执行 SLTU 指令是否产生正确的运算结果 | N |
| 10 | SLTIU | 执行 SLTIU 指令是否产生正确的运算结果 | N |
| 11 | DIV | 执行 DIV 指令是否产生正确的运算结果 | N |
| 12 | DIVU | 执行 DIVU 指令是否产生正确的运算结果 | N |
| 13 | MULT | 执行 MULT 指令是否产生正确的运算结果 | N |
| 14 | MULTU | 执行 MULTU 指令是否产生正确的运算结果 | N |
| 15 | AND | 执行 AND 指令是否产生正确的运算结果 | Y |
| 16 | ANDI | 执行 ANDI 指令是否产生正确的运算结果 | Y |
| 17 | LUI | 执行 LUI 指令是否产生正确的运算结果 | Y |
| 18 | NOR | 执行 NOR 指令是否产生正确的运算结果 | Y |
| 19 | OR | 执行 OR 指令是否产生正确的运算结果 | Y |
| 20 | ORI | 执行 ORI 指令是否产生正确的运算结果 | Y |
| 21 | XOR | 执行 XOR 指令是否产生正确的运算结果 | Y |
| 22 | XORI | 执行 XORI 指令是否产生正确的运算结果 | Y |
| 23 | SLLV | 执行 SLLV 指令是否产生正确的移位结果 | Y |
| 24 | SLL | 执行 SLL 指令是否产生正确的移位结果 | Y |
| 25 | SRAV | 执行 SRAV 指令是否产生正确的移位结果 | Y |
| 26 | SRA | 执行 SRA 指令是否产生正确的移位结果 | Y |
| 27 | SRLV | 执行 SRLV 指令是否产生正确的移位结果 | Y |
| 28 | SRL | 执行 SRL 指令是否产生正确的移位结果 | Y |
| 29 | BEQ | 执行 BEQ 指令是否产生正确的判断和跳转结果（延迟槽指令为nop，未测试延迟槽） | Y |
| 30 | BNE | 执行 BNE 指令是否产生正确的判断和跳转结果（延迟槽指令为nop，未测试延迟槽） | Y |
| 31 | BGEZ | 执行 BGEZ 指令是否产生正确的判断和跳转结果（延迟槽指令为 nop，未测试延迟槽） | Y |
| 32 | BGTZ | 执行 BGTZ 指令是否产生正确的判断和跳转结果（延迟槽指令为 nop，未测试延迟槽） | Y |
| 33 | BLEZ | 执行 BLEZ 指令是否产生正确的判断和跳转结果（延迟槽指令为 nop，未测试延迟槽） | Y | 
| 34 | BLTZ | 执行 BLTZ 指令是否产生正确的判断和跳转结果（延迟槽指令为 nop，未测试延迟槽） | Y | 
| 35 | BGEZAL | 执行 BGEZAL 指令是否产生正确的判断、跳转和链接结果（延迟槽指令为 nop，未测试延迟槽） | Y |
| 36 | BLTZAL | 执行 BLTZAL 指令是否产生正确的判断、跳转和链接结果（延迟槽指令为 nop，未测试延迟槽） | Y |
| 37 | J | 执行 J 指令是否产生正确的跳转结果（延迟槽指令为 nop，未测试延迟槽） | Y |
| 38 | JAL | 执行 JAL 指令是否产生正确的跳转和链接结果（延迟槽指令为nop，未测试延迟槽） | Y |
| 39 | JR | 执行 JR 指令是否产生正确的跳转结果（延迟槽指令为 nop，未测试延迟槽） | Y |
| 40 | JALR | 执行 JALR 指令是否产生正确的跳转和链接结果（延迟槽指令为 nop，未测试延迟槽） | Y |
| 41 | MFHI | 执行 MTHI 指令是否正确地将寄存器值写入 HI 寄存器，执行MFHI 指令是否正确地读出 HI 寄存器的值到寄存器 | Y |
| 42 | MFLO | 执行 MTLO 指令是否正确地将寄存器值写入 LO 寄存器，执行MFLO 指令是否正确地读出 LO 寄存器的值到寄存器 | Y |
| 43 | MTHI | 执行 MTHI 指令是否正确地将寄存器值写入 HI 寄存器，执行MFHI 指令是否正确地读出 HI 寄存器的值到寄存器 | Y |
| 44 | MTLO | 执行 MTLO 指令是否正确地将寄存器值写入 HI 寄存器，执行MFLO 指令是否正确地读出 HI 寄存器的值到寄存器 | Y |
| 45 | BREAK | 执行 BREAK 指令是否正确地产生断点例外 |	N |
| 46 | SYSCALL | 执行 SYSCALL 指令是否正确地产生系统调用例外 | N |
| 47 | LB | 结合 SW 指令，执行 LB 指令是否产生正确的访存结果 | Y |
| 48 | LBU | 结合 SW 指令，执行 LBU 指令是否产生正确的访存结果 | Y |
| 49 | LH | 结合 SW 指令，执行 LH 指令是否产生正确的访存结果 | Y |
| 50 | LHU | 结合 SW 指令，执行 LHU 指令是否产生正确的访存结果 | Y |
| 51 | LW | 结合 SW 指令，执行 LW 指令是否产生正确的访存结果 | Y |
| 52 | SB | 结合 LW 指令，执行 SB 指令是否产生正确的访存结果 | Y |
| 53 | SH | 结合 LW 指令，执行 SH 指令是否产生正确的访存结果 | Y |
| 54 | SW | 结合 LW 指令，执行 SW 指令是否产生正确的访存结果 | Y |
| 55 | ERET | 执行 ERET 指令是否正确地从中断、例外处理程序返回 | N |
| 56 | MFC0 | 执行 MTC0 指令是否正确地将寄存器值写入目的 CP0 寄存器，执行 MFC0 指令是否正确地读出源 CP0 寄存器的值到寄存器 | N |
| 57 | MTC0 | 执行 MTC0 指令是否正确地将寄存器值写入目的 CP0 寄存器，执行 MFC0 指令是否正确地读出源 CP0 寄存器的值到寄存器 | N |
| 58 | ADD\_EX | 测试 ADD 指令整型溢出例外 | N |
| 59 | ADDI\_EX | 测试 ADDI 指令整型溢出例外 | N |
| 60 | SUB\_EX | 测试 SUB 指令整型溢出例外 | N |
| 61 | LH\_EX | 测试 LH 指令访存地址非对齐例外 | N |
| 62 | LHU\_EX | 测试 LHU 指令访存地址非对齐例外 | N |
| 63 | LW\_EX | 测试 LW 指令访存地址非对齐例外 | N |
| 64 | SH\_EX | 测试 SH 指令访存地址非对齐例外 | N |
| 65 | SW\_EX | 测试 SW 指令访存地址非对齐例外 | N |
| 66 | ERET\_EX | 测试取指地址非对齐例外 | N |
| 67 | RESERVED\_INSTRUCTION\_EX | 测试保留指令例外 | N |
| 68 | BEQ\_DS | 测试延迟槽 | Y |
| 69 | BNE\_DS | 测试延迟槽 | Y |
| 70 | BGEZ\_DS | 测试延迟槽 | Y |
| 71 | BGTZ\_DS | 测试延迟槽 | Y |
| 72 | BLEZ\_DS | 测试延迟槽 | Y |
| 73 | BLTZ\_DS | 测试延迟槽 | Y |
| 74 | BGEZAL\_DS | 测试延迟槽 | Y |
| 75 | BLTZAL\_DS | 测试延迟槽 | Y |
| 76 | J\_DS | 测试延迟槽 | Y |
| 77 | JAL\_DS | 测试延迟槽 | Y |
| 78 | JR\_DS | 测试延迟槽 | Y |
| 79 | JALR\_DS | 测试延迟槽 | Y |
| 80 | BEQ\_EX\_DS | 测试延迟槽例外 | N |
| 81 | BNE\_EX\_DS | 测试延迟槽例外 | N |
| 82 | BGEZ\_EX\_DS | 测试延迟槽例外 | N |
| 83 | BGTZ\_EX\_DS | 测试延迟槽例外 | N |
| 84 | BLEZ\_EX\_DS | 测试延迟槽例外 | N |
| 85 | BLTZ\_EX\_DS | 测试延迟槽例外 | N |
| 86 | BGEZAL\_EX\_DS | 测试延迟槽例外 | N |
| 87 | BLTZAL\_EX\_DS | 测试延迟槽例外 | N |
| 88 | J\_EX\_DS | 测试延迟槽例外 | N |
| 89 | JAL\_EX\_DS | 测试延迟槽例外 | N |
| 90 | JR\_EX\_DS | 测试延迟槽例外 | N |
| 91 | JALR\_EX\_DS | 测试延迟槽例外 | N |

功能测试大部分为随机测试，随机数预先生成并写入程序中。

功能测试采用宏指令，定义宏指令的头文件位于 src/include 下，分为 6 个文件：

- inst\_def.h 定义了第 1~54 功能测试点的指令宏定义；(第 55~57 功能测试点不采用宏定义)
- inst\_test.h 定义了第 1~54 功能测试点的测试指令宏定义；(第 55~57 功能测试点不采用宏定义)
- inst\_ex\_def.h 定义了第 58~67 功能测试点的指令宏定义；
- inst\_ex\_test.h 定义了第 58~67 功能测试点的测试指令宏定义；
- inst\_delay\_slot\_def.h 定义了第 68~91 功能测试点的指令宏定义；
- inst\_delay\_slot\_test.h 定义了第 68~91 功能测试点的测试指令宏定义。

例如第 1 个功能测试点 ADD，在功能测试主程序 start.S 中 jal 指令调用 n1\_add\_test：  

	src/start.S
	+++++++++++
	…
	inst_test:
	    jal n1_add_test #add
	    nop
	…

n1\_add\_test 功能测试子程序如下：  

	src/inst/n1_add.S
	+++++++++++++++++
	9   LEAF(n1_add_test)
	10    lui a0, 0x100
	11    li v0, 0x0
	12  ###test inst
	13    TEST_ADD(0x0480ff04, 0x40933204, 0x45143108)
	14    TEST_ADD(0x2a19dd40, 0xa87971e0, 0xd2934f20)
	…
	211   TEST_ADD(0x25e5fad8, 0x00000000, 0x25e5fad8)
	212   TEST_ADD(0x00000000, 0xdcaf5e62, 0xdcaf5e62)
	…
	262   TEST_ADD(0x00000000, 0x00000000, 0x00000000)
	263 ###detect exception
	264   bne v0, zero, inst_error
	265   nop
	266 ###score ++
	267   addiu s3, s3, 1
	268 ###output a0|s3
	269 inst_error:
	270   or t0, a0, s3
	271   sw t0, 0(s1)
	272   jr ra
	273   nop
	274 END(n1_add_test)
	
其中，第 10 行 a0 寄存器存储了测试功能点编号值，这里为 0x1；第 11 行 v0 寄存器存储的是例外检
测，初始值为 0，如果程序出现例外会置为 0xffff0000，在 264 行检测如果出现例外就会跳转到
inst\_error；第 12 行到第 262 行为测试指令，TEST\_ADD(加数 1，加数 2，正确结果)，分别测试了加数 1 和
2 都是随机数、加数 1 或 2 是 0、加数 1 和 2 都是 0 的情况；第 263~265 行判断测试过程中是否出现例外，
正确情况下没有例外；第 266~267 行，s3 寄存器存测试分值，测试通过一个功能点加 1 分；第 268~273 行
为测试结束，将测试编号和测试分值输出显示并返回主程序。

宏定义 TEST\_ADD 位于 inst\_test.h 中： 

	src/include/inst_test.h
	+++++++++++++++++++++++
	4 /* 1
	5 * TEST_ADD(vs, vt, vd)
	6 */
	7 #define TEST_ADD(vs, vt, vd) \
	8   ADD(vs, vt); \
	9   li s2, vd; \
	10  bne s0, s2, inst_error; \
	11  nop

TEST\_ADD 将加数 1 和加数 2 传给 ADD(vs, vt)，并判断目的寄存器 s0 的值是否与正确结果 s2 寄存器的值一致。ADD 宏定义位于 inst\_def.h：  

	src/include/inst_def.h
	++++++++++++++++++++++
	3 /* 1
	4 * ADD(v0, v1)
	5 */
	6 #define ADD(v0, v1) \
	7   li t0, v0; \
	8   li t1, v1; \
	9   add s0, t0, t1
	
	
ADD 将加数 1 装载于寄存器 t0，加数 2 装载于寄存器 t1，结果位于寄存器 s0。

功能测试时，测试程序存储在内存中。具体存放在物理地址段0x00000000~0x00200000（对应虚拟地址 0x80000000~0x80200000）范围内。程序的入口虚地址为0x80000000。

程序需要控制板上的数码管和LED显示，其控制寄存器的地址由 src/start.S 文件中的`LED_ADDR`和`NUM_ADDR`宏定义。

## 编译和链接

本小节介绍功能测试程序编译和链接环境，作为功能测试调试时的选读内容，可以结合代码阅读。

编译和链接环境位于 src/ 目录下，其中：
bin.lds 为链接脚本，bin.lds.S 为其源码；
convert 将编译生成的二进制可执行文件转换成存储器 RAM 的初始化配置文件，convert.c 为其源码；

Makefile 和 rules.make 规定了编译的配置信息和规则，交叉编译最终生成可执行文件为 main.bin。Makefile 中需要设置交叉编译器命令前缀参数`CROSS_COMPILE`，修改该参数可直接修改 Makefile 文件或者在 make 命令行中传入。Makefile 对于硬件运行和仿真运行有分别对应的版本，区别在于硬件运行的版本每条测例后面有等待，以便人观察结果。

默认版本是在硬件运行，编译命令为`make`或`make ver=test_hw`，清理命令为`make clean`或`make clean ver=test_hw`

仿真版本的编译命令为`make ver=sim`，清理命令为`make clean ver=sim`。必须加上版本的定义，否则就按照默认版本生成或清除对应的文件。
=======
# Implementation of one instruction: ORI

## Simulation Result
![Simulation Result 1](readme_pics/ThinpadProject_ori_sim1.png  "Simulation Result 1")

![Simulation Result 2](readme_pics/ThinpadProject_ori_sim2.png  "Simulation Result 2")

# Implementation of Logic, Shift and Nop Instructions

## Logic Instructions
### Simulation Source

```
lui  $1,0x0101           # $1 = 0x01010000 
ori  $1,$1,0x0101        # $1 = $1 | 0x0101 = 0x01010101
ori  $2,$1,0x1100        # $2 = $1 | 0x1100 = 0x01011101
or   $1,$1,$2            # $1 = $1 | $2     = 0x01011101
andi $3,$1,0x00fe        # $3 = $1 & 0x00fe = 0x00000000
and  $1,$3,$1            # $1 = $3 & $1     = 0x00000000
xori $4,$1,0xff00        # $4 = $1 ^ 0xff00 = 0x0000ff00
xor  $1,$4,$1            # $1 = $4 ^ $1     = 0x0000ff00
nor  $1,$4,$1            # $1 = $4 ~^ $1    = 0xffff00ff
```

| inst | Reg1 read addr | Reg1 read data | Reg2 read addr | Reg2 read dara | Operand 1 | Operand2 | Reg write addr | Reg write data |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| lui  $1,0x0101 | $0 | 0x00000000 | - | - | 0x00000000 | 0x01010000 | $1 | 0x01010000 |
| ori  $1,$1,0x0101 | $1 | 0x01010000 | - | - | 0x01010000 | 0x00000101 | $1 | 0x01010101 |
| ori  $2,$1,0x1100 | $1 | 0x01010101 | - | - | 0x01010101 | 0x00001100 | $2 | 0x01011101 |
| or   $1,$1,$2 | $1 | 0x01010101 | $2 | 0x01011101 | 0x01010101 | 0x01011101 | $1 | 0x01011101 |
| andi $3,$1,0x00fe | $1 | 0x01011101 | - | - | 0x01011101 | 0x000000fe | $3 | 0x00000000 |
| and  $1,$3,$1 | $3 | 0x00000000 | $1 | 0x01011101 | 0x00000000 | 0x01011101 | $1 | 0x00000000 |
| xori $4,$1,0xff00 | $1 | 0x00000000 | - | - | 0x00000000 | 0x0000ff00 | $4 | 0x0000ff00 |
| xor  $1,$4,$1 | $4 | 0x0000ff00 | $1 | 0x 00000000 | 0x0000ff00 | 0x00000000 | $1 | 0x0000ff00 | 
| nor  $1,$4,$1 | $4 | 0x0000ff00 | $1 | 0x0000ff00 | 0x0000ff00 | 0x0000ff00 | $1 | 0xffff00ff | 

### Simulation Result

Red signals are enable ones, and blue signals are data.

![Simulation Result 1](readme_pics/ThinpadProject_logic_1.png  "Simulation Result 1")

![Simulation Result 2](readme_pics/ThinpadProject_logic_2.png  "Simulation Result 2")

![Simulation Result 3](readme_pics/ThinpadProject_logic_3.png  "Simulation Result 3")

![Simulation Result 4](readme_pics/ThinpadProject_logic_4.png  "Simulation Result 4")

I deleted 'PREF' instruction from the test, because we do not intend to implement it.

# Implementation of Shift and Nop Instructions

## Simulation
### Simulation Source
```
lui   $2,0x0404    # $2 = 0x04040000
ori   $2,$2,0x0404 # $2 = 0x04040000 | 0x0404 = 0x04040404
ori   $7,$0,0x7
ori   $5,$0,0x5
ori   $8,$0,0x8
sync
sll   $2,$2,8      # $2 = 0x40404040 sll 8  = 0x04040400
sllv  $2,$2,$7     # $2 = 0x04040400 sll 7  = 0x02020000
srl   $2,$2,8      # $2 = 0x02020000 srl 8  = 0x00020200
srlv  $2,$2,$5     # $2 = 0x00020200 srl 5  = 0x00001010
nop
sll   $2,$2,19     # $2 = 0x00001010 sll 19 = 0x80800000
ssnop
sra   $2,$2,16     # $2 = 0x80800000 sra 16 = 0xffff8080
srav  $2,$2,$8     # $2 = 0xffff8080 sra 8  = 0xffffff80 
```

| inst | Reg1 read addr | Reg1 read data | Reg2 read addr | Reg2 read dara | Operand 1 | Operand2 | Reg write addr | Reg write data |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| lui $2,0x0404 | $0 | 0x00000000 | - | - | 0x00000000 | 0x04040000 | $2 | 0x04040000 |
| ori $2,$2,0x0404 | $2 | 0x0x04040000 | - | - | 0x04040000 | 0x00000404 | $2 | 0x04040404 |
| ori $7,$0,0x7 | $0 | 0x00000000 | - | - | 0x00000000 | 0x00000007 | $7 | 0x00000007 |
| ori $5,$0,0x5 | $0 | 0x00000000 | - | - | 0x00000000 | 0x00000005 | $5 | 0x00000005 |
| ori $8,$0,0x8 | $0 | 0x00000000 | - | - | 0x00000000 | 0x00000008 | $8 | 0x00000008 |
| sync | - | - | - | - | - | - | - | - |
| sll $2,$2,8 | $2 | 0x04040404 | - | - | 0x04040404 | 0x00000008 | $2 | 0x04040000 |
| sllv $2,$2,$7 | $2 | 0x04040000 | $7 | 0x00000007 | 0x04040000 | 0x00000007 | $2 | 0x02020000 |
| srl $2,$2,8 | $2 | 0x02020000 | - | - | 0x02020000 | 0x00000008 | $2 | 0x00020200 |
| srlv $2,$2,$5 | $2 | 0x00020200 | $5 | 0x00000005 | 0x00020200 | 0x00000005 | $2 | 0x00001010 |
| nop | - | - | - | - | - | - | - | - |
| sll $2,$2,19 | $2 | 0x00001010 | - | - | 0x00001010 | 0x00000019 | $2 | 0x80800000 |
| ssnop | - | - | - | - | - | - | - | - |
| sra $2,$2,16 | $2 | 0x80800000 | - | - | 0x80800000 | 0x00000016 | $2 | 0xffff8080 |
| srav $2,$2,$8 | $2 | 0xffff8080 | $8 | 0x00000008 | 0xffff8080 | 0x00000008 | $2 | 0xffffff80 |

### Simulation Result

Red signals are enable ones, and blue signals are data.

![Simulation Result 1](readme_pics/ThinpadProject_shift_1.png  "Simulation Result 1")

![Simulation Result 2](readme_pics/ThinpadProject_shift_2.png  "Simulation Result 2")

![Simulation Result 3](readme_pics/ThinpadProject_shift_3.png  "Simulation Result 3")

![Simulation Result 4](readme_pics/ThinpadProject_shift_4.png  "Simulation Result 4")

# Implementation of Move Instructions
It is hard to make a good screenshot.

# Implementation of Branch Instructions

## Jump Instructions
### Simulation Source
| 符号 | 指令 | 说明 |
| --- | --- | --- |
| .org 0x0 | | |
| .set noat | | |
| .set noreorder | | # 添加这个伪操作，指示编译器不要对程序做出任何优化或是改动 |
| .set nomacro | | |
| .global _start | | |
| _start: | | |
| | ori  $1,$0,0x0001 | # （1）$1 = 0x1 |
| | j    0x20 | #  转移到0x20处 |
| | ori  $1,$0,0x0002 | # （2）$1 = 0x2，这是延迟槽指令 |
| | ori  $1,$0,0x1111 | |
| | ori  $1,$0,0x1100 | |
| .org 0x20 | | |
| | ori  $1,$0,0x0003 | # （3）$1 = 0x3 |
| | jal  0x40 | #  转移到0x40处，同时设置$31为0x2c |
| | or  $1,$1, $31 | # （4）$1 = 0x2f，这是延迟槽指令 |
| | ori  $1,$0,0x0005 | # （6）$1 = 0x5 |
| | ori  $1,$0,0x0006 | # （7）$1 = 0x6 |
| | j    0x60 | #  转移到0x60处 |
| | nop | |
| .org 0x40 | | |
| | jalr $2,$31 | #  此时$31为0x2c，所以转移到0x2c，同时设置$2为0x48 |
| | or   $1,$2,$0 | # （5）$1 = 0x48，这是延迟槽指令 |
| | ori  $1,$0,0x0009 | # （10）$1 = 0x9 |
| | ori  $1,$0,0x000a | # （11）$1 = 0xa |
| | j 0x80 | #  转移到0x80处 |
| | nop | |
| .org 0x60 | | |
| | ori  $1,$0,0x0007 | # （8）$1 = 0x7 |
| | jr   $2 | #  此时$2为0x48，所以转移到0x48处 |
| | ori  $1,$0,0x0008 | # （9）$1 = 0x8，这是延迟槽指令 |
| | ori  $1,$0,0x1111 | |
| | ori  $1,$0,0x1100 | |
| .org 0x80 | | |
| | nop | |
| _loop: | | |
| | j _loop | |
| | nop | |

## Branch Instructions
### Simulation Source
| 符号 | 指令 | 说明 |
| --- | --- | --- |
| .org 0x0 | | |
|  .set noat | | |
| .set noreorder | | |
| .set nomacro | | |
| .global _start | | |
| _start: | | |
| | ori  $3,$0,0x8000 | |
| | sll  $3,16 | # 设置$3 = 0x80000000 |
| | ori  $1,$0,0x0001 | #（1）$1 = 0x1 |
| | b    s1 | # 转移到s1处 |
| | ori  $1,$0,0x0002 | #（2）$1 = 0x2，这是延迟槽指令 |
| 1: | | |
| | ori  $1,$0,0x1111 | |
| | ori  $1,$0,0x1100 | |
|.org 0x20 | | |
| s1: | | |
| | ori  $1,$0,0x0003 |  #（3）$1 = 0x3 |
| | bal  s2 |  # 转移到s2处，同时设置$31为0x2c |
| | ori $1, $0, 0x000b | #（4）$1 = 0xb |
| | ori  $1,$0,0x1100 | |
| | ori  $1,$0,0x1111 | |
| | bne  $1,$0,s3 | |
| | nop | |
| | ori  $1,$0,0x1100 | |
| | ori  $1,$0,0x1111 | |
| .org 0x50 | | |
| s2: | | |
| | ori  $1,$0,0x0004 | #（5）$1 = 0x4 |
| | beq  $3,$3,s3 | # $3等于$3，所以会发生转移，目的地址是s3 |
 | | or   $1,$31,$0 | #（6）$1 = 0x2c，这是延迟槽指令 |
| | ori  $1,$0,0x1111 | |
 | | ori  $1,$0,0x1100 | |
| 2: | | |
| | ori  $1,$0,0x0007 |  #（9）$1 = 0x7 |
| | ori  $1,$0,0x0008 | #（10）$1 = 0x8 |
| | bgtz $1,s4  | # 此时$1为0x8，大于0，所以转移至标号s4处 |
| | ori  $1,$0,0x0009 | #（11）$1 = 0x9，这是延迟槽指令 |
| | ori  $1,$0,0x1111 | |
| | ori  $1,$0,0x1100 | |
| .org 0x80 | | |
| s3: | | |
| | ori  $1,$0,0x0005 | #（7）$1 = 0x5 |
| | bgez $1,2b | # 此时$1为0x5，大于0，所以转移至前面的标号2处 |
| | ori  $1,$0,0x0006 | #（8）$1 = 0x6，这是延迟槽指令 |
| | ori  $1,$0,0x1111 | |
| | ori  $1,$0,0x1100 | |
| .org 0x100 | | |
| s4: | | |
| | ori  $1,$0,0x000a | #（12）$1 = 0xa |
| | bgezal $3,s3 | # 此时$3为0x80000000，小于0，所以不发生转移 |
| | or   $1,$0,$31 | #（13）$1 = 0x10c |
| | ori  $1,$0,0x000b | #（14）$1 = 0xb |
| | ori  $1,$0,0x000c | #（15）$1 = 0xc |
| | ori  $1,$0,0x000d | #（16）$1 = 0xd |
| | ori  $1,$0,0x000e |  #（17）$1 = 0xe |
| | bltz $3,s5 | # 此时$3为0x80000000，小于0，所以发生转移，转移至s5处 |
| | ori  $1,$0,0x000f | #（18）$1 = 0xf，这是延迟槽指令 |
| | ori  $1,$0,0x1100 | |
| .org 0x130 | | | 
| s5: | | |
| | ori  $1,$0,0x0010 | #（19）$1 = 0x10 |
| | blez $1,2b | # 此时$1为0x10，大于0，所以不发生转移 |
| | ori  $1,$0,0x0011 | #（20）$1 = 0x11 |
| | ori  $1,$0,0x0012 | #（21）$1 = 0x12 |
| | ori  $1,$0,0x0013 | #（22）$1 = 0x13 |
| | bltzal $3,s6  | # 此时$3为0x80000000，小于0，所以发生转移，转移到s6处 |
| | or   $1,$0,$31 | #（23）$1 = 0x14c，这是延迟槽指令 |
| | ori  $1,$0,0x1100 | |
| .org 0x160 | | |
| s6: | | |
| | ori $1,$0,0x0014 | #（24）$1 = 0x14 |
| | nop | |
| _loop: | | |
| |  j _loop | |
| | nop | |
>>>>>>> origin/cp0
