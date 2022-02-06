.section .text
glabel func_800218E0
  /* 0224E0 800218E0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0224E4 800218E4 8FAE0030 */        lw $t6, 0x30($sp)
  /* 0224E8 800218E8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0224EC 800218EC AFA00010 */        sw $zero, 0x10($sp)
  /* 0224F0 800218F0 0C0085CD */       jal func_80021734
  /* 0224F4 800218F4 AFAE0014 */        sw $t6, 0x14($sp)
  /* 0224F8 800218F8 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0224FC 800218FC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 022500 80021900 03E00008 */        jr $ra
  /* 022504 80021904 00000000 */       nop 

