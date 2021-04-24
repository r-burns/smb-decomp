.section .text
glabel func_8000A334
  /* 00AF34 8000A334 3C028004 */       lui $v0, %hi(D_80046A12)
  /* 00AF38 8000A338 03E00008 */        jr $ra
  /* 00AF3C 8000A33C 84426A12 */        lh $v0, %lo(D_80046A12)($v0)

