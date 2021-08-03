.section .text
glabel unref_80013EB0
  /* 014AB0 80013EB0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 014AB4 80013EB4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 014AB8 80013EB8 3C058004 */       lui $a1, %hi(D_800465B0 + 8)
  /* 014ABC 80013EBC 0C004F64 */       jal func_80013D90
  /* 014AC0 80013EC0 24A565B8 */     addiu $a1, $a1, %lo(D_800465B0 + 8)
  /* 014AC4 80013EC4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 014AC8 80013EC8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 014ACC 80013ECC 03E00008 */        jr $ra
  /* 014AD0 80013ED0 00000000 */       nop 

