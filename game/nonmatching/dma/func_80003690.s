.section .text
glabel func_80003690
  /* 004290 80003690 27BDFBE8 */     addiu $sp, $sp, -0x418
  /* 004294 80003694 AFBF0014 */        sw $ra, 0x14($sp)
  /* 004298 80003698 27A60018 */     addiu $a2, $sp, 0x18
  /* 00429C 8000369C 0C000D92 */       jal func_80003648
  /* 0042A0 800036A0 24070400 */     addiu $a3, $zero, 0x400
  /* 0042A4 800036A4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0042A8 800036A8 27BD0418 */     addiu $sp, $sp, 0x418
  /* 0042AC 800036AC 03E00008 */        jr $ra
  /* 0042B0 800036B0 00000000 */       nop 

