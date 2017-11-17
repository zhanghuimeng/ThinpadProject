# Implementation of one instruction: ORI

## Simulation
![Simulation Result 1](ThinpadProject_ori_sim1.png  "Simulation Result 1")

![Simulation Result 2](ThinpadProject_ori_sim2.png  "Simulation Result 2")

# Implementation of Logic, Shift and Nop Instructions

## Simulation Source

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
pref
sll   $2,$2,19     # $2 = 0x00001010 sll 19 = 0x80800000
ssnop
sra   $2,$2,16     # $2 = 0x80800000 sra 16 = 0xffff8080
srav  $2,$2,$8     # $2 = 0xffff8080 sra 8  = 0xffffff80 
```
