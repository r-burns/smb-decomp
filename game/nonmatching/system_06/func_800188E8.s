.section .text
glabel func_800188E8
  /* 0194E8 800188E8 14800006 */      bnez $a0, .L80018904
  /* 0194EC 800188EC 3C018004 */       lui $at, 0x8004
  /* 0194F0 800188F0 3C0E8004 */       lui $t6, %hi(D_8003B940)
  /* 0194F4 800188F4 25CEB940 */     addiu $t6, $t6, %lo(D_8003B940)
  /* 0194F8 800188F8 3C018004 */       lui $at, %hi(D_8003B944)
  /* 0194FC 800188FC 03E00008 */        jr $ra
  /* 019500 80018900 AC2EB944 */        sw $t6, %lo(D_8003B944)($at)

  .L80018904:
  /* 019504 80018904 AC24B944 */        sw $a0, -0x46bc($at)
  /* 019508 80018908 03E00008 */        jr $ra
  /* 01950C 8001890C 00000000 */       nop 

