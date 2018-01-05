#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n14_multu_test)
    .set noreorder
    lui  a0, 0xE00
    li  v0, 0x0
###test inst
    TEST_MULTU(0x99c9a500, 0x6c1a1b60, 0xb204e000, 0x40f0c088)
###detect exception
    bne v0, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
###output a0|s3
inst_error:  
    or t0, a0, s3 
    sw t0, 0(s1)
    jr ra
    nop
END(n14_multu_test)
