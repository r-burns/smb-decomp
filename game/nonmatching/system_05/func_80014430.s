.section .text
glabel func_80014430
  /* 015030 80014430 3C028004 */       lui $v0, %hi(D_800470C8)
  /* 015034 80014434 244270C8 */     addiu $v0, $v0, %lo(D_800470C8)
  /* 015038 80014438 3C018004 */       lui $at, %hi(D_800470B0)
  /* 01503C 8001443C AC2270B0 */        sw $v0, %lo(D_800470B0)($at)
  /* 015040 80014440 3C018004 */       lui $at, %hi(D_800470BC)
  /* 015044 80014444 AC2270B8 */        sw $v0, %lo(D_800470B8)($at)
  /* 015048 80014448 AC2270BC */        sw $v0, %lo(D_800470BC)($at)
  /* 01504C 8001444C 3C018004 */       lui $at, %hi(D_800470C4)
  /* 015050 80014450 AC2270C0 */        sw $v0, %lo(D_800470C0)($at)
  /* 015054 80014454 03E00008 */        jr $ra
  /* 015058 80014458 AC2270C4 */        sw $v0, %lo(D_800470C4)($at)

