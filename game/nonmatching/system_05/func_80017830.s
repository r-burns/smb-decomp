.section .text
glabel func_80017830
  /* 018430 80017830 3C018004 */       lui $at, %hi(D_800470A8)
  /* 018434 80017834 03E00008 */        jr $ra
  /* 018438 80017838 AC2470A8 */        sw $a0, %lo(D_800470A8)($at)

