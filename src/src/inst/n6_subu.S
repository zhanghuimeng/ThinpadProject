#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n6_subu_test)
    .set noreorder
    lui  a0, 0x600
    li  v0, 0x0
###test inst
    TEST_SUBU(0xd6fc0584, 0x5f9765a8, 0x77649fdc)
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
END(n6_subu_test)
