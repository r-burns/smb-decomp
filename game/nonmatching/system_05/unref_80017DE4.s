.section .text
glabel unref_80017DE4
  /* 0189E4 80017DE4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0189E8 80017DE8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0189EC 80017DEC 3C058004 */       lui $a1, %hi(D_800465B0 + 4)
  /* 0189F0 80017DF0 24A565B4 */     addiu $a1, $a1, %lo(D_800465B0 + 4)
  /* 0189F4 80017DF4 0C005F4F */       jal func_80017D3C
  /* 0189F8 80017DF8 24060001 */     addiu $a2, $zero, 1
  /* 0189FC 80017DFC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 018A00 80017E00 27BD0018 */     addiu $sp, $sp, 0x18
  /* 018A04 80017E04 03E00008 */        jr $ra
  /* 018A08 80017E08 00000000 */       nop 

