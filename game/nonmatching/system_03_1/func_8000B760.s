.section .text
glabel func_8000B760
  /* 00C360 8000B760 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C364 8000B764 AFB10018 */        sw $s1, 0x18($sp)
  /* 00C368 8000B768 00808825 */        or $s1, $a0, $zero
  /* 00C36C 8000B76C AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C370 8000B770 14800003 */      bnez $a0, .L8000B780
  /* 00C374 8000B774 AFB00014 */        sw $s0, 0x14($sp)
  /* 00C378 8000B778 3C118004 */       lui $s1, %hi(D_80046A54)
  /* 00C37C 8000B77C 8E316A54 */        lw $s1, %lo(D_80046A54)($s1)
  .L8000B780:
  /* 00C380 8000B780 8E300074 */        lw $s0, 0x74($s1)
  /* 00C384 8000B784 52000007 */      beql $s0, $zero, .L8000B7A4
  /* 00C388 8000B788 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B78C:
  /* 00C38C 8000B78C 0C0025BB */       jal func_800096EC
  /* 00C390 8000B790 02002025 */        or $a0, $s0, $zero
  /* 00C394 8000B794 8E300074 */        lw $s0, 0x74($s1)
  /* 00C398 8000B798 1600FFFC */      bnez $s0, .L8000B78C
  /* 00C39C 8000B79C 00000000 */       nop 
  /* 00C3A0 8000B7A0 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B7A4:
  /* 00C3A4 8000B7A4 8FB00014 */        lw $s0, 0x14($sp)
  /* 00C3A8 8000B7A8 8FB10018 */        lw $s1, 0x18($sp)
  /* 00C3AC 8000B7AC 03E00008 */        jr $ra
  /* 00C3B0 8000B7B0 27BD0020 */     addiu $sp, $sp, 0x20

