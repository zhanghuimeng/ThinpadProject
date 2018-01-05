#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n54_sw_test)
    .set noreorder
    lui  a0, 0x3600
    li  v0, 0x0
###test inst
    TEST_SW(0x61754443, 0x800277a0, 0x00007b14, 0x00007b14, 0x61754443)

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
END(n54_sw_test)
