.section .text
glabel func_80006E7C
  /* 007A7C 80006E7C 3C018004 */       lui $at, %hi(D_8004667C)
  /* 007A80 80006E80 AC24667C */        sw $a0, %lo(D_8004667C)($at)
  /* 007A84 80006E84 3C018004 */       lui $at, %hi(D_80046684)
  /* 007A88 80006E88 240E0001 */     addiu $t6, $zero, 1
  /* 007A8C 80006E8C 03E00008 */        jr $ra
  /* 007A90 80006E90 AC2E6684 */        sw $t6, %lo(D_80046684)($at)

