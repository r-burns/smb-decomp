.section .text
glabel unref_800188D8
  /* 0194D8 800188D8 3C0E8004 */       lui $t6, %hi(D_8003B944)
  /* 0194DC 800188DC 8DCEB944 */        lw $t6, %lo(D_8003B944)($t6)
  /* 0194E0 800188E0 03E00008 */        jr $ra
  /* 0194E4 800188E4 8DC20000 */        lw $v0, ($t6)

