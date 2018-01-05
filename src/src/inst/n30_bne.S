#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n30_bne_test)
    .set noreorder
    lui  a0, 0x1E00
    li  v0, 0x0
###test inst
    TEST_BNE(0xbcaabd27, 0x82a77a9d, 0x235fde00, 0xdd597dde, 0x235fde00, 0xdd597dde)
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
END(n30_bne_test)
