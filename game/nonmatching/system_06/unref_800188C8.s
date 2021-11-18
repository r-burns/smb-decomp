.section .text
glabel unref_800188C8
  /* 0194C8 800188C8 3C0E8004 */       lui $t6, %hi(D_8003B944)
  /* 0194CC 800188CC 8DCEB944 */        lw $t6, %lo(D_8003B944)($t6)
  /* 0194D0 800188D0 03E00008 */        jr $ra
  /* 0194D4 800188D4 ADC40000 */        sw $a0, ($t6)

