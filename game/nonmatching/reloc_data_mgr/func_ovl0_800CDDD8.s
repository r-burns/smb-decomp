.section .text
glabel func_ovl0_800CDDD8
  /* 0497B8 800CDDD8 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 0497BC 800CDDDC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0497C0 800CDDE0 AC256348 */        sw $a1, %lo(D_ovl0_800D6348)($at)
  /* 0497C4 800CDDE4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0497C8 800CDDE8 3C01800D */       lui $at, %hi(D_ovl0_800D6304)
  /* 0497CC 800CDDEC 0C033757 */       jal func_ovl0_800CDD5C
  /* 0497D0 800CDDF0 AC206304 */        sw $zero, %lo(D_ovl0_800D6304)($at)
  /* 0497D4 800CDDF4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0497D8 800CDDF8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0497DC 800CDDFC 03E00008 */        jr $ra
  /* 0497E0 800CDE00 00000000 */       nop 

