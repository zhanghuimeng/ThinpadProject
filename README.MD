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