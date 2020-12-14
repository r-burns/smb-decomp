.section .text
glabel func_800035E0
  /* 0041E0 800035E0 3C018004 */       lui $at, %hi(D_800450E0)
  /* 0041E4 800035E4 AC2450E0 */        sw $a0, %lo(D_800450E0)($at)
  /* 0041E8 800035E8 3C018004 */       lui $at, %hi(D_800450D8)
  /* 0041EC 800035EC AC2550D8 */        sw $a1, %lo(D_800450D8)($at)
  /* 0041F0 800035F0 3C018004 */       lui $at, %hi(D_800450DC)
  /* 0041F4 800035F4 03E00008 */        jr $ra
  /* 0041F8 800035F8 AC2650DC */        sw $a2, %lo(D_800450DC)($at)

