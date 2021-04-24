.section .rodata

glabel D_8003DB64
  /* 3D764 03E764 8003DB64 */
  .asciz "omGLinkObjDLCommon() : dl_link num over : dl_link = %d : id = %d\n"
  .balign 4

.section .text
glabel func_80009D78
  /* 00A978 80009D78 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00A97C 80009D7C AFA60030 */        sw $a2, 0x30($sp)
  /* 00A980 80009D80 30C600FF */      andi $a2, $a2, 0xff
  /* 00A984 80009D84 AFB00018 */        sw $s0, 0x18($sp)
  /* 00A988 80009D88 28C10040 */      slti $at, $a2, 0x40
  /* 00A98C 80009D8C 00808025 */        or $s0, $a0, $zero
  /* 00A990 80009D90 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A994 80009D94 AFA60024 */        sw $a2, 0x24($sp)
  /* 00A998 80009D98 14200008 */      bnez $at, .L80009DBC
  /* 00A99C 80009D9C 00C07025 */        or $t6, $a2, $zero
  /* 00A9A0 80009DA0 3C048004 */       lui $a0, %hi(D_8003DB64)
  /* 00A9A4 80009DA4 2484DB64 */     addiu $a0, $a0, %lo(D_8003DB64)
  /* 00A9A8 80009DA8 01C02825 */        or $a1, $t6, $zero
  /* 00A9AC 80009DAC 0C008D89 */       jal fatal_printf
  /* 00A9B0 80009DB0 8E060000 */        lw $a2, ($s0)
  .L80009DB4:
  /* 00A9B4 80009DB4 1000FFFF */         b .L80009DB4
  /* 00A9B8 80009DB8 00000000 */       nop 
  .L80009DBC:
  /* 00A9BC 80009DBC A206000D */        sb $a2, 0xd($s0)
  /* 00A9C0 80009DC0 AE070028 */        sw $a3, 0x28($s0)
  /* 00A9C4 80009DC4 AE05002C */        sw $a1, 0x2c($s0)
  /* 00A9C8 80009DC8 8FAF0038 */        lw $t7, 0x38($sp)
  /* 00A9CC 80009DCC 3C188004 */       lui $t8, %hi(D_8003B6E8)
  /* 00A9D0 80009DD0 AE0F0038 */        sw $t7, 0x38($s0)
  /* 00A9D4 80009DD4 8F18B6E8 */        lw $t8, %lo(D_8003B6E8)($t8)
  /* 00A9D8 80009DD8 2719FFFF */     addiu $t9, $t8, -1
  /* 00A9DC 80009DDC A219000E */        sb $t9, 0xe($s0)
  /* 00A9E0 80009DE0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A9E4 80009DE4 8FB00018 */        lw $s0, 0x18($sp)
  /* 00A9E8 80009DE8 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00A9EC 80009DEC 03E00008 */        jr $ra
  /* 00A9F0 80009DF0 00000000 */       nop 

