.section .late_rodata

glabel jtbl_8003DF28
  /* 3DB28 03EB28 8003DF28 */  .word L8000E0A8
  /* 3DB2C 03EB2C 8003DF2C */  .word L8000E0B0
  /* 3DB30 03EB30 8003DF30 */  .word L8000E0B8
  /* 3DB34 03EB34 8003DF34 */  .word L8000E0EC
  /* 3DB38 03EB38 8003DF38 */  .word L8000E0C0
  /* 3DB3C 03EB3C 8003DF3C */  .word L8000E0C8
  /* 3DB40 03EB40 8003DF40 */  .word L8000E0D0
  /* 3DB44 03EB44 8003DF44 */  .word L8000E0D8
  /* 3DB48 03EB48 8003DF48 */  .word L8000E0E0
  /* 3DB4C 03EB4C 8003DF4C */  .word L8000E0E8

.section .text
glabel func_8000E084
  /* 00EC84 8000E084 24AEFFFF */     addiu $t6, $a1, -1
  /* 00EC88 8000E088 2DC1000A */     sltiu $at, $t6, 0xa
  /* 00EC8C 8000E08C 10200017 */      beqz $at, L8000E0EC
  /* 00EC90 8000E090 000E7080 */       sll $t6, $t6, 2
  /* 00EC94 8000E094 3C018004 */       lui $at, %hi(jtbl_8003DF28)
  /* 00EC98 8000E098 002E0821 */      addu $at, $at, $t6
  /* 00EC9C 8000E09C 8C2EDF28 */        lw $t6, %lo(jtbl_8003DF28)($at)
  /* 00ECA0 8000E0A0 01C00008 */        jr $t6
  /* 00ECA4 8000E0A4 00000000 */       nop 
  glabel L8000E0A8
  /* 00ECA8 8000E0A8 03E00008 */        jr $ra
  /* 00ECAC 8000E0AC C4800030 */      lwc1 $f0, 0x30($a0)

  glabel L8000E0B0
  /* 00ECB0 8000E0B0 03E00008 */        jr $ra
  /* 00ECB4 8000E0B4 C4800034 */      lwc1 $f0, 0x34($a0)

  glabel L8000E0B8
  /* 00ECB8 8000E0B8 03E00008 */        jr $ra
  /* 00ECBC 8000E0BC C4800038 */      lwc1 $f0, 0x38($a0)

  glabel L8000E0C0
  /* 00ECC0 8000E0C0 03E00008 */        jr $ra
  /* 00ECC4 8000E0C4 C480001C */      lwc1 $f0, 0x1c($a0)

  glabel L8000E0C8
  /* 00ECC8 8000E0C8 03E00008 */        jr $ra
  /* 00ECCC 8000E0CC C4800020 */      lwc1 $f0, 0x20($a0)

  glabel L8000E0D0
  /* 00ECD0 8000E0D0 03E00008 */        jr $ra
  /* 00ECD4 8000E0D4 C4800024 */      lwc1 $f0, 0x24($a0)

  glabel L8000E0D8
  /* 00ECD8 8000E0D8 03E00008 */        jr $ra
  /* 00ECDC 8000E0DC C4800040 */      lwc1 $f0, 0x40($a0)

  glabel L8000E0E0
  /* 00ECE0 8000E0E0 03E00008 */        jr $ra
  /* 00ECE4 8000E0E4 C4800044 */      lwc1 $f0, 0x44($a0)

  glabel L8000E0E8
  /* 00ECE8 8000E0E8 C4800048 */      lwc1 $f0, 0x48($a0)
  glabel L8000E0EC
  /* 00ECEC 8000E0EC 03E00008 */        jr $ra
  /* 00ECF0 8000E0F0 00000000 */       nop 

