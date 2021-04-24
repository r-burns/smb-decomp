.section .text
glabel func_8000A328
  /* 00AF28 8000A328 3C018004 */       lui $at, %hi(D_80046A12)
  /* 00AF2C 8000A32C 03E00008 */        jr $ra
  /* 00AF30 8000A330 A4246A12 */        sh $a0, %lo(D_80046A12)($at)

