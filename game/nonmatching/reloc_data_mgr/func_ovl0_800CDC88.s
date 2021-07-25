.section .text
glabel func_ovl0_800CDC88
  /* 049668 800CDC88 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04966C 800CDC8C AFBF0014 */        sw $ra, 0x14($sp)
  /* 049670 800CDC90 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 049674 800CDC94 0C033703 */       jal func_ovl0_800CDC0C
  /* 049678 800CDC98 AC256348 */        sw $a1, %lo(D_ovl0_800D6348)($at)
  /* 04967C 800CDC9C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049680 800CDCA0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 049684 800CDCA4 03E00008 */        jr $ra
  /* 049688 800CDCA8 00000000 */       nop 

