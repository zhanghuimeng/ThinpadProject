#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n26_srav_test)
    .set noreorder
    lui  a0, 0x1A00
    li  v0, 0x0
###test inst
    TEST_SRAV(0x3e594300, 0x00000003, 0x07cb2860)
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
END(n26_srav_test)
