ifndef CROSS_COMPILE
CROSS_COMPILE = mips-sde-elf-
endif
CC = $(CROSS_COMPILE)as
LD = $(CROSS_COMPILE)ld
OBJCOPY = $(CROSS_COMPILE)objcopy
OBJDUMP = $(CROSS_COMPILE)objdump
  
OBJECTS = inst.o  
  
export  CROSS_COMPILE  
  
# ********************  
# Rules of Compilation  
# ********************  
  
all: rom.data rom.asm
  
%.o: %.S  
	$(CC) -mips32 $< -o $@  
  
inst.om: rom.ld $(OBJECTS)
	$(LD) -T rom.ld $(OBJECTS) -o $@
  
rom.bin: inst.om
	$(OBJCOPY) -O binary $<  $@
  
rom.data: rom.bin
	./bin2mem -f $< -o $@

rom.asm: inst.om
	$(OBJDUMP) -D inst.om > rom.asm  
  
clean:
	rm -f *.o *.om *.bin *.data

