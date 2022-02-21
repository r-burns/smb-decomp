.section .text
glabel unref_ovl0_800D39C0
  /* 04F3A0 800D39C0 3C01800D */       lui $at, %hi(D_ovl0_800D6444)
  /* 04F3A4 800D39C4 AC246444 */        sw $a0, %lo(D_ovl0_800D6444)($at)
  /* 04F3A8 800D39C8 3C01800D */       lui $at, %hi(D_ovl0_800D6440)
  /* 04F3AC 800D39CC 03E00008 */        jr $ra
  /* 04F3B0 800D39D0 AC256440 */        sw $a1, %lo(D_ovl0_800D6440)($at)

