.section .text
glabel unref_80017E0C
  /* 018A0C 80017E0C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 018A10 80017E10 AFBF0014 */        sw $ra, 0x14($sp)
  /* 018A14 80017E14 3C058004 */       lui $a1, %hi(D_800465B0 + 8)
  /* 018A18 80017E18 24A565B8 */     addiu $a1, $a1, %lo(D_800465B0 + 8)
  /* 018A1C 80017E1C 0C005F4F */       jal func_80017D3C
  /* 018A20 80017E20 24060002 */     addiu $a2, $zero, 2
  /* 018A24 80017E24 8FBF0014 */        lw $ra, 0x14($sp)
  /* 018A28 80017E28 27BD0018 */     addiu $sp, $sp, 0x18
  /* 018A2C 80017E2C 03E00008 */        jr $ra
  /* 018A30 80017E30 00000000 */       nop 

