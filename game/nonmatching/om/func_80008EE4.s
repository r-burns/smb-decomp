.section .late_rodata

glabel D_8003DD64
  /* 3D964 03E964 8003DD64 */
  .word 0xff7fffff # .float -3.4028235e38

.section .text
glabel func_80008EE4
  /* 009AE4 80008EE4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009AE8 80008EE8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 009AEC 80008EEC AFB10018 */        sw $s1, 0x18($sp)
  /* 009AF0 80008EF0 AFB00014 */        sw $s0, 0x14($sp)
  /* 009AF4 80008EF4 AFA40020 */        sw $a0, 0x20($sp)
  /* 009AF8 80008EF8 8C90006C */        lw $s0, 0x6c($a0)
  /* 009AFC 80008EFC 52000007 */      beql $s0, $zero, .L80008F1C
  /* 009B00 80008F00 8FAF0020 */        lw $t7, 0x20($sp)
  .L80008F04:
  /* 009B04 80008F04 8E110000 */        lw $s1, ($s0)
  /* 009B08 80008F08 0C001FAC */       jal func_80007EB0
  /* 009B0C 80008F0C 02002025 */        or $a0, $s0, $zero
  /* 009B10 80008F10 1620FFFC */      bnez $s1, .L80008F04
  /* 009B14 80008F14 02208025 */        or $s0, $s1, $zero
  /* 009B18 80008F18 8FAF0020 */        lw $t7, 0x20($sp)
  .L80008F1C:
  /* 009B1C 80008F1C 3C018004 */       lui $at, %hi(D_8003DD64)
  /* 009B20 80008F20 ADE0006C */        sw $zero, 0x6c($t7)
  /* 009B24 80008F24 8FB80020 */        lw $t8, 0x20($sp)
  /* 009B28 80008F28 C424DD64 */      lwc1 $f4, %lo(D_8003DD64)($at)
  /* 009B2C 80008F2C E7040074 */      swc1 $f4, 0x74($t8)
  /* 009B30 80008F30 8FBF001C */        lw $ra, 0x1c($sp)
  /* 009B34 80008F34 8FB10018 */        lw $s1, 0x18($sp)
  /* 009B38 80008F38 8FB00014 */        lw $s0, 0x14($sp)
  /* 009B3C 80008F3C 03E00008 */        jr $ra
  /* 009B40 80008F40 27BD0020 */     addiu $sp, $sp, 0x20

