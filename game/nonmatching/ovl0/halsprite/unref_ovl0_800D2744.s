.section .text
glabel unref_ovl0_800D2744
  /* 04E124 800D2744 3C01800D */       lui $at, %hi(D_ovl0_800D5D50)
  /* 04E128 800D2748 A0245D50 */        sb $a0, %lo(D_ovl0_800D5D50)($at)
  /* 04E12C 800D274C 3C01800D */       lui $at, %hi(D_ovl0_800D5D54)
  /* 04E130 800D2750 03E00008 */        jr $ra
  /* 04E134 800D2754 A0255D54 */        sb $a1, %lo(D_ovl0_800D5D54)($at)

