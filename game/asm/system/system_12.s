.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Start of libultra?
# Likely start of new file
  /* 024440 80023840 AFA50004 */        sw $a1, 4($sp)
  /* 024444 80023844 AFA60008 */        sw $a2, 8($sp)
  /* 024448 80023848 AFA7000C */        sw $a3, 0xc($sp)
  /* 02444C 8002384C A0850018 */        sb $a1, 0x18($a0)
  /* 024450 80023850 A0860019 */        sb $a2, 0x19($a0)
  /* 024454 80023854 A087001A */        sb $a3, 0x1a($a0)
  /* 024458 80023858 93AE0013 */       lbu $t6, 0x13($sp)
  /* 02445C 8002385C 03E00008 */        jr $ra
  /* 024460 80023860 A08E001B */        sb $t6, 0x1b($a0)

  /* 024464 80023864 00000000 */       nop 
  /* 024468 80023868 00000000 */       nop 
  /* 02446C 8002386C 00000000 */       nop 
