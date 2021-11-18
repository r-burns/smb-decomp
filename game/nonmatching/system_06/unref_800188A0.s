.section .text
glabel unref_800188A0
  /* 0194A0 800188A0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0194A4 800188A4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0194A8 800188A8 0C006138 */       jal func_800184E0
  /* 0194AC 800188AC 00000000 */       nop 
  /* 0194B0 800188B0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0194B4 800188B4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0194B8 800188B8 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 0194BC 800188BC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0194C0 800188C0 03E00008 */        jr $ra
  /* 0194C4 800188C4 46002003 */     div.s $f0, $f4, $f0

