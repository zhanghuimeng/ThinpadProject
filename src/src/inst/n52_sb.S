#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n52_sb_test)
    .set noreorder
    lui  a0, 0x3400
    li  v0, 0x0
###test inst
    TEST_SB(0xb4f00930, 0x7955c40a, 0x800216ec, 0x000061ec, 0x000061ec, 0xb4f0090a)
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
END(n52_sb_test)
