.section .text
glabel unref_80017E34
  /* 018A34 80017E34 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 018A38 80017E38 AFBF0014 */        sw $ra, 0x14($sp)
  /* 018A3C 80017E3C 3C058004 */       lui $a1, %hi(D_800465B0 + 12)
  /* 018A40 80017E40 24A565BC */     addiu $a1, $a1, %lo(D_800465B0 + 12)
  /* 018A44 80017E44 0C005F4F */       jal func_80017D3C
  /* 018A48 80017E48 24060003 */     addiu $a2, $zero, 3
  /* 018A4C 80017E4C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 018A50 80017E50 27BD0018 */     addiu $sp, $sp, 0x18
  /* 018A54 80017E54 03E00008 */        jr $ra
  /* 018A58 80017E58 00000000 */       nop 

