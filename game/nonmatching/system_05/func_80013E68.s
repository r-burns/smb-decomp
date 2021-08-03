.section .text
glabel func_80013E68
  /* 014A68 80013E68 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 014A6C 80013E6C AFBF0014 */        sw $ra, 0x14($sp)
  /* 014A70 80013E70 3C058004 */       lui $a1, %hi(D_800465B0)
  /* 014A74 80013E74 0C004F64 */       jal func_80013D90
  /* 014A78 80013E78 24A565B0 */     addiu $a1, $a1, %lo(D_800465B0)
  /* 014A7C 80013E7C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 014A80 80013E80 27BD0018 */     addiu $sp, $sp, 0x18
  /* 014A84 80013E84 03E00008 */        jr $ra
  /* 014A88 80013E88 00000000 */       nop 

