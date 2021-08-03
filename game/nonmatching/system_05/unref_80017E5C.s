.section .text
glabel unref_80017E5C
  /* 018A5C 80017E5C 3C0E8004 */       lui $t6, %hi(D_80046A58)
  /* 018A60 80017E60 8DCE6A58 */        lw $t6, %lo(D_80046A58)($t6)
  /* 018A64 80017E64 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 018A68 80017E68 AFBF0014 */        sw $ra, 0x14($sp)
  /* 018A6C 80017E6C 8DCF0074 */        lw $t7, 0x74($t6)
  /* 018A70 80017E70 0C0014F3 */       jal func_800053CC
  /* 018A74 80017E74 AFAF001C */        sw $t7, 0x1c($sp)
  /* 018A78 80017E78 0C0013DE */       jal func_80004F78
  /* 018A7C 80017E7C 00000000 */       nop 
  /* 018A80 80017E80 3C048004 */       lui $a0, %hi(D_800465B0)
  /* 018A84 80017E84 248465B0 */     addiu $a0, $a0, %lo(D_800465B0)
  /* 018A88 80017E88 8FA5001C */        lw $a1, 0x1c($sp)
  /* 018A8C 80017E8C 0C00598F */       jal func_8001663C
  /* 018A90 80017E90 00003025 */        or $a2, $zero, $zero
  /* 018A94 80017E94 3C048004 */       lui $a0, %hi(D_800465B0)
  /* 018A98 80017E98 248465B0 */     addiu $a0, $a0, %lo(D_800465B0)
  /* 018A9C 80017E9C 0C005BB7 */       jal func_80016EDC
  /* 018AA0 80017EA0 8FA5001C */        lw $a1, 0x1c($sp)
  /* 018AA4 80017EA4 8FA4001C */        lw $a0, 0x1c($sp)
  /* 018AA8 80017EA8 0C005E0F */       jal func_8001783C
  /* 018AAC 80017EAC 00002825 */        or $a1, $zero, $zero
  /* 018AB0 80017EB0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 018AB4 80017EB4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 018AB8 80017EB8 03E00008 */        jr $ra
  /* 018ABC 80017EBC 00000000 */       nop 

